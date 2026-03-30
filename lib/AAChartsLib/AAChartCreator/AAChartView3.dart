import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui_web' as ui_web;

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ---------------------------------------------------------------------------
// Controller — 外部通过它驱动图表绑定的 State
// ---------------------------------------------------------------------------
class AAChartView3Controller {
  _AAChartView3State? _state;

  void _bind(_AAChartView3State state) => _state = state;
  void _unbind() => _state = null;

  void aa_drawChartWithChartModel(AAChartModel model) {
    _state?.aa_drawChartWithChartModel(model);
  }

  void aa_refreshChartWithChartModel(AAChartModel model) {
    _state?.aa_refreshChartWithChartModel(model);
  }

  void aa_drawChartWithChartOptions(AAOptions options) {
    _state?.aa_drawChartWithChartOptions(options);
  }

  void aa_refreshChartWithChartOptions(AAOptions options) {
    _state?.aa_refreshChartWithChartOptions(options);
  }
}

// ---------------------------------------------------------------------------
// Widget
// ---------------------------------------------------------------------------
class AAChartView3 extends StatefulWidget {
  final AAChartView3Controller? controller;
  final String containerId;

  const AAChartView3({
    Key? key,
    this.controller,
    required this.containerId,
  }) : super(key: key);

  @override
  State<AAChartView3> createState() => _AAChartView3State();

  // 向后兼容的便捷方法，委托给 controller
  void aa_drawChartWithChartModel(AAChartModel m) =>
      controller?.aa_drawChartWithChartModel(m);
  void aa_refreshChartWithChartModel(AAChartModel m) =>
      controller?.aa_refreshChartWithChartModel(m);
  void aa_drawChartWithChartOptions(AAOptions o) =>
      controller?.aa_drawChartWithChartOptions(o);
  void aa_refreshChartWithChartOptions(AAOptions o) =>
      controller?.aa_refreshChartWithChartOptions(o);
}

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------
class _AAChartView3State extends State<AAChartView3> {
  static const int _kMaxPollAttempts = 100;
  static const Duration _kPollInterval = Duration(milliseconds: 100);
  static const int _kMaxDrawRetries = 15; // 最多重试 15 次 (≈3 秒)

  late final String _chartContainerId;
  String? _optionsJson;
  bool _isInitialized = false;
  bool _isHighchartsLoaded = false;

  // -------------------------  生命周期  -------------------------

  @override
  void initState() {
    super.initState();
    _chartContainerId = widget.containerId;
    widget.controller?._bind(this);
    _initializeChart();
  }

  @override
  void dispose() {
    widget.controller?._unbind();
    _destroyExistingChart();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return HtmlElementView(viewType: _chartContainerId);
  }

  // -------------------------  初始化  -------------------------

  Future<void> _initializeChart() async {
    final container = html.DivElement()
      ..id = _chartContainerId
      ..style.width = '100%'
      ..style.height = '100%'
      ..style.position = 'relative';

    ui_web.platformViewRegistry.registerViewFactory(
      _chartContainerId,
      (int viewId) => container,
    );

    await _loadHighchartsLibrary();

    if (!mounted) return;
    setState(() => _isInitialized = true);
  }

  // -------------------------  JS 库加载  -------------------------

  Future<void> _loadHighchartsLibrary() async {
    final win = js.context;
    if (win['_AAHighchartsLoaded'] == true) {
      _isHighchartsLoaded = true;
      return;
    }

    await _ensureScriptLoaded(
      src: '/assets/AAHighcharts.js',
      lockKey: '_AAHighchartsLoading',
      isReady: _isHighchartsReady,
    );
    await _ensureScriptLoaded(
      src: '/assets/AAHighcharts-More.js',
      lockKey: '_AAHighchartsMoreLoading',
      isReady: _isHighchartsMoreReady,
    );
    await _ensureScriptLoaded(
      src: '/assets/AAFunnel.js',
      lockKey: '_AAFunnelLoading',
      isReady: _isFunnelReady,
    );

    final loaded = _isHighchartsReady();
    win['_AAHighchartsLoaded'] = loaded;
    _isHighchartsLoaded = loaded;
  }

  /// 通用的「确保某个 JS 脚本已加载」逻辑，避免重复代码。
  Future<void> _ensureScriptLoaded({
    required String src,
    required String lockKey,
    required bool Function() isReady,
  }) async {
    if (isReady()) return;

    final win = js.context;
    if (win[lockKey] == true) {
      await _pollUntil(isReady);
      return;
    }

    win[lockKey] = true;
    try {
      _appendScriptOnce(src);
      await _pollUntil(isReady);
    } finally {
      win[lockKey] = false;
    }
  }

