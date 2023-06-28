import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAItemStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStates.dart';

import '../../AAChartsLib/AAChartCreator/AASeriesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAOptions.dart';
import '../../AAChartsLib/AAOptionsModel/AAStyle.dart';

class JSFunctionForAALegendComposer {
  static AAOptions disableLegendClickEventForNormalChart() {
    var aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.areaspline)
        .animationTypeSet(AAChartAnimationType.easeFrom)//设置图表渲染动画类型为 EaseFrom
        .dataLabelsEnabledSet(false)
        .zoomTypeSet(AAChartZoomType.x)
        .marginSet([100, 100, 100, 100])
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

    aaOptions.legend
        ?.itemMarginTopSet(20)
        .symbolRadiusSet(10)//图标圆角
        .symbolHeightSet(20)//标志高度
        .symbolWidthSet(20)//图标宽度
        .alignSet(AAChartAlignType.right)
        .layoutSet(AAChartLayoutType.vertical)
        .verticalAlignSet(AAChartVerticalAlignType.top)
        .itemStyleSet(
        new AAItemStyle()
            .colorSet(AAColor.red)
            .fontSizeSet(20)
            .fontWeightSet(AAChartFontWeightType.bold));

    //禁用图例点击事件
    aaOptions.plotOptions?.series?.events = new AASeriesEvents()
        .legendItemClickSet("""
          function() {
              return false;
                    }
        """);

    return aaOptions;
  }

  // //https://github.com/AAChartModel/AAChartKit-Swift/issues/391
//     //https://github.com/AAChartModel/AAChartKit-Swift/issues/393
//     private func disableLegendClickEventForPieChart() -> AAOptions {
//          let aaChartModel = AAChartModel()
//             .chartType(.pie)
//             .backgroundColor(AAColor.white)
//             .title("LANGUAGE MARKET SHARES JANUARY,2020 TO MAY")
//             .subtitle("virtual data")
//             .dataLabelsEnabled(true)//是否直接显示扇形图数据
//             .yAxisTitle("℃")
//             .series([
//                 AASeriesElement()
//                     .name("Language market shares")
//                     .innerSize("20%")//内部圆环半径大小占比(内部圆环半径/扇形图半径),
//                     .allowPointSelect(true)
//                     .states(AAStates()
//                         .hover(AAHover()
//                             .enabled(false)//禁用点击区块之后出现的半透明遮罩层
//                     ))
//                     .data([
//                         ["Java"  ,67],
//                         ["Swift",999],
//                         ["Python",83],
//                         ["OC"    ,11],
//                         ["Go"    ,30],
//                     ])
//             ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//         aaOptions.legend?.labelFormat("{name} {percentage:.2f}%")
//
//         //禁用饼图图例点击事件
//         aaOptions.plotOptions?.series?
//             .point(AAPoint()
//                 .events(AAPointEvents()
//                     .legendItemClick(#"""
//                     function() {
//                       return false;
//                     }
//         """#)))
//
//         return aaOptions
//     }

