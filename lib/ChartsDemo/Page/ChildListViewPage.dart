
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'BasicChartPage.dart';
import 'CustomStyleChartPage.dart';
import 'MixedChartPage.dart';
import 'SpecialChartPage.dart';

class ChildListViewPage extends StatelessWidget {
  final int selectedIndex;

   ChildListViewPage({ Key? key,  required this.selectedIndex}) : super(key: key);


  List<List<String>> chartTypeTitleArr = [
  /*Basic types chart*/
  [
  "Column Chart---柱形图",
  "Bar Chart---条形图",
  "Area Chart---折线填充图",
  "Areaspline Chart---曲线填充图",
  "Step Area Chart---直方折线填充图",
  "Step Line Chart---直方折线图",
  "Line Chart---折线图",
  "Spline Chart---曲线图",
  ],
  /*Special types chart*/
  [
  "Polar Column Chart---玫瑰图",
  "Polar Bar Chart---径向条形图",
  "Polar Line Chart---蜘蛛图",
  "Polar Area Chart---雷达图",
  "Step Line Chart---直方折线图",
  "Step Area Chart---直方折线填充图",
  "Pie Chart---扇形图",
  "Bubble Chart---气泡图",
  "Scatter Chart---散点图",
  "Arearange Chart---折线区域范围图",
  "Area Spline range Chart--曲线区域范围图",
  "Columnrange Chart---柱形范围图",
  "Boxplot Chart---箱线图",
  "Waterfall Chart---瀑布图",
  "Pyramid Chart---金字塔图",
  "Funnel Chart---漏斗图",
  "Error Bar Chart---误差图",
  "Gauge Chart---仪表图",
  "Polygon Chart---多边形图"
  ],
  /*Custom chart style by AAChartModel*/
  [
  "Colorful Column Chart---多彩条形图",
  "Colorful Gradient Color Chart---多彩颜色渐变条形图",
  "Discontinuous Data Chart---数值不连续の图表",
  "Mixed Line Chart---虚实线混合折线图",
  "Random Colors Colorful Column Chart---随机颜色の多彩柱形图",
  "Gradient Color Bar Chart---颜色渐变条形图",
  "Stacking polar chart---百分比堆积效果の极地图",
  "Area Chart with minus--带有负数の区域填充图",
  "Step Line Chart--直方折线图",
  "Step Area Chart--直方折线填充图",
  "Nightingale Rose Chart---南丁格尔玫瑰图",
  "Specific Data Customize Datalabel",
  "Chart With Shadow Style---带有阴影效果の图表",
  "Colorful gradient Areaspline Chart---多层次渐变区域填充图",
  "Colorful gradient Spline Chart---多层次渐变曲线图",
  "Gradient Color Areaspline Chart---半透明渐变效果区域填充图",
  "Special Style Marker Of Single Data Element Chart",
  "Special Style Column Of Single Data Element Chart",
  "configure Area Chart Threshold---自定义阈值",
  "custom Scatter Chart Marker Symbol Content---自定义散点图の标志点内容",
  "custom Line Chart Marker Symbol Content---自定义折线图の标志点内容",
  "Triangle Radar Chart---三角形雷达图",
  "Quadrangle Radar Chart---四角形雷达图",
  "Pentagon Radar Chart---五角形雷达图",
  "Hexagon Radar Chart----六角形雷达图",
  "Draw Line Chart With Points Coordinates----通过点坐标来绘制折线图",
  "custom Special Style DataLabel Of Single Data Element Chart",
  "custom Bar Chart Hover Color and Select Color---自定义条形图手指滑动颜色和单个长条被选中颜色",
  "custom Line Chart Chart Hover And Select Halo Style",
  "custom Spline Chart Marker States Hover Style",
  "customNormalStackingChartDataLabelsContentAndStyle---自定义堆积柱状图 DataLabels の内容及样式",
  "upsideDownPyramidChart---倒立の金字塔图",
  "doubleLayerPieChart---双层嵌套扇形图",
  "doubleLayerDoubleColorsPieChart---双层嵌套双颜色主题扇形图",
  "disableSomeOfLinesMouseTrackingEffect---针对部分数据列关闭鼠标或手指跟踪行为",
  "configureColorfulShadowChart---彩色阴影效果の曲线图",
  "configureColorfulDataLabelsStepLineChart---彩色 DataLabels の直方折线图",
  "configureColorfulGradientColorAndColorfulDataLabelsStepAreaChart---彩色渐变效果且彩色 DataLabels の直方折线填充图",
  "disableSplineChartMarkerHoverEffect---禁用曲线图の手指滑动 marker 点の光圈变化放大の效果",
  "configureMaxAndMinDataLabelsForChart---为图表最大值最小值添加 DataLabels 标记",
  "customVerticalXAxisCategoriesLabelsByHTMLBreakLineTag---通过 HTML 的换行标签来实现图表的 X 轴的 分类文字标签的换行效果",
  "noMoreGroupingAndOverlapEachOtherColumnChart---不分组的相互重叠柱状图📊",
  "noMoreGroupingAndNestedColumnChart---不分组的嵌套柱状图📊",
  "topRoundedCornersStackingColumnChart---顶部为圆角的堆积柱状图📊",
  "freeStyleRoundedCornersStackingColumnChart---各个圆角自由独立设置的堆积柱状图📊",
  "customColumnChartBorderStyleAndStatesHoverColor---自定义柱状图 border 样式及手指掠过图表 series 元素时的柱形颜色",

  "customLineChartWithColorfulMarkersAndLines---彩色连接点和连接线的折线图📈",
  "customLineChartWithColorfulMarkersAndLines2---彩色连接点和连接线的多组折线的折线图📈",
  "drawLineChartWithPointsCoordinates---通过点坐标来绘制折线图",
  "configureSpecialStyleColumnForNegativeDataMixedPositiveData---为正负数混合的柱形图自定义特殊样式效果",
  "configureMultiLevelStopsArrGradientColorAreasplineMixedLineChart---多层次半透明渐变效果的曲线填充图混合折线图📈",
  "connectNullsForSingleAASeriesElement---为单个 AASeriesElement 单独设置是否断点重连",
  "lineChartsWithLargeDifferencesInTheNumberOfDataInDifferentSeriesElement---测试有多组数据时, 数据量较大时, 不同组数据量差距较大时的折线图📈",
  "customAreasplineChartWithColorfulGradientColorZones---彩色渐变色区域填充图",

  ],
  /*Mixed Chart*/
  [
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
  ],
];

