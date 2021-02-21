import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AASeriesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAnimation.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAChart.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumn.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAItemStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALegend.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPie.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotBandsElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotLinesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAXAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';

class ChartOptionsComposer {
  static AAOptions configureTheAAOptionsOfAreaChart() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(0)
        .colorsThemeSet([
      AAGradientColor.oceanBlueColor,
      AAGradientColor.sanguineColor,
      AAGradientColor.lusciousLimeColor,
      AAGradientColor.mysticMauveColor,
    ])
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36]),
      AASeriesElement()
          .nameSet("Berlin Hot")
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67]),
      AASeriesElement()
          .nameSet("London Hot")
          .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64]),
      AASeriesElement()
          .nameSet("NewYork Hot")
          .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);

    aaOptions.legend
        .enabledSet(true)
        .alignSet(AAChartAlignType.right)
        .layoutSet(AAChartLayoutType.vertical)
        .verticalAlignSet(AAChartVerticalAlignType.top);
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.labels.format = "{value} %";//给y轴添加单位
    return aaOptions;
  }

  static AAOptions configureTheAAOptionsOfPieChart() {
    //计算X轴偏移量
//  CGFloat xOffSet = (self.aaChartView.frame.size.width - 40)  0.1;

    //第一种写法
    AAOptions aaOptions = AAOptions()
        .chartSet(AAChart()
        .typeSet(AAChartType.pie)
        .marginLeftSet(0)
        .marginRightSet(0)
    )
        .titleSet(AATitle()
        .textSet("渠道销售额<br/>占比")//标题文本内容
        .alignSet(AAChartAlignType.center)//标题水平居中
        .verticalAlignSet(AAChartVerticalAlignType.middle)//标题垂直居中
//      .xSet((-xOffSet))
        .ySet((-5))
        .styleSet(AAStyle()
        .colorSet("#000000")//Title font color
        .fontSizeSet(14)//Title font size
        .fontWeightSet("bold")//Title font weight
    )
    )
        .plotOptionsSet(AAPlotOptions()
        .seriesSet(AASeries()
        .animationSet(AAAnimation()
        .easingSet(AAChartAnimationType.bounce)
        .durationSet(1000)
    )
    )
        .pieSet(AAPie()
        .showInLegendSet(true)
        .centerSet(["40%","50%"])
        .dataLabelsSet(AADataLabels()
        .enabledSet(false)
        .formatSet("{point.percentage:.1f}%")
    )
    )
    )
        .legendSet(AALegend()
        .enabledSet(true)
        .alignSet(AAChartAlignType.right)
        .layoutSet(AAChartLayoutType.vertical)
        .verticalAlignSet(AAChartVerticalAlignType.middle)
    )
        .seriesSet([
      AASeriesElement()
          .nameSet("语言热度值")
//      .sizeSet(240)//环形图的半径大小
          .innerSizeSet("65%")//内部圆环半径大小占比
          .allowPointSelectSet(false)//是否允许在点击数据点标记(扇形图点击选中的块发生位移)
          .dataSet([
            ["Firefox",   3336.2],
            ["IE",        26.8],
            ["Safari",    88.5],
            ["Opera",     46.0],
            ["Others",    223]
          ]
      ),
    ])
        .colorsSet(["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",]);//设置颜色主题
    return aaOptions;
  }

  static AAOptions adjustPieChartTitleAndDataLabelFontStyle() {
    AAOptions aaOptions = AAOptions()
        .chartSet(AAChart()
        .typeSet(AAChartType.pie))
        .titleSet(
        AATitle()
            .useHTMLSet(true)
            .textSet("<span style=""color:#1E90FF;font-weight:thin;font-size:13px""> &nbsp&nbsp&nbsp近七天 </span>  <br> <span style=""color:#A9A9A9;font-weight:thin;font-size:10px""> 运行状态占比 </span>")//标题文本内容
            .alignSet(AAChartAlignType.center)//标题水平居中
            .verticalAlignSet(AAChartVerticalAlignType.middle)//标题垂直居中
            .ySet(0)//标题相对于垂直对齐的偏移量，取值范围：图表的上边距（chart.spacingTop ）到图表的下边距（chart.spacingBottom），可以是负值，单位是px。默认值和字体大小有关。
    )
        .colorsSet(["#1E90FF","#87CEFA","#A9A9A9","#fd4800","#F4A460"])//设置颜色主题
        .seriesSet([
      AASeriesElement()
//      .sizeSet(200)//环形图的半径大小
          .innerSizeSet("60%")//内部圆环半径大小占比
          .allowPointSelectSet(false)//是否允许在点击数据点标记(扇形图点击选中的块发生位移)
          .dataLabelsSet(
          AADataLabels()
          .enabledSet(true)
          .useHTMLSet(true)
          .distanceSet(10)
          .formatSet("<span style=""color:#A9A9A9;font-weight:thin;font-size:10px"">{point.name}</span> <span style=""color:#1E90FF;font-weight:bold;font-size:15px"">{point.percentage:.1f}</span><span style=""color:#1E90FF;font-weight:thin;font-size:10px"">%</span>")
      )
          .dataSet([
            ["Firefox",   150],
            ["Opera",      15],
            ["Others",     35]
          ]
      ),
    ]);
    return aaOptions;
  }

  static AAOptions configureTheAAOptionsOfSpecialNestedColumnChart() {
    // 下面是更清晰的另一种写法
    AAChart aaChart = AAChart()
        .typeSet(AAChartType.column);

    AATitle aaTitle = AATitle()
        .textSet("分公司效率优化嵌套图");

    AAXAxis aaXAxis = AAXAxis()
        .tickWidthSet(3)
        .tickLengthSet(10)
        .tickPositionSet("outside")
        .lineWidthSet(3)
        .visibleSet(true)
        .categoriesSet(["伦敦总部","柏林分部","纽约分部",]);

    AAYAxis aaYAxis1 = AAYAxis()
        .visibleSet(true)
        .minSet(0)
        .tickWidthSet(3)
        .tickLengthSet(10)
        .tickPositionSet("outside")
        .lineWidthSet(3)
        .titleSet(AATitle().textSet("雇员"));

    AAYAxis aaYAxis2 = AAYAxis()
        .visibleSet(true)
        .oppositeSet(true)
        .tickWidthSet(3)
        .tickLengthSet(20)
        .tickPositionSet("inside")
        .lineWidthSet(3)
        .titleSet(AATitle()
        .textSet("利润 (millions)"));

    AATooltip aaTooltip = AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    AAPlotOptions aaPlotOptions = AAPlotOptions()
        .seriesSet(AASeries()
        .animationSet(AAAnimation()
//      .easingSet(AAChartAnimationType.bounce)
        .durationSet(1000)
    )
    )
        .columnSet(AAColumn()
        .groupingSet(false)
        .borderWidthSet(0)
    );

    List aaSeries = [
      AAColumn()
          .nameSet("雇员")
          .dataSet([150, 73, 20])
          .colorSet("rgba(165,170,217,1)")
          .groupingSet(false)
          .pointPaddingSet(0.3)
          .pointPlacementSet((-0.2)),
      AAColumn()
          .nameSet("优化的员工")
          .dataSet([140, 90, 40])
          .colorSet("rgba(126,86,134,.9)")
          .groupingSet(false)
          .pointPaddingSet(0.4)
          .pointPlacementSet((-0.2)),
      AAColumn()
          .nameSet("利润")
          .dataSet([183.6, 178.8, 198.5])
          .colorSet("rgba(248,161,63,1)")
          .groupingSet(false)
          .pointPaddingSet(0.3)
          .pointPlacementSet((0.2))
          .yAxisSet(1),
      AAColumn()
          .nameSet("优化的利润")
          .dataSet([203.6, 198.8, 208.5])
          .colorSet("rgba(186,60,61,.9)")
          .groupingSet(false)
          .pointPaddingSet(0.4)
          .pointPlacementSet((0.2))
          .yAxisSet(1),
    ];

    AAOptions aaOptions = AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .xAxisSet(aaXAxis)
        .yAxisSet([aaYAxis1,aaYAxis2])
        .tooltipSet(aaTooltip)
        .plotOptionsSet(aaPlotOptions)
        .seriesSet(aaSeries);
    return aaOptions;
  }

  static AAOptions configureThePolygonPolarChart() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.area)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4","#7dffc0"])//设置主体颜色数组
        .yAxisTitleSet("")//设置 Y 轴标题
        .tooltipValueSuffixSet("℃")//设置浮动提示框单位后缀
        .yAxisGridLineWidthSet(1)//y轴横向分割线宽度为0(即是隐藏分割线)
        .xAxisGridLineWidthSet(0.5)
        .markerRadiusSet(0)
        .polarSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .colorSet(AAGradientColor.deepSeaColor)
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.xAxis.visible = false;//避免多边形外环之外有额外套了一层无用的外环
//  aaOptions.yAxis.gridLineInterpolation = AAYAxisGridLineInterpolationPolygon;
    return aaOptions;
  }

  static AAOptions configureTheNoGapColunmChart() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("中间缝隙很小的柱状图")//图表主标题
        .subtitleSet("调整一下groupPadding即可")//图表副标题
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4","#7dffc0"])//设置主体颜色数组
        .yAxisTitleSet("")//设置 Y 轴标题
        .tooltipValueSuffixSet("℃")//设置浮动提示框单位后缀
        .yAxisGridLineWidthSet(1)//y轴横向分割线宽度为0(即是隐藏分割线)
        .xAxisGridLineWidthSet(0.5)
        .markerRadiusSet(0)
        .dataLabelsEnabledSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("2020")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2,]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);

    //      关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.groupPadding
    //
    //     关于 `pointPadding`
    //https://api.highcharts.com.cn/highcharts#plotOptions.column.pointPadding

    aaOptions.plotOptions.column.groupPadding = 0.05;//Padding between each column or bar, in x axis units. default：0.1.
    aaOptions.plotOptions.column.pointPadding = 0;//Padding between each value groups, in x axis units. default：0.2.

    aaOptions.plotOptions.column.dataLabels
        .ySet(-10)
        .formatSet(" {y} 美元 ")
        .backgroundColorSet("rgba(0, 0, 0, 0.75)")
        .shapeSet("callout")
        .styleSet(AAStyle()
        .colorSet(AAColor.white)
        .textOutlineSet("none"));
    return aaOptions;
  }

  static AAOptions configureCustomStyleTooltipChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.area)//图表类型
        .titleSet("近三个月金价起伏周期图")//图表主标题
        .subtitleSet("金价(元/克)")//图表副标题
        .colorsThemeSet(["#FFD700"/*(纯金色)*/,"#ffc069","#06caf4","#7dffc0"])//设置主体颜色数组
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .xAxisTickIntervalSet(15)//x轴刻度点间隔数(设置每隔几个点显示一个 X轴的内容)
        .yAxisTitleSet("")//设置 Y 轴标题
        .yAxisGridLineWidthSet(0.8)//y轴横向分割线宽度(为0即是隐藏分割线)
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
      AASeriesElement()
          .lineWidthSet(1.5)
          .fillOpacitySet(0.4)
          .nameSet("2018")
          .dataSet(
          [1.51, 6.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
            4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 12.7, 0.94, 1.44,
            18.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46,
            3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.33, 4.68, 1.31, 1.10, 13.9, 1.10, 1.16, 1.67,
            2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3.25, 3.32, 3.07, 3.92, 3.05,
            2.18, 3.24,3.23, 3.15, 2.90, 1.81, 2.11, 2.43, 5.59, 3.09, 4.09, 6.14, 5.33, 6.05,
            5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.48])
    ]);

    //Custom Tooltip Style --- 自定义图表浮动提示框样式及内容/
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AATooltip tooltip = aaOptions.tooltip;
    tooltip
        .useHTMLSet(true)
        .headerFormatSet("{series.name}-<b>{point.key}</b> &nbsp12:00<br>")
        .pointFormatSet("<b>{point.y}</b>&nbsp元/克")
        .valueDecimalsSet(2)//设置取值精确到小数点后几位
        .backgroundColorSet("#000000")
        .borderColorSet("#000000")
        .styleSet(
        AAStyle()
            .colorSet("#FFD700")
            .fontSizeSet(12)
    );
        return aaOptions;

  }

  static AAOptions adjustChartLeftAndRightMargin() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4","#7dffc0"])//设置主体颜色数组
        .yAxisTitleSet("")//设置 Y 轴标题
        .polarSet(true)
        .categoriesSet(["Java", "Swift", "Python", "Ruby", "PHP", "Go", "C", "C#", "C++", "Perl", "R", "MATLAB", "SQL"])
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.chart.marginLeft = 70;
    aaOptions.chart.marginRight = 70;
    return aaOptions;
  }

  static AAOptions configureChartWithBackgroundImage() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .titleSet("编程语言热度")
        .subtitleSet("虚拟数据")
        .dataLabelsEnabledSet(true)//是否直接显示扇形图数据
        .yAxisTitleSet("摄氏度")
        .seriesSet([
          AASeriesElement()
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
        ]),
        ]
    )
    ;

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.chart.plotBackgroundImage = "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2859216016,2109779587&fm=27&gp=0.jpg";
    return aaOptions;
  }

  static AAOptions configureDoubleYAxisChartOptions() {
    AATitle aaTitle = AATitle().textSet("双Y轴混合图");

    AALabels labels = AALabels()
        .enabledSet(true)//设置 y 轴是否显示数字
        .formatSet("{value:.,0f}°C")//让y轴的值完整显示 而不是100000显示为100k,同时单位后缀为°C
        .styleSet(
        AAStyle()
        .colorSet("#ff0000")//yAxis Label font color
        .fontSizeSet(15)//yAxis Label font size
        .fontWeightSet(AAChartFontWeightType.bold)//yAxis Label font weight
    );

    AAXAxis aaXAxis = AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet(["Java", "Swift", "Python", "Ruby", "PHP", "Go", "C", "C#", "C++", "Perl", "R", "MATLAB", "SQL"]);

    AAYAxis yAxisOne = AAYAxis()
        .visibleSet(true)
        .labelsSet(labels)
        .titleSet(AATitle()
        .textSet("温度")
        .styleSet(AAStyle()
        .colorSet("#1e90ff")//Title font color
        .fontSizeSet(14)//Title font size
        .fontWeightSet(AAChartFontWeightType.bold)//Title font weight
        .textOutlineSet("0px 0px contrast")
    ))
        .oppositeSet(true);


    AAYAxis yAxisTwo = AAYAxis()
        .visibleSet(true)
        .labelsSet(labels.formatSet("{value}mm"))
        .titleSet(AATitle()
        .textSet("降雨量")
        .styleSet(AAStyle()
        .colorSet("#1e90ff")//Title font color
        .fontSizeSet(14)//Title font size
        .fontWeightSet(AAChartFontWeightType.bold)//Title font weight
    ));

    List aaYAxisArr = [
      yAxisOne,// Primary yAxis
      yAxisTwo // Secondary yAxis
    ];

    AATooltip aaTooltip = AATooltip().enabledSet(true).sharedSet(true);

    List aaSeries = [
      AASeriesElement()
          .nameSet("2017")
          .typeSet(AAChartType.column)
//      .borderRadiusSet(4)
          .colorSet(AAGradientColor.mysticMauveColor)
//      .yAxisSet(1)
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
          .dataLabelsSet(AADataLabels().enabledSet(true))
      ,
      AASeriesElement()
          .nameSet("2018")
          .typeSet(AAChartType.line)
          .colorSet(AAColor.red)
//      .yAxisSet(0)
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
          .dataLabelsSet(AADataLabels().enabledSet(true))
    ];

    AAOptions aaOptions = AAOptions();
    aaOptions.title = aaTitle;
    aaOptions.xAxis = aaXAxis;
    // aaOptions.yAxis = aaYAxisArr;
    aaOptions.tooltip = aaTooltip;
    aaOptions.series = aaSeries;
    return aaOptions;
  }


  static AAOptions adjustChartSeriesDataAccuracy() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("Adjust data accuracy")
        .yAxisTitleSet("")
        .dataLabelsEnabledSet(true)
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerRadiusSet(6)//设置折线连接点宽度为0,即是隐藏连接点
        .yAxisGridLineWidthSet(0.5)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .seriesSet([AASeriesElement()
        .nameSet("2017")
        .dataSet([(0.0000001),(0.0000002),(0.0000003),(0.0000004),(0.0000005)])
        .lineWidthSet(5)
    ]
    );
    //数值格式化字符串是采用了 C 语言浮点型格式化的子集，格式化字符是在大括号内，变量之后，用冒号（:）分隔的内容。
    //默认情况下点号（.）表示小数点，空格（ ）代表千分符，当然这两个符号可以在 语言文字 选项集里中来设定。
    //具体参见 https://www.hcharts.cn/docs/basic-labels-string-formatting#h2-1
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.tooltip.valueDecimals = 9;//设置tooltip取值精确到小数点后9位
    aaOptions.plotOptions.area.dataLabels.format = "{point.y:.9f}";//设置dataLabels取值精确到小数点后9位
    return aaOptions;
  }

  static AAOptions adjustGroupPaddingForPolarChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)
        .titleSet("Colorful Column Chart")
        .subtitleSet("single data array colorful column chart")
        .borderRadiusSet(5)
        .polarSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .dataSet([211,183,157,133,111]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AAColumn aaColumn = aaOptions.plotOptions.column;
    aaColumn.groupPadding = 0.05;
    aaColumn.colorByPoint = true;
    return aaOptions;
  }

  static AAOptions customStyleStackedColumnChart() {
    //Method 1
    AAChart aaChart = AAChart()
        .typeSet(AAChartType.column);

    AATitle aaTitle = AATitle()
        .textSet("Stacked column chart");

    AAXAxis aaXAxis = AAXAxis()
        .visibleSet(true)
        .categoriesSet(["Apples", "Oranges", "Pears", "Grapes", "Bananas"]);

    AAYAxis aaYAxis = AAYAxis()
        .visibleSet(true)
        .minSet(0)
        .titleSet(AATitle()
        .textSet("Total fruit consumption"))
        .stackLabelsSet(
        AALabels()
            .enabledSet(true)
            .styleSet(AAStyle().
        fontWeightSet(AAChartFontWeightType.bold)
        )
    );

    AALegend aaLegend = AALegend()
        .enabledSet(true)
        .alignSet(AAChartAlignType.right)
        .verticalAlignSet(AAChartVerticalAlignType.top)
        .borderColorSet("#ccc")
        .borderWidthSet(1)
        .xSet((-30))
        .ySet(25)
    ;

    AATooltip aaTooltip = AATooltip()
        .headerFormatSet("<b>{point.x}</b><br/>")
        .pointFormatSet("{series.name}: {point.y}<br/>Total: {point.stackTotal}");

    AAColumn aaColumn = AAColumn()
        .stackingSet(AAChartStackingType.normal)
        .dataLabelsSet(
        AADataLabels()
        .enabledSet(true)
        .styleSet(
            AAStyle()
        .colorSet(AAColor.white)
        .fontSizeSet(15)
        .fontWeightSet(AAChartFontWeightType.thin)
        .textOutlineSet("0px 0px contrast")
    )
    )
        .pointPaddingSet(0)//Padding between each value groups, in x axis units. default：0.2.
        .groupPaddingSet(0.005)//Padding between each column or bar, in x axis units. default：0.1.
        .borderWidthSet(0)//The width of the border surrounding each column or bar.(调整边缘线宽度) https://api.hcharts.cn/plotOptions.column.borderWidth
        ;

    AAPlotOptions aaPlotOptions = AAPlotOptions()
        .seriesSet(
        AASeries()
        .animationSet(
        AAAnimation()
        .easingSet(AAChartAnimationType.bounce)
        .durationSet(1000)
    )
    )
        .columnSet(aaColumn);

    List aaSeriesArr = [
      AASeriesElement()
          .nameSet("John")
          .dataSet([5, 3, 4, 7, 2]),
      AASeriesElement()
          .nameSet("Jane")
          .dataSet([5, 3, 4, 7, 2]),
      AASeriesElement()
          .nameSet("Joe")
          .dataSet([5, 3, 4, 7, 2]),
    ];

    AAOptions aaOptions = AAOptions();
    aaOptions.chart = aaChart;
    aaOptions.title = aaTitle;
    aaOptions.xAxis = aaXAxis;
    aaOptions.yAxis = aaYAxis;
    aaOptions.tooltip = aaTooltip;
    aaOptions.plotOptions = aaPlotOptions;
    aaOptions.legend = aaLegend;
    aaOptions.series = aaSeriesArr;
    aaOptions.colors = ["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",];

//    return aaOptions;

    // Method 2
    AAOptions options2 = AAOptions()
        .chartSet(AAChart().typeSet(AAChartType.column))
        .titleSet(AATitle().textSet("Stacked column chart"))
        .xAxisSet(AAXAxis()
        .visibleSet(true)
        .categoriesSet(["Apples", "Oranges", "Pears", "Grapes", "Bananas"])
    )
        .yAxisSet(AAYAxis()
        .visibleSet(true)
        .minSet(0)
        .titleSet(AATitle().textSet("Total fruit consumption"))
        .stackLabelsSet(AALabels()
        .enabledSet(true)
        .styleSet(AAStyle().fontWeightSet(AAChartFontWeightType.bold))
    )
    )
        .legendSet(AALegend()
        .enabledSet(true)
        .alignSet(AAChartAlignType.right)
        .xSet((-30))
        .verticalAlignSet(AAChartVerticalAlignType.top)
        .ySet(25)
        .borderColorSet("#ccc")
        .borderWidthSet(1)
    )
        .tooltipSet(AATooltip()
        .headerFormatSet("<b>{point.x}</b><br/>")
        .pointFormatSet("{series.name}: {point.y}<br/>Total: {point.stackTotal}")
    )
        .plotOptionsSet(AAPlotOptions()
        .seriesSet(AASeries()
        .animationSet(AAAnimation()
        .easingSet(AAChartAnimationType.bounce)
        .durationSet(1000)
    )
    )
        .columnSet(AAColumn()
        .stackingSet(AAChartStackingType.normal)
        .dataLabelsSet(AADataLabels().enabledSet(true))
    )
    )
        .seriesSet([
      AASeriesElement()
          .nameSet("John")
          .dataSet([5, 3, 4, 7, 2]),
      AASeriesElement()
          .nameSet("Jane")
          .dataSet([5, 3, 4, 7, 2]),
      AASeriesElement()
          .nameSet("Joe")
          .dataSet([5, 3, 4, 7, 2]),
    ]);

    return options2;
  }

