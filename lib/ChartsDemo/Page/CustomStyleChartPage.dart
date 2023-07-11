
import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var aaChartView = AAChartView2();
var selectedChartIndex = 0;

class CustomStyleChartPage extends StatelessWidget {
  final int selectedIndex;


  const CustomStyleChartPage({ Key? key,  required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var aaChartModel = chartConfigurationWithSelectedIndex(selectedIndex);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

   selectedChartIndex = selectedIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('CustomStyleChart'),
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
    var aaChartModel = chartConfigurationWithSelectedIndex(selectedChartIndex);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);
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
      case 43: return CustomStyleChartComposer.topRoundedCornersStackingColumnChart();
      case 44: return CustomStyleChartComposer.freeStyleRoundedCornersStackingColumnChart();
      case 45: return CustomStyleChartComposer.customColumnChartBorderStyleAndStatesHoverColor();

      case 46: return CustomStyleChartComposer.customLineChartWithColorfulMarkersAndLines();
      case 47: return CustomStyleChartComposer.customLineChartWithColorfulMarkersAndLines2();
      case 48: return CustomStyleChartComposer.drawLineChartWithPointsCoordinates2();
      case 49: return CustomStyleChartComposer.configureSpecialStyleColumnForNegativeDataMixedPositiveData();
      case 50: return CustomStyleChartComposer.configureMultiLevelStopsArrGradientColorAreasplineMixedLineChart();
      case 51: return CustomStyleChartComposer.connectNullsForSingleAASeriesElement();
      case 52: return CustomStyleChartComposer.lineChartsWithLargeDifferencesInTheNumberOfDataInDifferentSeriesElement();
      case 53: return CustomStyleChartComposer.customAreasplineChartWithColorfulGradientColorZones();

      default: {
        //statements;
       return CustomStyleChartComposer.configureChartWithShadowStyle();

    }
      break;
    }

  }
}