import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:aacharts_flutter/ChartsDemo/Page/SpecialChartPage.dart';

class ChartSamplesTableViewPage extends StatelessWidget {
  final List<Map<String, dynamic>> chartSamples = [
    {'type': AAChartType.column, 'title': 'Column Chart'},
    {'type': AAChartType.bar, 'title': 'Bar Chart'},
    {'type': AAChartType.line, 'title': 'Line Chart'},
    {'type': AAChartType.area, 'title': 'Area Chart'},
    {'type': AAChartType.spline, 'title': 'Spline Chart'},
    {'type': AAChartType.areaspline, 'title': 'Area Spline Chart'},
    {'type': AAChartType.pie, 'title': 'Pie Chart'},
    {'type': AAChartType.bubble, 'title': 'Bubble Chart'},
    {'type': AAChartType.scatter, 'title': 'Scatter Chart'},
    {'type': AAChartType.arearange, 'title': 'Area Range Chart'},
    {'type': AAChartType.areasplinerange, 'title': 'Area Spline Range Chart'},
    {'type': AAChartType.columnrange, 'title': 'Column Range Chart'},
    {'type': AAChartType.boxplot, 'title': 'Box Plot Chart'},
    {'type': AAChartType.waterfall, 'title': 'Waterfall Chart'},
    {'type': AAChartType.pyramid, 'title': 'Pyramid Chart'},
    {'type': AAChartType.funnel, 'title': 'Funnel Chart'},
    {'type': AAChartType.errorbar, 'title': 'Error Bar Chart'},
    {'type': AAChartType.gauge, 'title': 'Gauge Chart'},
    {'type': AAChartType.polygon, 'title': 'Polygon Chart'},
  ];

  ChartSamplesTableViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chart Samples'),
      ),
      body: ListView.builder(
        itemCount: chartSamples.length,
        itemBuilder: (context, index) {
          var chart = chartSamples[index];
          return ChartCell(
            title: chart['title'] ?? 'Unknown Chart',
            chartModel: _getChartModel(chart['type']),
          );
        },
      ),
    );
  }

  AAChartModel _getChartModel(String chartType) {
    switch (chartType) {
      case AAChartType.column:
        return SpecialChartComposer.configureBasePolarChart();
      case AAChartType.bar:
        return SpecialChartComposer.configurePolarBarChart();
      case AAChartType.line:
        return SpecialChartComposer.configurePolarLineChart();
      case AAChartType.area:
        return SpecialChartComposer.configurePolarAreaChart();
      case AAChartType.spline:
        return SpecialChartComposer.configureStepLineChart();
      case AAChartType.areaspline:
        return SpecialChartComposer.configureStepAreaChart();
      case AAChartType.pie:
        return SpecialChartComposer.configurePieChart();
      case AAChartType.bubble:
        return SpecialChartComposer.configureBubbleChart();
      case AAChartType.scatter:
        return SpecialChartComposer.configureScatterChart();
      case AAChartType.arearange:
        return SpecialChartComposer.configureArearangeChart();
      case AAChartType.areasplinerange:
        return SpecialChartComposer.configureAreasplinerangeChart();
      case AAChartType.columnrange:
        return SpecialChartComposer.configureColumnrangeChart();
      case AAChartType.boxplot:
        return SpecialChartComposer.configureBoxplotChart();
      case AAChartType.waterfall:
        return SpecialChartComposer.configureWaterfallChart();
      case AAChartType.pyramid:
        return SpecialChartComposer.configurePyramidChart();
      case AAChartType.funnel:
        return SpecialChartComposer.configureFunnelChart();
      case AAChartType.errorbar:
        return SpecialChartComposer.configureErrorbarChart();
      case AAChartType.gauge:
        return SpecialChartComposer.configureGaugeChart();
      case AAChartType.polygon:
        return SpecialChartComposer.configurePolygonChart();
      default:
        return SpecialChartComposer.configureBasePolarChart();
    }
  }
}

class ChartCell extends StatefulWidget {
  final String title;
  final AAChartModel chartModel;
  const ChartCell({Key? key, required this.title, required this.chartModel}) : super(key: key);
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
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
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