//  static AAOptions specialStyleStepLineChart() {
//    //Method 1
//    AAChartModel aaChartModel = AAChartModel()
//        .chartTypeSet(AAChartType.line)//图形类型
//      .animationTypeSet(AAChartAnimationType.bounce)//图形渲染动画类型为"bounce"
//        .titleSet("STEP LINE CHART")//图形标题
//        .subtitleSet("2020/08/08")//图形副标题
//        .dataLabelsEnabledSet(false)//是否显示数字
//        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式
//        .markerRadiusSet(7)//折线连接点半径长度,为0时相当于没有折线连接点
//        .seriesSet([
//    AASeriesElement()
//        .nameSet("價格")
//        .stepSet(true)
//        .dataSet([
//    ]);
//    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
//  Map xAxisDic = {
//  "type": "datetime",
//  "dateTimeLabelFormats": {
//  "month": "%e.%m.%y"
//  }
//  };
//
//  aaOptions.xAxis = xAxisDic;
//    return aaOptions;
//  }

  static AAOptions disableChartAnimation() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .yAxisLineWidthSet(0)
        .seriesSet([
      AASeriesElement()
          .nameSet("2018")
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
    ]
    );
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.plotOptions.series.animation = false;//禁用图表的渲染动画效果
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.gridLineDashStyle = AALineDashStyleType.longDash;//设置Y轴的网格线样式为 AALineDashStyleType.longDash
    return aaOptions;
  }


  static AAOptions customChartLegendItemStyle() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .categoriesSet(["Java","Swift","Python","Ruby", "PHP","Go","C","C#","C++","Perl","R","MATLAB","SQL"])
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
      AASeriesElement()
          .nameSet("2018")
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
      AASeriesElement()
          .nameSet("2019")
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
      AASeriesElement()
          .nameSet("2020")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);

    //设定图例项的CSS样式。只支持有关文本的CSS样式设定。
