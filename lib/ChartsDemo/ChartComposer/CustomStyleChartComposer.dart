import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumn.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAShadow.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStates.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAZonesElement.dart';


class CustomStyleChartComposer {


  static AAChartModel configureColorfulBarChart() {
    List<String> colorsNameArr = [
      "red",
      "orange",
      "yellow",
      "green",
      "cyan",
      "blue",
      "purple",
      "gray",
      "darkGray",
      "lightGray",
      "magenta",
      "brown",
      "black"
    ];

    List<String> colorsArr = [
      AAColor.red,
      AAColor.orange,
      AAColor.yellow,
      AAColor.green,
      AAColor.cyan,
      AAColor.blue,
      AAColor.purple,
      AAColor.gray,
      AAColor.darkGray,
      AAColor.lightGray,
      AAColor.magenta,
      AAColor.brown,
      AAColor.black
    ];

    return AAChartModel()
        .chartTypeSet(AAChartType.bar)
        .animationTypeSet(AAChartAnimationType.bounce)
        .titleSet("Colorful Chart")
        .subtitleSet("use AAColor to get color string")
        .dataLabelsEnabledSet(false)
        .categoriesSet(colorsNameArr)
        .colorsThemeSet(colorsArr)
        .stackingSet(AAChartStackingType.percent)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
          .colorByPointSet(true)
    ]);
  }

  static AAChartModel configureColorfulGradientColorBarChart() {
    List<String> gradientColorNamesArr = [
      "oceanBlue",
      "sanguine",
      "lusciousLime",
      "purpleLake",
      "freshPapaya",
      "ultramarine",
      "pinkSugar",
      "lemonDrizzle",
      "victoriaPurple",
      "springGreens",
      "mysticMauve",
      "reflexSilver",
      "newLeaf",
      "cottonCandy",
      "pixieDust",
      "fizzyPeach",
      "sweetDream",
      "firebrick",
      "wroughtIron",
      "deepSea",
      "coastalBreeze",
      "eveningDelight",
    ];

    List gradientColorArr = [
      AAGradientColor.oceanBlue,
      AAGradientColor.sanguine,
      AAGradientColor.lusciousLime,
      AAGradientColor.purpleLake,
      AAGradientColor.freshPapaya,
      AAGradientColor.ultramarine,
      AAGradientColor.pinkSugar,
      AAGradientColor.lemonDrizzle,
      AAGradientColor.victoriaPurple,
      AAGradientColor.springGreens,
      AAGradientColor.mysticMauve,
      AAGradientColor.reflexSilver,
      AAGradientColor.newLeaf,
      AAGradientColor.cottonCandy,
      AAGradientColor.pixieDust,
      AAGradientColor.fizzyPeach,
      AAGradientColor.sweetDream,
      AAGradientColor.firebrick,
      AAGradientColor.wroughtIron,
      AAGradientColor.deepSea,
      AAGradientColor.coastalBreeze,
      AAGradientColor.eveningDelight,
    ];

    return AAChartModel()
        .chartTypeSet(AAChartType.bar)
        .titleSet("Colorful Column Chart")
        .subtitleSet("single data array colorful column chart")
        .categoriesSet(gradientColorNamesArr)
        .colorsThemeSet(gradientColorArr)
        .yAxisTitleSet("gradient color")
        .stackingSet(AAChartStackingType.percent)
        .seriesSet([
      AASeriesElement()
          .nameSet("ElementOne")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8, 3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3,])
          .colorByPointSet(true),//When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive one color per series or one color per point. Default Value：false.
    ]);
  }

  static AAChartModel configureDiscontinuousDataChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.column)
        .yAxisTitleSet("")//设置Y轴标题
        .dataLabelsEnabledSet(true)//是否显示值
        .tooltipEnabledSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("所有专业")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, null, null, null, null, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6,])
          .colorSet(AAGradientColor.deepSea)
    ]);
  }

  static AAChartModel configureMixedLineChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.line)
        .titleSet("")
        .subtitleSet("虚拟数据")
        .categoriesSet(["Java","Swift","Python","Ruby", "PHP","Go","C","C#",
      "C++","Perl","R","MATLAB","SQL"])
        .yAxisTitleSet("摄氏度")
        .dataLabelsEnabledSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("本专业")
          .dataSet([45,88,49,43,65,56,47,28,49,44,89,55])
          .colorSet(AAGradientColor.freshPapaya)
          .lineWidthSet(5)
          .zonesSet([
        AAZonesElement()
            .valueSet(8)
            .dashStyleSet(AAChartLineDashStyleType.dot)
      ])
      ,
      AASeriesElement()
          .nameSet("所有专业")
          .colorSet(AAGradientColor.pixieDust)
          .lineWidthSet(5)
          .dataSet([null,null,100,109,89,null,null,120,null,null,null,null])
    ]);
  }

  static AAChartModel configureColorfulColumnChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.column)
        .titleSet("Colorful Column Chart")
        .subtitleSet("single data array colorful column chart")
        .colorsThemeSet(["#eb2100", "#eb3600", "#d0570e", "#d0a00e", "#34da62",
      "#00e9db", "#00c0e9", "#0096f3", "#33CCFF", "#33FFCC"])
        .seriesSet([
      AASeriesElement()
          .nameSet("ElementOne")
          .dataSet([211,183,157,133,111,91,73,57,43,31,21,13,7,3])
          .colorByPointSet(true),//When using automatic point colors pulled from the options.colors collection, this option determines whether the chart should receive one color per series or one color per point. Default Value：false.
    ]);
  }

  static AAChartModel configureGradientColorBarChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.bar)
        .titleSet("Bar Chart")
        .subtitleSet("gradient color bar")
        .borderRadiusSet(5)
        .xAxisReversedSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("2020")
          .dataSet([211,183,157,133,111,91,73,57,43,31,21,13,7,3])
          .colorSet(AAGradientColor.oceanBlue)
      ,
      AASeriesElement()
          .nameSet("2021")
          .dataSet([111,83,187,163,151,191,173,157,143,131,121,113,97,93])
          .colorSet(AAGradientColor.sanguine)
      ,
    ]);
  }

  static AAChartModel configureStackingPolarColumnChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.column)
        .xAxisLabelsStyleSet(AAStyle.colorStr(AAColor.white))
        .dataLabelsEnabledSet(false)
        .backgroundColorSet("#22324c")//To make the chart background color transparent, set backgroundColor to "rgba (0,0,0,0)" or "# 00000000". Also make sure `aaChartView!.IsClearBackgroundColor = true`
        .polarSet(true)
        .stackingSet(AAChartStackingType.percent)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6])
      ,
      AASeriesElement()
          .nameSet("New York")
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
      ,
      AASeriesElement()
          .nameSet("Berlin")
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0])
      ,
      AASeriesElement()
          .nameSet("London")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8])
      ,
    ]);
  }

  static AAChartModel configureWithMinusNumberChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .dataLabelsEnabledSet(false)
        .titleSet("带有负数的区域填充图")
        .markerRadiusSet(0)//设置折线连接点宽度为0,即是隐藏连接点
        .subtitleSet("横屏查看效果更佳")
        .yAxisGridLineWidthSet(0)
        .categoriesSet(["Java","Swift","Python","Ruby", "PHP","Go","C","C#",
      "C++","HTML","CSS","Perl","R","MATLAB","SQL"])
        .yAxisTitleSet("")
        .colorsThemeSet(["#49C1B6", "#FDC20A", "#F78320", "#068E81", "#EA007B"])
        .seriesSet([
      AASeriesElement()
          .nameSet("2017")
          .dataSet([0, (-7.5), (-1.0), 3.7, 0, (-3), 8, 0,(-3.6), 4, (-2), 0]),
      AASeriesElement()
          .nameSet("2018")
          .dataSet([0, (-2.2), 2, (-2.2), 0, (-1.5), 0, 2.4, (-1), 3, (-1), 0]),
      AASeriesElement()
          .nameSet("2019")
          .dataSet([0, 2.3, 0, 1.2, (-1), 3, 0, (-3.3), 0, 2, (-0.3), 0]),
      AASeriesElement()
          .nameSet("2020")
          .dataSet([0, 10, 0.13,2,0, 2, 0, 3.7, 0, 1, (-3), 0]),
      AASeriesElement()
          .nameSet("2020")
          .dataSet([0, (-4.5), (-0.9), 5.5, (-1.9), 1.3, (-2.8), 0, (-1.7), 0, 3, 0, ]),
    ]);
  }

  static AAChartModel configureStepLineChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.line)//图形类型
        .animationTypeSet(AAChartAnimationType.bounce)//图形渲染动画类型为"bounce"
        .titleSet("STEP LINE CHART")//图形标题
        .subtitleSet("2020/08/08")//图形副标题
        .dataLabelsEnabledSet(false)//是否显示数字
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式
        .markerRadiusSet(7)//折线连接点半径长度,为0时相当于没有折线连接点
        .seriesSet([
      AASeriesElement()
          .nameSet("Berlin")
          .dataSet([450, 432, 401, 454, 590, 530, 510])
          .stepSet("right"), //折线连接点靠右👉
      AASeriesElement()
          .nameSet("New York")
          .dataSet([220, 282, 201, 234, 290, 430, 410])
          .stepSet("center"),//折线连接点居中
      AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([120, 132, 101, 134, 90, 230, 210])
          .stepSet("left"),//折线连接点靠左边👈
    ]);
  }

  static AAChartModel configureStepAreaChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)//图形类型
        .animationTypeSet(AAChartAnimationType.bounce)//图形渲染动画类型为"bounce"
        .titleSet("STEP AREA CHART")//图形标题
        .subtitleSet("2020/08/08")//图形副标题
        .dataLabelsEnabledSet(false)//是否显示数字
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//折线连接点样式
        .markerRadiusSet(0)//折线连接点半径长度,为0时相当于没有折线连接点
        .seriesSet([
      AASeriesElement()
          .nameSet("Berlin")
          .dataSet([450, 432, 401, 454, 590, 530, 510])
          .stepSet((true))//设置折线样式为直方折线,连接点位置默认靠左👈
      ,
      AASeriesElement()
          .nameSet("New York")
          .dataSet([220, 282, 201, 234, 290, 430, 410])
          .stepSet((true))//设置折线样式为直方折线,连接点位置默认靠左👈
      ,
      AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([120, 132, 101, 134, 90, 230, 210])
          .stepSet((true))//设置折线样式为直方折线,连接点位置默认靠左👈
      ,
    ]);
  }

  static AAChartModel configureNightingaleRoseChart() {
    return AAChartModel()
        .titleSet("南丁格尔玫瑰图")
        .subtitleSet("极地图中的一种")
        .yAxisTitleSet("cm")
        .chartTypeSet(AAChartType.column)
        .xAxisVisibleSet(true)//是否显示最外一层圆环
        .yAxisVisibleSet(false)//是否显示中间的多个圆环
        .legendEnabledSet(false)//隐藏图例(底部可点按的小圆点)
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月",
      "八月", "九月", "十月", "十一月", "十二月"])
        .dataLabelsEnabledSet(true)
        .polarSet(true)//极地化图形
        .seriesSet([
      AASeriesElement()
          .nameSet("东京")
          .dataSet([7.0, 6.9, 9.5, 9.6, 13.9, 14.5, 18.3, 18.2, 21.5, 25.2, 26.5, 23.3]),
    ]);
  }

  static AAChartModel configureCustomSingleDataLabelChart() {
    AADataElement aaDataElement = AADataElement()
        .ySet(1.25)
        .dataLabelsSet(
        AADataLabels()
            .enabledSet(true)
            .verticalAlignSet(AAChartVerticalAlignType.middle)
            .formatSet("{y} 美元🇺🇸💲")
            .xSet(3)
            .styleSet(AAStyle()
            .fontSizeSet(20)
            .fontWeightSet("bold")
            .colorSet(AAColor.red)
            .textOutlineSet("1px 1px contrast")
        )
    );

    return AAChartModel()
        .titleSet("单独自定义某个指定数据元素的DataLabel")
        .subtitleSet("")
        .colorsThemeSet([AAGradientColor.mysticMauve])
        .seriesSet([
      AASeriesElement()
          .nameSet("货币")
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, aaDataElement.toJson(), 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67]),
    ]);
  }

  static AAChartModel configureChartWithShadowStyle() {
    return AAChartModel()
        .titleSet("")
        .subtitleSet("")
        .yAxisVisibleSet(false)
        .chartTypeSet(AAChartType.spline)
        .legendEnabledSet(false)//隐藏图例(底部可点按的小圆点)
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月",
      "八月", "九月", "十月", "十一月", "十二月"])
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .markerRadiusSet(8)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokoyo")
          .lineWidthSet(8.0)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
          .shadowSet(
          AAShadow()
              .offsetXSet(15.0)
              .offsetYSet(15.0)
              .opacitySet(0.2)
              .widthSet(8.0)
              .colorSet(AAColor.red)
      )]);
  }

  static AAChartModel configureColorfulGradientAreaChart() {
    List stopsArr = [
      [0.0, "#febc0f"],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.5, "#FF14d4"],
      [1.0, "#0bf8f5"]
    ];
    Map gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toRight,
        stopsArr
    );

    return AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月", "七月",
      "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisTitleSet("")
        .backgroundColorSet("#FFFFFF")
        .markerRadiusSet(0)
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .colorSet(gradientColorDic1)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );
  }

  static AAChartModel configureColorfulGradientSplineChart() {
    List stopsArr = [
      [0.00, "#febc0f"],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.25, "#FF14d4"],
      [0.50, "#0bf8f5"],
      [0.75, "#F33c52"],
      [1.00, "#1904dd"],
    ];
    Map gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toRight,
        stopsArr
    );

    return AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .titleSet("")
        .subtitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisTitleSet("")
        .markerRadiusSet(0)
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(13)
          .colorSet(gradientColorDic1)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]
    );
  }


  static AAChartModel configureGradientColorAreasplineChart() {
    Map gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        "rgba(255,20,147,1)",//深粉色, alpha 透明度 1,
        "rgba(255,20,147,0.3)"//热情的粉红, alpha 透明度 0.3
    );

    return AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("")
        .subtitleSet("")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisTitleSet("")
        .markerRadiusSet(8)//marker点半径为8个像素
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//marker点为空心效果
        .markerSymbolSet(AAChartSymbolType.circle)//marker点为圆形点○
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .colorSet("rgba(220,20,60,1)")//猩红色, alpha 透明度 1
          .fillColorSet(gradientColorDic1)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]);
  }

  static AAChartModel configureSpecialStyleMarkerOfSingleDataElementChart() {
    List stopsArr = [
      [0.00, "#febc0f"],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.25, "#FF14d4"],
      [0.50, "#0bf8f5"],
      [0.75, "#F33c52"],
      [1.00, "#1904dd"],
    ];
    Map gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toRight,
        stopsArr
    );


    AADataElement singleSpecialData = AADataElement()
        .markerSet(AAMarker()
        .radiusSet(8)//曲线连接点半径
        .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
        .fillColorSet("#FFFFFF")//点的填充色(用来设置折线连接点的填充色)
        .lineWidthSet(5)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
        .lineColorSet("#FF0000")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
    )
        .ySet(26.5);

    return AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .titleSet("")
        .backgroundColorSet("#4b2b7f")
        .yAxisTitleSet("")//设置Y轴标题
        .dataLabelsEnabledSet(false)//是否显示值
        .tooltipEnabledSet(true)
        .markerRadiusSet(0)
        .xAxisVisibleSet(false)
        .yAxisVisibleSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("Virtual Data")
          .lineWidthSet(6)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, singleSpecialData.toJson(), 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
          .colorSet(gradientColorDic1)
    ]);
  }

  static AAChartModel configureSpecialStyleColumnOfSingleDataElementChart() {
    AADataElement singleSpecialData = AADataElement()
        .colorSet(AAGradientColor.freshPapaya)
        .ySet(49.5);

    return AAChartModel()
        .chartTypeSet(AAChartType.column)
        .titleSet("")
        .yAxisTitleSet("")//设置Y轴标题
        .dataLabelsEnabledSet(false)//是否显示值
        .tooltipEnabledSet(false)
        .markerRadiusSet(0)
        .xAxisVisibleSet(false)
        .yAxisVisibleSet(false)
        .seriesSet([
      AASeriesElement()
          .nameSet("Virtual Data")
          .lineWidthSet(6)
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, singleSpecialData.toJson(), 5.2, 26.5, 23.3, 26.5, 13.9, 9.6])
          .colorSet(AAGradientColor.oceanBlue)
    ]);
  }

  static AAChartModel configureAreaChartThreshold() {
    Map gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        AARgba(30, 144, 255, 1.0),//DodgerBlue, alpha 透明度 1
        AARgba(30, 144, 255, 0.1)//DodgerBlue, alpha 透明度 0.1
    );

    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .yAxisTitleSet("")//设置Y轴标题
        .yAxisGridLineWidthSet(0)
        .categoriesSet(["Jan", "Feb", "Mar", "Apr", "May", "Jun","July", "Aug", "Spe", "Oct", "Nov", "Dec"])
        .dataLabelsEnabledSet(false)//是否显示值
        .markerRadiusSet(8)
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .legendEnabledSet(false)
        .seriesSet([
      AASeriesElement()
          .thresholdSet((-200))
          .dataSet([106.4, 129.2, 269.9, -100.5, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4])
          .lineWidthSet(6)
          .colorSet("rgba(30, 144, 255,1)")
          .fillColorSet(gradientColorDic1)
    ]);
  }

