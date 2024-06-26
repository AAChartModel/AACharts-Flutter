
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var aaChartView = AAChartView2();
var selectedChartIndex = 0;
class SpecialChartPage extends StatelessWidget {
  final String selectedType;
  final int selectedIndex;

  const SpecialChartPage({ Key? key, required this.selectedType, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var aaChartModel = configureChartModelWithChartType(selectedType);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    selectedChartIndex = selectedIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('SpecialChart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            onPressed: () {
              // Add your onPressed code here!
              drawNextSampleChart();
            },
          ),
        ],
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

  void drawNextSampleChart() {
    selectedChartIndex = selectedChartIndex + 1;
    /*Special Types chart*/
    var specialTypeChartArr =
    [
      AAChartType.column,
      AAChartType.bar,
      AAChartType.line,
      AAChartType.area,
      AAChartType.spline,
      AAChartType.areaspline,
      AAChartType.pie,
      AAChartType.bubble,
      AAChartType.scatter,
      AAChartType.arearange,
      AAChartType.areasplinerange,
      AAChartType.columnrange,
      AAChartType.boxplot,
      AAChartType.waterfall,
      AAChartType.pyramid,
      AAChartType.funnel,
      AAChartType.errorbar,
      AAChartType.gauge,
      AAChartType.polygon,
    ];
    var aaChartModel = configureChartModelWithChartType(specialTypeChartArr[selectedChartIndex % specialTypeChartArr.length]);
    aaChartView.aa_refreshChartWithChartModel(aaChartModel);
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
      case AAChartType.gauge: return SpecialChartComposer.configureGaugeChart();
      case AAChartType.polygon: return SpecialChartComposer.configurePolygonChart();
      default: return SpecialChartComposer.configureBasePolarChart();
    }
  }

}