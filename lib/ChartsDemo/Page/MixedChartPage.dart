import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../AAChartsLib/AAChartCreator/AAChartView2.dart';

class MixedChartPage extends StatelessWidget {
  final String selectedType;

  const MixedChartPage({ Key? key, required this.selectedType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    /*Mixed Chart*/
    List chartTypeNamesArr = [
      "Arearange Mixed Line---面积范围均线图",
      "Columnrange Mixed Line---柱形范围图混合折线图",
      "Stacking Column Mixed Line---堆积柱形图混合折线图",
      "Dash Style Types Mixed---多种类型曲线混合图",
      "Negative Color Mixed Column Chart---基准线以下异色混合图",
      "scatterMixedLine---散点图混合折线图",
      "Negative Color Mixed Bubble Chart---基准线以下异色气泡图",
      "Polygon Mixed Scatter---多边形混合散点图",
      "Polar Chart Mixed---极地混合图",
      "Column Mixed Scatter---柱形图混合散点图",
      "Pie Mixed Line Mixed Column---扇形折线柱形混合图",
      "Line Chart With Shadow---带有阴影效果の折线图",
      "Negative Color Mixed Areaspline chart---基准线以下异色混合曲线填充图",
      "Aerasplinerange Mixed Columnrange Mixed Line Chart---曲线面积范围混合柱形范围混合折线图"
    ];

    /*Mixed Chart*/
    List chartTypesArr = [
      "arearangeMixedLine",
      "columnrangeMixedLine",
      "stackingColumnMixedLine",
      "dashStyleTypeMixed",
      "negativeColorMixed",
      "scatterMixedLine",
      "negativeColorMixedBubble",
      "polygonMixedScatter",
      "polarChartMixed",
      "columnMixedScatter",
      "PieMixedLineMixedColumn",
      "LineChartWithShadow",
      "NegativeColorMixedAreasplineChart",
      "AerasplinerangeMixedColumnrangeMixedLineChart"
    ];

    var aaChartView = AAChartView2();

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
    case "arearangeMixedLine":return MixedChartComposer.configureArearangeMixedLineChart();
    case "columnrangeMixedLine":return MixedChartComposer.configureColumnrangeMixedLineChart();
    case "stackingColumnMixedLine":return MixedChartComposer.configureStackingColumnMixedLineChart();
    case "dashStyleTypeMixed":return MixedChartComposer.configureDashStyleTypeMixedChart();
    case "negativeColorMixed":return MixedChartComposer.configureNegativeColorMixedChart();
    case "scatterMixedLine":return MixedChartComposer.configureScatterMixedLineChart();
    case "negativeColorMixedBubble":return MixedChartComposer.configureNegativeColorMixedBubbleChart();
    case "polygonMixedScatter":return MixedChartComposer.configurePolygonMixedScatterChart();
    case "polarChartMixed":return MixedChartComposer.configurePolarMixedChart();
    case "columnMixedScatter":return MixedChartComposer.configureColumnMixedScatterChart();
    case "PieMixedLineMixedColumn":return MixedChartComposer.configurePieMixedLineMixedColumnChart();
    case "LineChartWithShadow":return MixedChartComposer.configureLineChartWithShadow();
    case "NegativeColorMixedAreasplineChart": return MixedChartComposer.configureNegativeColorMixedAreasplineChart();
    case "AerasplinerangeMixedColumnrangeMixedLineChart": return MixedChartComposer.configureAerasplinerangeMixedColumnrangeMixedLineChart();

    default: return MixedChartComposer.configureArearangeMixedLineChart();
    }
  }

}