//refer to online sample https://jshare.com.cn/github/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/
  static AAChartModel customScatterChartMarkerSymbolContent() {
    String predefinedSymbol1 = AAChartSymbolType.triangle;
    String predefinedSymbol2 = AAChartSymbolType.circle;
    String imageSymbol = "url(https://www.highcharts.com/samples/graphics/sun.png)";
    String base64Symbol = "url(data:image/png;base64,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 1dT1gvWd+ 1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx+ 1/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb+ 16EHTh0kX/i +c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAAVVJREFUeNpi/P37NwOxYM2pHtm7lw8uYmBgYGAiVtPC3RWh+88vuneT474Dv4DkcUZibJy8PG72le/nkn+zMzAaMhnNyY1clMpCjKbz/86lMLAzMMA0MTAwMOC1Ea6JgYFB9pPwncbMg6owOaY1p3pk15zqkcWnie8j63ddY18nZHmWI2eW3vzN/Jf168c3UfGuHathAXHl+7lkBnYGBtafDP8NVd3jQ8xKHiNrZMyeqPPtE/9vTgYGBgb1H4oHlHXt43ZfWfDwNzsDIwMDA4POX831RXGrg9BdxLhob63VgTurjsAUsv5k+A9jC3/g/NCdfVoQm/+ZIu3qjhnyW3XABJANMNL19cYVcPBQrZpq9eyFwCdJmIT6D8UD5cmbHXFphKccI9Mgc84vTH9goYhPE4rGELOSx0bSjsUMDAwMunJ2FQST0+/fv1Hw5BWJbehi2DBgAHTKsWmiz+rJAAAAAElFTkSuQmCC)";

    AASeriesElement element1 = AASeriesElement()
        .nameSet("Predefined symbol")
        .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36])
        .markerSet(
        AAMarker()
            .symbolSet(predefinedSymbol1))
    ;

    AASeriesElement element2 = AASeriesElement()
        .nameSet("Image symbol")
        .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67])
        .markerSet(
        AAMarker()
            .symbolSet(imageSymbol))
    ;

    AASeriesElement element3 = AASeriesElement()
        .nameSet("Base64 symbol (*)")
        .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64])
        .markerSet(
        AAMarker()
            .symbolSet(base64Symbol))
    ;

    AASeriesElement element4 = AASeriesElement()
        .nameSet("Custom symbol")
        .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53])
        .markerSet(
        AAMarker()
            .symbolSet(predefinedSymbol2))
    ;

    return AAChartModel()
        .chartTypeSet(AAChartType.scatter)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(3.5)
        .yAxisGridLineWidthSet(0)
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(8)
        .seriesSet([element1,element2,element3,element4]);
  }

