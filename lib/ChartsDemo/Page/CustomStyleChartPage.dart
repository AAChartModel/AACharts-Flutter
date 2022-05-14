
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
   String prettyJsonStr = getPrettyJSONString(aaOptionsJsonMap);
   debugPrint(prettyJsonStr);

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

  String getPrettyJSONString(jsonObject){
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
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

      case 25: return CustomStyleChartComposer.drawLineChartWithPointsCoordinates();
      case 26: return CustomStyleChartComposer.customSpecialStyleDataLabelOfSingleDataElementChart();
      case 27: return CustomStyleChartComposer.customBarChartHoverColorAndSelectColor();
      case 28: return CustomStyleChartComposer.customChartHoverAndSelectHaloStyle();
      case 29: return CustomStyleChartComposer.customSplineChartMarkerStatesHoverStyle();
      case 30: return CustomStyleChartComposer.customNormalStackingChartDataLabelsContentAndStyle();
      case 31: return CustomStyleChartComposer.upsideDownPyramidChart();
      case 32: return CustomStyleChartComposer.doubleLayerPieChart();
      case 33: return CustomStyleChartComposer.doubleLayerDoubleColorsPieChart();
      case 34: return CustomStyleChartComposer.disableSomeOfLinesMouseTrackingEffect();
      case 35: return CustomStyleChartComposer.configureColorfulShadowSplineChart();
      case 36: return CustomStyleChartComposer.configureColorfulDataLabelsStepLineChart();
      case 37: return CustomStyleChartComposer.configureColorfulGradientColorAndColorfulDataLabelsStepAreaChart();
      case 38: return CustomStyleChartComposer.disableSplineChartMarkerHoverEffect();
      case 39: return CustomStyleChartComposer.configureMaxAndMinDataLabelsForChart();
      case 40: return CustomStyleChartComposer.customVerticalXAxisCategoriesLabelsByHTMLBreakLineTag();
      case 41: return CustomStyleChartComposer.noMoreGroupingAndOverlapEachOtherColumnChart();
      case 42: return CustomStyleChartComposer.noMoreGroupingAndNestedColumnChart();
      // case 43: return CustomStyleChartComposer.topRoundedCornersStackingColumnChart();
      // case 44: return CustomStyleChartComposer.freeStyleRoundedCornersStackingColumnChart();

      default: {
        //statements;
       return CustomStyleChartComposer.configureChartWithShadowStyle();

    }
      break;
    }

  }
}