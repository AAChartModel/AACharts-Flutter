import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumn.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';

class JSFormatterFunctionComposer {

  static AAOptions customAreaChartTooltipStyleWithSimpleFormatString() {
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
          .dataSet([
        1.51, 6.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
        4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 12.7, 0.94, 1.44,
        18.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46,
        3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.33, 4.68, 1.31, 1.10, 13.9, 1.10, 1.16, 1.67,
        2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3.25, 3.32, 3.07, 3.92, 3.05,
        2.18, 3.24,3.23, 3.15, 2.90, 1.81, 2.11, 2.43, 5.59, 3.09, 4.09, 6.14, 5.33, 6.05,
        5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.48])
    ]);


    //Custom Tooltip Style --- 自定义图表浮动提示框样式及内容/
    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .useHTMLSet(true)
        .formatterSet("""
  function () {
    return ' 🌕 🌖 🌗 🌘 🌑 🌒 🌓 🌔 <br/> '
        + ' Support JavaScript Function Just Right Now !!! <br/> '
        + ' The Gold Price For <b>2020 '
        +  this.x
        + ' </b> Is <b> '
        +  this.y
        + ' </b> Dollars ';
  }
  """)
        .valueDecimalsSet(2)//设置取值精确到小数点后几位
        .backgroundColorSet("#000000")
        .borderColorSet("#000000")
        .styleSet(
        AAStyle()
            .colorSet("#FFD700")
            .fontSizeSet(12));
    return aaOptions;
  }

  static AAOptions customAreaChartTooltipStyleWithDifferentUnitSuffix() {
    Map gradientColorDic1 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "rgba(256,0,0,0.3)",//颜色字符串设置支持十六进制类型和 rgba 类型,
        "rgba(256,0,0,1.0)"
    );

    Map gradientColorDic2 = AAGradientColor.linearGradient1(
        AALinearGradientDirection.toTop,
        "rgba(0,0,256,0.3)",//颜色字符串设置支持十六进制类型和 rgba 类型,
        "rgba(0,0,256,1.0)"
    );

    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.area)//图表类型
        .titleSet("2014 ~ 2020 汪星人生存指数")//图表主标题
        .subtitleSet("数据来源：www.无任何可靠依据.com")//图表副标题
        .markerSymbolStyleSet(AAChartSymbolStyleType.innerBlank)//折线连接点样式为内部白色
        .stackingSet(AAChartStackingType.normal)
        .xAxisTickIntervalSet(15)//x轴刻度点间隔数(设置每隔几个点显示一个 X轴的内容)
        .yAxisTitleSet("")//设置 Y 轴标题
        .yAxisGridLineWidthSet(0.8)//y轴横向分割线宽度(为0即是隐藏分割线)
        .seriesSet([
      AASeriesElement()
          .lineWidthSet(1.5)
          .colorSet(gradientColorDic1)
          .nameSet("🐶狗子")
          .dataSet([43934, 52503, 57177, 69658, 97031, 119931, 137133, 154175]),
      AASeriesElement()
          .lineWidthSet(1.5)
          .colorSet(gradientColorDic2)
          .nameSet("🌲树木")
          .dataSet([24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]),
    ]);
