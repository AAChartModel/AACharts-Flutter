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
}