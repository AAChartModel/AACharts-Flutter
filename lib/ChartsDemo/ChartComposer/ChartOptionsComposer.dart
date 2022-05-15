import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAnimation.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAChart.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumn.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAItemStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALegend.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPie.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotBandsElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotLinesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASubtitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAXAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';

class ChartOptionsComposer {

  static AAOptions configureLegendStyle() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .animationTypeSet(AAChartAnimationType.easeFrom)//设置图表渲染动画类型为 EaseFrom
        .dataLabelsEnabledSet(false)
        .zoomTypeSet(AAChartZoomType.x)
    // .marginSet(100, 100, 100, 100)
        .colorsThemeSet([
      AAGradientColor.oceanBlue,
      AAGradientColor.sanguine,
      AAGradientColor.lusciousLime,
      AAGradientColor.mysticMauve
    ])
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .stackingSet(AAChartStackingType.normal)
        .xAxisLabelsStyleSet(AAStyle.colorSizeWeight(AAColor.purple, 18, AAChartFontWeightType.bold))
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo Hot")
          .dataSet([45000000, 43000000, 50000000, 55000000, 58000000, 62000000, 83000000, 39000000, 56000000, 67000000, 50000000, 34000000, 50000000, 67000000, 58000000, 29000000, 46000000, 23000000, 47000000, 46000000, 38000000, 56000000, 48000000, 36000000])
      ,
      new AASeriesElement()
          .nameSet("Berlin Hot")
          .dataSet([38000000, 31000000, 32000000, 32000000, 64000000, 66000000, 86000000, 47000000, 52000000, 75000000, 52000000, 56000000, 54000000, 60000000, 46000000, 63000000, 54000000, 51000000, 58000000, 64000000, 60000000, 45000000, 36000000, 67000000])
      ,
      new AASeriesElement()
          .nameSet("New York Hot")
          .dataSet([46000000, 32000000, 53000000, 58000000, 86000000, 68000000, 85000000, 73000000, 69000000, 71000000, 91000000, 74000000, 60000000, 50000000, 39000000, 67000000, 55000000, 49000000, 65000000, 45000000, 64000000, 47000000, 63000000, 64000000])
      ,
      new AASeriesElement()
          .nameSet("London Hot")
          .dataSet([60000000, 51000000, 52000000, 53000000, 64000000, 84000000, 65000000, 68000000, 63000000, 47000000, 72000000, 60000000, 65000000, 74000000, 66000000, 65000000, 71000000, 59000000, 65000000, 77000000, 52000000, 53000000, 58000000, 53000000])
      ,
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.plotOptions.series.pointIntervalSet(24 * 3600 * 1000);

    var aaCrosshair = new AACrosshair()
        .colorSet("#FFD700")//pure gold color
    .dashStyleSet(AAChartLineDashStyleType.longDashDotDot)
        .widthSet(2)
    .zIndexSet(10)
        ;

    aaOptions.xAxis.crosshairSet(aaCrosshair);
    aaOptions.yAxis.crosshairSet(aaCrosshair);

    aaOptions.yAxis.labels.format = "{value} \$";//给y轴添加单位

    //https://jshare.com.cn/highcharts/hhhhf0
    aaOptions.xAxis
        .typeSet(AAChartAxisType.datetime)
        .dateTimeLabelFormatsSet(
    new AADateTimeLabelFormats()
        .daySet("%e of %b"));

    //https://github.com/AAChartModel/AAChartKit-Swift/issues/306
    aaOptions.xAxis
        .gridLineColorSet(AAColor.darkGray)
        .gridLineWidthSet(1)
    .minorGridLineColorSet(AAColor.lightGray)
    .minorGridLineWidthSet(0.5)
    .minorTickIntervalSet("auto")
        ;

    aaOptions.yAxis
        .gridLineColorSet(AAColor.darkGray)
        .gridLineWidthSet(1)
    .minorGridLineColorSet(AAColor.lightGray)
    .minorGridLineWidthSet(0.5)
    .minorTickIntervalSet("auto")
        ;

    aaOptions.legend
        .itemMarginTopSet(20)
        .symbolRadiusSet(10)//图标圆角
        .symbolHeightSet(20)//标志高度
        .symbolWidthSet(20)//图标宽度
        .alignSet(AAChartAlignType.right)
        .layoutSet(AAChartLayoutType.vertical)
        .verticalAlignSet(AAChartVerticalAlignType.top)
        .itemStyleSet(new AAItemStyle()
        .colorSet(AAColor.red)
        .fontSizeSet(20)
        .fontWeightSet(AAChartFontWeightType.bold));

    //禁用图例点击事件
    // aaOptions.plotOptions.series.events = new AAEvents()
    //     .legendItemClickSet("
    // public static function() {
    //   return false
    // }
    // ");

    // aaOptions.defaultOptionsSet(
    // new AALang()
    //     .resetZoomSet("重置缩放比例")
    //     .thousandsSepSet(","));

