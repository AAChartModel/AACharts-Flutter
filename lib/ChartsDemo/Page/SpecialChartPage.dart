
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpecialChartPage extends StatelessWidget {
  final String selectedType;

  const SpecialChartPage({ Key? key, required this.selectedType}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var aaChartView = AAChartView();

    var aaChartModel = configureChartModelWithChartType(selectedType);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    return Scaffold(
      appBar: AppBar(
        title: Text('SpecialChart'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: aaChartView
          ),
        ),
      ),
    );
  }

  AAChartModel configureChartModelWithChartType(String chartType) {
    switch (chartType) {
      case AAChartType.column: return SpecialChartComposer.configureBasePolarChart();
      case AAChartType.bar: return SpecialChartComposer.configurePolarBarChart();
      case AAChartType.line: return SpecialChartComposer.configurePolarLineChart();
      case AAChartType.area: return SpecialChartComposer.configurePolarAreaChart();
      case AAChartType.spline: return SpecialChartComposer.configureStepLineChart();
      case AAChartType.areaspline: return SpecialChartComposer.configureStepAreaChart();
      case AAChartType.pie: return SpecialChartComposer.configurePieChart();
      case AAChartType.bubble: return SpecialChartComposer.configureBubbleChart();
      case AAChartType.scatter: return SpecialChartComposer.configureScatterChart();
      case AAChartType.arearange: return SpecialChartComposer.configureArearangeChart();
      case AAChartType.areasplinerange: return SpecialChartComposer.configureAreasplinerangeChart();
      case AAChartType.columnrange: return SpecialChartComposer.configureColumnrangeChart();
      case AAChartType.boxplot: return SpecialChartComposer.configureBoxplotChart();
      case AAChartType.waterfall: return SpecialChartComposer.configureWaterfallChart();
      case AAChartType.pyramid: return SpecialChartComposer.configurePyramidChart();
      case AAChartType.funnel: return SpecialChartComposer.configureFunnelChart();
      case AAChartType.errorbar: return SpecialChartComposer.configureErrorbarChart();
      //    case .gauge : return configureGaugeChart()
    //         case .polygon: return configurePolygonChart()
    case AAChartType.gauge: return SpecialChartComposer.configureGaugeChart();
    case AAChartType.polygon: return SpecialChartComposer.configurePolygonChart();
      default: return SpecialChartComposer.configureBasePolarChart();
    }
  }

}