//refer to online sample https://jshare.com.cn/github/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-marker-symbol/
  static AAChartModel customLineChartMarkerSymbolContent() {
    AAChartModel aaChartModel = customScatterChartMarkerSymbolContent();
    aaChartModel.chartType = AAChartType.line;
    return aaChartModel;
  }

//三角形雷达图
  static AAChartModel configureTriangleRadarChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(15.0)
        .yAxisGridLineWidthSet(0)
        .xAxisVisibleSet(false)
        .markerRadiusSet(0)
        .polarSet(true)//是否极化图形
        .seriesSet([
      AASeriesElement()
          .dataSet([15.0,15.0,15.0,]),
      AASeriesElement()
          .dataSet([9.0,9.0,9.0,]),
      AASeriesElement()
          .dataSet([6.0,6.0,6.0,]),
      AASeriesElement()
          .dataSet([3.0,3.0,3.0,]),
    ]);
  }

//四边形雷达图
  static AAChartModel configureQuadrangleRadarChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(15.0)
        .yAxisGridLineWidthSet(0)
        .xAxisVisibleSet(false)
        .markerRadiusSet(0)
        .polarSet(true)//是否极化图形
        .seriesSet([
      AASeriesElement()
          .dataSet([15.0,15.0,15.0,15.0,]),
      AASeriesElement()
          .dataSet([9.0,9.0,9.0,9.0,]),
      AASeriesElement()
          .dataSet([6.0,6.0,6.0,6.0,]),
      AASeriesElement()
          .dataSet([3.0,3.0,3.0,3.0,]),
    ]);
  }