//  /默认是：{
//  "color": "#333333",
//  "cursor": "pointer",
//  "fontSize": "12px",
//  "fontWeight": "bold"
//  }
//  /
    AAItemStyle aaItemStyle = AAItemStyle()
        .colorSet("#ff0000")//字体颜色
        .cursorSet("pointer")//(在移动端这个属性没什么意义,其实不用设置)指定鼠标滑过数据列时鼠标的形状。当绑定了数据列点击事件时，可以将此参数设置为 "pointer"，用来提醒用户改数据列是可以点击的。
        .fontSizeSet(20)//字体大小
        .fontWeightSet(AAChartFontWeightType.thin)//字体为细体字
        ;

    aaOptions.legend
//        .itemMarginBottomSet(20)
//        .symbolRadiusSet(10)//图标圆角
//        .symbolHeightSet(20)//标志高度
//        .symbolWidthSet(20)//图标宽度
//      .alignSet(AAChartAlignType.right)
//      .layoutSet(AALegendLayoutTypeVertical)
//      .verticalAlignSet(AAChartVerticalAlignType.top)
        .itemStyleSet(aaItemStyle)
    ;

    aaOptions.xAxis.tickmarkPlacement = "on";//本参数只对分类轴有效。 当值为 on 时刻度线将在分类上方显示；当值为 between 时，刻度线将在两个分类中间显示。当 tickInterval 为 1 时，默认是 between，其他情况默认是 on。 默认是：null.
    AAYAxis aayAxis = aaOptions.yAxis;