    return aaOptions;
  }

  static AAOptions configureChartWithBackgroundImage() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .titleSet("编程语言热度")
        .subtitleSet("虚拟数据")
        .dataLabelsEnabledSet(true)//是否直接显示扇形图数据
        .yAxisTitleSet("摄氏度")
        .seriesSet([
      new AASeriesElement()
          .nameSet("语言热度占比")
          .dataSet([
        ["Java"  , 67],
        ["Swift" , 44],
        ["Python", 83],
        ["OC"    , 11],
        ["Ruby"  , 42],
        ["PHP"   , 31],
        ["Go"    , 63],
        ["C"     , 24],
        ["C#"    , 888],
        ["C++"   , 66],
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.chart.plotBackgroundImageSet("https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2859216016,2109779587&fm=27&gp=0.jpg");

    return aaOptions;
  }

//https://github.com/AAChartModel/AAChartKit-Swift/issues/299
  static AAOptions customAreaChartYAxisLabelsAndGridLineStyle() {
    var model = new AAChartModel()
        .chartTypeSet(AAChartType.line)
        .animationTypeSet(AAChartAnimationType.easeInSine)
        .colorsThemeSet(["#047BFF"])
        .legendEnabledSet(false)
        .yAxisAllowDecimalsSet(true)
        .seriesSet([
      new AASeriesElement()
          .typeSet(AAChartType.area)
          .dataSet([11.17, 12.35, 12.35, 12.35, 12.35, 12.35, 12.35, 13])
          .lineWidthSet(6)
          .markerSet(
          new AAMarker()
              .lineColorSet("#047BFF")
              .fillColorSet(AAColor.white)
              .lineWidthSet(4)
              .radiusSet(8)
      )
          .fillColorSet(AAGradientColor.linearGradient1(
          AALinearGradientDirection.toBottom,
          "#047BFFB3",
          "#047BFF00"
      ))
          .borderColorSet("#047BFF")
          .allowPointSelectSet(false)

    ]);

    var aaOptions = model.aa_toAAOptions();

    aaOptions.chart
        .marginRightSet(0)
        .marginTopSet(50);

    aaOptions.yAxis
        .allowDecimalsSet(false)
// .alternateGridColorSet("#EAF4FF")
// .tickAmountSet(13)
        .gridLineWidthSet(0);

    var categories = ["17.04","21.04","25.04","29.04","03.05","07.05","11.05", ""];
// var categoryJSArrStr = AAJSArrayConverter.JSArrayWithHaxeArray(categories);

    aaOptions.xAxis.labels
//     .formatterSet("
// static AAOptions () {
//   return ${categoryJSArrStr)[this.value];
//   }
//   ");
//
//   aaOptions.tooltip
//       .useHTMLSet(true)
//       .formatterSet("
//   static AAOptions () {
//   return  'The value for <b>'
//   + ${categoryJSArrStr)[this.x]
//   + '</b> is <b>' + this.y + '</b> '
//   + \"℃\";
//   }
//   ")
        ;

    return aaOptions;
  }

  static AAOptions adjustYAxisMinValueForChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .borderRadiusSet(5)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .dataSet([1003.9, 1004.2, 1005.7, 1008.5, 1011.9, 1015.2,])
          .colorSet(AAGradientColor.sanguine)
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.yAxis.minSet(1000);

    return aaOptions;
  }

  static AAOptions configureTheMirrorColumnChart() {
    var gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#7052f4",
        "#00b0ff"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var gradientColorDic2 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#EF71FF",
        "#4740C8"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var aaChart = new AAChart()
        .typeSet(AAChartType.column);

    var aaTitle = new AATitle()
        .textSet("正负镜像柱状图")
        .styleSet(new AAStyle()
        .colorSet(AAColor.black)
        .fontSizeSet(12.0));

    var aaXAxis = new AAXAxis()
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ]);

    var aaYAxis1 = new AAYAxis()
        .gridLineWidthSet(0)// Y 轴网格线宽度
        .titleSet(new AATitle()
        .textSet("收入"));//Y 轴标题;

    var aaYAxis2 = new AAYAxis()
        .oppositeSet(true)
        .titleSet(new AATitle()
        .textSet("支出"));

    var YAxisArr = [aaYAxis1,aaYAxis2];

    var aaSeries = new AASeries()
        .animationSet(new AAAnimation()
        .durationSet(800)
        .easingSet(AAChartAnimationType.bounce));

    var aaColumn = new AAColumn()
        .groupingSet(false)
        .borderWidthSet(0)
        .borderRadiusSet(5);

    var aaPlotOptions = new AAPlotOptions()
        .seriesSet(aaSeries)
        .columnSet(aaColumn);

    var aaSeriesElement1 = new AASeriesElement()
        .nameSet("收入")
        .colorSet(gradientColorDic1)
        .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9,7.0, 6.9, 9.5, 14.5,]);

    var aaSeriesElement2 = new AASeriesElement()
        .nameSet("支出")
        .colorSet(gradientColorDic2)
        .dataSet([-20.1, -14.1, -8.6, -2.5, -0.8, -5.7, -11.3, -17.0, -22.0, -24.8, -24.1, -20.1, -14.1, -8.6, -2.5]);

    var aaSeriesArr = [aaSeriesElement1,aaSeriesElement2];

    var aaOptions = new AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .xAxisSet(aaXAxis)
        .yAxisArraySet(YAxisArr)
        .plotOptionsSet(aaPlotOptions)
        .seriesSet(aaSeriesArr);

    return aaOptions;
  }

  static AAOptions adjustTheXAxisLabels() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.column)
        .colorsThemeSet(["#ffc069","#fe117c","#06caf4","#7dffc0"])
        .categoriesSet([
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December",
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December",])
        .dataLabelsEnabledSet(false)
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .colorSet(AAGradientColor.sanguine)
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
      ,
      new AASeriesElement()
          .nameSet("2021")
          .colorSet(AAGradientColor.deepSea)
          .dataSet([
        null,null,null,null,null,null,
        null,null,null,null,null,null,
        0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
      ,
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.xAxis
        .tickIntervalSet(3)
        .labelsSet(new AALabels()
        .autoRotationSet([-10, -20, -30, -40, -50, -60, -70, -80, -90]));

    return aaOptions;
  }

  static AAOptions adjustGroupPaddingBetweenColumns() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.column)
        .categoriesSet(["January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December"])
        .dataLabelsEnabledSet(false)
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .colorSet(AAGradientColor.coastalBreeze)
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    //    * 关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.groupPadding
    //
    //    * 关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.pointPadding
    aaOptions.plotOptions.column
        .groupPaddingSet(0.05)//Padding between each column or bar, in x axis units. default：0.1.
        .pointPaddingSet(0);//Padding between each value groups, in x axis units. default：0.2.;

    return aaOptions;
  }

  static AAOptions simpleGaugeChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.gauge)
        .yAxisMinSet(0)
        .yAxisMaxSet(100)
        .backgroundColorSet(["#555555"])
        .seriesSet([
      new AASeriesElement()
          .dataSet([80]
      )]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    //
    // aaOptions.paneSet(new AAPane()
    //     .startAngleSet(-150)
    //     .endAngleSet(150));

    aaOptions.yAxis
        .gridLineColorSet(AAColor.white)
        .plotBandsSet([
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(60)
          .colorSet(AAColor.red)
      // .outerRadiusSet("105%")
      // .thicknessSet("5%")
    ]);

    return aaOptions;
  }

  static AAOptions gaugeChartWithPlotBand() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.gauge)
        .backgroundColorSet(["#555555"])
        .yAxisMinSet(0)
        .yAxisMaxSet(200)
        .yAxisTitleSet("km/h")
        .seriesSet([
      new AASeriesElement()
          .nameSet("Speed")
          .dataSet([80]
      )]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    // aaOptions.paneSet(new AAPane()
    //     .startAngleSet(-150)
    //     .endAngleSet(150));

    aaOptions.yAxis
        .gridLineColorSet(AAColor.white)
        .plotBandsSet([
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(120)
          .colorSet("#1e90ff"),
      new AAPlotBandsElement()
          .fromSet(120)
          .toSet(160)
          .colorSet("#ef476f"),
      new AAPlotBandsElement()
          .fromSet(160)
          .toSet(200)
          .colorSet("#ffd066"),
    ]);

    return aaOptions;
  }

  static AAOptions configureAAPlotBandsForChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.spline)//图形类型
        .dataLabelsEnabledSet(false)
        .markerRadiusSet(0)
        .categoriesSet(["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
          .colorSet(AAColor.white)
          .lineWidthSet(10)
    ]);
    var aaOptions = aaChartModel.aa_toAAOptions();
    var aaPlotBandsArr = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet("#BC2B44"),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet("#EC6444"),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet("#f19742"),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet("#f3da60"),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet("#9bd040"),
      new AAPlotBandsElement()
          .fromSet(25)
          .toSet(50)
          .colorSet("#acf08f"),
    ];

    aaOptions.yAxis.plotBandsSet(aaPlotBandsArr);

    return aaOptions;
  }

  static AAOptions configureAAPlotLinesForChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .dataLabelsEnabledSet(false)
        .categoriesSet(["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
          .fillOpacitySet(0.5)
          .lineWidthSet(10)
          .zonesSet([
        // new AAZonesElement()
        //     .valueSet(12)
        //     .colorSet("#1e90ff"),
        // new AAZonesElement()
        //     .valueSet(24)
        //     .colorSet("#ef476f"),
        // new AAZonesElement()
        //     .valueSet(36)
        //     .colorSet("#04d69f"),
        // new AAZonesElement()
        //     .colorSet("#ffd066"),
      ])
    ]);
    var aaOptions = aaChartModel.aa_toAAOptions();

    var aaStyle = new AAStyle()
        .colorSet("#FFD700") //#FFD700Set(纯金色)
    // .backgroundColorSet(AAColor.black)
    // .borderRadiusSet(5)
    // .borderSet("6px solid #000000")
    // .opacitySet(1.0)
        .fontWeightSet(AAChartFontWeightType.bold)
    ;

    var aaStyle1 = new AAStyle()
        .colorSet(AAColor.red) //#FFD700Set(纯金色)
    // .backgroundColorSet(AAColor.black)
    // .borderRadiusSet(5)
    // .borderSet("2px solid red")
    // .opacitySet(1.0)
    // .fontWeightSet(AAChartFontWeightType.bold)
    // .paddingSet(6)
    // .fontSizeSet(16)
        ;

    var aaPlotLinesArr = [
      new AAPlotLinesElement()
          .colorSet("#1e90ff")//颜色值Set(16进制)
      // .dashStyleSet(AAChartLineDashStyleType.longDashDotDot)//样式：Dash,Dot,Solid等,默认Solid
          .widthSet(1.0) //标示线粗细
          .valueSet(12) //所在位置
          .zIndexSet(1) //层叠,标示线在图表中显示の层叠级别，值越大，显示越向前
          .labelSet(new AALabel()
      // .useHTMLSet(true)
          .textSet("PLOT LINES ONE")
          .styleSet(aaStyle1)),
      new AAPlotLinesElement()
          .colorSet("#ef476f")
      // .dashStyleSet(AAChartLineDashStyleType.longDashDot)
          .widthSet(1)
          .valueSet(24)
          .labelSet(new AALabel()
      // .useHTMLSet(true)
          .textSet("PLOT LINES TWO")
          .styleSet(aaStyle)),
      new AAPlotLinesElement()
          .colorSet("#04d69f")
      // .dashStyleSet(AAChartLineDashStyleType.longDash)
          .widthSet(1)
          .valueSet(36)
          .labelSet(new AALabel()
      // .useHTMLSet(true)
          .textSet("PLOT LINES THREE")
          .styleSet(aaStyle)),
    ];

    aaOptions.yAxis.plotLinesSet(aaPlotLinesArr);

    return aaOptions;
  }

  static AAOptions customAATooltipWithJSFuntion() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.area)//图形类型
        .titleSet("近三个月金价起伏周期图")//图表主标题
        .subtitleSet("金价Set(元/克)")//图表副标题
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .dataLabelsEnabledSet(false)
        .zoomTypeSet(AAChartZoomType.x)
        .categoriesSet([
      "10-01","10-02","10-03","10-04","10-05","10-06","10-07","10-08","10-09","10-10","10-11",
      "10-12","10-13","10-14","10-15","10-16","10-17","10-18","10-19","10-20","10-21","10-22",
      "10-23","10-024","10-25","10-26","10-27","10-28","10-29","10-30","10-31","11-01","11-02",
      "11-03","11-04","11-05","11-06","11-07","11-08","11-09","11-10","11-11","11-12","11-13",
      "11-14","11-15","11-16","11-17","11-18","11-19","11-20","11-21","11-22","11-23","11-024",
      "11-25","11-26","11-27","11-28","11-29","11-30","12-01","12-02","12-03","12-04","12-05",
      "12-06","12-07","12-08","12-09","12-10","12-11","12-12","12-13","12-14","12-15","12-16",
      "12-17","12-18","12-19","12-20","12-21","12-22","12-23","12-024","12-25","12-26","12-27",
      "12-28","12-29","12-30"])
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .lineWidthSet(3)
          .colorSet("#FFD700"/*纯金色*/)
          .fillOpacitySet(0.5)
          .dataSet([
        1.51, 6.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
        4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 12.7, 0.94, 1.44,
        18.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46,
        3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.33, 4.68, 1.31, 1.10, 13.9, 1.10, 1.16, 1.67,
        2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3.25, 3.32, 3.07, 3.92, 3.05,
        2.18, 3.24,3.23, 3.15, 2.90, 1.81, 2.11, 2.43, 5.59, 3.09, 4.09, 6.14, 5.33, 6.05,
        5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.48])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    var themeMap = new Map<String, Object>();
    themeMap["display"] = "none";

    // aaOptions.chart
    //     .resetZoomButtonSet(new AAResetZoomButton()
    //     .themeSet(themeMap)
    // );//隐藏图表缩放后的默认显示的缩放按钮;

    aaOptions.tooltip
        .useHTMLSet(true)
    //     .formatterSet("
    // function () {
    // return ' 🌕 🌖 🌗 🌘 🌑 🌒 🌓 🌔 <br/> '
    // + ' Support JavaScript Function Just Right Now  <br/> '
    // + ' The Gold Price For <b>2020 '
    // +  this.x
    // + ' </b> Is <b> '
    // +  this.y
    // + ' </b> Dollars ';
    // }
    // ")
        .valueDecimalsSet(2)//设置取值精确到小数点后几位//设置取值精确到小数点后几位
        .backgroundColorSet(AAColor.black)
        .borderColorSet(AAColor.black)
        .styleSet(AAStyle.colorSize("#FFD700", 12))
    ;

    return aaOptions;
  }

  static AAOptions customXAxisCrosshairStyle() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .colorSet(AAGradientColor.deepSea)
          .dataSet([
        [12464064, 21.5],
        [12464928, 22.1],
        [12465792,   23],
        [12466656, 23.8],
        [12467520, 21.4],
        [12468384, 21.3],
        [12469248, 18.3],
        [12470112, 15.4],
        [12470976, 16.4],
        [12471840, 17.7],
        [12472704, 17.5],
        [12473568, 17.6],
        [12474432, 17.7],
        [12475296, 16.8],
        [12476160, 17.7],
        [12477024, 16.3],
        [12477888, 17.8],
        [12478752, 18.1],
        [12479616, 17.2],
        [12480480, 14.4],
        [12481344, 13.7],
        [12482208, 15.7],
        [12483072, 14.6],
        [12483936, 15.3],
        [12484800, 15.3],
        [12485664, 15.8],
        [12486528, 15.2],
        [12487392, 14.8],
        [12488256, 14.4],
        [12489120,   15],
        [12489984, 13.6]
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis
        .crosshairSet(new AACrosshair()
    // .dashStyleSet(AAChartLineDashStyleType.longDashDot)
        .colorSet(AAColor.red)
        .widthSet(1));

    return aaOptions;
  }

  static AAOptions configureXAxisLabelsFontColorWithHTMLString() {
    var categories = [
      "<font color=\\\"#CC0066\\\">孤岛危机<\\/font>",
      "<font color=\\\"#CC0033\\\">使命召唤<\\/font>",
      "<font color=\\\"#FF0066\\\">荣誉勋章<\\/font>",
      "<font color=\\\"##66FF99\\\">狙击精英<\\/font>",
      "<font color=\\\"#00FF00\\\">神秘海域<\\/font>",
      "<font color=\\\"#00CC00\\\">美国末日<\\/font>",
      "<font color=\\\"#666FF\\\">巫师狂猎<\\/font>",
      "<font color=\\\"#000CC\\\">死亡搁浅<\\/font>",
      "<font color=\\\"#9933CC\\\">地狱边境<\\/font>",
      "<font color=\\\"##FFCC99\\\">忍者之印<\\/font>",
      "<font color=\\\"#FFCC00\\\">合金装备<\\/font>",
      "<font color=\\\"#CC99090\\\">全战三国<\\/font>",
    ];

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .stackingSet(AAChartStackingType.normal)
        .categoriesSet(categories)
        .dataLabelsEnabledSet(false)
        .markerRadiusSet(0)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(AAGradientColor.mysticMauve)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis.labels.useHTMLSet(true);

    return aaOptions;
  }

  static AAOptions configureXAxisLabelsFontColorAndFontSizeWithHTMLString() {
    var categories = [
      "<span style=\\\"color:#CC0066;font-weight:bold;font-size:10px\\\">使命召唤</span>",
      "<span style=\\\"color:#CC0033;font-weight:bold;font-size:11px\\\">荣誉勋章</span>",
      "<span style=\\\"color:#FF0066;font-weight:bold;font-size:12px\\\">狙击精英</span>",
      "<span style=\\\"color:#66FF99;font-weight:bold;font-size:13px\\\">神秘海域</span>",
      "<span style=\\\"color:#00FF00;font-weight:bold;font-size:14px\\\">美国末日</span>",
      "<span style=\\\"color:#00CC00;font-weight:bold;font-size:15px\\\">巫师狂猎</span>",
      "<span style=\\\"color:#000CCC;font-weight:bold;font-size:15px\\\">孤岛危机</span>",
      "<span style=\\\"color:#666FFF;font-weight:bold;font-size:14px\\\">地狱边境</span>",
      "<span style=\\\"color:#9933CC;font-weight:bold;font-size:13px\\\">忍者之印</span>",
      "<span style=\\\"color:#FFCC99;font-weight:bold;font-size:12px\\\">合金装备</span>",
      "<span style=\\\"color:#FFCC00;font-weight:bold;font-size:11px\\\">全战三国</span>",
      "<span style=\\\"color:#CC9909;font-weight:bold;font-size:10px\\\">死亡搁浅</span>",
    ];

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .stackingSet(AAChartStackingType.normal)
        .yAxisVisibleSet(false)
        .categoriesSet(categories)
        .markerRadiusSet(0)
        .dataLabelsEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(AAGradientColor.deepSea)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis.labels.useHTMLSet(true);

    return aaOptions;
  }

  static AAOptions configure_DataLabels_XAXis_YAxis_Legend_Style() {
    var backgroundColorGradientColor = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#4F00BC",
        "#29ABE2"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var fillColorGradientColor = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "rgba(256,256,256,0.3)",
        "rgba(256,256,256,1.0)"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .backgroundColorSet(backgroundColorGradientColor)
        .yAxisVisibleSet(true)
        .yAxisTitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .markerRadiusSet(0)
        .xAxisLabelsStyleSet(AAStyle.colorStr(AAColor.white))
        .seriesSet([
      new AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(AAColor.white)
          .lineWidthSet(7)
          .fillColorSet(fillColorGradientColor)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.plotOptions.areaspline.dataLabels
        .enabledSet(true)
        .styleSet(new AAStyle()
        .colorSet(AAColor.white)
        .fontSizeSet(14)
        .fontWeightSet(AAChartFontWeightType.thin)
        .textOutlineSet("0px 0px contrast")//文字轮廓描边
    );

    var aaCrosshair = new AACrosshair()
        .dashStyleSet(AAChartLineDashStyleType.longDashDot)
        .colorSet(AAColor.white)
        .widthSet(1);

    var aaStyle = new AAStyle()
        .fontSizeSet(10)
        .fontWeightSet(AAChartFontWeightType.bold)
        .colorSet(AAColor.white);//轴文字颜色;

    aaOptions.xAxis
        .tickWidthSet(2)//X轴刻度线宽度
        .lineWidthSet(1.5)//X轴轴线宽度
        .lineColorSet(AAColor.white)//X轴轴线颜色
        .crosshairSet(aaCrosshair)
        .labelsSet(new AALabels()
        .styleSet(aaStyle));

    aaOptions.yAxis
        .oppositeSet(true)
        .tickWidthSet(2)
        .lineWidthSet(1.5)//Y轴轴线颜色
        .lineColorSet(AAColor.white)//Y轴轴线颜色
        .gridLineWidthSet(0)//Y轴网格线宽度
        .crosshairSet(aaCrosshair)
        .labelsSet(new AALabels()
        .formatSet("{value} ℃")//给y轴添加单位
        .styleSet(aaStyle));

    return aaOptions;
  }

  static AAOptions configureXAxisPlotBand() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ])
        .yAxisTitleSet("")
        .yAxisGridLineWidthSet(0)
        .markerRadiusSet(8)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .seriesSet([
      new AASeriesElement()
          .nameSet("New York Hot")
          .lineWidthSet(5.0)
          .colorSet("rgba(220,20,60,1)")//猩红色, alpha 透明度 1
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
      new AASeriesElement()
          .typeSet(AAChartType.column)
          .nameSet("Berlin Hot")
          .colorSet("#25547c")
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    var aaPlotBandsArr = [
      new AAPlotBandsElement()
          .fromSet(-0.25)//值域颜色带X轴起始值
          .toSet(4.75)//值域颜色带X轴结束值
          .colorSet("#ef476f66")//值域颜色带填充色
          .zIndexSet(0)//层叠,标示线在图表中显示の层叠级别，值越大，显示越向前
      ,
      new AAPlotBandsElement()
          .fromSet(4.75)
          .toSet(8.25)
          .colorSet("#ffd06666")
          .zIndexSet(0)
      ,
      new AAPlotBandsElement()
          .fromSet(8.25)
          .toSet(11.25)
          .colorSet("#04d69f66")
          .zIndexSet(0)
      ,
    ];

    aaOptions.xAxis.plotBandsSet(aaPlotBandsArr);

    return aaOptions;
  }

  static AAOptions configureDoubleYAxisChartOptions() {
    var aaTitle = new AATitle()
        .textSet("");

    var aaXAxis = new AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet([
      "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
      "C#", "C++", "Perl", "R", "MATLAB", "SQL"
    ]);

    var aaYAxisTitleStyle = new AAStyle()
        .colorSet("#1e90ff")//Title font color
        .fontSizeSet(14)//Title font size
        .fontWeightSet(AAChartFontWeightType.bold)//Title font weight
        .textOutlineSet("0px 0px contrast");

    var aaYAxisLabels = new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .formatSet("{value:.,0f}mm")//让y轴の值完整显示 而不是100000显示为100k,同时单位后缀为°C
        .styleSet(new AAStyle()
        .colorSet(AAColor.red)//yAxis Label font color
        .fontSizeSet(15)//yAxis Label font size
        .fontWeightSet(AAChartFontWeightType.bold)//yAxis Label font weight
    );

    var yAxisOne = new AAYAxis()
        .visibleSet(true)
        .labelsSet(aaYAxisLabels)
        .titleSet(new AATitle()
        .textSet("冬季降雨量")
        .styleSet(aaYAxisTitleStyle))
        .oppositeSet(true);


    var yAxisTwo = new AAYAxis()
        .visibleSet(true)
        .labelsSet(aaYAxisLabels)
        .titleSet(new AATitle()
        .textSet("夏季降雨量")
        .styleSet(aaYAxisTitleStyle));

    var aaTooltip = new AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#f54ea2",
        "#ff7676"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var gradientColorDic2 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#17ead9",
        "#6078ea"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var aaMarker = new AAMarker()
        .radiusSet(7)//曲线连接点半径，默认是4
        .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
        .fillColorSet(AAColor.white)//点の填充色Set(用来设置折线连接点の填充色)
        .lineWidthSet(3)//外沿线の宽度Set(用来设置折线连接点の轮廓描边の宽度)
        .lineColorSet("");//外沿线の颜色Set(用来设置折线连接点の轮廓描边颜色，当值为空字符串时，默认取数据点或数据列の颜色);

    var element1 = new AASeriesElement()
        .nameSet("2017")
        .typeSet(AAChartType.areaspline)
    //          .borderRadiusSet(4)
        .colorSet(gradientColorDic1)
        .markerSet(aaMarker)
    // .yAxisSet(1)
        .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]);

    var element2 = new AASeriesElement()
        .nameSet("2018")
        .typeSet(AAChartType.column)
        .colorSet(gradientColorDic2)
    // .yAxisSet(0)
        .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]);

    var aaOptions = new AAOptions()
        .titleSet(aaTitle)
        .xAxisSet(aaXAxis)
    // .yAxisArraySet([yAxisOne,yAxisTwo])
        .tooltipSet(aaTooltip)
        .seriesSet([element1,element2]);

    return aaOptions;
  }

  static AAOptions configureTripleYAxesMixedChart() {
    var colorsThemeArr = [
      "red",
      "mediumspringgreen",
      "deepskyblue",
    ];

    var aaTitle = new AATitle()
        .textSet("东京月平均天气数据");

    var aaSubtitle = new AASubtitle()
        .textSet("数据来源: WorldClimate.com");

    var aaXAxis = new AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ]);

    var yAxis1 = new AAYAxis()
        .visibleSet(true)
        .gridLineWidthSet(0)
        .labelsSet(new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .formatSet("{value}°C")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[2])//yAxis Label font color
    ))
        .titleSet(new AATitle()
        .textSet("温度")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[2])))
        .oppositeSet(true);

    var yAxis2 = new AAYAxis()
        .visibleSet(true)
        .gridLineWidthSet(0)
        .labelsSet(new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .formatSet("{value}°mm")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[0])//yAxis Label font color
    ))
        .titleSet(new AATitle()
        .textSet("降雨量")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[0])));

    var yAxis3 = new AAYAxis()
        .visibleSet(true)
        .gridLineWidthSet(0)
        .labelsSet(new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .formatSet("{value}°mb")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[1])//yAxis Label font color
    ))
        .titleSet(new AATitle()
        .textSet("海平面气压")
        .styleSet(new AAStyle()
        .colorSet(colorsThemeArr[1])))
        .oppositeSet(true);


    var aaTooltip = new AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var aaLegend = new AALegend()
        .enabledSet(true)
    // .floatingSet(true)
        .layoutSet(AAChartLayoutType.vertical)
        .alignSet(AAChartAlignType.left)
        .xSet(80).ySet(55)
        .verticalAlignSet(AAChartVerticalAlignType.top);

    var element1 = new AASeriesElement()
        .nameSet("降雨量")
        .typeSet(AAChartType.column)
    // .yAxisSet(1)
        .dataSet([49.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4])
    // .tooltipSet(new AATooltip()
    // .valueSuffixSet(" mm")
    // )
        ;

    var element2 = new AASeriesElement()
        .nameSet("海平面气压")
        .typeSet(AAChartType.line)
    // .yAxisSet(2)
        .dataSet([1016, 1016, 1015.9, 1015.5, 1012.3, 1009.5, 1009.6, 1010.2, 1013.1, 1016.9, 1018.2, 1016.7])
    // .dashStyleSet(AAChartLineDashStyleType.shortDot)
    // .tooltipSet(new AATooltip()
    // .valueSuffixSet(" mb"))
        ;

    var element3 = new AASeriesElement()
        .nameSet("温度")
        .typeSet(AAChartType.line)
    // .yAxisSet(0)
        .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
    // .tooltipSet(new AATooltip()
    // .valueSuffixSet(" ℃"))
        ;

    var aaOptions = new AAOptions()
        .titleSet(aaTitle)
        .subtitleSet(aaSubtitle)
        .colorsSet(colorsThemeArr)
        .xAxisSet(aaXAxis)
    .yAxisArraySet([yAxis1,yAxis2,yAxis3])
        .tooltipSet(aaTooltip)
        .legendSet(aaLegend)
        .seriesSet([element1,element2,element3,]);

    return aaOptions;
  }

  static AAOptions configureDoubleYAxesAndColumnLineMixedChart() {
    var stopsArr = [
      [0.0, AAColor.rgbaColor(156,107,211,0.5)],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.2, AAColor.rgbaColor(156,107,211,0.3)],
      [1.0, AAColor.rgbaColor(156,107,211,0)]
    ];

    var gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        stopsArr
    );

    var gradientColorDic2 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        "#956FD4",
        "#3EACE5"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    var category = [
      "市区","万州","江北","南岸","北碚","綦南","长寿","永川","璧山","江津",
      "城口","大足","垫江","丰都","奉节","合川","江津区","开州","南川","彭水",
      "黔江","石柱","铜梁","潼南","巫山","巫溪","武隆","秀山","酉阳","云阳",
      "忠县","川东","检修"
    ];

    var goalValuesArr = [
      18092,20728,24045,28348,32808
      ,36097,39867,44715,48444,50415
      ,56061,62677,59521,67560,18092,20728,24045,28348,32808
      ,36097,39867,44715,48444,50415,36097,39867,44715,48444,50415
      ,50061,32677,49521,32808
    ];

    var realValuesArr = [
      4600,5000,5500,6500,7500
      ,8500,9900,12500,14000,21500
      ,23200,24450,25250,33300,4600,5000,5500,6500,7500
      ,8500,9900,22500,14000,21500,8500,9900,12500,14000,21500
      ,23200,24450,25250,7500
    ];

    var rateValuesArr = new List();

    for (var i = 0; i < 32; i++) {
      var goalValue = goalValuesArr[i];
      var realValue = realValuesArr[i];
      var rateValue = realValue / goalValue;
      rateValuesArr.add(rateValue);
    }

    var aaChart = new AAChart()
        .backgroundColorSet("#191E40");

    var aaTitle = new AATitle()
        .textSet("");

    var aaLabels = new AALabels()
        .enabledSet(true)
        .styleSet(new AAStyle()
        .colorSet(AAColor.lightGray));

    var aaXAxis = new AAXAxis()
        .visibleSet(true)
        .labelsSet(aaLabels)
        .minSet(0)
        .categoriesSet(category)
    ;

    var aaYAxisTitleStyle = new AAStyle()
        .colorSet("#1e90ff")//Title font color
        .fontSizeSet(14)//Title font size
        .fontWeightSet(AAChartFontWeightType.bold)//Title font weight
        .textOutlineSet("0px 0px contrast");

    var yAxis1 = new AAYAxis()
        .visibleSet(true)
        .labelsSet(aaLabels)
        .gridLineWidthSet(0)
        .titleSet(new AATitle()
        .textSet("已贯通 / 计划贯通")
        .styleSet(aaYAxisTitleStyle)
    );

    var yAxis2 = new AAYAxis()
        .visibleSet(true)
        .labelsSet(aaLabels)
        .gridLineWidthSet(0)
        .titleSet(new AATitle()
        .textSet("贯通率")
        .styleSet(aaYAxisTitleStyle)
    )
        .oppositeSet(true);

    var aaTooltip = new AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var aaPlotOptions = new AAPlotOptions()
        .seriesSet(new AASeries()
        .animationSet(new AAAnimation()
        .easingSet(AAChartAnimationType.easeTo)
        .durationSet(1000)))
        .columnSet(new AAColumn()
        .groupingSet(false)
        .pointPaddingSet(0)
        .pointPlacementSet(0));

    var aaLegend = new AALegend()
        .enabledSet(true)
        .itemStyleSet(new AAItemStyle()
        .colorSet(AAColor.lightGray))
    // .floatingSet(true)
        .layoutSet(AAChartLayoutType.horizontal)
        .alignSet(AAChartAlignType.left)
        .xSet(30).ySet(10)
        .verticalAlignSet(AAChartVerticalAlignType.top)
    ;

    var goalValuesElement = new AASeriesElement()
        .nameSet("计划贯通")
        .typeSet(AAChartType.column)
        .borderWidthSet(0)
        .colorSet(gradientColorDic1)
    // .yAxisSet(0)
        .dataSet(goalValuesArr)
    ;

    var realValuesElement = new AASeriesElement()
        .nameSet("已贯通")
        .typeSet(AAChartType.column)
        .borderWidthSet(0)
        .colorSet(gradientColorDic2)
    // .yAxisSet(0)
        .dataSet(realValuesArr)
    ;

    var rateValuesElement = new AASeriesElement()
        .nameSet("贯通率")
        .typeSet(AAChartType.spline)
        .markerSet(new AAMarker()
        .radiusSet(7)//曲线连接点半径，默认是4
        .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
        .fillColorSet(AAColor.white)//点の填充色Set(用来设置折线连接点の填充色)
        .lineWidthSet(3)//外沿线の宽度Set(用来设置折线连接点の轮廓描边の宽度)
        .lineColorSet("")//外沿线の颜色Set(用来设置折线连接点の轮廓描边颜色，当值为空字符串时，默认取数据点或数据列の颜色)
    )
        .colorSet("#F02FC2")
    // .yAxisSet(1)
        .dataSet(rateValuesArr)
    ;

    var aaOptions = new AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .xAxisSet(aaXAxis)
        .yAxisArraySet([yAxis1,yAxis2])
        .tooltipSet(aaTooltip)
        .plotOptionsSet(aaPlotOptions)
        .legendSet(aaLegend)
        .seriesSet([
      goalValuesElement,
      realValuesElement,
      rateValuesElement
    ]);

    return aaOptions;
  }

  static AAOptions configureDoubleYAxesMarketDepthChart() {
    var aaChart = new AAChart()
        .typeSet(AAChartType.area);

    var aaTitle = new AATitle()
        .textSet("ETH-BTC 市场深度图");

    var aaSubtitle = new AASubtitle()
        // .textSet("数据来源: https://github.com/AAChartModel")
    ;

    var aaXAxis = new AAXAxis()
        .visibleSet(true)
        .plotLinesSet([
      new AAPlotLinesElement()
          .colorSet(AAColor.red)
          .valueSet(0.1523)
          .widthSet(1.1)
      .dashStyleSet(AAChartLineDashStyleType.longDashDotDot)
          .labelSet(new AALabel()
          .textSet("实际价格")
        // .rotationSet(90)
      )
    ]);

    var yAxis1 = new AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .tickWidthSet(1)
        .tickLengthSet(5)
        .tickPositionSet("inside")
        .gridLineWidthSet(1)
        .titleSet(new AATitle()
        .textSet(""))
        .labelsSet(new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .alignSet(AAChartAlignType.left)
        .xSet(8));

    var yAxis2 = new AAYAxis()
        .oppositeSet(true)
        .visibleSet(true)
        .lineWidthSet(1)
        .tickWidthSet(1)
        .tickLengthSet(5)
        .tickPositionSet("inside")
        .gridLineWidthSet(0)
        .titleSet(new AATitle()
        .textSet(""))
        .labelsSet(new AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .alignSet(AAChartAlignType.right)
        .xSet(-8));

    var aaTooltip = new AATooltip()
        .enabledSet(true)
        // .headerFormatSet("<span style=\\\"font-size=10px;\\\">Price: {point.key}</span><br/>")
        .valueDecimalsSet(2);

    var aaLegend = new AALegend()
        .enabledSet(false);

    var element1 = new AASeriesElement()
        .nameSet("Bids")
        .colorSet("#04d69f")
        .stepSet(true)
        .dataSet([
      [0.1524, 0.948665],
      [0.1539, 35.510715],
      [0.154,  39.883437],
      [0.1541, 40.499661],
      [0.1545, 43.262994000000006],
      [0.1547, 60.14799400000001],
      [0.1553, 60.30799400000001],
      [0.1558, 60.55018100000001],
      [0.1564, 68.381696],
      [0.1567, 69.46518400000001],
      [0.1569, 69.621464],
      [0.157,  70.398015],
      [0.1574, 70.400197],
      [0.1575, 73.199217],
      [0.158,  77.700017],
      [0.1583, 79.449017],
      [0.1588, 79.584064],
      [0.159,  80.584064],
      [0.16,   81.58156],
      [0.1608, 83.38156]
    ]);

    var element2 = new AASeriesElement()
        .nameSet("Asks")
        .colorSet("#1e90ff")
        .stepSet(true)
        .dataSet([
      [0.1435, 242.521842],
      [0.1436, 206.49862099999999],
      [0.1437, 205.823735],
      [0.1438, 197.33275],
      [0.1439, 153.677454],
      [0.144,  146.007722],
      [0.1442, 82.55212900000001],
      [0.1443, 59.152814000000006],
      [0.1444, 57.942260000000005],
      [0.1445, 57.483850000000004],
      [0.1446, 52.39210800000001],
      [0.1447, 51.867208000000005],
      [0.1448, 44.104697],
      [0.1449, 40.131217],
      [0.145,  31.878217],
      [0.1451, 22.794916999999998],
      [0.1453, 12.345828999999998],
      [0.1454, 10.035642],
      [0.148,  9.326642],
      [0.1522, 3.76317]
    ]);

    var aaOptions = new AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .subtitleSet(aaSubtitle)
        .xAxisSet(aaXAxis)
    .yAxisArraySet([yAxis1,yAxis2])
        .tooltipSet(aaTooltip)
        .legendSet(aaLegend)
        .seriesSet([element1,element2]);

    return aaOptions;
  }

  // Chart Sample Online:   https://jshare.com.cn/highcharts/hhhhG1
  static AAOptions customAreaChartTooltipStyleLikeHTMLTable() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图形类型
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .dataLabelsEnabledSet(false)
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4","#7dffc0"])
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(0)
        .seriesSet([
      new AASeriesElement()
          .nameSet("TokyoHot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36])
      ,
      new AASeriesElement()
          .nameSet("BerlinHot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67])
      ,
      new AASeriesElement()
          .nameSet("NewYorkHot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64])
      ,
      new AASeriesElement()
          .nameSet("LondonHot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53])
      ,
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .sharedSet(true)
        .useHTMLSet(true)
        .headerFormatSet("<small>{point.key}</small><table>")
        .pointFormatSet("<tr><td style=\\\"{series.color}\\\">{series.name}: </td>"
        + "<td style=\\\"text-align: right\\\"><b>{point.y}EUR</b></td></tr>")
        .footerFormatSet("</table>");

    return aaOptions;
  }


  static AAOptions customAxesGridLineStyle() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .titleSet("custom Axes Grid Line Style")//图表主标题
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .categoriesSet(["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
        .markerRadiusSet(8)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .lineWidthSet(5.5)
          .colorSet(AAGradientColor.sanguine)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.yAxis
        .oppositeSet(true)
        .gridLineDashStyleSet(AAChartLineDashStyleType.shortDashDot)
        .gridLineWidthSet(3)
        .gridLineColorSet(AAColor.lightGray);

    aaOptions.xAxis
        .gridLineDashStyleSet(AAChartLineDashStyleType.shortDashDotDot)
        .gridLineWidthSet(3)
        .gridLineColorSet(AAColor.gray);

    return aaOptions;
  }

  // https://github.com/AAChartModel/AAChartKit-Swift/issues/213
  static AAOptions customRadarChartStyle() {
    var aaChartModel = new AAChartModel()
        .colorsThemeSet(["#5BCCC8"])
        .chartTypeSet(AAChartType.area)
        .dataLabelsEnabledSet(false)
        .xAxisVisibleSet(true)
        .yAxisVisibleSet(true)
        .yAxisLabelsEnabledSet(false)
        .polarSet(true)
        .markerRadiusSet(8)
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .legendEnabledSet(false)
        .touchEventEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .dataSet([86, 90, 65])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    var categories = ["智力感", "距离感", "成熟感"];
    // var categoryJSArrStr = AAJSArrayConverter.JSArrayWithHaxeArray(categories);

    // var xAxisLabelsFormatter = "
    // static AAOptions () {
    // return ${categoryJSArrStr)[this.value];
    // }
    // ";

    aaOptions.yAxis
    // .tickPositionsSet([0, 25, 50, 75, 100])
        .gridLineColorSet("#DDDDDD")
        .gridLineWidthSet(2.0)
        .gridLineDashStyleSet(AAChartLineDashStyleType.dash);

    aaOptions.xAxis
        .lineColorSet("#5BCCC8")
        .lineWidthSet(5)
        .gridLineColorSet(AAColor.red)
        .gridLineWidthSet(3)
        .gridLineDashStyleSet(AAChartLineDashStyleType.longDashDotDot)
    // .tickPositionsSet([0,1,2,0])
        ;

    aaOptions.xAxis.labels
    // .formatterSet(xAxisLabelsFormatter)
        ;

    return aaOptions;
  }

  static AAOptions customColumnrangeChartStyle() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.columnrange)
        .titleSet("TEMPERATURE VARIATION BY MONTH")
        .subtitleSet("observed in Gotham city")
        .yAxisTitleSet("℃")
        .colorsThemeSet(["#fe117c","#06caf4",])//Colors theme
        .borderRadiusSet(6)
        .categoriesSet([
      "January", "February", "March", "April", "May", "June",
      "July", "August", "September", "October", "November", "December"
    ])
        .seriesSet([
      new AASeriesElement()
          .nameSet("temperature1")
          .dataSet([
        [-9.7,  9.4],
        [-8.7,  6.5],
        [-3.5,  9.4],
        [-1.4, 19.9],
        [0.0,  22.6],
        [2.9,  29.5],
        [-9.7,  9.4],
        [-8.7,  6.5],
        [-3.5,  9.4],
        [-1.4, 19.9],
        [0.0,  22.6],
        [2.9,  29.5],
      ]),
      new AASeriesElement()
          .nameSet("temperature2")
          .dataSet([
        [9.2,  30.7],
        [7.3,  26.5],
        [4.4,  18.0],
        [-3.1, 11.4],
        [-5.2, 10.4],
        [-13.5, 9.8],
        [9.2,  30.7],
        [7.3,  26.5],
        [4.4,  18.0],
        [-3.1, 11.4],
        [-5.2, 10.4],
        [-13.5, 9.8]
      ]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    //    *  关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.groupPadding
    //
    //    * 关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.pointPadding;

    aaOptions.plotOptions.columnrange
    // .groupingSet(false)
    // .groupPaddingSet(0.003)
        ;

    return aaOptions;
  }

  static AAOptions customXAxisLabelsBeImages() {
    var imageLinkStrArr = [
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197582.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197604.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197507.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197571.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197408.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197375.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197374.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>",
      "<span><img src=\\\"https:/image.flaticon.com/icons/svg/197/197484.svg\\\" style=\\\"width: 30px; height: 30px;\\\"/><br></span>"
    ];

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .stackingSet(AAChartStackingType.normal)
        .yAxisVisibleSet(false)
        .categoriesSet(imageLinkStrArr)
        .markerRadiusSet(0)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(AAGradientColor.sanguine)
          .dataSet([7.0, 6.9, 2.5, 14.5, 13.2, 18.2, 29.5, 21.5, ]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis.labels.useHTML = true;

    return aaOptions;
  }

  //三角形雷达图
  static AAOptions configureTriangleRadarChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.area)
        .backgroundColorSet(AAColor.white)
        .markerRadiusSet(0)
        .yAxisMaxSet(25)
        .yAxisGridLineWidthSet(1)
        .polarSet(true)
        .legendEnabledSet(false)
        .tooltipEnabledSet(false)
        .xAxisGridLineWidthSet(1)
        .yAxisGridLineWidthSet(1)
        .dataLabelsEnabledSet(true)
        .seriesSet([
      new AASeriesElement()
          .colorSet(AAColor.white)
          .fillOpacitySet(0.01)
          .dataLabelsSet(new AADataLabels()
          .colorSet(AAColor.rgbaColor(30, 144, 255, 1.0)))
          .dataSet([17.0, 16.9, 12.5,]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.xAxis
        .tickIntervalSet(1)
        .lineWidthSet(0)//避免多边形外环之外有额外套了一层无用の外环
        .gridLineColorSet(AAColor.rgbaColor(30, 144, 255, 0.6))
        .crosshairSet(new AACrosshair()
        .widthSet(1.5)
        .colorSet(AAColor.white)
        .dashStyleSet(AAChartLineDashStyleType.longDashDotDot));

    aaOptions.yAxis
    // .gridLineInterpolationSet("polygon")
        .lineWidthSet(0)
        .gridLineColorSet(AAColor.rgbaColor(30, 144, 255, 1.0))
        .crosshairSet(new AACrosshair()
        .widthSet(1.5)
        .colorSet(AAColor.white)
        .dashStyleSet(AAChartLineDashStyleType.longDashDotDot))
    // .tickPositionsSet([5,10,15,20,25,])
        ;

    var aaPlotBandsArr = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet(AAColor.rgbaColor(30, 144, 255, 1.0)),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet(AAColor.rgbaColor(30, 144, 255, 0.8)),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet(AAColor.rgbaColor(30, 144, 255, 0.6)),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet(AAColor.rgbaColor(30, 144, 255, 0.4)),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet(AAColor.rgbaColor(30, 144, 255, 0.2)),
    ];

    var aaYAxis = aaOptions.yAxis;
    aaYAxis.plotBands = aaPlotBandsArr;

    return aaOptions;
  }

  //四边形雷达图
  static AAOptions configureQuadrangleRadarChart() {
    var aaOptions = configureTriangleRadarChart();
    aaOptions.yAxis.plotBands = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet(AAColor.rgbaColor(255, 0, 0, 1.0)),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet(AAColor.rgbaColor(255, 0, 0, 0.8)),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet(AAColor.rgbaColor(255, 0, 0, 0.6)),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet(AAColor.rgbaColor(255, 0, 0, 0.4)),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet(AAColor.rgbaColor(255, 0, 0, 0.2)),
    ];

    aaOptions.xAxis.gridLineColor = AAColor.rgbaColor(255, 0, 0, 0.6);
    aaOptions.yAxis.gridLineColor = AAColor.rgbaColor(255, 0, 0, 1.0);

    AASeriesElement element = aaOptions.series[0];
    element
        .dataSet([17.0, 16.9, 12.5, 14.5,])
        .dataLabelsSet(new AADataLabels()
        .colorSet(AAColor.rgbaColor(255, 0, 0, 1.0)));

    return aaOptions;
  }

  //五边形雷达图
  static AAOptions configurePentagonRadarChart() {
    var aaOptions = configureTriangleRadarChart();
    aaOptions.yAxis.plotBands = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet(AAColor.rgbaColor(255, 215, 0, 1.0)),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet(AAColor.rgbaColor(255, 215, 0, 0.8)),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet(AAColor.rgbaColor(255, 215, 0, 0.6)),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet(AAColor.rgbaColor(255, 215, 0, 0.4)),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet(AAColor.rgbaColor(255, 215, 0, 0.2)),
    ];

    aaOptions.xAxis.gridLineColor = AAColor.rgbaColor(255, 215, 0, 0.6);
    aaOptions.yAxis.gridLineColor = AAColor.rgbaColor(255, 215, 0, 1.0);

    AASeriesElement element = aaOptions.series[0];
    element
        .dataSet([17.0, 16.9, 12.5, 14.5, 18.2,])
        .dataLabelsSet(new AADataLabels()
        .colorSet(AAColor.rgbaColor(255, 215, 0, 1.0)));

    return aaOptions;
  }

  //六边形雷达图
  static AAOptions configureHexagonRadarChart() {
    var aaOptions = configureTriangleRadarChart();
    aaOptions.yAxis.plotBands = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet(AAColor.rgbaColor(50, 205, 50, 1.0)),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet(AAColor.rgbaColor(50, 205, 50, 0.8)),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet(AAColor.rgbaColor(50, 205, 50, 0.6)),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet(AAColor.rgbaColor(50, 205, 50, 0.4)),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet(AAColor.rgbaColor(50, 205, 50, 0.2)),
    ];

    aaOptions.xAxis.gridLineColor = AAColor.rgbaColor(50, 205, 50, 0.6);
    aaOptions.yAxis.gridLineColor = AAColor.rgbaColor(50, 205, 50, 1.0);

    AASeriesElement element = aaOptions.series[0];
    element
        .dataSet([17.0, 16.9, 12.5, 14.5, 18.2, 21.5,])
        .dataLabelsSet(new AADataLabels()
        .colorSet(AAColor.rgbaColor(50, 205, 50, 1.0)));

    return aaOptions;
  }

  //🕸蜘蛛网状雷达图
  static AAOptions configureSpiderWebRadarChart() {
    var aaOptions = configureTriangleRadarChart();
    aaOptions.yAxis.plotBands = [
      new AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet(AAColor.rgbaColor(138, 43, 226, 1.0)),
      new AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet(AAColor.rgbaColor(138, 43, 226,  0.8)),
      new AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet(AAColor.rgbaColor(138, 43, 226,  0.6)),
      new AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet(AAColor.rgbaColor(138, 43, 226, 0.4)),
      new AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet(AAColor.rgbaColor(138, 43, 226, 0.2)),
    ];

    aaOptions.xAxis.gridLineColor = AAColor.rgbaColor(138, 43, 226,  0.6);
    aaOptions.yAxis.gridLineColor = AAColor.rgbaColor(138, 43, 226,  1.0);

    AASeriesElement element = aaOptions.series[0];
    element
        .dataSet([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24])
        .dataLabelsSet(new AADataLabels()
        .colorSet(AAColor.rgbaColor(138, 43, 226, 1.0)));

    return aaOptions;
  }

  static AAOptions configureComplicatedCustomAreasplineChart() {
    var aaChart = new AAChart()
        .typeSet(AAChartType.areaspline)
        .backgroundColorSet(AAColor.black);

    var aaTitle = new AATitle()
        .textSet("");

    var aaXAxis = new AAXAxis()
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ])
        .tickWidthSet(0)//X轴刻度线宽度
        .lineWidthSet(1.5)//X轴轴线宽度
        .lineColorSet(AAColor.white)//X轴轴线颜色
        .gridLineColorSet(AAColor.white)
        .gridLineWidthSet(0.5)//X轴网格线宽度
        .gridLineDashStyleSet(AAChartLineDashStyleType.dash)
        .labelsSet(new AALabels()
        .styleSet(new AAStyle()
        .colorSet(AAColor.white))//X轴文字颜色
    );

    var aaYAXis = new AAYAxis()
        .titleSet(new AATitle()
        .textSet(""))
    // .tickPositionsSet([0, 20, 40, 60, 80, 100])
        .lineWidthSet(1.5)//Y轴轴线颜色
        .lineColorSet(AAColor.white)//Y轴轴线颜色
        .gridLineWidthSet(0)//Y轴网格线宽度
        .gridLineDashStyleSet(AAChartLineDashStyleType.dash)
        .labelsSet(new AALabels()
        .formatSet("{value} %")//给y轴添加单位
        .styleSet(new AAStyle()
        .colorSet(AAColor.white))//Y轴文字颜色
    );


    var aaPlotOptions = new AAPlotOptions()
        .seriesSet(new AASeries()
        .markerSet(new AAMarker()
        .symbolSet(AAChartSymbolType.circle)
        .radiusSet(0)));

    var aaLegend = new AALegend()
        .enabledSet(true)
        .itemStyleSet(new AAItemStyle()
        .colorSet(AAColor.white))
        .alignSet(AAChartAlignType.left)//设置图例位于水平方向上的右侧
        .layoutSet(AAChartLayoutType.horizontal)//设置图例排列方式为垂直排布
        .verticalAlignSet(AAChartVerticalAlignType.top);//设置图例位于竖直方向上的顶部;

    var blueStopsArr = [
      [0.0, AAColor.rgbaColor(30, 144, 255, 1.0)],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.6, AAColor.rgbaColor(30, 144, 255, 0.2)],
      [1.0, AAColor.rgbaColor(30, 144, 255, 0.0)]
    ];
    var gradientBlueColorDic = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        blueStopsArr
    );

    var redStopsArr = [
      [0.0, AAColor.rgbaColor(255, 0, 0, 1.0)],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.6, AAColor.rgbaColor(255, 0, 0, 0.2)],
      [1.0, AAColor.rgbaColor(255, 0, 0, 0.0)]
    ];
    var gradientRedColorDic = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        redStopsArr
    );

    var singleSpecialData1 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet("#1e90ff")
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .useHTMLSet(true)
            .backgroundColorSet("#1e90ff")
            .borderRadiusSet(5)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(new AAStyle()
            .fontWeightSet(AAChartFontWeightType.bold)
            .colorSet(AAColor.white)
            .fontSizeSet(16)
            .fontWeightSet(AAChartFontWeightType.thin))
            .ySet(-75)
        // .alignSet(AAChartAlignType.center)
            .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(51.5)
    ;

    var singleSpecialData2 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet("#ef476f")
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .useHTMLSet(true)
            .backgroundColorSet(AAColor.red)
            .borderRadiusSet(5)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(new AAStyle()
            .fontWeightSet(AAChartFontWeightType.bold)
            .colorSet(AAColor.white)
            .fontSizeSet(16)
            .fontWeightSet(AAChartFontWeightType.thin))
            .ySet(-75)
      // .alignSet(AAChartAlignType.center)
      // .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(26.5)

    ;

    var aaSeriesArr = [
      new AASeriesElement()
          .nameSet("空气湿度")
          .fillColorSet(gradientBlueColorDic)
          .lineWidthSet(6)
          .dataSet([17.0, 16.9, 8.5, 34.5, 28.2, singleSpecialData1, 15.2, 56.5, 33.3, 85.3, 23.9, 29.6]),
      new AASeriesElement()
          .nameSet("土壤湿度")
          .fillColorSet(gradientRedColorDic)
          .lineWidthSet(6)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, singleSpecialData2, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ];

    var aaOptions = new AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .colorsSet(["#1e90ff",AAColor.red,])
        .xAxisSet(aaXAxis)
        .yAxisSet(aaYAXis)
        .plotOptionsSet(aaPlotOptions)
        .legendSet(aaLegend)
        .seriesSet(aaSeriesArr);


    return aaOptions;
  }

  static AAOptions configureComplicatedCustomAreasplineChart2() {
    var aaOptions = configureComplicatedCustomAreasplineChart();

    aaOptions.chart.backgroundColor = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        AAColor.rgbaColor(113, 180, 185, 1.0),
        AAColor.rgbaColor(115, 183, 166, 1.0)
    );

    aaOptions.colors = [
      AAColor.rgbaColor(204, 150, 103, 1.0),
      AAColor.rgbaColor(154, 243, 247, 1.0),
    ];

    aaOptions.tooltip = new AATooltip()
        .sharedSet(true)
        .backgroundColorSet(AAColor.white)
        .valueSuffixSet(" %");

    var aaDataLabelsStyle = new AAStyle()
        .fontWeightSet(AAChartFontWeightType.bold)
        .colorSet(AAColor.white)
        .fontSizeSet(16)
        .fontWeightSet(AAChartFontWeightType.thin);

    var singleSpecialData1 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet(AAColor.rgbaColor(204, 150, 103, 1.0))
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .allowOverlapSet(true)
            .useHTMLSet(true)
            .backgroundColorSet(AAColor.rgbaColor(219, 148, 111, 1.0))
            .borderRadiusSet(10)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(aaDataLabelsStyle)
            .ySet(-75)
      // .alignSet(AAChartAlignType.center)
      // .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(51.5)
    ;


    var singleSpecialData22 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet(AAColor.rgbaColor(154, 243, 247, 1.0))
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .allowOverlapSet(true)
            .useHTMLSet(true)
            .backgroundColorSet(AAColor.rgbaColor(65, 111, 166, 1.0))
            .borderRadiusSet(10)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(aaDataLabelsStyle)
            .ySet(-75)
      // .alignSet(AAChartAlignType.center)
      // .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(26.5)
    ;

    var aaSeriesArr = [
      // new AASeriesElement()
      //     .nameSet("空气湿度")
      //     .lineWidthSet(3)
      //     .zoneAxisSet("x")
      //     .zonesSet([
      // new AAZonesElement()
      //     .valueSet(5)
      //     .fillColorSet(
      // AAGradientColor.linearGradient2(
      // AALinearGradientDirection.toTop,
      // [
      // [0.0, AAColor.clear],//颜色字符串设置支持十六进制类型和 rgba 类型
      // [0.6, AAColor.rgbaColor(219, 148, 111, 0.6)],
      // [1.0, AAColor.rgbaColor(219, 148, 111, 1.0)]
      // ])
      // ),
      // new AAZonesElement()
      //     .fillColorSet(AAColor.clear),
      // ])
      //     .dataSet([17.0, 16.9, 8.5, 34.5, 28.2, singleSpecialData1, 15.2, 56.5, 33.3, 85.3, 23.9, 29.6]),
      //
      // new AASeriesElement()
      //     .nameSet("土壤湿度")
      //     .lineWidthSet(3)
      //     .zoneAxisSet("x")
      //     .zonesSet([
      // new AAZonesElement()
      //     .valueSet(5)
      //     .fillColorSet(AAGradientColor.linearGradient2(
      // AALinearGradientDirection.toTop,
      // [
      // [0.0, AAColor.clear],//颜色字符串设置支持十六进制类型和 rgba 类型
      // [0.6, AAColor.rgbaColor(65, 111, 166, 0.6)],
      // [1.0, AAColor.rgbaColor(65, 111, 166, 1.0)]
      // ])),
      // new AAZonesElement()
      //     .fillColorSet(AAColor.clear),
      // ])
      //     .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, singleSpecialData22, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ];

    aaOptions.series = aaSeriesArr;

    return aaOptions;
  }

  static AAOptions configureComplicatedCustomAreasplineChart3() {
    var aaDataLabelsStyle = new AAStyle()
        .fontWeightSet(AAChartFontWeightType.bold)
        .colorSet(AAColor.white)
        .fontSizeSet(16)
        .fontWeightSet(AAChartFontWeightType.thin);

    var singleSpecialData1 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet(AAColor.rgbaColor(204, 150, 103, 1.0))
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .allowOverlapSet(true)
            .useHTMLSet(true)
            .backgroundColorSet(AAColor.rgbaColor(219, 148, 111, 1.0))
            .borderRadiusSet(10)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(aaDataLabelsStyle)
            .ySet(-75)
      // .alignSet(AAChartAlignType.center)
      // .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(34.5)
    ;


    var singleSpecialData2 = new AADataElement()
        .markerSet(
        new AAMarker()
            .radiusSet(8)//曲线连接点半径
            .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
            .fillColorSet(AAColor.white)//点的填充色Set(用来设置折线连接点的填充色)
            .lineWidthSet(5)//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
        //外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            .lineColorSet(AAColor.rgbaColor(154, 243, 247, 1.0))
    )
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .allowOverlapSet(true)
            .useHTMLSet(true)
            .backgroundColorSet(AAColor.rgbaColor(65, 111, 166, 1.0))
            .borderRadiusSet(10)
            .shapeSet("callout")
            .formatSet("{point.category}<br>{series.name}: {point.y} %")
            .styleSet(aaDataLabelsStyle)
            .ySet(-75)
      // .alignSet(AAChartAlignType.center)
      // .verticalAlignSet(AAChartVerticalAlignType.top)
      // .overflowSet("none")
      // .cropSet(false)
    )
        .ySet(14.5)
    ;

    var aaSeriesArr = [
      // new AASeriesElement()
      //     .nameSet("空气湿度")
      //     .lineWidthSet(3)
      //     .zoneAxisSet("x")
      //     .zonesSet([
      // new AAZonesElement()
      //     .valueSet(3)
      //     .fillColorSet(AAColor.clear),
      // new AAZonesElement()
      //     .fillColorSet(AAGradientColor.linearGradient2(
      // AALinearGradientDirection.toTop,
      // [
      // [0.0, AAColor.clear],//颜色字符串设置支持十六进制类型和 rgba 类型
      // [0.6, AAColor.rgbaColor(65, 111, 166, 0.6)],
      // [1.0, AAColor.rgbaColor(65, 111, 166, 1.0)]
      // ])),
      // ])
      //     .dataSet([17.0, 16.9, 8.5, singleSpecialData1, 28.2, 51.5, 15.2, 56.5, 33.3, 85.3, 23.9, 29.6]),
      //
      // new AASeriesElement()
      //     .nameSet("土壤湿度")
      //     .lineWidthSet(3)
      //     .zoneAxisSet("x")
      //     .zonesSet([
      // new AAZonesElement()
      //     .valueSet(3)
      //     .fillColorSet(AAColor.clear),
      // new AAZonesElement()
      //     .fillColorSet(AAGradientColor.linearGradient2(
      // AALinearGradientDirection.toTop,
      // [
      // [0.0, AAColor.clear],//颜色字符串设置支持十六进制类型和 rgba 类型
      // [0.6, AAColor.rgbaColor(65, 111, 166, 0.6)],
      // [1.0, AAColor.rgbaColor(65, 111, 166, 1.0)]
      // ])),
      // ])
      //     .dataSet([7.0, 6.9, 2.5, singleSpecialData2, 18.2, 26.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ];

    var aaOptions = configureComplicatedCustomAreasplineChart2();

    aaOptions.series = aaSeriesArr;

    return aaOptions;
  }

  static AAOptions yAxisOnTheRightSideChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .titleSet("yAxis on the right side 📈")//图表主标题
        .subtitleSet("set aaOptions.yAxis.opposite = YES")//图表副标题
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .categoriesSet(["Jan", "Feb", "Mar", "Apr", "May", "Jun","Jul", "Aug", "Sep", "Oct", "Nov", "Dec"])
        .markerRadiusSet(8)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .lineWidthSet(5.5)
          .colorSet(AAGradientColor.sanguine)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    //是否将坐标轴显示在对立面，默认情况下 x 轴是在图表の下方显示，y 轴是在左方，
    //坐标轴显示在对立面后，x 轴是在上方显示，y 轴是在右方显示（即坐标轴会显示在对立面）。
    //该配置一般是用于多坐标轴区分展示，另外在 Highstock 中，y 轴默认是在对立面显示の。
    //默认是：false.
    aaOptions.yAxis.oppositeSet(true);

    return aaOptions;
  }

  //    https://github.com/AAChartModel/AAChartKit-Swift/issues/244
  static AAOptions doubleLayerHalfPieChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .titleSet("浏览器市场占比历史对比")
        .subtitleSet("无任何可靠依据的虚拟数据")
        .dataLabelsEnabledSet(false)//是否直接显示扇形图数据
        .yAxisTitleSet("摄氏度")
        .seriesSet([
      new AASeriesElement()
          .nameSet("Past")
      // .sizeSet("40%")//尺寸大小
          .innerSizeSet("30%")//内部圆环半径大小占比
          .borderWidthSet(0)//描边的宽度
          .allowPointSelectSet(false)//是否允许在点击数据点标记Set(扇形图点击选中的块发生位移)
          .dataSet([
        ["Firefox Past",   3336.2],
        ["Chrome Past",      26.8],
        ["Safari Past",      88.5],
        ["Opera Past",       46.0],
        ["Others Past",     223.0],
      ]),
      new AASeriesElement()
          .nameSet("Now")
      // .sizeSet("80%")//尺寸大小
          .innerSizeSet("70%")//内部圆环半径大小占比
          .borderWidthSet(0)//描边的宽度
          .allowPointSelectSet(false)//是否允许在点击数据点标记Set(扇形图点击选中的块发生位移)
          .dataSet([
        ["Firefox Now",    336.2],
        ["Chrome Now",    6926.8],
        ["Safari Now",     388.5],
        ["Opera Now",      446.0],
        ["Others Now",     223.0],
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.plotOptions.pie
        .startAngleSet(-90)
        .endAngleSet(90);

    return aaOptions;
  }

  //https://github.com/AAChartModel/AAChartKit/issues/987
  //headerFormat 参考链接: https://api.highcharts.com.cn/highcharts#tooltip.headerFormat
  // \<span> 标签🏷 参考链接: https://www.w3school.com.cn/tags/tag_span.asp
  static AAOptions customAreasplineChartTooltipContentWithHeaderFormat() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图表类型
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(0)
        .categoriesSet([
      "01", "02", "03", "04", "05", "06", "07", "08", "09", "10",
      "11", "12", "13", "14", "15", "16", "17", "18", "19", "20",
      "21", "22", "23", "24", "25", "26", "27", "28", "29", "30",
      "31"
    ])
        .yAxisVisibleSet(false)
        .markerRadiusSet(0)
        .seriesSet([
      new AASeriesElement()
          .nameSet("客流")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([
        26, 27, 53, 41, 35, 55, 33, 42, 33, 63,
        40, 43, 36, 0,  0,  0,  0,  0,  0,  0,
        0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
        0
      ])
    ]);

    // var title = "<span style=\"color:red;font-size:17px;font-weight:bold;\">客流</span><br>";
    // var week = "周一";
    // var time = "时间: 8.{point.x} Set(${week)<br>";
    // var headerFormat = "${title)${time)";

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.tooltip
        .useHTMLSet(true)
    // .headerFormatSet(headerFormat)
        .styleSet(AAStyle.colorSize(AAColor.white, 14))
        .backgroundColorSet("#050505")
        .borderColorSet("#050505");

    // //禁用图例点击事件
    // aaOptions.plotOptions.series.events = new AAEvents()
    //     .legendItemClickSet("
    // public static function() {
    // return false;
    // }
    // ");

    return aaOptions;
  }


  //https://github.com/AAChartModel/AAChartKit/issues/1125
  static AAOptions customAreaChartTooltipStyleWithTotalValueHeader() {
    var goldStopsArr = [
      [0.0, AAColor.rgbaColor(255, 215, 0, 1.0)],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.6, AAColor.rgbaColor(255, 215, 0, 0.2)],
      [1.0, AAColor.rgbaColor(255, 215, 0, 0.0)]
    ];
    var gradientGoldColorDic = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        goldStopsArr
    );

    var greenStopsArr = [
      [0.0, AAColor.rgbaColor(50, 205, 50, 1.0)],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.6, AAColor.rgbaColor(50, 205, 50, 0.2)],
      [1.0, AAColor.rgbaColor(50, 205, 50, 0.0)]
    ];
    var gradientGreenColorDic = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        greenStopsArr
    );

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.area)//图表类型
        .titleSet("2021 年 10 月上海市猫与狗生存调查")//图表主标题
        .subtitleSet("数据来源：www.无任何可靠依据.com")//图表副标题
        .colorsThemeSet([
      AAColor.rgbaColor(255, 215, 0, 1.0),
      AAColor.rgbaColor(50, 205, 50, 1.0),
    ])
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//折线连接点样式为内部白色
        .stackingSet(AAChartStackingType.normal)
        .categoriesSet(["10-01","10-02","10-03","10-04","10-05","10-06","10-07","10-08",])
        .seriesSet([
      new AASeriesElement()
          .lineWidthSet(6)
          .fillColorSet(gradientGoldColorDic)
          .nameSet("🐶狗")
          .dataSet([43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]),
      new AASeriesElement()
          .lineWidthSet(6)
          .fillColorSet(gradientGreenColorDic)
          .nameSet("🐱猫")
          .dataSet([24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .useHTMLSet(true)
        .headerFormatSet("狗和猫的总数为:{point.total}<br/>");


    return aaOptions;
  }

  //https://github.com/AAChartModel/AAChartKit/issues/1208
  static AAOptions configureYAxisLabelsNumericSymbolsMagnitudeOfAerasplineChart() {
    var gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        "#FC354C",
        "#0ABFBC"
    );

    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("Numeric symbols magnitude")
        .subtitleSet("Chinese and Japanese uses ten thousands Set(万) as numeric symbol")
        .categoriesSet([
      "Jan", "Feb", "Mar", "Apr", "May", "Jun",
      "July", "Aug", "Spe", "Oct", "Nov", "Dec"
    ])
        .markerRadiusSet(8.0)//marker点半径为8个像素
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//marker点为空心效果
        .markerSymbolSet(AAChartSymbolType.circle)//marker点为圆形点○
        .yAxisLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(7.0)
          .colorSet(AAColor.red)//猩红色, alpha 透明度 1
          .fillColorSet(gradientColorDic1)
          .dataSet([70000.0, 60000.9, 20000.5, 140000.5, 180000.2, 210000.5, 50000.2, 260000.5, 230000.3, 450000.3, 130000.9, 90000.6]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    return aaOptions;

    // aaOptions.defaultOptions = new AALang()
    //     .numericSymbolMagnitudeSet(10000) //国际单位符基数
    //     .numericSymbolsSet(["万","億"]); //国际单位符;
    //
    // return aaOptions;
    // }
    //
    // private static function AADateUTC(year: Int, month: Int, day: Int): String {
    // var dateStr = '${year}-${month}-${day}';
    // var date = Date.fromString(dateStr);
    // var dateSeconds = date.getUTCSeconds();
    // return Std.string(dateSeconds);
  }

  //X 轴时间不连续的折线图
  static AAOptions timeDataWithIrregularIntervalsChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.line)//图形类型
        .titleSet("Snow depth at Vikjafjellet, Norway")//图形标题
        .subtitleSet("Irregular time data in AAChartKit")//图形副标题
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4",])
        .dataLabelsEnabledSet(false)//是否显示数字
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//折线连接点样式
        .markerRadiusSet(7)//折线连接点半径长度,为0时相当于没有折线连接点
        .seriesSet([
      // new AASeriesElement()
      //     .nameSet("Winter 2014-2015")
      //     .dataSet([
      // [AADateUTC(1970, 10, 25),    0],
      // [AADateUTC(1970, 11,  6), 0.25],
      // [AADateUTC(1970, 11, 20), 1.41],
      // [AADateUTC(1970, 11, 25), 1.64],
      // [AADateUTC(1971, 0,  4),   1.6],
      // [AADateUTC(1971, 0, 17),  2.55],
      // [AADateUTC(1971, 0, 24),  2.62],
      // [AADateUTC(1971, 1,  4),   2.5],
      // [AADateUTC(1971, 1, 14),  2.42],
      // [AADateUTC(1971, 2,  6),  2.74],
      // [AADateUTC(1971, 2, 14),  2.62],
      // [AADateUTC(1971, 2, 24),   2.6],
      // [AADateUTC(1971, 3,  1),  2.81],
      // [AADateUTC(1971, 3, 11),  2.63],
      // [AADateUTC(1971, 3, 27),  2.77],
      // [AADateUTC(1971, 4,  4),  2.68],
      // [AADateUTC(1971, 4,  9),  2.56],
      // [AADateUTC(1971, 4, 14),  2.39],
      // [AADateUTC(1971, 4, 19),   2.3],
      // [AADateUTC(1971, 5,  4),     2],
      // [AADateUTC(1971, 5,  9),  1.85],
      // [AADateUTC(1971, 5, 14),  1.49],
      // [AADateUTC(1971, 5, 19),  1.27],
      // [AADateUTC(1971, 5, 24),  0.99],
      // [AADateUTC(1971, 5, 29),  0.67],
      // [AADateUTC(1971, 6,  3),  0.18],
      // [AADateUTC(1971, 6,  4),     0]
      // ]),
      // new AASeriesElement()
      //     .nameSet("Winter 2015-2016")
      //     .dataSet([
      // [AADateUTC(1970, 10,  9),    0],
      // [AADateUTC(1970, 10, 15), 0.23],
      // [AADateUTC(1970, 10, 20), 0.25],
      // [AADateUTC(1970, 10, 25), 0.23],
      // [AADateUTC(1970, 10, 30), 0.39],
      // [AADateUTC(1970, 11,  5), 0.41],
      // [AADateUTC(1970, 11, 10), 0.59],
      // [AADateUTC(1970, 11, 15), 0.73],
      // [AADateUTC(1970, 11, 20), 0.41],
      // [AADateUTC(1970, 11, 25), 1.07],
      // [AADateUTC(1970, 11, 30), 0.88],
      // [AADateUTC(1971, 0,  5),  0.85],
      // [AADateUTC(1971, 0, 11),  0.89],
      // [AADateUTC(1971, 0, 17),  1.04],
      // [AADateUTC(1971, 0, 20),  1.02],
      // [AADateUTC(1971, 0, 25),  1.03],
      // [AADateUTC(1971, 0, 30),  1.39],
      // [AADateUTC(1971, 1,  5),  1.77],
      // [AADateUTC(1971, 1, 26),  2.12],
      // [AADateUTC(1971, 3, 19),   2.1],
      // [AADateUTC(1971, 4,  9),   1.7],
      // [AADateUTC(1971, 4, 29),  0.85],
      // [AADateUTC(1971, 5,  7),     0]
      // ]),
      // new AASeriesElement()
      //     .nameSet("Winter 2016-2017")
      //     .dataSet([
      // [AADateUTC(1970, 9, 15),     0],
      // [AADateUTC(1970, 9, 31),  0.09],
      // [AADateUTC(1970, 10,  7), 0.17],
      // [AADateUTC(1970, 10, 10),  0.1],
      // [AADateUTC(1970, 11, 10),  0.1],
      // [AADateUTC(1970, 11, 13),  0.1],
      // [AADateUTC(1970, 11, 16), 0.11],
      // [AADateUTC(1970, 11, 19), 0.11],
      // [AADateUTC(1970, 11, 22), 0.08],
      // [AADateUTC(1970, 11, 25), 0.23],
      // [AADateUTC(1970, 11, 28), 0.37],
      // [AADateUTC(1971, 0, 16),  0.68],
      // [AADateUTC(1971, 0, 19),  0.55],
      // [AADateUTC(1971, 0, 22),   0.4],
      // [AADateUTC(1971, 0, 25),   0.4],
      // [AADateUTC(1971, 0, 28),  0.37],
      // [AADateUTC(1971, 0, 31),  0.43],
      // [AADateUTC(1971, 1,  4),  0.42],
      // [AADateUTC(1971, 1,  7),  0.39],
      // [AADateUTC(1971, 1, 10),  0.39],
      // [AADateUTC(1971, 1, 13),  0.39],
      // [AADateUTC(1971, 1, 16),  0.39],
      // [AADateUTC(1971, 1, 19),  0.35],
      // [AADateUTC(1971, 1, 22),  0.45],
      // [AADateUTC(1971, 1, 25),  0.62],
      // [AADateUTC(1971, 1, 28),  0.68],
      // [AADateUTC(1971, 2,  4),  0.68],
      // [AADateUTC(1971, 2,  7),  0.65],
      // [AADateUTC(1971, 2, 10),  0.65],
      // [AADateUTC(1971, 2, 13),  0.75],
      // [AADateUTC(1971, 2, 16),  0.86],
      // [AADateUTC(1971, 2, 19),  1.14],
      // [AADateUTC(1971, 2, 22),   1.2],
      // [AADateUTC(1971, 2, 25),  1.27],
      // [AADateUTC(1971, 2, 27),  1.12],
      // [AADateUTC(1971, 2, 30),  0.98],
      // [AADateUTC(1971, 3,  3),  0.85],
      // [AADateUTC(1971, 3,  6),  1.04],
      // [AADateUTC(1971, 3,  9),  0.92],
      // [AADateUTC(1971, 3, 12),  0.96],
      // [AADateUTC(1971, 3, 15),  0.94],
      // [AADateUTC(1971, 3, 18),  0.99],
      // [AADateUTC(1971, 3, 21),  0.96],
      // [AADateUTC(1971, 3, 24),  1.15],
      // [AADateUTC(1971, 3, 27),  1.18],
      // [AADateUTC(1971, 3, 30),  1.12],
      // [AADateUTC(1971, 4,  3),  1.06],
      // [AADateUTC(1971, 4,  6),  0.96],
      // [AADateUTC(1971, 4,  9),  0.87],
      // [AADateUTC(1971, 4, 12),  0.88],
      // [AADateUTC(1971, 4, 15),  0.79],
      // [AADateUTC(1971, 4, 18),  0.54],
      // [AADateUTC(1971, 4, 21),  0.34],
      // [AADateUTC(1971, 4, 25),     0]
      // ]),
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    // aaOptions.xAxis
    // .typeSet(AAChartAxisType.datetime)
    // .dateTimeLabelFormatsSet(new AADateTimeLabelFormats()
    // .monthSet("%e. %b")
    // .yearSet("%b")
    // );

    return aaOptions;
  }

  static AAOptions logarithmicAxisLineChart() {
    return new AAOptions()
        .titleSet(new AATitle()
        .textSet("Logarithmic Axis Chart"))
        .chartSet(new AAChart()
        .typeSet(AAChartType.line))
        .xAxisSet(new AAXAxis()
    // .typeSet(AAChartAxisType.logarithmic)
        .gridLineWidthSet(0.6))
        .yAxisSet(new AAYAxis()
      // .typeSet(AAChartAxisType.logarithmic)
      // .minorTickIntervalSet(0.1)
    )
        .tooltipSet(new AATooltip()
        .enabledSet(true)
        .headerFormatSet("<b>{series.name}</b><br />")
        .pointFormatSet("x = {point.x}, y = {point.y}"))
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo Hot")
          .dataSet([1, 2, 4, 8, 16, 32, 64, 128, 256, 512])
    ]);
  }

  static AAOptions logarithmicAxisScatterChart() {
    var aaMarker = new AAMarker()
        .radiusSet(8)
        .symbolSet(AAChartSymbolType.circle)
        .fillColorSet(AAColor.white)
        .lineWidthSet(3)
        .lineColorSet(AAColor.red);

    var scatterData = [
      [550, 870], [738, 362], [719, 711], [547, 665], [595, 197], [332, 144],
      [581, 555], [196, 862], [6,   837], [400, 924], [888, 148], [785, 730],
      [374, 358], [440,  69], [704, 318], [646, 506], [238, 662], [233,  56],
      [622, 572], [563, 903], [744, 672], [904, 646], [390, 325], [536, 491],
      [676, 186], [467, 145], [790, 114], [437, 793], [853, 243], [947, 196],
      [395, 728], [527, 148], [516, 675], [632, 562], [52,  552], [605, 580],
      [790, 865], [156, 87],  [584, 290], [339, 921], [383, 633], [106, 373],
      [762, 863], [424, 149], [608, 959], [574, 711], [468, 664], [268,  77],
      [894, 850], [171, 102], [203, 565], [592, 549], [86,  486], [526, 244],
      [323, 575], [488, 842], [401, 618], [148,  43], [828, 314], [554, 711],
      [685, 868], [387, 435], [469, 828], [623, 506], [436, 184], [450, 156],
      [805, 517], [465, 997], [728, 802], [231, 438], [935, 438], [519, 856],
      [378, 579], [73,  765], [223, 219], [359, 317], [686, 742], [17,  790],
      [20,   35], [410, 644], [984, 325], [503, 882], [900, 187], [578, 968],
      [27,  718], [355, 704], [395, 332], [641, 548], [964, 374], [215, 472],
      [323,  66], [882, 542], [671, 327], [650, 193], [828, 632], [760, 929],
      [607, 335], [928, 826], [462, 598], [631, 411]
    ];

    return new AAOptions()
        .titleSet(new AATitle()
        .textSet("Logarithmic Axis Scatter Chart"))
        .chartSet(new AAChart()
        .typeSet(AAChartType.scatter))
        .xAxisSet(new AAXAxis()
    // .typeSet(AAChartAxisType.logarithmic)
        .minSet(1)
        .maxSet(1000)
    // .endOnTickSet(true)
        .tickIntervalSet(1)
    // .minorTickIntervalSet(0.1)
        .gridLineWidthSet(1))
        .yAxisSet(new AAYAxis()
    // .typeSet(AAChartAxisType.logarithmic)
        .minSet(1)
        .maxSet(1000)
        .tickIntervalSet(1)
    // .minorTickIntervalSet(0.1)
        .gridLineWidthSet(1)
        .titleSet(new AATitle()
        .textSet("")))
        .seriesSet([
      new AASeriesElement()
          .markerSet(aaMarker)
          .dataSet(scatterData)
    ]);
  }

  //https://github.com/AAChartModel/AAChartKit-Swift/issues/230
  static AAOptions disableMixedChartInactiveAnimationEffect() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.line)
        .colorsThemeSet(["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",])//Colors theme
        .seriesSet([
      new AASeriesElement()
          .nameSet("New York")
          .typeSet(AAChartType.line)
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
      ,
      new AASeriesElement()
          .nameSet("Berlin")
          .typeSet(AAChartType.line)
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0])
      ,
      new AASeriesElement()
          .nameSet("London")
          .typeSet(AAChartType.area)
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8])
      ,
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.tooltip.sharedSet(false);

    // aaOptions.plotOptions.series
    //     .statesSet(new AAStates()
    //     .inactiveSet(new AAInactive()
    //     .enabledSet(false)));

    return aaOptions;
  }

  //https://github.com/AAChartModel/AAChartKit-Swift/issues/242
  static AAOptions adjustBubbleChartMinAndMax() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.bubble)
        .titleSet("AACHARTKIT BUBBLES")
        .subtitleSet("JUST FOR FUN")
        .yAxisTitleSet("℃")
        .yAxisGridLineWidthSet(0)
        .colorsThemeSet(["#0c9674","#7dffc0","#d11b5f","#facd32","#ffffa0","#EA007B"])
        .seriesSet([
      new AASeriesElement()
          .nameSet("BubbleOne")
          .dataSet([
        [97, 36, 50],
        [94, 74, 50],
        [68, 76, 50],
        [64, 87, 50],
        [68, 27, 49],
        [74, 99, 51],
        [71, 93, 55],
        [51, 69, 60],
        [38, 23, 50],
        [57, 86, 50],
        [33, 24, 51]
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    // aaOptions.plotOptions
    //     .bubbleSet(new AABubble()
    //     .minSizeSet(0)
    //     .maxSizeSet(100)
    //     .zMinSet(0)
    //     .zMaxSet(100));

    return aaOptions;
  }

  //https://github.com/AAChartModel/AAChartKit-Swift/issues/260
  static AAOptions customLineChartDataLabelsFormat() {
    var aaChartModel = new AAChartModel()
        .dataLabelsEnabledSet(true)
        .seriesSet([
      new AASeriesElement()
          .dataSet([
        ["测试 1", 100],
        ["测试 2", 130],
        ["测试 3", 120],
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    // aaOptions.plotOptions.series.dataLabels
    //     .formatSet("{point.name}");

    return aaOptions;
  }

  //A more simple way to custom line chart dataLabels format
  //https://github.com/AAChartModel/AAChartKit-Swift/issues/260
  static AAOptions customLineChartDataLabelsFormat2() {
    var aaChartModel = new AAChartModel()
        .dataLabelsEnabledSet(true)
        .categoriesSet(["测试 1", "测试 2", "测试 3", ])
        .seriesSet([
      new AASeriesElement()
          .dataSet([100, 130, 120])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    // aaOptions.plotOptions.series.dataLabels
    //     .formatSet("{x}");

    return aaOptions;
  }

  static AAOptions complicatedScatterChart() {
    var aaChartModel = new AAChartModel()
        .subtitleSet("Multiplier between base rate and charge rate")
        .subtitleAlignSet(AAChartAlignType.left)
        .subtitleStyleSet(AAStyle.colorStr(AAColor.black))
        .chartTypeSet(AAChartType.scatter)
        .yAxisGridLineWidthSet(0)
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerRadiusSet(8)
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .dataLabelsEnabledSet(true)
        .colorsThemeSet([AAColor.red, AAColor.orange, AAColor.green, AAColor.blue])
        .seriesSet([
      new AASeriesElement()
          .nameSet("Yingyun-SH")
          .dataSet([
        new AADataElement()
        // .xSet(33).ySet(1.37)
            .dataLabelsSet(
            new AADataLabels()
                .enabledSet(true)
                .formatSet("Package")
                .xSet(3)
                .verticalAlignSet(AAChartVerticalAlignType.middle)
        )
        ,

        new AADataElement()
        // .xSet(35).ySet(1.36)
            .dataLabelsSet(
            new AADataLabels()
                .enabledSet(true)
                .formatSet("Assembly worker")
                .xSet(3)
                .verticalAlignSet(AAChartVerticalAlignType.middle)
        )
        ,

        // new AADataElement()
        //     .xSet(38).ySet(1.32)
        //     .dataLabelsSet(
        // new AADataLabels()
        //     .enabledSet(true)
        //     .formatSet("Others")
        //     .xSet(3)
        //     .verticalAlignSet(AAChartVerticalAlignType.middle)
        // )
        // ,
        //
        // new AADataElement()
        //     .xSet(35).ySet(1.32)
        //     .dataLabelsSet(
        // new AADataLabels()
        //     .enabledSet(true)
        //     .formatSet("QC")
        //     .xSet(3)
        //     .verticalAlignSet(AAChartVerticalAlignType.middle)
        // )
        // ,
        //
        // new AADataElement()
        //     .xSet(47).ySet(1.19)
        //     .dataLabelsSet(
        // new AADataLabels()
        //     .enabledSet(true)
        //     .formatSet("Welder")
        //     .xSet(3)
        //     .verticalAlignSet(AAChartVerticalAlignType.middle)
        // )
        // ,
        //
        // [ 33, 1.37],
        // [ 35, 1.36],
        // [ 38, 1.32],
        // [ 35, 1.32],
        // [ 47, 1.19],
        // ])
        // ,
        //
        // new AASeriesElement()
        //     .nameSet("GI-SZ")
        //     .dataSet([
        // new AADataElement()
        //     .xSet(38).ySet(1.37)
        //     .dataLabelsSet(
        // new AADataLabels()
        //     .enabledSet(true)
        //     .formatSet("Grinder")
        //     .xSet(3)
        //     .verticalAlignSet(AAChartVerticalAlignType.middle)
        // )
        // ,
        //
        // new AADataElement()
        //     .xSet(38).ySet(1.37)
        //     .dataLabelsSet(
        // new AADataLabels()
        //     .enabledSet(true)
        //     .formatSet("Paint/Blast worker")
        //     .xSet(123)
        // )
        // ,
        //
        // [ 38, 1.37],
        // [ 38, 1.37],
        // ])
        // ,

        new AASeriesElement()
            .nameSet("Engma-SZ")
            .dataSet([
          new AADataElement()
          // .xSet(43).ySet(1.30)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Welder")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(40).ySet(1.33)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Grinder")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(40).ySet(1.33)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Paint/Blast worker")
                  .xSet(123)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(42).ySet(1.31)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Pipe Fitter")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(40).ySet(1.35)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("OH2 Operator")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          [ 43, 1.30],
          [ 40, 1.33],
          [ 40, 1.33],
          [ 42, 1.31],
          [ 40, 1.35],
        ])
        ,

        new AASeriesElement()
            .nameSet("Weifu-SZ")
            .dataSet([
          new AADataElement()
          // .xSet(41).ySet(1.15)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Grinder")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(44).ySet(1.11)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Paint/Blast worker")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,

          new AADataElement()
          // .xSet(41).ySet(1.12)
              .dataLabelsSet(
              new AADataLabels()
                  .enabledSet(true)
                  .formatSet("Pipe Fitter")
                  .xSet(3)
                  .verticalAlignSet(AAChartVerticalAlignType.middle)
          )
          ,
          [ 41, 1.15],
          [ 44, 1.11],
          [ 41, 1.12],
        ])
        ,
      ])]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    var aaPlotLinesArr = [
      new AAPlotLinesElement()
          .colorSet(AAColor.green)//颜色值
          .dashStyleSet(AAChartLineDashStyleType.solid)//样式：Dash,Dot,Solid等,默认Solid
          .widthSet(4.0) //标示线粗细
          .valueSet(1.28) //所在位置
          .zIndexSet(1) //层叠,标示线在图表中显示の层叠级别，值越大，显示越向前
          .labelSet(new AALabel()
          .textSet("Benchmark Mutiplier On Average Set(1.28)")
          .styleSet(new AAStyle()
          .colorSet(AAColor.green)
          .fontWeightSet(AAChartFontWeightType.bold)))
      ,
      new AAPlotLinesElement()
          .colorSet(AAColor.black)
          .dashStyleSet(AAChartLineDashStyleType.solid)
          .widthSet(4)
          .valueSet(1.18)
          .labelSet(new AALabel()
          .textSet("Current Multiplier on Average Set(1.18)")
          .styleSet(new AAStyle()
          .colorSet(AAColor.black)
          .fontWeightSet(AAChartFontWeightType.bold)))
      ,

    ];

    aaOptions.yAxis.plotLinesSet(aaPlotLinesArr);

    aaOptions.yAxis.labels.styleSet(AAStyle.colorStr(AAColor.black));
    aaOptions.xAxis.labels.styleSet(AAStyle.colorStr(AAColor.black));

    aaOptions.xAxis.tickWidth = 0;

    aaOptions.yAxis
    // .tickAmountSet(20)
        .lineWidthSet(1)
        .lineColorSet(AAColor.black);

    aaOptions.xAxis
        .lineWidthSet(1)
        .lineColorSet(AAColor.black)
        .minSet(10)
        .maxSet(50)
        .tickIntervalSet(5);

    aaOptions.legend
        .itemMarginTopSet(10)
    // .symbolRadiusSet(10)//图标圆角
    // .symbolHeightSet(20)//标志高度
    // .symbolWidthSet(20)//图标宽度
        .alignSet(AAChartAlignType.right)
        .layoutSet(AAChartLayoutType.vertical)
        .verticalAlignSet(AAChartVerticalAlignType.top);

    return aaOptions;
  }
}