  void _appendScriptOnce(String src) {
    final scripts = html.document.querySelectorAll('script');
    for (final s in scripts) {
      if (s is html.ScriptElement) {
        if (s.src == src || s.src.endsWith(src)) return;
      }
    }
    html.document.head?.append(
      html.ScriptElement()
        ..src = src
        ..async = true,
    );
  }

  // -------------------------  JS 库就绪检查  -------------------------

  bool _isHighchartsReady() => js.context['Highcharts'] != null;

  bool _isHighchartsMoreReady() =>
      _isHighchartsReady() && js.context['Highcharts']['polarChart'] != null;

  bool _isFunnelReady() =>
      _isHighchartsReady() &&
      js.context['Highcharts']['seriesTypes'] != null &&
      js.context['Highcharts']['seriesTypes']['funnel'] != null;

  /// 通用轮询，等待 [condition] 成立，最多 [_kMaxPollAttempts] 次。
  Future<bool> _pollUntil(bool Function() condition) async {
    for (int i = 0; i < _kMaxPollAttempts; i++) {
      if (condition()) return true;
      await Future.delayed(_kPollInterval);
    }
    developer.log(
      'Polling timed out after $_kMaxPollAttempts attempts',
      name: 'AAChartView3',
    );
    return false;
  }

  // -------------------------  绘图 API  -------------------------

  void aa_drawChartWithChartModel(AAChartModel model) {
    final options = AAOptionsComposer.configureChartOptions(model);
    aa_drawChartWithChartOptions(options);
  }

  void aa_refreshChartWithChartModel(AAChartModel model) {
    final options = AAOptionsComposer.configureChartOptions(model);
    _drawChart(options);
  }

  void aa_drawChartWithChartOptions(AAOptions options, [int _retries = 0]) {
    if (!_isInitialized || !_isHighchartsLoaded) {
      if (_retries >= _kMaxDrawRetries) {
        developer.log(
          'Gave up drawing chart after $_kMaxDrawRetries retries',
          name: 'AAChartView3',
        );
        return;
      }
      Future.delayed(const Duration(milliseconds: 200), () {
        if (mounted) aa_drawChartWithChartOptions(options, _retries + 1);
      });
      return;
    }

    if (_optionsJson != null) {
      aa_refreshChartWithChartOptions(options);
    } else {
      _drawChart(options);
    }

    if (kDebugMode) {
      final jsonMap = options.toPureJson();
      developer.log(
        const JsonEncoder.withIndent('  ').convert(jsonMap),
        name: 'AAChartView3',
      );
    }
  }

  void aa_refreshChartWithChartOptions(AAOptions options) {
    _drawChart(options);
  }

  // -------------------------  JS 执行  -------------------------

  void _drawChart(AAOptions options) {
    final jsonMap = options.toPureJson();
    final jsonStr = jsonEncode(jsonMap);
    _optionsJson = jsonStr;

    // 用 Base64 传递 JSON，彻底避免引号/转义问题
    final encodedJson = base64Encode(utf8.encode(jsonStr));

    final jsCode = '''
      try {
        if (typeof Highcharts === 'undefined') {
          console.error('Highcharts is not loaded');
          return;
        }
        var existing = Highcharts.charts.find(function(c) {
          return c && c.container && c.container.id === '$_chartContainerId';
        });
        if (existing) existing.destroy();

        var options = JSON.parse(atob('$encodedJson'));
        options.chart = options.chart || {};
        options.chart.renderTo = '$_chartContainerId';

        var container = document.getElementById('$_chartContainerId');
        if (container) {
          Highcharts.chart('$_chartContainerId', options);
        } else {
          console.error('Chart container not found:', '$_chartContainerId');
        }
      } catch(e) {
        console.error('AAChartView3 JS Exception:', e);
      }
    ''';
    _safeEvalJS(jsCode);
  }

  void _safeEvalJS(String code) {
    try {
      js.context.callMethod('eval', [code]);
    } catch (e) {
      developer.log('JS eval error: $e', name: 'AAChartView3');
    }
  }

  void _destroyExistingChart() {
    if (!_isHighchartsReady()) return;
    _safeEvalJS('''
      var c = Highcharts.charts.find(function(c) {
        return c && c.container && c.container.id === '$_chartContainerId';
      });
      if (c) c.destroy();
    ''');
  }
}