//五边形雷达图
  static AAChartModel configurePentagonRadarChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(15.0)
        .yAxisGridLineWidthSet(0)
        .xAxisVisibleSet(false)
        .markerRadiusSet(0)
        .polarSet(true)//是否极化图形
        .seriesSet([
      AASeriesElement()
          .dataSet([15.0,15.0,15.0,15.0,15.0,]),
      AASeriesElement()
          .dataSet([9.0,9.0,9.0,9.0,9.0,]),
      AASeriesElement()
          .dataSet([6.0,6.0,6.0,6.0,6.0,]),
      AASeriesElement()
          .dataSet([3.0,3.0,3.0,3.0,3.0,]),
    ]);
  }

//六边形雷达图
  static AAChartModel configureHexagonRadarChart() {
    return AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(15.0)
        .yAxisGridLineWidthSet(0)
        .xAxisVisibleSet(false)
        .markerRadiusSet(0)
        .polarSet(true)//是否极化图形
        .seriesSet([
      AASeriesElement()
          .dataSet([15.0,15.0,15.0,15.0,15.0,15.0,]),
      AASeriesElement()
          .dataSet([9.0,9.0,9.0,9.0,9.0,9.0,]),
      AASeriesElement()
          .dataSet([6.0,6.0,6.0,6.0,6.0,6.0,]),
      AASeriesElement()
          .dataSet([3.0,3.0,3.0,3.0,3.0,3.0,]),
    ]);
  }

  static AAChartModel drawLineChartWithPointsCoordinates() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.line)
        .titleSet("Draw Line Chart With Points Coordinates")
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .markerRadiusSet(7)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Blue Dot")
          .dataSet([[10,20],[15,30] ,[27,52],[43,78]])
    ]);
  }


  static AAChartModel customSpecialStyleDataLabelOfSingleDataElementChart() {
    var gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toBottom,
        AARgba(255,215,0,0.1),//gold color, alpha: 0.1
        AARgba(255,215,0, 0.6)// gold color, alpha: 0.6
    );

    var formatStr = (
        "<img src=https://www.highcharts.com/samples/graphics/sun.png><span"
            + "style=color:#FFFFFF;font-weight:thin;font-size:25px>{y}</span><span"
            + "style=color:#FFFFFF;font-weight:thin;font-size:17px> m</span>"
    );

    var singleSpecialData = new AADataElement()
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .useHTMLSet(true)
            .formatSet(formatStr)
            .styleSet(
            new AAStyle()
                .fontWeightSet(AAChartFontWeightType.bold)
                .colorSet(AAColor.white)
                .fontSizeSet(16))
            .ySet(-35)
            .alignSet(AAChartAlignType.center)
            .verticalAlignSet(AAChartVerticalAlignType.top)
            .overflowSet("none")
            .cropSet(false)
    )
        .ySet(26.5)
    ;

    return new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .backgroundColorSet("#4b2b7f")
        .yAxisTitleSet("")//设置Y轴标题
        .dataLabelsEnabledSet(false)//是否显示值
        .tooltipEnabledSet(true)
        .markerRadiusSet(0)
        .xAxisVisibleSet(false)
        .yAxisVisibleSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Virtual Data")
          .lineWidthSet(6)
          .colorSet(AAColor.rgbaColor(255,215,0,1))
          .fillColorSet(gradientColorDic1)// gold color, alpha: 1.0
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, singleSpecialData.toJson(), 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);
  }

  static AAChartModel customBarChartHoverColorAndSelectColor() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.bar)
        .titleSet("Custom Bar Chart select color")
        .yAxisTitleSet("")
        .yAxisReversedSet(true)
        .xAxisReversedSet(true)
        .seriesSet([
      new AASeriesElement()
          .nameSet("ElementOne")
          .dataSet([211,183,157,133,111,91,73,57,43,31,21,13,7,3])
          .allowPointSelectSet(true)
          .statesSet(
          new AAStates()
              .hoverSet(
              new AAHover()
                  .colorSet("rgbaColor(220,20,60,1)"))//猩红色, alpha 透明度 1
              .selectSet(
              new AASelect()
                  .colorSet(AAColor.red)))
    ]);
  }

  static AAChartModel customChartHoverAndSelectHaloStyle() {
    var attributes1 = new Map<String, Object>();
    attributes1["stroke-width"] = 50;
    attributes1["fill"] = "#00BFFF";
    attributes1["stroke"] = "#00BFFF";

    var attributes2 = new Map<String, Object>();
    attributes2["stroke-width"] = 150;
    attributes2["fill"] = "rgba(138,43,226,1)";
    attributes2["stroke"] = "rgba(30,144,255,1)";

    return new AAChartModel()
        .chartTypeSet(AAChartType.line)
        .titleSet("Custom Chart Hover And Select Halo Style")
        .colorsThemeSet([AAColor.red])
        .yAxisTitleSet("")
        .yAxisReversedSet(true)
        .xAxisReversedSet(true)
        .markerRadiusSet(20)
        .seriesSet([
      new AASeriesElement()
          .nameSet("ElementOne")
          .dataSet([211,183,157,133,111,91,73,57,43,31,21,13,7,3])
          .allowPointSelectSet(true)
          .statesSet(
          new AAStates()
              .hoverSet(
              new AAHover()
                  .haloSet(
                  new AAHalo()
                      .sizeSet(130)
                      .opacitySet(0.8)
                      .attributesSet(attributes1)))
              .selectSet(
              new AASelect()
                  .haloSet(
                  new AAHalo()
                      .sizeSet(130)
                      .opacitySet(1.0)
                      .attributesSet(attributes2))))
    ]);
  }

  static AAChartModel customSplineChartMarkerStatesHoverStyle() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .titleSet("Custom Spline Chart Marker States Hover Style")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisTitleSet("")
        .markerRadiusSet(8.0)//marker点半径为8个像素
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .colorSet(AARgba(220,20,60,1))//猩红色, alpha 透明度 1
          .markerSet(
          new AAMarker()
              .statesSet(
              new AAMarkerStates()
                  .hoverSet(
                  new AAMarkerHover()
                      .fillColorSet(AAColor.white)
                      .radiusSet(40)
                      .lineColorSet(AAColor.green)
                      .lineWidthSet(20))))
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6]),
    ]);
  }

  static AAChartModel customNormalStackingChartDataLabelsContentAndStyle() {
    var categories = [
      "孤岛危机",
      "使命召唤",
      "荣誉勋章",
      "狙击精英",
      "神秘海域",
      "最后生还者",
      "巫师3狂猎",
      "对马之魂",
      "死亡搁浅",
      "地狱边境",
      "闪客",
      "忍者之印"
    ];

    var colorsTheme = [
      "#fe117c",
      "#ffc069",
      "#06caf4",
      "#7dffc0"
    ];

    var element1 = new AASeriesElement()
        .nameSet("2017")
        .dataLabelsSet(
        new AADataLabels()
            .enabledSet(true)
            .ySet(-10)
            .formatSet("{total} mm")
            .colorSet(AAColor.red)
            .shapeSet("callout")
            .backgroundColorSet(AAColor.white)
            .borderColorSet(AAColor.red)
            .borderRadiusSet(1)
            .borderWidthSet(1))
        .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]);


    var element2 = new AASeriesElement()
        .nameSet("2018")
        .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]);
    var element3 = new AASeriesElement()
        .nameSet("2019")
        .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]);
    var element4 = new AASeriesElement()
        .nameSet("2020")
        .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]);

    return new AAChartModel()
        .chartTypeSet(AAChartType.column)
        .stackingSet(AAChartStackingType.normal)
        .yAxisTitleSet("")
        .yAxisGridLineWidthSet(0)
        .markerRadiusSet(0)
        .categoriesSet(categories)
        .colorsThemeSet(colorsTheme)
        .seriesSet([element1, element2, element3, element4]);
  }

  static AAChartModel upsideDownPyramidChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.pyramid)
        .titleSet("THE HEAT OF PROGRAM LANGUAGE")
        .subtitleSet("virtual data")
        .yAxisTitleSet("℃")
        .seriesSet([
      new AASeriesElement()
          .nameSet("2020")
          .reversedSet(false)
          .dataSet([
        ["swift",      11850],
        ["Objective-C",12379],
        ["JavaScript", 14286],
        ["Go",         15552],
        ["Python",     18654],
      ])
    ]);
  }

  static AAChartModel doubleLayerPieChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .titleSet("浏览器市场占比历史对比")
        .subtitleSet("无任何可靠依据的虚拟数据")
        .dataLabelsEnabledSet(true)//是否直接显示扇形图数据
        .yAxisTitleSet("摄氏度")
        .seriesSet([
      new AASeriesElement()
          .nameSet("Past")
          .sizeSet("40%")//尺寸大小
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
          .sizeSet("80%")//尺寸大小
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
  }

//https://github.com/AAChartModel/AAChartKit/issues/1234
  static AAChartModel doubleLayerDoubleColorsPieChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .titleSet("浏览器市场占比历史对比")
        .subtitleSet("无任何可靠依据的虚拟数据")
        .dataLabelsEnabledSet(false)//是否直接显示扇形图数据
        .yAxisTitleSet("摄氏度")
        .legendEnabledSet(true)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Past")
          .colorsSet([
        AAColor.rgbaColor(255, 0, 0, 1.0),
        AAColor.rgbaColor(255, 0, 0, 0.8),
        AAColor.rgbaColor(255, 0, 0, 0.6),
        AAColor.rgbaColor(255, 0, 0, 0.4),
        AAColor.rgbaColor(255, 0, 0, 0.2),
      ])
          .dataLabelsSet(
          new AADataLabels()
              .enabledSet(false))
          .sizeSet("25%")//尺寸大小
          .innerSizeSet("20%")//内部圆环半径大小占比
          .borderWidthSet(0)//描边的宽度
          .allowPointSelectSet(false)//是否允许在点击数据点标记Set(扇形图点击选中的块发生位移)
          .dataSet([
        ["Firefox Past",   1336.2],
        ["Chrome Past",     126.8],
        ["Safari Past",     188.5],
        ["Opera Past",      146.0],
        ["Others Past",     223.0],
      ]),

      new AASeriesElement()
          .nameSet("Now")
          .colorsSet([
        AAColor.rgbaColor(30, 144, 255, 1.0),
        AAColor.rgbaColor(30, 144, 255, 0.8),
        AAColor.rgbaColor(30, 144, 255, 0.6),
        AAColor.rgbaColor(30, 144, 255, 0.4),
        AAColor.rgbaColor(30, 144, 255, 0.2),
      ])
          .dataLabelsSet(
          new AADataLabels()
              .enabledSet(true)
              .formatSet("<b>{point.name}</b> <br> {point.percentage:.1f} %")
              .alignToSet("plotEdges")
              .connectorShapeSet("crookedLine")
              .crookDistanceSet("90%")
              .styleSet(AAStyle.colorStr(AAColor.rgbaColor(30, 144, 255, 1.0))))
          .sizeSet("40%")//尺寸大小
          .innerSizeSet("80%")//内部圆环半径大小占比
          .borderWidthSet(0)//描边的宽度
          .allowPointSelectSet(false)//是否允许在点击数据点标记Set(扇形图点击选中的块发生位移)
          .dataSet([
        ["Firefox Now",    926.8],
        ["Chrome Now",     336.2],
        ["Safari Now",     388.5],
        ["Opera Now",      446.0],
        ["Others Now",     223.0],
      ]),
    ]);
  }

