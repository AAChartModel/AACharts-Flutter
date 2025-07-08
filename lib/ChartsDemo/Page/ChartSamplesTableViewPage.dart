import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aacharts_flutter/ChartsDemo/Page/SpecialChartPage.dart';

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
  late AAChartView2 _chartView;

  @override
  void initState() {
    super.initState();
    _chartView = AAChartView2();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _chartView.aa_drawChartWithChartModel(widget.chartModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            SizedBox(
              height: 220,
              child: _chartView,
            ),
          ],
        ),
      ),
    );
  }
}