//https://github.com/AAChartModel/AAChartKit-Swift/issues/391
//https://github.com/AAChartModel/AAChartKit-Swift/issues/393
static disableLegendClickEventForPieChart() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.pie)
        .backgroundColorSet(AAColor.white)
        .titleSet("LANGUAGE MARKET SHARES JANUARY,2020 TO MAY")
        .subtitleSet("virtual data")
        .dataLabelsEnabledSet(true)//是否直接显示扇形图数据
        .yAxisTitleSet("℃")
        .seriesSet([
      AASeriesElement()
          .nameSet("Language market shares")
          .innerSizeSet("20%")//内部圆环半径大小占比(内部圆环半径/扇形图半径),
          .allowPointSelectSet(true)
          .statesSet(
          AAStates()
              .hoverSet(
              AAHover()
                  .enabledSet(false)//禁用点击区块之后出现的半透明遮罩层
          ))
          .dataSet([
        ["Java", 67],
        ["Swift", 999],
        ["Python", 83],
        ["OC", 11],
        ["Go", 30],
      ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.legend
        ?.labelFormatSet("{name} {percentage:.2f}%");

    //禁用饼图图例点击事件
    aaOptions.plotOptions?.series?.pointSet(
      AAPoint()
          .eventsSet(
          AAPointEvents()
              .legendItemClickSet("""
                    function() {
                      return false;
                    }
        """)
    ));

    return aaOptions;
}

////https://bbs.hcharts.cn/article-109-1.html
//     //图表自带的图例点击事件是：
//     //点击某个显示/隐藏的图例，该图例对应的serie就隐藏/显示。
//     //个人觉得不合理，正常来说，有多条折线(或其他类型的图表)，点击某个图例是想只看该图例对应的数据；
//     //于是修改了图例点击事件。
//     //
//     //实现的效果是(以折线图为例)：
//     //1. 当某条折线隐藏时，点击该折线的图例 --> 该折线显示；
//     //2. 当全部折线都显示时，点击某个图例 --> 该图例对应的折线显示，其他折线均隐藏；
//     //3. 当只有一条折线显示时，点击该折线的图例 --> 全部折线均显示；
//     //4. 其他情况，按默认处理：
//     //显示 --> 隐藏；
//     //隐藏 --> 显示；
//     //Customized legendItemClick Event online: http://code.hcharts.cn/rencht/hhhhLv/share
//     private func customLegendItemClickEvent() -> AAOptions  {
//         let aaChartModel = AAChartModel()
//             .chartType(.column)
//             .stacking(.normal)
//             .colorsTheme(["#fe117c","#ffc069","#06caf4","#7dffc0"])//设置主题颜色数组
//             .markerRadius(0)
//             .series([
//                 AASeriesElement()
//                     .name("2017")
//                     .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
//                 AASeriesElement()
//                     .name("2018")
//                     .data([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
//                 AASeriesElement()
//                     .name("2019")
//                     .data([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
//                 AASeriesElement()
//                     .name("2020")
//                     .data([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]),
//             ])
//         let aaOptions = aaChartModel.aa_toAAOptions()
//
//         aaOptions.legend?
//             .enabled(true)
//             .align(.right)//设置图例位于水平方向上的右侧
//             .layout(.vertical)//设置图例排列方式为垂直排布
//             .verticalAlign(.top)//设置图例位于竖直方向上的顶部
//
//
//         //自定义图例点击事件
//         aaOptions.plotOptions?.series?.events = AAEvents()
//             .legendItemClick(#"""
//             function(event) {
//                 function getVisibleMode(series, serieName) {
//                     var allVisible = true;
//                     var allHidden = true;
//                     for (var i = 0; i < series.length; i++) {
//                         if (series[i].name == serieName)
//                             continue;
//                         allVisible &= series[i].visible;
//                         allHidden &= (!series[i].visible);
//                     }
//                     if (allVisible && !allHidden)
//                         return 'all-visible';
//                     if (allHidden && !allVisible)
//                         return 'all-hidden';
//                     return 'other-cases';
//                 }
//
//                 var series = this.chart.series;
//                 var mode = getVisibleMode(series, this.name);
//                 var enableDefault = false;
//                 if (!this.visible) {
//                     enableDefault = true;
//                 }
//                 else if (mode == 'all-visible') {
//                     var seriesLength = series.length;
//                     for (var i = 0; i < seriesLength; i++) {
//                         var serie = series[i];
//                         serie.hide();
//                     }
//                     this.show();
//                 }
//                 else if (mode == 'all-hidden') {
//                     var seriesLength = series.length;
//                     for (var i = 0; i < seriesLength; i++) {
//                         var serie = series[i];
//                         serie.show();
//                     }
//                 }
//                 else {
//                     enableDefault = true;
//                 }
//                 return enableDefault;
//             }
//         """#)
//
//         return aaOptions
//     }
//

//https://bbs.hcharts.cn/article-109-1.html
//图表自带的图例点击事件是：
//点击某个显示/隐藏的图例，该图例对应的serie就隐藏/显示。
//个人觉得不合理，正常来说，有多条折线(或其他类型的图表)，点击某个图例是想只看该图例对应的数据；
//于是修改了图例点击事件。
//
//实现的效果是(以折线图为例)：
//1. 当某条折线隐藏时，点击该折线的图例 --> 该折线显示；
//2. 当全部折线都显示时，点击某个图例 --> 该图例对应的折线显示，其他折线均隐藏；
//3. 当只有一条折线显示时，点击该折线的图例 --> 全部折线均显示；
//4. 其他情况，按默认处理：
//显示 --> 隐藏；
//隐藏 --> 显示；
//Customized legendItemClick Event online: http://code.hcharts.cn/rencht/hhhhLv/share
static AAOptions customLegendItemClickEvent() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.column)
        .stackingSet(AAChartStackingType.normal)
        .colorsThemeSet(["#fe117c","#ffc069","#06caf4","#7dffc0"]) //设置主题颜色数组
        .markerRadiusSet(0)
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
              
        ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.legend
        ?.enabledSet(true)
        .alignSet(AAChartAlignType.right)//设置图例位于水平方向上的右侧
        .layoutSet(AAChartLayoutType.vertical)//设置图例排列方式为垂直排布
        .verticalAlignSet(AAChartVerticalAlignType.top)//设置图例位于竖直方向上的顶部
  ;


    //自定义图例点击事件
    aaOptions.plotOptions?.series?.events = AASeriesEvents()
        .legendItemClickSet("""
        function(event) {
            function getVisibleMode(series, serieName) {
                var allVisible = true;
                var allHidden = true;
                for (var i = 0; i < series.length; i++) {
                    if (series[i].name == serieName)
                        continue;
                    allVisible &= series[i].visible;
                    allHidden &= (!series[i].visible);
                }
                if (allVisible && !allHidden)
                    return 'all-visible';
                if (allHidden && !allVisible)
                    return 'all-hidden';
                return 'other-cases';
            }
    
            var series = this.chart.series;
            var mode = getVisibleMode(series, this.name);
            var enableDefault = false;
            if (!this.visible) {
                enableDefault = true;
            }
            else if (mode == 'all-visible') {
                var seriesLength = series.length;
                for (var i = 0; i < seriesLength; i++) {
                    var serie = series[i];
                    serie.hide();
                }
                this.show();
            }
            else if (mode == 'all-hidden') {
                var seriesLength = series.length;
                for (var i = 0; i < seriesLength; i++) {
                    var serie = series[i];
                    serie.show();
                }
            }
            else {
                enableDefault = true;
            }
            return enableDefault;
        }
    """);

    return aaOptions;
}

}