//GitHub issue https://github.com/AAChartModel/AAChartKit/issues/903
  static AAChartModel disableSomeOfLinesMouseTrackingEffect() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .tooltipValueSuffixSet("万元")//设置浮动提示框单位后缀
        .yAxisTitleSet("万元")//设置 Y 轴标题
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ])
        .seriesSet([
      new AASeriesElement()
          .nameSet("2017")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
      new AASeriesElement()
          .nameSet("2018")
          .enableMouseTrackingSet(false)
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
      new AASeriesElement()
          .nameSet("2019")
          .enableMouseTrackingSet(false)
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
      new AASeriesElement()
          .nameSet("2020")
          .enableMouseTrackingSet(false)
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]),
    ]);
  }

// GitHub issue https://github.com/AAChartModel/AAChartKit/issues/904
  static AAChartModel configureColorfulShadowSplineChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .yAxisVisibleSet(false)
        .stackingSet(AAChartStackingType.normal)
        .colorsThemeSet(["#1e90ff","#ef476f","#ffd066","#04d69f"])
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerRadiusSet(8.0)
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2017")
          .lineWidthSet(5)
          .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36])
          .shadowSet(
          new AAShadow()
              .offsetXSet(15.0)
              .offsetYSet(15.0)
              .opacitySet(0.2)
              .widthSet(8.0)
              .colorSet("#1e90ff")),
      new AASeriesElement()
          .nameSet("2018")
          .lineWidthSet(5)
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67])
          .shadowSet(
          new AAShadow()
              .offsetXSet(15.0)
              .offsetYSet(15.0)
              .opacitySet(0.2)
              .widthSet(8.0)
              .colorSet("#ef476f")),
      new AASeriesElement()
          .nameSet("2019")
          .lineWidthSet(5)
          .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64])
          .shadowSet(
          new AAShadow()
              .offsetXSet(15.0)
              .offsetYSet(15.0)
              .opacitySet(0.2)
              .widthSet(8.0)
              .colorSet("#ffd066")),
      new AASeriesElement()
          .nameSet("2020")
          .lineWidthSet(5)
          .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53])
          .shadowSet(
          new AAShadow()
              .offsetXSet(15.0)
              .offsetYSet(15.0)
              .opacitySet(0.2)
              .widthSet(8.0)
              .colorSet("#04d69f")),
    ]);
  }

