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
      body: ListView.builder(
        itemCount: chartModels.length,
        itemBuilder: (context, index) {
          return ChartCell(
            chartModel: chartModels[index],
          );
        },
      ),
    );
  }
}

class ChartCell extends StatefulWidget {
  final AAChartModel chartModel;
  const ChartCell({Key? key, required this.chartModel}) : super(key: key);
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
    _chartView = AAChartView3(controller: _controller);

    // 延迟调用以确保图表初始化完成
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        _controller.aa_drawChartWithChartModel(widget.chartModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      color: Colors.white,
      shadowColor: Colors.blueGrey.withOpacity(0.2),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                color: Colors.blueGrey[50],
                height: 220,
                child: _chartView,
              ),
            ),
            // 可根据需要添加副标题或描述
            // Text('副标题或描述', style: TextStyle(fontSize: 14, color: Colors.blueGrey[400])),
          ],
        ),
      ),
    );
  }
}