//Custom Tooltip Style --- 自定义图表浮动提示框样式及内容/
    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .useHTMLSet(true)
        .formatterSet("""
    function () {
        var s = '第' + '<b>' +  this.x + '</b>' + '年' + '<br/>';
        let colorDot1 = '<span style=' + 'color:#1e90ff; font-size:13px' + '>◉</span> ';
        let colorDot2 = '<span style=' + 'color:#ef476f; font-size:13px' + '>◉</span> ';
        let s1 = colorDot1  + this.points[0].series.name + ': ' + this.points[0].y + '只' + '<br/>';
        let s2 =  colorDot2 + this.points[1].series.name + ': ' + this.points[1].y + '棵';
        s += s1 + s2;
        return s;
    }
      """
    )
    ;
    return aaOptions;
  }

  static AAOptions customAreaChartTooltipStyleWithColorfulHtmlLabels() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .colorsThemeSet(["red","mediumspringgreen","deepskyblue","sandybrown"])//设置主体颜色数组
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .yAxisTitleSet("")//设置 Y 轴标题
        .yAxisGridLineWidthSet(0.8)//y轴横向分割线宽度(为0即是隐藏分割线)
        .categoriesSet(["临床一期","临床二期","临床三期"])
        .markerRadiusSet(8.0)
        .seriesSet([
      AASeriesElement()
          .nameSet("上市")
          .dataSet([0,0,7]),
      AASeriesElement()
          .nameSet("终止")
          .dataSet([4,5,1]),
      AASeriesElement()
          .nameSet("无进展")
          .dataSet([2,0,1]),
      AASeriesElement()
          .nameSet("进行中")
          .dataSet([3,5,2]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.xAxis.crosshairSet(
        AACrosshair()
            .dashStyleSet(AALineDashStyleType.dashDot)
            .widthSet(1.0)
            .colorSet(AAColor.darkGray)
    );

    aaOptions.tooltip
        .useHTMLSet(true)
//         .formatterSet("""
// function () {
//         let colorDot0 = '<span style=\"' + 'color:red; font-size:13px\"' + '>◉</span> ';
//         let colorDot1 = '<span style=\"' + 'color:mediumspringgreen; font-size:13px\"' + '>◉</span> ';
//         let colorDot2 = '<span style=\"' + 'color:deepskyblue; font-size:13px\"' + '>◉</span> ';
//         let colorDot3 = '<span style=\"' + 'color:sandybrown; font-size:13px\"' + '>◉</span> ';
//         let colorDotArr = [colorDot0, colorDot1, colorDot2, colorDot3];
//         let wholeContentString = this.points[0].x + '<br/>';
//         for (let i = 0;i < 4;i++) {
//             let yValue = this.points[i].y;
//             if (yValue != 0) {
//                 let prefixStr = colorDotArr[i];
//                 wholeContentString += prefixStr + this.points[i].series.name + ': ' + this.points[i].y + '<br/>';
//             }
//         }
//         return wholeContentString;
//     }
// """)
    ;

    return aaOptions;
  }

  static AAOptions customLineChartTooltipStyleWhenValueBeZeroDoNotShow() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .stackingSet(AAChartStackingType.normal)
        .yAxisTitleSet("")//设置 Y 轴标题
        .yAxisVisibleSet(false)
        .markerRadiusSet(0)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36]),
      AASeriesElement()
          .nameSet("Berlin Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67]),
      AASeriesElement()
          .nameSet("London Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64]),
      AASeriesElement()
          .nameSet("NewYork Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .useHTMLSet(true)
//         .formatterSet("""
// function () {
//         let colorsArr = ["mediumspringgreen", "deepskyblue", "red", "sandybrown"];
//         let wholeContentString ='<span style=\"' + 'color:lightGray; font-size:13px\"' + '>◉ Time: ' + this.x + ' year</span><br/>';
//         for (let i = 0;i < 4;i++) {
//             let thisPoint = this.points[i];
//             let yValue = thisPoint.y;
//             if (yValue != 0) {
//                 let spanStyleStartStr = '<span style=\"' + 'color:'+ colorsArr[i] + '; font-size:13px\"' + '>◉ ';
//                 let spanStyleEndStr = '</span> <br/>';
//                 wholeContentString += spanStyleStartStr + thisPoint.series.name + ': ' + thisPoint.y + '℃' + spanStyleEndStr;
//             }
//         }
//         return wholeContentString;
//     }
// """)
        .backgroundColorSet("#050505")
        .borderColorSet("#050505")
    ;

    return aaOptions;
  }

  static AAOptions customBoxplotTooltipContent() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.boxplot)
        .titleSet("箱线图")
        .subtitleSet("虚拟数据")
        .yAxisTitleSet("摄氏度")
        .yAxisVisibleSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("观测值")
          .lineWidthSet(1.8)
          .fillColorSet(AAGradientColor.deepSea)
          .dataSet([
        [760, 801, 848, 895, 965],
        [733, 853, 939, 980, 1080],
        [714, 762, 817, 870, 918],
        [724, 802, 806, 871, 950],
        [834, 836, 864, 882, 910]
      ]),
    ]);