// GitHub issue https://github.com/AAChartModel/AAChartKit/issues/905
  static AAChartModel configureColorfulDataLabelsStepLineChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.line)
        .yAxisVisibleSet(false)
        .stackingSet(AAChartStackingType.normal)
        .colorsThemeSet(["#1e90ff","#ef476f","#ffd066","#04d69f"])
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerRadiusSet(8.0)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .dataLabelsEnabledSet(true)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2017")
          .fillOpacitySet(1.0)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(
              new AAStyle()
                  .colorSet("#1e90ff")
                  .fontSizeSet(11)))
          .dataSet([2.10, 2.54, 2.78, 3.62, 4.41, 4.09, 3.83, 4.47, 4.20, 3.94, 3.80, 3.58, 3.19, 4.30, 3.69, 3.52, 3.02, 3.30]),
      new AASeriesElement()
          .nameSet("2018")
          .fillOpacitySet(1.0)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(
              new AAStyle()
                  .colorSet("#ef476f")
                  .fontSizeSet(11)))
          .dataSet([1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28]),
      new AASeriesElement()
          .nameSet("2019")
          .fillOpacitySet(1.0)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(
              new AAStyle()
                  .colorSet("#ffd066")
                  .fontSizeSet(11)))
          .dataSet([1.16, 1.67, 2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3.25, 3.32, 3.07, 3.92, 3.05, 2.18, 3.24]),
      new AASeriesElement()
          .nameSet("2020")
          .fillOpacitySet(1.0)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(
              new AAStyle()
                  .colorSet("#04d69f")
                  .fontSizeSet(11)))
          .dataSet([5.59, 3.09, 4.09, 6.14, 5.33, 6.05, 5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.22, 5.77, 6.19, 5.68, 4.33, 5.48]),
    ]);
  }

