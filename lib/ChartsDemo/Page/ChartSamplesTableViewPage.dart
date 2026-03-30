import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aacharts_flutter/ChartsDemo/Page/SpecialChartPage.dart';

import '../../AAChartsLib/AAChartCreator/AAChartModel.dart';
import '../../AAChartsLib/AAChartCreator/AAChartView3.dart';

class ChartSamplesTableViewPage extends StatelessWidget {
  final List<AAChartModel> chartModels;

  ChartSamplesTableViewPage({Key? key, required this.chartModels,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Samples'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300, // 每个cell最大宽度300
          mainAxisExtent: 400,     // 每个cell高度400
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: chartModels.length,
        itemBuilder: (context, index) {
          return ChartCell(
            chartModel: chartModels[index],
            cellId: 'chart_cell_$index',
          );
        },
      ),
    );
  }
}

class ChartCell extends StatefulWidget {
  final AAChartModel chartModel;
  final String cellId; // 新增
  const ChartCell({Key? key, required this.chartModel, required this.cellId}) : super(key: key);
  @override
  State<ChartCell> createState() => _ChartCellState();
}

class _ChartCellState extends State<ChartCell> {
  late AAChartView3Controller _controller;
  late AAChartView3 _chartView;

  @override
  void initState() {
    super.initState();
    _controller = AAChartView3Controller();
    _chartView = AAChartView3(controller: _controller, containerId: widget.cellId); // 传递id

    // 延迟调用以确保图表初始化完成
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        _controller.aa_drawChartWithChartModel(widget.chartModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return SizedBox(
      width: 300,
      height: 400,
      child: Card(
        elevation: isDark ? 4 : 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        color: Theme.of(context).cardTheme.color,
        shadowColor: isDark
            ? Colors.black.withValues(alpha: 0.4)
            : Colors.blueGrey.withValues(alpha: 0.2),
        margin: EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            color: isDark ? const Color(0xFF1E1E2E) : Colors.blueGrey[50],
            width: 300,
            height: 400,
            child: _chartView,
          ),
        ),
      ),
    );
  }
}
