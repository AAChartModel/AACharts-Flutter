import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MixedChartPage extends StatelessWidget {
  final String selectedType;

  const MixedChartPage({Key key, @required this.selectedType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var aaChartView = AAChartView();

    var aaChartModel = configureChartModelWithChartType(selectedType);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    return Scaffold(
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
    // case "dashStyleTypeMixed":return MixedChartComposer.configureDashStyleTypesMixedChart();
    case "negativeColorMixed":return MixedChartComposer.configureNegativeColorMixedChart();
    case "scatterMixedLine":return MixedChartComposer.configureScatterMixedLineChart();
    case "negativeColorMixedBubble":return MixedChartComposer.configureNegativeColorMixedBubbleChart();
    case "polygonMixedScatter":return MixedChartComposer.configurePolygonMixedScatterChart();
    // case "polarChartMixed":return MixedChartComposer.configurePolarChartMixedChart();
    // case "columnMixedScatter":return MixedChartComposer.configureColumnMixedScatterChart();
    // case "PieMixedLineMixedColumn":return MixedChartComposer.configurePieMixedLineMixedColumnChart();
    // case "LineChartWithShadow":return MixedChartComposer.configureLineChartWithShadow();
    // case "NegativeColorMixedAreasplineChart": return MixedChartComposer.configureNegativeColorMixedAreasplineChart();
    // case "AerasplinerangeMixedColumnrangeMixedLineChart": return MixedChartComposer.configureAerasplinerangeMixedColumnrangeMixedLineChart();
    default: return MixedChartComposer.configureArearangeMixedLineChart();
    }
  }

}