// GitHub issue https://github.com/AAChartModel/AAChartKit-Swift/issues/223
  static AAChartModel configureColorfulGradientColorAndColorfulDataLabelsStepAreaChart() {
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

    return new AAChartModel()
        .chartTypeSet(AAChartType.area)
        .yAxisVisibleSet(false)
        .stackingSet(AAChartStackingType.normal)
        .colorsThemeSet(["#1e90ff","#ef476f","#ffd066","#04d69f"])
        .markerSymbolSet(AAChartSymbolType.circle)
        .markerRadiusSet(5)
        .dataLabelsEnabledSet(true)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .seriesSet([
      new AASeriesElement()
          .nameSet("2017")
          .fillColorSet(gradientBlueColorDic)
          .lineWidthSet(6)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(AAStyle.colorSize("#1e90ff", 11))
      )
          .dataSet([2.10, 2.54, 2.78, 3.62, 4.41, 4.09, 3.83, 4.47, 4.20, 3.94, 3.80, 3.58, 3.19, 4.30, 3.69, 3.52, 3.02, 3.30]),
      new AASeriesElement()
          .nameSet("2018")
          .fillColorSet(gradientRedColorDic)
          .lineWidthSet(6)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(AAStyle.colorSize("#ef476f", 11)))
          .dataSet([1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28]),
      new AASeriesElement()
          .nameSet("2019")
          .fillColorSet(gradientGoldColorDic)
          .lineWidthSet(6)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(AAStyle.colorSize("#ffd066", 11)))
          .dataSet([1.16, 1.67, 2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3.25, 3.32, 3.07, 3.92, 3.05, 2.18, 3.24]),
      new AASeriesElement()
          .nameSet("2020")
          .fillColorSet(gradientGreenColorDic)
          .lineWidthSet(6)
          .stepSet(true)
          .dataLabelsSet(
          new AADataLabels()
              .styleSet(AAStyle.colorSize("#04d69f", 11)))
          .dataSet([5.59, 3.09, 4.09, 6.14, 5.33, 6.05, 5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.22, 5.77, 6.19, 5.68, 4.33, 5.48]),
    ]);
  }

