import 'dart:convert';
import 'dart:developer';
import 'dart:html' as html;
import 'dart:js' as js;
import 'dart:ui_web' as ui_web;

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AAChartView3Controller {
  _AAChartView3State? _state;

  void _setState(_AAChartView3State state) {
    _state = state;
  }

  void aa_drawChartWithChartModel(AAChartModel aaChartModel) {
    _state?.aa_drawChartWithChartModel(aaChartModel);
  }

  void aa_refreshChartWithChartModel(AAChartModel aaChartModel) {
    _state?.aa_refreshChartWithChartModel(aaChartModel);
  }

  void aa_drawChartWithChartOptions(AAOptions chartOptions) {
    _state?.aa_drawChartWithChartOptions(chartOptions);
  }

  void aa_refreshChartWithChartOptions(AAOptions chartOptions) {
    _state?.aa_refreshChartWithChartOptions(chartOptions);
  }
}

class AAChartView3 extends StatefulWidget {
  final AAChartView3Controller? controller;

  const AAChartView3({Key? key, this.controller}) : super(key: key);

  @override
  State<AAChartView3> createState() => _AAChartView3State();

  // 兼容性方法，用于向后兼容
  void aa_drawChartWithChartModel(AAChartModel aaChartModel) {
    controller?.aa_drawChartWithChartModel(aaChartModel);
  }

  void aa_refreshChartWithChartModel(AAChartModel aaChartModel) {
    controller?.aa_refreshChartWithChartModel(aaChartModel);
  }

  void aa_drawChartWithChartOptions(AAOptions chartOptions) {
    controller?.aa_drawChartWithChartOptions(chartOptions);
  }

  void aa_refreshChartWithChartOptions(AAOptions chartOptions) {
    controller?.aa_refreshChartWithChartOptions(chartOptions);
  }
}

class _AAChartView3State extends State<AAChartView3> {
  final String _chartContainerId = 'chart-container-${DateTime.now().millisecondsSinceEpoch}';
  html.DivElement? _chartContainer;
  String? optionsJson;
  bool _isInitialized = false;
  bool _isHighchartsLoaded = false;

  @override
  void initState() {
    super.initState();
    widget.controller?._setState(this);
    _initializeChart();
  }

  Future<void> _initializeChart() async {
    // 创建图表容器
    _chartContainer = html.DivElement()
      ..id = _chartContainerId
      ..style.width = '100%'
      ..style.height = '100%'
      ..style.position = 'relative';

    // 注册HTML元素
    ui_web.platformViewRegistry.registerViewFactory(
      _chartContainerId,
      (int viewId) => _chartContainer!,
    );

    // 加载Highcharts库和初始化
    await _loadHighchartsLibrary();
    setState(() {
      _isInitialized = true;
    });
  }

  Future<void> _loadHighchartsLibrary() async {
    // 检查Highcharts是否已加载
    if (js.context['Highcharts'] == null) {
      // 动态加载Highcharts库
      final script = html.ScriptElement()
        ..src = 'https://code.highcharts.com/highcharts.js'
        ..async = true;

      html.document.head!.append(script);

      // 等待库加载完成
      await _waitForHighcharts();
    }
    _isHighchartsLoaded = true;
  }

  Future<void> _waitForHighcharts() async {
    int attempts = 0;
    while (js.context['Highcharts'] == null && attempts < 100) {
      await Future.delayed(const Duration(milliseconds: 100));
      attempts++;
    }
    if (js.context['Highcharts'] == null) {
      print('Failed to load Highcharts library');
    }
  }

  void aa_drawChartWithChartModel(AAChartModel aaChartModel) {
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aa_drawChartWithChartOptions(aaOptions);
  }

  void aa_refreshChartWithChartModel(AAChartModel aaChartModel) {
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    configureChartOptionsAndDrawChart(aaOptions);
  }

  void aa_drawChartWithChartOptions(AAOptions chartOptions) {
    if (!_isInitialized || !_isHighchartsLoaded) {
      // 延迟执行直到初始化完成
      Future.delayed(const Duration(milliseconds: 200), () {
        aa_drawChartWithChartOptions(chartOptions);
      });
      return;
    }

    if (optionsJson != null) {
      aa_refreshChartWithChartOptions(chartOptions);
    } else {
      configureChartOptionsAndDrawChart(chartOptions);
    }

    //debug print
    Map<String, dynamic>? aaOptionsJsonMap = chartOptions.toPureJson();
    String prettyJsonStr = getPrettyJSONString(aaOptionsJsonMap);
    log(prettyJsonStr);
  }

  void aa_refreshChartWithChartOptions(AAOptions chartOptions) {
    configureChartOptionsAndDrawChart(chartOptions);
  }

  void configureChartOptionsAndDrawChart(AAOptions chartOptions) {
    String javaScriptStr = configurePureOptionsJsonStr(chartOptions);
    safeEvaluateJavaScriptString(javaScriptStr);
  }

  String configurePureOptionsJsonStr(AAOptions chartOptions) {
    Map<String, dynamic>? aaOptionsJsonMap = chartOptions.toPureJson();
    String aaOptionsJsonStr = jsonEncode(aaOptionsJsonMap);
    optionsJson = aaOptionsJsonStr;

    // 直接使用Highcharts创建图表
    String javaScriptStr = '''
      try { 
        if (typeof Highcharts !== 'undefined') {
          // 先销毁已存在的图表
          const existingChart = Highcharts.charts.find(c => c && c.container && c.container.id === '$_chartContainerId');
          if (existingChart) {
            existingChart.destroy();
          }
          
          // 创建新图表
          const options = JSON.parse('$aaOptionsJsonStr');
          options.chart = options.chart || {};
          options.chart.renderTo = '$_chartContainerId';
          
          // 确保容器存在
          const container = document.getElementById('$_chartContainerId');
          if (container) {
            const chart = Highcharts.chart('$_chartContainerId', options);
            console.log('Chart created successfully:', chart);
          } else {
            console.error('Chart container not found:', '$_chartContainerId');
          }
        } else {
          console.error('Highcharts is not loaded');
        }
      } catch(e) { 
        console.error('JS Exception:', e);
        console.error('Options JSON:', '$aaOptionsJsonStr');
      }
    ''';
    return javaScriptStr;
  }

  void safeEvaluateJavaScriptString(String javaScriptString) {
    try {
      js.context.callMethod('eval', [javaScriptString]);
    } catch (error) {
      print("[JS Error]: $error");
    }
  }

  String getPrettyJSONString(jsonObject) {
    var encoder = const JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }

  @override
  void dispose() {
    // 清理图表实例
    if (_chartContainer != null && js.context['Highcharts'] != null) {
      try {
        js.context.callMethod('eval', ['''
          const chart = Highcharts.charts.find(c => c && c.container && c.container.id === '$_chartContainerId');
          if (chart) {
            chart.destroy();
            console.log('Chart destroyed on dispose');
          }
        ''']);
      } catch (e) {
        print('Error destroying chart: $e');
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isInitialized
        ? HtmlElementView(viewType: _chartContainerId)
        : const Center(child: CircularProgressIndicator());
  }
}
