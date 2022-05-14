import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/JSFormatterFunctionComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/MixedChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class JSFormatterPage extends StatelessWidget {
  final int selectedIndex;

  const JSFormatterPage({Key key, @required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var aaChartView = AAChartView();

    var aaOptions = configureChartOptionsWithChartType(selectedIndex);
    aaChartView.aa_drawChartWithChartOptions(aaOptions);

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


  AAOptions configureChartOptionsWithChartType(int selectedIndex) {
    switch(selectedIndex) {
      case  0: return JSFormatterFunctionComposer.customAreaChartTooltipStyleWithSimpleFormatString();
      case  1: return JSFormatterFunctionComposer.customAreaChartTooltipStyleWithDifferentUnitSuffix();
      case  2: return JSFormatterFunctionComposer.customAreaChartTooltipStyleWithColorfulHtmlLabels();
      case  3: return JSFormatterFunctionComposer.customLineChartTooltipStyleWhenValueBeZeroDoNotShow();
      case  4: return JSFormatterFunctionComposer.customBoxplotTooltipContent();
      case  5: return JSFormatterFunctionComposer.customYAxisLabels();
      // case  6: return JSFormatterFunctionComposer.customYAxisLabels2();
      // case  7: return JSFormatterFunctionComposer.customStackedAndGroupedColumnChartTooltip();
      // case  8: return JSFormatterFunctionComposer.customDoubleXAxesChart();
      // case  9: return JSFormatterFunctionComposer.customArearangeChartTooltip();
      // case 10: return JSFormatterFunctionComposer.customLineChartOriginalPointPositionByConfiguringXAxisFormatterAndTooltipFormatter();
      // case 11: return JSFormatterFunctionComposer.customTooltipWhichDataSourceComeFromOutSideRatherThanSeries();
      // case 12: return JSFormatterFunctionComposer.customSpiderChartStyle();
      // case 13: return JSFormatterFunctionComposer.customizeEveryDataLabelSinglelyByDataLabelsFormatter();
      // case 14: return JSFormatterFunctionComposer.customXAxisLabelsBeImages();
      // case 15: return JSFormatterFunctionComposer.customLegendItemClickEvent();
      // case 16: return JSFormatterFunctionComposer.customTooltipPositionerFunction();
      // case 17: return JSFormatterFunctionComposer.fixedTooltipPositionByCustomPositionerFunction();
      // case 18: return JSFormatterFunctionComposer.disableColumnChartUnselectEventEffectBySeriesPointEventClickFunction();
      // case 19: return JSFormatterFunctionComposer.customAreasplineChartTooltipStyleByDivWithCSS();
      // case 20: return JSFormatterFunctionComposer.configureTheAxesLabelsFormattersOfDoubleYAxesChart();
      // case 21: return JSFormatterFunctionComposer.configureTheAxesLabelsFormattersOfDoubleYAxesChart2();
      // case 22: return JSFormatterFunctionComposer.makePieChartShow0Data();
      // case 23: return JSFormatterFunctionComposer.customColumnChartXAxisLabelsTextByInterceptTheFirstFourCharacters();
      //     ;
      default: {
        return AAOptions();
      }

      break;
    }
  }

}