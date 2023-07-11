import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/ChartOptionsComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
var aaChartView = AAChartView2();
var selectedChartIndex = 0;

class DrawChartWithAAOptionsPage extends StatelessWidget {
  final int selectedIndex;

  const DrawChartWithAAOptionsPage({ Key? key, required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var aaOptions = chartConfigurationWithSelectedIndex(selectedIndex);
    aaChartView.aa_drawChartWithChartOptions(aaOptions);

    selectedChartIndex = selectedIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('DrawChartWithAAOptions'),
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
              child: aaChartView,
              //调整图表视图的宽高
              // child: Container(
          ),
        ),
      ),
    );
  }

  void drawNextSampleChart() {
    selectedChartIndex = selectedChartIndex + 1;
    var aaChartModel = chartConfigurationWithSelectedIndex(selectedChartIndex);
    aaChartView.aa_refreshChartWithChartOptions(aaChartModel);
  }

  AAOptions chartConfigurationWithSelectedIndex(int selectedIndex) {
    switch(selectedIndex) {
      case  0: return ChartOptionsComposer.configureLegendStyle();
      case  1: return ChartOptionsComposer.simpleGaugeChart();
      case  2: return ChartOptionsComposer.gaugeChartWithPlotBand();
      case  3: return ChartOptionsComposer.configureChartWithBackgroundImage();
      case  4: return ChartOptionsComposer.customAreaChartYAxisLabelsAndGridLineStyle();//自定义曲线填充图图的 Y 轴 的 Labels 和 网格线样式
      case  5: return ChartOptionsComposer.adjustYAxisMinValueForChart();
      case  6: return ChartOptionsComposer.configureTheMirrorColumnChart();
      case  7: return ChartOptionsComposer.adjustTheXAxisLabels();
      case  8: return ChartOptionsComposer.adjustGroupPaddingBetweenColumns();
      case  9: return ChartOptionsComposer.configureAAPlotBandsForChart();

      case 10: return ChartOptionsComposer.configureAAPlotLinesForChart();
      case 11: return ChartOptionsComposer.customAATooltipWithJSFuntion();
      case 12: return ChartOptionsComposer.customXAxisCrosshairStyle();
      case 13: return ChartOptionsComposer.configureXAxisLabelsFontColorWithHTMLString();
      case 14: return ChartOptionsComposer.configureXAxisLabelsFontColorAndFontSizeWithHTMLString();
      case 15: return ChartOptionsComposer.configure_DataLabels_XAXis_YAxis_Legend_Style();
      case 16: return ChartOptionsComposer.configureXAxisPlotBand();
      case 17: return ChartOptionsComposer.configureDoubleYAxisChartOptions();
      case 18: return ChartOptionsComposer.configureTripleYAxesMixedChart();
      case 19: return ChartOptionsComposer.configureDoubleYAxesAndColumnLineMixedChart();
      case 20: return ChartOptionsComposer.configureDoubleYAxesMarketDepthChart();

      case 21: return ChartOptionsComposer.customAreaChartTooltipStyleLikeHTMLTable();
      case 22: return ChartOptionsComposer.customAxesGridLineStyle();
      case 23: return ChartOptionsComposer.customRadarChartStyle();
      case 24: return ChartOptionsComposer.customColumnrangeChartStyle();
      case 25: return ChartOptionsComposer.customXAxisLabelsBeImages();//自定义曲线面积图 X 轴 labels 为一组图片🖼
      case 26: return ChartOptionsComposer.configureTriangleRadarChart();//带有颜色标志带の三角形雷达图
      case 27: return ChartOptionsComposer.configureQuadrangleRadarChart();//带有颜色标志带の四角形雷达图
      case 28: return ChartOptionsComposer.configurePentagonRadarChart();//带有颜色标志带の五角形雷达图
      case 29: return ChartOptionsComposer.configureHexagonRadarChart();//带有颜色标志带の六角形雷达图
      case 30: return ChartOptionsComposer.configureSpiderWebRadarChart();//带有颜色标志带の🕸蜘蛛网状雷达图

      case 31: return ChartOptionsComposer.configureComplicatedCustomAreasplineChart();//复杂自定义曲线填充图 1
      case 32: return ChartOptionsComposer.configureComplicatedCustomAreasplineChart2();//复杂自定义曲线填充图 2
      case 33: return ChartOptionsComposer.configureComplicatedCustomAreasplineChart3();//复杂自定义曲线填充图 3
      case 34: return ChartOptionsComposer.yAxisOnTheRightSideChart();//y轴在右侧的图表
      case 35: return ChartOptionsComposer.doubleLayerHalfPieChart();//双层嵌套的玉阕图
      case 36: return ChartOptionsComposer.customAreasplineChartTooltipContentWithHeaderFormat();//通过 tooltip 的 headerFormat 属性来自定义 曲线填充图的 to
      case 37: return ChartOptionsComposer.customAreaChartTooltipStyleWithTotalValueHeader();//浮动提示框 header 显示总值信息
      case 38: return ChartOptionsComposer.configureYAxisLabelsNumericSymbolsMagnitudeOfAerasplineChart();//自定义 Y 轴的 Labels 国际单位符基数及国际单位符
      case 39: return ChartOptionsComposer.timeDataWithIrregularIntervalsChart();//X 轴时间不连续的折线图
      case 40: return ChartOptionsComposer.logarithmicAxisLineChart();//对数轴折线图📈

      case 41: return ChartOptionsComposer.logarithmicAxisScatterChart();//对数轴散点图

      case 42: return ChartOptionsComposer.disableMixedChartInactiveAnimationEffect();//禁用混合图表的 inactive 动画效果
      case 43: return ChartOptionsComposer.adjustBubbleChartMinAndMax();//调整气泡图的 min 和 max 相关属性
      case 44: return ChartOptionsComposer.customLineChartDataLabelsFormat();//自定义曲线图的 DataLabels 的 format 属性
      case 45: return ChartOptionsComposer.customLineChartDataLabelsFormat2();//自定义曲线图的 DataLabels 的 format 属性(更简易方法)
      case 46: return ChartOptionsComposer.complicatedScatterChart();//复杂的自定义散点图
      default: {
        return AAOptions();
      }

      break;
    }
  }

}