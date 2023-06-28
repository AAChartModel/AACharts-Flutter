import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAGradientColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotBandsElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStates.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAXAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';
import 'package:flutter/material.dart';

import '../../AAChartsLib/AAChartCreator/AASeriesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAChart.dart';
import '../../AAChartsLib/AAOptionsModel/AADataLabels.dart';
import '../../AAChartsLib/AAOptionsModel/AAItemStyle.dart';
import '../../AAChartsLib/AAOptionsModel/AAOptions.dart';
import '../../AAChartsLib/AAOptionsModel/AAOptions.dart';
import '../../AAChartsLib/AAOptionsModel/AAPlotLinesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAScatter.dart';

class JSFunctionForAATooltipComposer2 {

  ////https://github.com/AAChartModel/AAChartKit-Swift/issues/365
  //     //https://api.highcharts.com/highcharts/tooltip.formatter
  //     //Callback function to format the text of the tooltip from scratch. In case of single or shared tooltips,
  //     //a string should be returned. In case of split tooltips, it should return an array where the first item
  //     //is the header, and subsequent items are mapped to the points. Return `false` to disable tooltip for a
  //     //specific point on series.
  //     private func customColumnChartBorderStyleAndStatesHoverColor() -> AAOptions {
  //         let aaChartModel = AAChartModel()
  //                 .chartType(.column)
  //                 .stacking(.normal)
  //                 .colorsTheme([AAColor.darkGray, AAColor.lightGray])//Colors theme
  //                 .categories([
  //                     "January", "February", "March", "April", "May", "June",
  //                     "July", "August", "September", "October", "November", "December"
  //                 ])
  //                 .series([
  //                     AASeriesElement()
  //                             .name("Berlin Hot")
  //                             .borderColor(AAColor.white)
  //                             .borderWidth(3)
  //                             .borderRadius(10)
  //                             .states(AAStates()
  //                                     .hover(AAHover()
  //                                             .color(AAColor.red)))
  //                             .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
  //
  //                     AASeriesElement()
  //                             .name("Beijing Hot")
  //                             .borderColor(AAColor.white)
  //                             .borderWidth(3)
  //                             .borderRadius(10)
  //                             .states(AAStates()
  //                                     .hover(AAHover()
  //                                             .color("dodgerblue")))// Dodgerblue／道奇藍／#1e90ff十六进制颜色代码
  //                             .data([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
  //                 ])
  //
  //         let aaOptions = aaChartModel.aa_toAAOptions()
  //         aaOptions.tooltip?.formatter("""
  //                                      function () {
  //                                          return false;
  //                                              }
  //                                      """)
  //
  //         return aaOptions
  //     }