// Refer to https://api.highcharts.com.cn/highcharts#plotOptions.spline.marker.states.hover.enabled
  static AAChartModel disableSplineChartMarkerHoverEffect() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .titleSet("Disable Spline Chart Marker Hover Effect")
        .categoriesSet([
      "一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"
    ])
        .markerRadiusSet(0)//marker点半径为0个像素
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(0)
        .legendEnabledSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .colorSet("rgbaSet(220,20,60,1)")//猩红色, alpha 透明度 1
          .markerSet(
          new AAMarker()
              .statesSet(
              new AAMarkerStates()
                  .hoverSet(
                  new AAMarkerHover()
                      .enabledSet(false))))
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
    ]);
  }

//https://github.com/AAChartModel/AAChartKit/issues/1203
  static AAChartModel configureMaxAndMinDataLabelsForChart() {
    var aaDataLabels = new AADataLabels()
        .enabledSet(true)
        .formatSet("{y} 美元")
        .shapeSet("callout")
        .styleSet(AAStyle.colorSizeWeight(AAColor.red, 15, AAChartFontWeightType.bold))
        .backgroundColorSet(AAColor.white)// white color
        .borderColorSet(AAColor.red)// red color
        .borderRadiusSet(1.5)
        .borderWidthSet(1.3);

    var minData = new AADataElement()
        .dataLabelsSet(aaDataLabels)
        .ySet(2.5);

    var maxData = new AADataElement()
        .dataLabelsSet(aaDataLabels)
        .ySet(49.5);

    return new AAChartModel()
        .chartTypeSet(AAChartType.spline)
        .dataLabelsEnabledSet(false)//是否显示值
        .tooltipEnabledSet(false)
        .markerRadiusSet(0)
        .xAxisVisibleSet(false)
        .yAxisVisibleSet(false)
        .seriesSet([
      new AASeriesElement()
          .nameSet("Show The Max and Min values Data Labels")
          .lineWidthSet(7)
          .dataSet([7.0, 6.9, minData, 14.5, 18.2, maxData, 5.2, 26.5, 23.3, 26.5, 13.9, 9.6])
          .colorSet(AAGradientColor.oceanBlue)
    ]);
  }

//https://github.com/AAChartModel/AAChartKit/issues/1201
  static AAChartModel customVerticalXAxisCategoriesLabelsByHTMLBreakLineTag() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.area)
        .categoriesSet([
      "孤<br>岛<br>危<br>机",
      "使<br>命<br>召<br>唤",
      "荣<br>誉<br>勋<br>章",
      "狙<br>击<br>精<br>英",
      "神<br>秘<br>海<br>域",
      "最<br>后<br>生<br>还<br>者",
      "巫<br>师<br>3<br>狂<br>猎",
      "对<br>马<br>之<br>魂",
      "蝙<br>蝠<br>侠<br>阿<br>甘<br>骑<br>士<br>",
      "地<br>狱<br>边<br>境",
      "闪<br>客",
      "忍<br>者<br>之<br>印"
    ])
        .tooltipEnabledSet(false)
        .borderRadiusSet(3)
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)
        .xAxisLabelsStyleSet(AAStyle.colorSizeWeight(AAColor.black, 16, AAChartFontWeightType.bold))
        .seriesSet([
      new AASeriesElement()
          .nameSet("2017")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
      new AASeriesElement()
          .nameSet("2018")
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
      new AASeriesElement()
          .nameSet("2019")
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
      new AASeriesElement()
          .nameSet("2020")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]),
    ]);
  }

//https://github.com/AAChartModel/AAChartKit/issues/1269
  static AAChartModel noMoreGroupingAndOverlapEachOtherColumnChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.column)
        .categoriesSet(["11/23","11/24", "11/25","11/26","11/27","11/28","11/29"])
//            .yAxisTickPositionsSet([0,10,20,30,40,50])
        .yAxisMaxSet(50)
        .yAxisMinSet(0)
        .borderRadiusSet(5)
        .seriesSet([
      new AAColumn()
          .nameSet("总做题")
          .colorSet("#D8D8D8")
          .dataSet([30, 20, 28, 40, 42 ,48, 50])
          .groupingSet(false)
      ,
      new AAColumn()
          .nameSet("正确做题")
          .colorSet("#00D9CD")
          .dataSet([28, 18, 26, 40, 40, 46, 39])
    ]);
  }

//https://github.com/AAChartModel/AAChartKit/issues/1271
  static AAChartModel noMoreGroupingAndNestedColumnChart() {
    return new AAChartModel()
        .chartTypeSet(AAChartType.column)
        .categoriesSet(["11/23","11/24", "11/25","11/26","11/27","11/28","11/29"])
//            .yAxisTickPositionsSet([0,10,20,30,40,50])
        .yAxisMaxSet(50)
        .yAxisMinSet(0)
        .borderRadiusSet(5)
        .seriesSet([
      new AAColumn()
          .nameSet("总目标")
          .colorSet("DeepSkyBlue")
          .dataSet([30, 20, 28, 40, 42 ,48, 50])
          .groupingSet(false)
          .pointPaddingSet(0.05)
      ,
      new AAColumn()
          .nameSet("完成度")
          .colorSet("#FF3030") //Firebrick1 color
          .dataSet([28, 18, 26, 40, 40, 46, 39])
          .groupingSet(false)
          .pointPaddingSet(0.2)
    ]);
  }



}