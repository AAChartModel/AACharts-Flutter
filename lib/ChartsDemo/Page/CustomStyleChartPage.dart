
import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStyleChartPage extends StatelessWidget {
  final int selectedIndex;

  const CustomStyleChartPage({Key key, @required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var aaChartView = AAChartView();

    var aaChartModel = chartConfigurationWithSelectedIndex(selectedIndex);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    //test
   AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
   Map<String, dynamic> aaOptionsJsonMap = aaOptions.toJson();
   String aaOptionsJsonStr = jsonEncode(aaOptionsJsonMap);
   print(aaOptionsJsonStr);

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

  AAChartModel chartConfigurationWithSelectedIndex(int selectedIndex) {
    switch(selectedIndex) {
      case 0:  return CustomStyleChartComposer.configureColorfulBarChart();
      case 1:  return CustomStyleChartComposer.configureColorfulGradientColorBarChart();
      case 2:  return CustomStyleChartComposer.configureDiscontinuousDataChart();
      case 3:  return CustomStyleChartComposer.configureMixedLineChart();
      case 4:  return CustomStyleChartComposer.configureColorfulColumnChart();
      case 5:  return CustomStyleChartComposer.configureGradientColorBarChart();
      case 6:  return CustomStyleChartComposer.configureStackingPolarColumnChart();
      case 7:  return CustomStyleChartComposer.configureWithMinusNumberChart();
      case 8:  return CustomStyleChartComposer.configureStepLineChart();
      case 9:  return CustomStyleChartComposer.configureStepAreaChart();
      case 10: return CustomStyleChartComposer.configureNightingaleRoseChart();

      case 11: return CustomStyleChartComposer.configureCustomSingleDataLabelChart();
      case 12: return CustomStyleChartComposer.configureChartWithShadowStyle();
      case 13: return CustomStyleChartComposer.configureColorfulGradientAreaChart();
      case 14: return CustomStyleChartComposer.configureColorfulGradientSplineChart();
      case 15: return CustomStyleChartComposer.configureGradientColorAreasplineChart();

      case 16: return CustomStyleChartComposer.configureSpecialStyleMarkerOfSingleDataElementChart();
      case 17: return CustomStyleChartComposer.configureSpecialStyleColumnOfSingleDataElementChart();
      case 18: return CustomStyleChartComposer.configureAreaChartThreshold();
      case 19: return CustomStyleChartComposer.customScatterChartMarkerSymbolContent();
      case 20: return CustomStyleChartComposer.customLineChartMarkerSymbolContent();
      case 21: return CustomStyleChartComposer.configureTriangleRadarChart();
      case 22: return CustomStyleChartComposer.configureQuadrangleRadarChart();
      case 23: return CustomStyleChartComposer.configurePentagonRadarChart();
      case 24: return CustomStyleChartComposer.configureHexagonRadarChart();

      default: {
        //statements;
       return CustomStyleChartComposer.configureChartWithShadowStyle();

    }
      break;
    }

  }
}