//    aayAxis.minPadding = 0;
    aayAxis.lineWidth = 0;
    return aaOptions;
  }

  static AAOptions configureTheMirrorColumnChart() {
    Map gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#7052f4",
        "#00b0ff"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    Map gradientColorDic2 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "#EF71FF",
        "#4740C8"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    AAOptions aaOptions = AAOptions()
        .chartSet(
        AAChart()
            .typeSet(AAChartType.column)
            .backgroundColorSet("#161139")
    )
        .titleSet(
        AATitle().textSet("")
    )
        .xAxisSet(
        AAXAxis()
            .visibleSet(true)
            .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"])
    )
        .yAxisSet(
        [AAYAxis()
            .visibleSet(true)
            .gridLineWidthSet(0)
            .titleSet(
            AATitle().textSet("收入")),
          AAYAxis()
              .visibleSet(true)
              .titleSet(
              AATitle().textSet("支出"))
              .lineWidthSet(1)
              .oppositeSet(true)
        ])
        .tooltipSet(
        AATooltip()
            .enabledSet(true)
            .sharedSet(true)
    )
        .plotOptionsSet(
        AAPlotOptions()
            .seriesSet(
            AASeries()
                .animationSet(
                AAAnimation()
                    .easingSet(AAChartAnimationType.bounce)
                    .durationSet(1000)
            )
        )
            .columnSet(
            AAColumn()
                .groupingSet(false)
                .borderWidthSet(0)
                .borderRadiusSet(5)
        )
    )
        .seriesSet([
      AASeriesElement()
          .nameSet("收入")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9,7.0, 6.9, 9.5, 14.5,])
          .colorSet(gradientColorDic1),
      AASeriesElement()
          .nameSet("支出")
          .dataSet([-20.1, -14.1, -8.6, -2.5, -0.8, -5.7, -11.3, -17.0, -22.0, -24.8, -24.1, -20.1, -14.1, -8.6, -2.5])
          .colorSet(gradientColorDic2),
    ]);
    return aaOptions;
  }

  static AAOptions yAxisOnTheRightSideChart() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("Y轴在右侧的柱状图📊")//图表主标题
        .subtitleSet("设置 aaOptions.yAxis.opposite = true 即可")//图表副标题
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",])
        .borderRadiusSet(9)
        .seriesSet([
      AASeriesElement()
          .nameSet("2020")
          .colorSet(AAGradientColor.sanguineColor)
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2,]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AAColumn aaColumn = aaOptions.plotOptions.column;
    aaColumn.groupPadding = 0.02;
    //是否将坐标轴显示在对立面，默认情况下 x 轴是在图表的下方显示，y 轴是在左方，
    //坐标轴显示在对立面后，x 轴是在上方显示，y 轴是在右方显示（即坐标轴会显示在对立面）。
    //该配置一般是用于多坐标轴区分展示，另外在 Highstock 中，y 轴默认是在对立面显示的。
    //默认是：false.
//  aaOptions.yAxis.opposite = true;
    return aaOptions;
  }

  static Map simpleGaugeChart() {
    Map aaOptions =
    {
      "chart": {
        "type": "gauge"
      },
      "pane": {
        "startAngle": -150,
        "endAngle": 150
      },
      "yAxis": {
        "min": 0,
        "max": 100,
        "plotBands": [
          {
            "from": 0,
            "to": 60,
            "color": "#FF0000",
            "outerRadius": "105%",
            "thickness": "5%"
          }]
      },
      "series": [{
        "data": [80]
      }]
    };

    return aaOptions;
  }

  static Map gaugeChartWithPlotBand() {
    Map aaOptions =
    {
      "chart": {
        "type": "gauge",
      },
      "title": {
        "text": "速度仪"
      },
      "pane": {
        "startAngle": -150,
        "endAngle": 150,
      },
      // the value axis
      "yAxis": {
        "min": 0,
        "max": 200,

        "title": {
          "text": "km/h"
        },
        "plotBands": [{
          "from": 0,
          "to": 120,
          "color": "#ffc069"
        }, {
          "from": 120,
          "to": 160,
          "color": "#fe117c"
        }, {
          "from": 160,
          "to": 200,
          "color": "#06caf4"
        }]
      },
      "series": [{
        "name": "Speed",
        "data": [80],
      }]
    };

    return aaOptions;
  }

  static AAOptions configureAAPlotBandsForChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .backgroundColorSet(AAColor.white)
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .markerRadiusSet(0)
        .yAxisMaxSet(50)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .colorSet(AAColor.white)
          .lineWidthSet(10)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AACrosshair aaCrosshair = AACrosshair()
        .widthSet(1.5)
        .colorSet(AAColor.gray)
        .dashStyleSet(AALineDashStyleType.longDashDotDot);

    AAXAxis aaxAxis = aaOptions.xAxis;
    aaxAxis.crosshairSet(aaCrosshair);

    AAYAxis aaYAxis = aaOptions.yAxis;
    aaYAxis.crosshairSet(aaCrosshair);

    List<AAPlotBandsElement> aaPlotBandsArr = [
      AAPlotBandsElement()
          .fromSet(0)
          .toSet(5)
          .colorSet("#BC2B44"),
      AAPlotBandsElement()
          .fromSet(5)
          .toSet(10)
          .colorSet("#EC6444"),
      AAPlotBandsElement()
          .fromSet(10)
          .toSet(15)
          .colorSet("#f19742"),
      AAPlotBandsElement()
          .fromSet(15)
          .toSet(20)
          .colorSet("#f3da60"),
      AAPlotBandsElement()
          .fromSet(20)
          .toSet(25)
          .colorSet("#9bd040"),
      AAPlotBandsElement()
          .fromSet(25)
          .toSet(50)
          .colorSet("#acf08f"),];
    aaYAxis.plotBands = aaPlotBandsArr;
    return aaOptions;
  }

  static AAOptions configureAAPlotLinesForChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .backgroundColorSet(AAColor.white)
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .markerRadiusSet(0)
        .yAxisMaxSet(50)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("2019")
          .fillOpacitySet(0.5)
          .lineWidthSet(10)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
          .zonesSet([
        {"value": 12, "color": "#1e90ff"},
        {"value": 24, "color": "#ef476f"},
        {"value": 36, "color": "#04d69f"},
        {"color": "#ffd066"}
      ]),
    ]
    );