  List<List<String>>  chartTypeArr = [
  /*Basic types chart*/
  [
  AAChartType.column,
  AAChartType.bar,
  AAChartType.area,
  AAChartType.areaspline,
  AAChartType.area,
  AAChartType.line,
  AAChartType.line,
  AAChartType.spline,
  ],
  /*Special Types chart*/
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
  ],
  [//Empty Array,just for holding place
  ],
  /*Mixed Chart*/
  [
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
  ],
  ];

  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);
    List<String> chartTypeTitleSonArr = chartTypeTitleArr[this.selectedIndex];
    List<String> chartTypesSonArr = chartTypeArr[this.selectedIndex];

    var listView = ListView.separated(
      itemCount: chartTypeTitleSonArr.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(title: Text(chartTypeTitleSonArr[index]),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              // return DrawChartWithAAOptionsPage(selectedIndex: index);
              // return JSFormatterPage(selectedIndex: index);
              // return MixedChartPage(selectedType:  chartTypesArr[index]);
              // return SpecialChartPage(selectedType: chartTypesArr[index]);
              // return CustomStyleChartPage(selectedIndex: index);
              String chartType = chartTypesSonArr[index];
              if (this.selectedIndex == 0) {
                return BasicChartPage(selectedType: chartType);
              } else if (this.selectedIndex == 1) {
                return SpecialChartPage(selectedType: chartType);
              } else if (this.selectedIndex == 2) {
                return CustomStyleChartPage(selectedIndex: index);
              } else if (this.selectedIndex == 3) {
                return MixedChartPage(selectedType:  chartType);
              }
              return ChildListViewPage(selectedIndex: index);
            }));

          }, // Handle your onTap here.
        );
      },
      //分割器构造器
      separatorBuilder: (BuildContext context, int index) {
        return index%2==0?divider1:divider2;
      },
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: listView
          ),
        ),
      ),
    );
  }
}