  //https://github.com/AAChartModel/AAChartKit-Swift/issues/365
  //https://api.highcharts.com/highcharts/tooltip.formatter
  //Callback function to format the text of the tooltip from scratch. In case of single or shared tooltips,
  //a string should be returned. In case of split tooltips, it should return an array where the first item
  //is the header, and subsequent items are mapped to the points. Return `false` to disable tooltip for a
  //specific point on series.
  static AAOptions customColumnChartBorderStyleAndStatesHoverColor() {
    var aaChartModel = AAChartModel()
     .chartTypeSet(AAChartType.column)
      .stackingSet(AAChartStackingType.normal)
      .colorsThemeSet([AAColor.darkGray, AAColor.lightGray])//Colors theme
      .categoriesSet([
        "January", "February", "March", "April", "May", "June",
        "July", "August", "September", "October", "November", "December"
      ])
      .seriesSet([
        AASeriesElement()
          .nameSet("Berlin Hot")
          .borderColorSet(AAColor.white)
          .borderWidthSet(3)
          .borderRadiusSet(10)
          .statesSet(AAStates()
            .hoverSet(AAHover()
              .colorSet(AAColor.red)))
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),

        AASeriesElement()
          .nameSet("Beijing Hot")
          .borderColorSet(AAColor.white)
          .borderWidthSet(3)
          .borderRadiusSet(10)
          .statesSet(AAStates()
            .hoverSet(AAHover()
              .colorSet("dodgerblue")))// Dodgerblue／道奇藍／#1e90ff十六进制颜色代码
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
      ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.tooltip
      ?.formatterSet("""
        function () {
          return false;
        }
      """);

    return aaOptions;

}

//// https://github.com/AAChartModel/AAChartKit-Swift/issues/233
//     private func customTooltipPositionerFunction() -> AAOptions {
//         let categories = [
//             "孤岛危机",
//             "使命召唤",
//             "荣誉勋章",
//             "狙击精英",
//             "神秘海域",
//             "最后生还者",
//             "巫师3狂猎",
//             "对马之魂",
//             "死亡搁浅",
//             "地狱边境",
//             "闪客",
//             "忍者之印"
//         ]
//
//         let aaChartModel = AAChartModel()
//                 .chartType(.column)
//                 .yAxisTitle("")
//                 .yAxisGridLineWidth(0)
//                 .categories(categories)
//                 .series([
//                     AASeriesElement()
//                             .name("单机大作")
//                             .color(AAColor.red)
//                             .data([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
//                 ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//
//         aaOptions.tooltip?
//                 .shadow(false)
//                 .positioner("""
//                             function (labelWidth, labelHeight, point) {
//                                 return {
//                                  x : point.plotX,
//                                  y : 20
//                                 };
//                             }
//                             """)
//
//         return aaOptions
//     }

// https://github.com/AAChartModel/AAChartKit-Swift/issues/233
static AAOptions customTooltipPositionerFunction() {
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

    var aaChartModel = AAChartModel()
     .chartTypeSet(AAChartType.column)
      .yAxisTitleSet("")
      .yAxisGridLineWidthSet(0)
      .categoriesSet(categories)
      .seriesSet([
        AASeriesElement()
          .nameSet("单机大作")
          .colorSet(AAColor.red)
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5])
      ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.tooltip
      ?.shadowSet(false)
      .positionerSet("""
        function (labelWidth, labelHeight, point) {
            return {
             x : point.plotX,
             y : 20
            };
        }
        """);

    return aaOptions;
}

//   private func fixedTooltipPositionByCustomPositionerFunction() -> AAOptions {
//         let aaOptions = customTooltipPositionerFunction()
//
//         aaOptions.tooltip?
//                 .positioner("""
//                             function (labelWidth, labelHeight, point) {
//                                 return {
//                                  x : 50,
//                                  y : 50
//                                 };
//                             }
//                             """)
//
//         return aaOptions
//     }

static AAOptions fixedTooltipPositionByCustomPositionerFunction() {
    var aaOptions = customTooltipPositionerFunction();

    aaOptions.tooltip
      ?.positionerSet("""
        function (labelWidth, labelHeight, point) {
            return {
             x : 50,
             y : 50
            };
        }
        """);

    return aaOptions;
}

////https://github.com/AAChartModel/AAChartKit/issues/1033
//     private func customPlotAreaOutsideComplicatedTooltipStyle() -> AAOptions {
//         let categoriesArr = [

//         ]
//
//         let aaChartModel = AAChartModel()
//                 .chartType(AAChartType.column)
//                 .categories(categoriesArr)
//                 .series([
//                     AASeriesElement()
//                             .name("个人徒步数据统计")
//                             .color(AARgba(235, 88, 40, 1.0))
//                             .borderRadiusTopLeft(3)
//                             .borderRadiusTopRight(3)
//                             .data([
//                                 1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
//                                 1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
//                                 1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
//                                 1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
//                                 1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
//                             ]),
//                 ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//
//         aaOptions.xAxis?
//                 .crosshair(AACrosshair()
//                         .color(AARgba(209, 209, 209, 1.0))
//                         .dashStyle(AAChartLineDashStyleType.longDash)
//                         .width(3))
//
//         //    aaOptions.yAxis
//         //        .top("30%")//https://api.highcharts.com/highcharts/yAxis.top
//         //        .height("70%")//https://api.highcharts.com/highcharts/yAxis.height
//
//         let screenWidth = UIScreen.main.bounds.size.width
//
//         //https://stackoverflow.com/questions/16300026/highcharts-tooltip-get-position-and-change-class
//         let positionerStr = """
//                             function (tooltipWidth, tooltipHeight, point) {
//                                     const xPosition = point.plotX;
//                                     const tooltipRightMargin = 20;
//                                     const maxXPosition = \(screenWidth) - (tooltipWidth + tooltipRightMargin);
//                                     if (xPosition >= maxXPosition) {
//                                         xPosition = maxXPosition
//                                     }
//                                     let position = {};
//                                     position["x"] = xPosition;
//                                     position["y"] = 50;
//                                     return position;
//                                 }
//                             """
//
//         aaOptions.tooltip?
//                 .useHTML(true)
//                 .headerFormat("总计<br/>")
//                 .pointFormat(#"<span style=\"color:black;font-weight:bold;font-size:38px\">{point.y} </span> 步<br/>"#)
//                 .footerFormat("2020 年 {point.x} ")
//                 .valueDecimals(2)//设置取值精确到小数点后几位
//                 .backgroundColor(AARgba(242, 242, 242, 1.0))
//                 .borderWidth(0)
//                 //        .shape("square")
//                 .style(AAStyle(color: AARgba(132, 132, 132, 1.0), fontSize: 28))
//                 .positioner(positionerStr)
//
//         return aaOptions
//     }

//https://github.com/AAChartModel/AAChartKit/issues/1033
static AAOptions customPlotAreaOutsideComplicatedTooltipStyle() {
    var categoriesArr = [
      "11 月 01 日",
      "11 月 02 日",
      "11 月 03 日",
      "11 月 04 日",
      "11 月 05 日",
      "11 月 06 日",
      "11 月 07 日",
      "11 月 08 日",
      "11 月 09 日",

      "11 月 10 日",
      "11 月 11 日",
      "11 月 12 日",
      "11 月 13 日",
      "11 月 14 日",
      "11 月 15 日",
      "11 月 16 日",
      "11 月 17 日",
      "11 月 18 日",
      "11 月 19 日",

      "11 月 20 日",
      "11 月 21 日",
      "11 月 22 日",
      "11 月 23 日",
      "11 月 24 日",
      "11 月 25 日",
      "11 月 26 日",
      "11 月 27 日",
      "11 月 28 日",
      "11 月 29 日",
      "11 月 30 日",

      "12 月 01 日",
      "12 月 02 日",
      "12 月 03 日",
      "12 月 04 日",
      "12 月 05 日",
      "12 月 06 日",
      "12 月 07 日",
      "12 月 08 日",
      "12 月 09 日",

      "12 月 10 日",
      "12 月 11 日",
      "12 月 12 日",
      "12 月 13 日",
      "12 月 14 日",
      "12 月 15 日",
      "12 月 16 日",
      "12 月 17 日",
      "12 月 18 日",
      "12 月 19 日",

      "12 月 20 日",
      "12 月 21 日",
      "12 月 22 日",
      "12 月 23 日",
      "12 月 24 日",
      "12 月 25 日",
      "12 月 26 日",
      "12 月 27 日",
      "12 月 28 日",
      "12 月 29 日",
      "12 月 30 日",
      "12 月 31 日",
    ];

    var aaChartModel = AAChartModel()
    .chartTypeSet(AAChartType.column)
    .categoriesSet(categoriesArr)
    .seriesSet([
      AASeriesElement()
      .nameSet("个人徒步数据统计")
      .colorSet(AARgba(235, 88, 40, 1.0))
      .borderRadiusTopLeftSet(3)
      .borderRadiusTopRightSet(3)
      .dataSet([
        1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
        1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
        1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
        1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
        1300.988, 900.699, 1000.089, 1100.965, 1000.534, 1400.523, 1800.254, 1900.377, 2100.523, 2500.256, 2600.555, 2800.366,
      ]),
    ]);
    
    var aaOptions = aaChartModel.aa_toAAOptions();
    
    aaOptions.xAxis
    ?.crosshairSet(AACrosshair()
                  .colorSet(AARgba(209, 209, 209, 1.0))
                  .dashStyleSet(AAChartLineDashStyleType.longDash)
                  .widthSet(3));
    
    //    aaOptions.yAxis
    //        .top("30%")//https://api.highcharts.com/highcharts/yAxis.top
    //        .height("70%")//https://api.highcharts.com/highcharts/yAxis.height
  
    // var screenWidth = UIScreen.main.bounds.size.width
    //获取屏幕的宽度
    var screenWidth = 320;
    
    //https://stackoverflow.com/questions/16300026/highcharts-tooltip-get-position-and-change-class
    var positionerStr = """
                        function (tooltipWidth, tooltipHeight, point) {
                                var xPosition = point.plotX;
                                var tooltipRightMargin = 20;
                                var maxXPosition = \(screenWidth) - (tooltipWidth + tooltipRightMargin);
                                if (xPosition >= maxXPosition) {
                                    xPosition = maxXPosition
                                }
                                var position = {};
                                position["x"] = xPosition;
                                position["y"] = 50;
                                return position;
                            }
                        """;
    
    aaOptions.tooltip
    ?.useHTMLSet(true)
    .headerFormatSet("总计<br/>")
    .pointFormatSet("<span style=\"color:black;font-weight:bold;font-size:38px\">{point.y} </span> 步<br/>")
    .footerFormatSet("2020 年 {point.x} ")
    .valueDecimalsSet(2)//设置取值精确到小数点后几位
    .backgroundColorSet(AARgba(242, 242, 242, 1.0))
    .borderWidthSet(0)
    //        .shape("square")
    .styleSet(AAStyle.colorSize(AARgba(132, 132, 132, 1.0), 28))
    .positionerSet(positionerStr);
    
    return aaOptions;
}

////https://github.com/AAChartModel/AAChartKit/issues/1042
//     private func makePieChartShow0Data() -> AAOptions {
//         AAOptions()
//                 .title(AATitle()
//                         .text(""))
//                 .chart(AAChart()
//                         .type(.pie))
//                 .series([
//                     AASeriesElement()
//                             .name("ZeroDataPie")
//                             .data([
//                                 ["y":1, "isZero":true, "name":"One"  ],
//                                 ["y":1, "isZero":true, "name":"Two"  ],
//                                 ["y":1, "isZero":true, "name":"Three"]
//                             ])
//                             .tooltip(AATooltip()
//                                     .shared(false)
//                                     .pointFormatter(#"""
//                                                     function() {
//                                                         return "<span style=\'color:" + this.color + "\'> ◉ </span>"
//                                                         + this.series.name
//                                                         + ": <b>"
//                                                         + (this.options.isZero ? 0 : this.y)
//                                                         + "</b><br/>";
//                                                     }
//                                                     """#))
//                 ])
//     }

//https://github.com/AAChartModel/AAChartKit/issues/1042
static AAOptions makePieChartShow0Data() {
    return AAOptions()
    .titleSet(AATitle()
              .textSet(""))
    .chartSet(AAChart()
              .typeSet(AAChartType.pie))
    .seriesSet([
      AASeriesElement()
      .nameSet("ZeroDataPie")
      .dataSet([
        {"y":1, "isZero":true, "name":"One"  },
        {"y":1, "isZero":true, "name":"Two"  },
        {"y":1, "isZero":true, "name":"Three" }
      ])
      .tooltipSet(AATooltip()
                  .sharedSet(false)
                  .pointFormatterSet("""
                                      function() {
                                          return "<span style=\'color:" + this.color + "\'> ◉ </span>"
                                          + this.series.name
                                          + ": <b>"
                                          + (this.options.isZero ? 0 : this.y)
                                          + "</b><br/>";
                                      }
                                      """))
    ]);
}

////https://github.com/AAChartModel/AAChartKit/issues/1406
//     //https://www.highcharts.com/forum/viewtopic.php?f=9&t=49629
//     private func customizeTooltipShapeAndShadowBeSpecialStyle() -> AAOptions {
//         let aaOptions = AAOptions()
//             .chart(AAChart()
//                 .type(.spline)
//                 .backgroundColor("#f4f8ff"))
//             .tooltip(AATooltip()
//                 .useHTML(true)
//                 .backgroundColor("transparent")
//                 .borderColor("transparent")
//                 .shadow(false)
//                 .padding(0)
//                 .shared(true)
//                 .formatter(""))
//             .series([
//                 AASeriesElement()
//                     .data([223.2, 312.1, 152.7, 161.9, 196.6]),
//                 AASeriesElement()
//                     .data([122.2, 53.7, 300.0, 110.5, 320.4]),
//             ])
//
//         return aaOptions
//     }

//https://github.com/AAChartModel/AAChartKit/issues/1406
//https://www.highcharts.com/forum/viewtopic.php?f=9&t=49629
  static AAOptions customizeTooltipShapeAndShadowBeSpecialStyle() {
    var aaOptions = AAOptions()
        .chartSet(AAChart()
        .typeSet(AAChartType.spline)
        .backgroundColorSet("#f4f8ff"))
        .tooltipSet(
        AATooltip()
            .useHTMLSet(true)
            .backgroundColorSet("transparent")
            .borderColorSet("transparent")
            .shadowSet(false)
            .paddingSet(0)
            .sharedSet(true)
            .formatterSet("""
                function() {
                    const points = this.points;

                    let htmlPoints = ``;

                    points.forEach(function(point) {
                        htmlPoints += `
                            <div>
                                <span style="color:\${point.color}">\u25CF</span> \${point.y}
                            </div>
                        `;
                    });
                    
                    return `
                        <div style="
                            border-radius: 0.5rem 0.5rem 0.5rem 0;
                            background-color: white;
                            box-shadow: #b1c7ff 0px 3px 10px 0px;
                            padding: 0.5rem;
                            line-height: 18px;
                        ">
                            \${htmlPoints}
                        </div>
                    `;
                }
                """)
            .positionerSet("""
                function(labelWidth, labelHeight) {
                    const chart = this.chart,
                    point = chart.hoverPoint,
                    offset = 10,
                    pointX = chart.plotLeft + point.plotX + offset,
                    x = chart.chartWidth < pointX + labelWidth ? chart.chartWidth - labelWidth : pointX,
                    y = chart.plotTop + point.plotY - labelHeight - offset;
                    
                    return {x, y};
                """))
        .seriesSet([
      AASeriesElement()
          .dataSet([223.2, 312.1, 152.7, 161.9, 196.6]),
      AASeriesElement()
          .dataSet([122.2, 53.7, 300.0, 110.5, 320.4]),
    ]);

    return aaOptions;
  }
}