//    ["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",]
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    List<AAPlotLinesElement> aaPlotLinesArr = [
      AAPlotLinesElement()
          .colorSet("#1e90ff")//颜色值(16进制)
          .dashStyleSet(AALineDashStyleType.longDashDot)//样式：Dash,Dot,Solid等,默认Solid
          .widthSet((1)) //标示线粗细
          .valueSet((12)) //所在位置
          .zIndexSet((1)) //层叠,标示线在图表中显示的层叠级别，值越大，显示越向前
          .labelSet(AALabel()
          .textSet("PLOT LINES ONE")
          .styleSet(AAStyle()
          .colorSet("#1e90ff")
          .fontWeightSet(AAChartFontWeightType.bold)
      ))
      ,AAPlotLinesElement()
          .colorSet("#ef476f")
          .dashStyleSet(AALineDashStyleType.longDashDot)
          .widthSet((1))
          .valueSet((24))
          .labelSet(AALabel()
          .textSet("PLOT LINES TWO")
          .styleSet(AAStyle()
          .colorSet("#ef476f")
          .fontWeightSet(AAChartFontWeightType.bold)
      ))
      ,AAPlotLinesElement()
          .colorSet("#04d69f")
          .dashStyleSet(AALineDashStyleType.longDashDot)
          .widthSet((1))
          .valueSet((36))
          .labelSet(AALabel()
          .textSet("PLOT LINES THREE")
          .styleSet(AAStyle()
          .colorSet("#04d69f")
          .fontWeightSet(AAChartFontWeightType.bold)
      ))
    ];
    AAYAxis aaYAxis = aaOptions.yAxis;
    aaYAxis.plotLines = aaPlotLinesArr;
    return aaOptions;
  }

  static AAOptions adjustChartDataLabelsStyle() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.spline)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .markerRadiusSet(7)
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .dataLabelsEnabledSet(true)
        .yAxisLineWidthSet(0)
        .yAxisTitleSet("")
        .legendEnabledSet(false)
        .tooltipEnabledSet(false)
        .categoriesSet([
      "10-01","10-02","10-03","10-04","10-05","10-06","10-07","10-08","10-09",
      "10-10","10-11","10-12","10-13","10-14","10-15",])
        .seriesSet([
      AASeriesElement()
          .colorSet(AAColor.red)// blue color
          .nameSet("2020")
          .dataSet([1.51, 6.7, 0.94, 1.44, 3.87, 3.24, 4.90, 4.61, 4.10,
        4.17, 3.85, 4.17, 3.46, 3.46, 3.55,]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.xAxis.crosshairSet(
        AACrosshair()
            .widthSet(1)
            .dashStyleSet(AALineDashStyleType.longDashDot)
            .colorSet(AAColor.gray)
    );


    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.gridLineDashStyle = AALineDashStyleType.longDash;//设置Y轴的网格线样式为 AALineDashStyleType.longDash
    AADataLabels aaDatalabels = aaOptions.plotOptions.spline.dataLabels;
    aaDatalabels
        .ySet(-10)
        .formatSet("{y}美元")
        .colorSet(AAColor.red)// blue color
        .backgroundColorSet(AAColor.white)// white color
        .borderColorSet(AAColor.red)// blue color
        .borderRadiusSet(1)
        .borderWidthSet(1);
    return aaOptions;
  }

  static AAOptions customizeEveryDataLabelBySinglely() {
    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .dataLabelsEnabledSet(true)
        .tooltipEnabledSet(false)
        .colorsThemeSet([AAColor.lightGray])
        .markerRadiusSet(0)
        .legendEnabledSet(false)
        .categoriesSet(["美国🇺🇸","欧洲🇪🇺","中国🇨🇳","日本🇯🇵","韩国🇰🇷","越南🇻🇳","中国香港🇭🇰",])
        .seriesSet([
      AASeriesElement()
          .colorSet(AAGradientColor.fizzyPeachColor)
          .dataSet([
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 美元")
        )
            .ySet(7.1),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 欧元")
        )
            .ySet(6.9),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 人民币")
        )
            .ySet(2.5),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 日元")
        )
            .ySet(14.5),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 韩元")
        )
            .ySet(18.2),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 越南盾")
        )
            .ySet(18.2),
        AADataElement()
            .dataLabelsSet(AADataLabels()
            .enabledSet(true)
            .formatSet("{y} 港币")
        )
            .ySet(21.5),
      ]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    aaOptions.plotOptions.pie.dataLabels.allowOverlap = true;

    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.gridLineDashStyle = AALineDashStyleType.longDash;//设置Y轴的网格线样式为 AALineDashStyleType.longDash
    AADataLabels aaDatalabels = aaOptions.plotOptions.areaspline.dataLabels;
    aaDatalabels
        .xSet(3)
        .verticalAlignSet(AAChartVerticalAlignType.middle)
        .ySet(-20)
        .styleSet(AAStyle()
        .fontSizeSet(10)
        .fontWeightSet(AAChartFontWeightType.bold)
        .colorSet(AAColor.red)
        .textOutlineSet("1px 1px contrast")
    )
        .backgroundColorSet(AAColor.white)// white color
        .borderColorSet(AAColor.red)// red color
        .borderRadiusSet(1.5)
        .borderWidthSet(1.3);
    return aaOptions;
  }

  static AAOptions configureXAxisLabelsFontColorWithHTMLString() {
    List categories = [
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

    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .stackingSet(AAChartStackingType.normal)
        .categoriesSet(categories)
        .markerRadiusSet(0)
        .seriesSet([
      AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(AAGradientColor.mysticMauveColor)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.labels.format = "{value} %";//给y轴添加单位
    aaOptions.xAxis.labels.useHTML = true;
    return aaOptions;
  }

  static AAOptions configureXAxisLabelsFontColorAndFontSizeWithHTMLString() {
    List categories = [
      "<span style=\\\"color:#CC0066;font-weight:bold;font-size:10px\\\">使命召唤</span>",
      "<span style=\\\"color:#CC0033;font-weight:bold;font-size:11px\\\">荣誉勋章</span>",
      "<span style=\\\"color:#FF0066;font-weight:bold;font-size:12px\\\">狙击精英</span>",
      "<span style=\\\"color:#66FF99;font-weight:bold;font-size:13px\\\">神秘海域</span>",
      "<span style=\\\"color:#00FF00;font-weight:bold;font-size:14px\\\">美国末日</span>",
      "<span style=\\\"color:#00CC00;font-weight:bold;font-size:15px\\\">巫师狂猎</span>",
      "<span style=\\\"color:#666FF;font-weight:bold;font-size:15px\\\">孤岛危机</span>",
      "<span style=\\\"color:#000CC;font-weight:bold;font-size:14px\\\">地狱边境</span>",
      "<span style=\\\"color:#9933CC;font-weight:bold;font-size:13px\\\">忍者之印</span>",
      "<span style=\\\"color:#FFCC99;font-weight:bold;font-size:12px\\\">合金装备</span>",
      "<span style=\\\"color:#FFCC00;font-weight:bold;font-size:11px\\\">全战三国</span>",
      "<span style=\\\"color:#CC99090;font-weight:bold;font-size:10px\\\">死亡搁浅</span>",
    ];

    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .stackingSet(AAChartStackingType.normal)
        .yAxisVisibleSet(false)
        .categoriesSet(categories)
        .markerRadiusSet(0)
        .seriesSet([
          AASeriesElement()
        .nameSet("Berlin Hot")
        .colorSet(AAGradientColor.deepSeaColor)
        .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.labels.format = "{value} %";//给y轴添加单位
    aaOptions.xAxis.labels.useHTML = true;
    return aaOptions;
  }

  static AAOptions configure_DataLabels_XAXis_YAxis_Legend_Style() {
    Map backgroundColorGradientColor = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        "#4F00BC",
        "#29ABE2"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    Map fillColorGradientColor = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        "rgba(256,256,256,0.3)",
        "rgba(256,256,256,1.0)"//颜色字符串设置支持十六进制类型和 rgba 类型
    );

    AAChartModel aaChartModel= AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        // .backgroundColorSet(backgroundColorGradientColor)
        .stackingSet(AAChartStackingType.normal)
        .yAxisVisibleSet(true)
        .yAxisTitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .markerRadiusSet(0)
        .seriesSet([
          AASeriesElement()
        .nameSet("Berlin Hot")
        .colorSet(AAColor.white)
        .lineWidthSet(7)
        .fillColorSet(fillColorGradientColor)
        .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);

    aaOptions.plotOptions.areaspline
        .dataLabelsSet(AADataLabels()
        .enabledSet(true)
        .styleSet(AAStyle()
        .colorSet(AAColor.white)
        .fontSizeSet(14)
        .fontWeightSet(AAChartFontWeightType.thin)
        .textOutlineSet("0px 0px contrast")//文字轮廓描边
    ))
    ;
    AAYAxis aayAxis = aaOptions.yAxis;

    aayAxis
        .lineWidthSet(1.5)//Y轴轴线颜色
        .lineColorSet(AAColor.white)//Y轴轴线颜色
        .gridLineWidthSet(0)//Y轴网格线宽度
        .labels.style.colorSet(AAColor.white)//Y轴文字颜色
        ;

    aaOptions.xAxis
        .tickWidthSet(0)//X轴刻度线宽度
        .lineWidthSet(1.5)//X轴轴线宽度
        .lineColorSet(AAColor.white)//X轴轴线颜色
        .labels.style.colorSet(AAColor.white)//X轴文字颜色
        ;

    aaOptions.legend
        .itemStyleSet(
        AAItemStyle()
        .colorSet(AAColor.white)//字体颜色
        .fontSizeSet(13)//字体大小
        .fontWeightSet(AAChartFontWeightType.thin)//字体为细体字
    );

    return aaOptions;
  }

  static AAOptions configureXAxisPlotBand() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisTitleSet("")
        .markerRadiusSet(8.0)//marker点半径为8个像素
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//marker点为空心效果
        .markerSymbolSet(AAChartSymbolType.circle)//marker点为圆形点○
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("New York Hot")
          .lineWidthSet(5.0)
          .colorSet("rgba(220,20,60,1)")//猩红色, alpha 透明度 1
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
      AASeriesElement()
          .typeSet(AAChartType.column)
          .nameSet("Berlin Hot")
          .colorSet("#25547c")
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]);
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    //  refer to https://api.highcharts.com.cn/highcharts#xAxis.plotBands
    List aaPlotBandsArr = [
      AAPlotBandsElement()
          .fromSet(-0.25)//值域颜色带X轴起始值
          .toSet(4.75)//值域颜色带X轴结束值
          .colorSet("#ef476f66")//值域颜色带填充色
          .zIndexSet(0),//层叠,标示线在图表中显示的层叠级别，值越大，显示越向前
      AAPlotBandsElement()
          .fromSet(4.75)
          .toSet(8.25)
          .colorSet("#ffd06666")
          .zIndexSet(0),
      AAPlotBandsElement()
          .fromSet(8.25)
          .toSet(11.25)
          .colorSet("#04d69f66")
          .zIndexSet(0),
    ];
    AAXAxis aaXAxis = aaOptions.xAxis;
    aaXAxis.plotBands = aaPlotBandsArr;
    return aaOptions;
  }

  static AAOptions configureStackingColumnChartDataLabelsOverflow() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)
        .titleSet("")
        .subtitleSet("检测数量")
        .yAxisTitleSet("")
        .dataLabelsEnabledSet(true)
        .categoriesSet(["呋喃西林代谢物","孔雀石绿🦚","氯霉素","呋喃唑酮代谢物"])
        .stackingSet(AAChartStackingType.normal)
        .seriesSet([
      AASeriesElement()
          .nameSet("不合格")
          .colorSet("#F55E4E")
          .dataSet([3,1,1,0])
      ,
      AASeriesElement()
          .nameSet("合格")
          .colorSet("#5274BC")
          .dataSet([4,0,1,1])
      ,
    ]);

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    AADataLabels aaDataLabels = aaOptions.plotOptions.column.dataLabels;

    //通过设置 crop 为 false 及 overflow 为"none" 可以让数据标签显示在绘图区的外面
    //参见:https://api.highcharts.com.cn/highcharts#plotOptions.column.dataLabels.overflow
    aaDataLabels
        .enabledSet(true)
        .allowOverlapSet(true)
//      .cropSet(false)
//      .overflowSet("none")
        .styleSet(AAStyle()
        .colorSet("#000000")
        .fontSizeSet(11)
    )
    ;

    return aaOptions;
  }
}