//    https://jshare.com.cn/demos/hhhhiQ
//    https://jsfiddle.net/gh/get/library/pure/highcharts/highcharts/tree/master/samples/highcharts/tooltip/footerformat/
//pointFormat: '' + // eslint-disable-line no-dupe-keys
    String pointFormatStr = (
        "◉</span> <b> {series.name}</b><br/>"
            + "最大值: {point.high}<br/>"
            + "Q2: {point.q3}<br/>"
            + "中位数: {point.median}<br/>"
            + "Q1: {point.q1}<br/>"
            + "最小值: {point.low}<br/>"
    );

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .useHTMLSet(true)
        .headerFormatSet("<em>实验号码： {point.key}</em><br/>")
        .pointFormatSet(pointFormatStr)
        .valueDecimalsSet(2)//设置取值精确到小数点后几位
        .backgroundColorSet("#000000")
        .borderColorSet("#000000")
        .styleSet(
        AAStyle()
            .colorSet("#1e90ff")
            .fontSizeSet(12));

    return aaOptions;
  }

  static AAOptions customYAxisLabels() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为内部白色
        .markerRadiusSet(8)
        .stackingSet(AAChartStackingType.normal)
        .yAxisTitleSet("")//设置 Y 轴标题
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet( [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.labels
        .formatterSet("""
// function () {
//         let yValue = this.value;
//         if (yValue >= 200) {
//             return "极佳";
//         } else if (yValue >= 150 && yValue < 200) {
//             return "非常棒";
//         } else if (yValue >= 100 && yValue < 150) {
//             return "相当棒";
//         } else if (yValue >= 50 && yValue < 100) {
//             return "还不错";
//         } else {
//             return "一般";
//         }
//     }
""")
    ;
    return aaOptions;
  }

  static AAOptions customStackedAndGroupedColumnChartTooltip() {
    AAChartModel aaChartModel = AAChartModel()
        .titleSet("Total fruit consumtion, grouped by gender")
        .subtitleSet("stacked and grouped")
        .yAxisTitleSet("Number of fruits")
        .chartTypeSet(AAChartType.column)
        .legendEnabledSet(false)//隐藏图例(底部可点按的小圆点)
        .stackingSet(AAChartStackingType.normal)
        .categoriesSet(["Apples", "Oranges", "Pears","Grapes","Bananas",])
        .dataLabelsEnabledSet(true)
        .seriesSet([
      AASeriesElement()
          .nameSet("John")
          .dataSet([5,3,4,7,2,])
          .stackSet("male")
      ,
      AASeriesElement()
          .nameSet("Joe")
          .dataSet([3,4,4,2,5,])
          .stackSet("male")
      ,
      AASeriesElement()
          .nameSet("Jane")
          .dataSet([2,5,6,2,1,])
          .stackSet("male")
      ,
      AASeriesElement()
          .nameSet("Janet")
          .dataSet([3,0,4, 4,3,])
          .stackSet("male")
      ,]);
    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
        .sharedSet(false)
        .formatterSet("""
function () {
                return '<b>'
                + this.x
                + '</b><br/>'
                + this.series.name
                + ': '
                + this.y
                + '<br/>'
                + 'Total: '
                + this.point.stackTotal;
     }
""");
    return aaOptions;
  }

  static AAOptions everySingleColumnHasGrayBackground() {
    List stopsArr = [[0.0, "#00feff"],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.5, "#027eff"],
      [1.0, "#0286ff"]];
    Map gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        stopsArr
    );

    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .backgroundColorSet("#111c4e")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisMaxSet(250.0)
        .yAxisTitleSet("")
        .legendEnabledSet(false)
        .yAxisLineWidthSet(1)
        .stackingSet(AAChartStackingType.normal)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .colorSet("rgba(255,255,255,0.3)")
          .dataSet([250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0,]),
      AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(gradientColorDic1)
          .dataSet( [29.9, 71.5, 106.4, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4, 129.2, 144.0, 176.0,]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis
        .lineWidthSet(1)
        .lineColorSet("rgba(255,255,255,0.3)")
        .tickWidthSet(0);

    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.gridLineWidthSet(0)
        .lineColorSet("rgba(255,255,255,0.3)");

    aaOptions.plotOptions
        .seriesSet(
        AASeries()
            .animationSet(false))
        .columnSet(
        AAColumn()
            .groupingSet(false)
            .borderWidthSet(0)
            .borderRadiusSet(8));

    aaOptions.tooltip
        .sharedSet(false)
        .backgroundColorSet(gradientColorDic1)
        .styleSet(
        AAStyle()
            .colorSet("#FFFFFF")
            .fontSizeSet(12))
        .formatterSet("""
function () {
  return '<b>'
      + this.x
      + '</b><br/>'
      + this.series.name
      + ': '
      + this.y
}
""");
    return aaOptions;
  }

  static AAOptions everySingleColumnHasWhiteEmptyBorderLineBackground() {
    List stopsArr = [
      [0.0, "#00feff"],//颜色字符串设置支持十六进制类型和 rgba 类型
      [0.5, "#027eff"],
      [1.0, "#0286ff"]
    ];
    Map gradientColorDic1 = AAGradientColor.linearGradient2(
        AALinearGradientDirection.toBottom,
        stopsArr
    );

    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .backgroundColorSet("#111c4e")
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisMaxSet(250.0)
        .yAxisTitleSet("")
        .legendEnabledSet(false)
        .yAxisLineWidthSet(1)
        .stackingSet(AAChartStackingType.normal)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .colorSet("rgba(0,0,0,0)")
          .borderColorSet(AAColor.lightGray)
          .borderWidthSet(2.0)
          .dataSet([250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0,]),
      AASeriesElement()
          .nameSet("Berlin Hot")
          .colorSet(gradientColorDic1)
          .dataSet( [ 148.5, 216.4, 194.1, 95.6, 54.4, 129.2, 144.0, 176.0,29.9, 71.5, 106.4, 135.6,]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis
        .lineWidthSet(1)
        .lineColorSet("rgba(255,255,255,0.3)")
        .tickWidthSet(0);
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis.gridLineWidthSet(0)
        .lineColorSet("rgba(255,255,255,0.3)");

    aaOptions.plotOptions
        .seriesSet(
        AASeries()
            .animationSet(false))
        .columnSet(
        AAColumn()
            .groupingSet(false)
            .borderWidthSet(0)
            .borderRadiusSet(8)
    );

    aaOptions.tooltip
        .sharedSet(false)
        .backgroundColorSet(AAColor.darkGray)
        .styleSet(
        AAStyle()
            .colorSet("#FFD700")
            .fontSizeSet(12))
        .formatterSet("""
function () {
  return '<b>'
      + this.x
      + '</b><br/>'
      + this.series.name
      + ': '
      + this.y
}
""");

    return aaOptions;
  }

  static AAOptions colorfulSpecialStyleColumnChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)//图表类型
        .titleSet("")//图表主标题
        .subtitleSet("")//图表副标题
        .backgroundColorSet("#111c4e")
        .colorsThemeSet(["#eb2100", "#eb3600", "#d0570e", "#d0a00e", "#34da62", "#00e9db", "#00c0e9", "#0096f3", "#33CCFF", "#33FFCC"])
        .categoriesSet(["一月", "二月", "三月", "四月", "五月", "六月",
      "七月", "八月", "九月", "十月", "十一月", "十二月"])
        .yAxisMaxSet(250.0)
        .yAxisTitleSet("")
        .legendEnabledSet(false)
        .yAxisLineWidthSet(1)
        .stackingSet(AAChartStackingType.normal)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .colorSet("rgba(0,0,0,0)")
          .colorByPointSet(false)
          .borderWidthSet(2.0)
          .borderColorSet("rgba(255,255,255,0.3)")
          .dataSet([250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0, 250.0,]),
      AASeriesElement()
          .nameSet("Berlin Hot")
          .colorByPointSet(true)
          .dataSet( [148.5, 216.4, 194.1, 95.6, 54.4, 129.2, 144.0, 176.0,29.9, 71.5, 106.4, 135.6,]),
      AASeriesElement()
          .typeSet(AAChartType.scatter)
          .colorByPointSet(true)
          .markerSet(
          AAMarker()
              .radiusSet(21))
          .dataSet([0,0,0,0,0,0,0,0,0,0,0,0,]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis
        .lineWidthSet(1)
        .lineColorSet("rgba(255,255,255,0.3)")
        .tickWidthSet(0);
    AAYAxis aayAxis = aaOptions.yAxis;
    aayAxis
        .gridLineWidthSet(0)
        .lineColorSet("rgba(255,255,255,0.3)");

    aaOptions.plotOptions
        .seriesSet(
        AASeries()
            .animationSet(false))
        .columnSet(
        AAColumn()
            .groupingSet(false)
            .borderWidthSet(0)
            .borderRadiusSet(8))
    ;

    aaOptions.tooltip
        .sharedSet(false)
        .backgroundColorSet(AAColor.darkGray)
        .styleSet(
        AAStyle()
            .colorSet("#FFD700")
            .fontSizeSet(12))
        .formatterSet("""
function () {
  return '<b>'
      + this.x
      + '</b><br/>'
      + this.series.name
      + ': '
      + this.y
}
""");
    return aaOptions;
  }

  static AAOptions configureSpecialStyleTrianglePolarChart() {
    AAChartModel aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisTitleSet("")
        .yAxisMaxSet(13.0)
        .yAxisGridLineWidthSet(2)
        .categoriesSet(["Java", "Swift","C", "C#", "C++", "Perl",])
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
    ])
        .seriesSet([
      AASeriesElement()
          .nameSet("2020")
          .colorSet(AAGradientColor.deepSea)
          .dataSet([9.9,null, 9.9,null,9.9, null, ]),
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis.lineWidth = 0.0;//避免多边形外环之外有额外套了一层无用的外环
    AAYAxis aayAxis = aaOptions.yAxis;
//    aayAxis.gridLineInterpolation = AAYAxisGridLineInterpolationPolygon;
//    aayAxis.tickAmount = 8.0;
    aaOptions
        .xAxis.labels
        .formatterSet("""
function () {
  let categoriesArr = [];
  categoriesArr.push("Swift");
  categoriesArr.push("");
  categoriesArr.push("Ruby");
  categoriesArr.push("");
  categoriesArr.push("Go");
  categoriesArr.push("");
  let thisCategory = categoriesArr[this.value];
  return thisCategory;
}
    """);

    aaOptions.tooltip
        .useHTMLSet(true)
        .formatterSet("""
function () {
  let categoriesArr = [];
  categoriesArr.push("Swift");
  categoriesArr.push("");
  categoriesArr.push("Ruby");
  categoriesArr.push("");
  categoriesArr.push("Go");
  categoriesArr.push("");
  let thisCategory = categoriesArr[this.x];

  return ' 🌕 🌖 🌗 🌘 🌑 🌒 🌓 🌔 <br/> '
      + ' 此处支持使用JavaScript函数来自定义tooltip <br/> '
      + '2020 年编程语言热度  <b> '
      +  thisCategory
      + ' </b> Is <b> '
      +  this.y
      + ' </b> 摄氏度 ';
}
""")
        .valueDecimalsSet(2)//设置取值精确到小数点后几位
        .backgroundColorSet("#000000")
        .borderColorSet("#000000")
        .styleSet(
        AAStyle()
            .colorSet("#1e90ff")
            .fontSizeSet(12));

    return aaOptions;
  }
}