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

import '../../AAChartsLib/AAChartCreator/AASeriesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAChart.dart';
import '../../AAChartsLib/AAOptionsModel/AAOptions.dart';
import '../../AAChartsLib/AAOptionsModel/AAOptions.dart';
import '../../AAChartsLib/AAOptionsModel/AAPlotLinesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAScatter.dart';

class JSFunctionForAAAxisComposer {

  ////https://github.com/AAChartModel/AAChartKit/issues/675
  //     private func customYAxisLabels() -> AAOptions {
  //         let aaChartModel = AAChartModel()
  //             .chartType(.line)//图形类型
  //             .markerSymbolStyle(.borderBlank)//折线连接点样式为外边缘空白
  //             .dataLabelsEnabled(false)
  //             .colorsTheme(["#04d69f","#1e90ff","#ef476f","#ffd066",])
  //             .stacking(.normal)
  //             .markerRadius(8)
  //             .series([
  //                 AASeriesElement()
  //                     .name("Scores")
  //                     .lineWidth(5.0)
  //                     .fillOpacity(0.4)
  //                     .data([29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4])
  //                     ,
  //                 ])
  //
  //         let aaYAxisLabels = AALabels()
  //             .formatter(#"""
  // function () {
  //         let yValue = this.value;
  //         if (yValue >= 200) {
  //             return "Excellent";
  //         } else if (yValue >= 150 && yValue < 200) {
  //             return "Very Good";
  //         } else if (yValue >= 100 && yValue < 150) {
  //             return "Good";
  //         } else if (yValue >= 50 && yValue < 100) {
  //             return "Not Bad";
  //         } else {
  //             return "Just So So";
  //         }
  //     }
  // """#)
  //
  //         let aaOptions = aaChartModel.aa_toAAOptions()
  //         aaOptions.yAxis?.labels(aaYAxisLabels)
  //
  //         return aaOptions
  //     }

  //https://github.com/AAChartModel/AAChartKit/issues/675
  static AAOptions customYAxisLabels() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.line)//图形类型
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .dataLabelsEnabledSet(false)
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(8)
        .seriesSet([
      AASeriesElement()
          .nameSet("Scores")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4])
    ]);

    var aaYAxisLabels = AALabels()
        .formatterSet("""
  function () {
          let yValue = this.value;
          if (yValue >= 200) {
              return "Excellent";
          } else if (yValue >= 150 && yValue < 200) {
              return "Very Good";
          } else if (yValue >= 100 && yValue < 150) {
              return "Good";
          } else if (yValue >= 50 && yValue < 100) {
              return "Not Bad";
          } else {
              return "Just So So";
          }
          """);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.yAxis?.labels = aaYAxisLabels;

    return aaOptions;
  }

  //private func customYAxisLabels2() -> AAOptions {
//         let aaChartModel = AAChartModel()
//             .chartType(.line)//图形类型
//             .markerSymbolStyle(.borderBlank)//折线连接点样式为外边缘空白
//             .dataLabelsEnabled(false)
//             .colorsTheme(["#04d69f","#1e90ff","#ef476f","#ffd066",])
//             .stacking(.normal)
//             .markerRadius(8)
//             .series([
//                 AASeriesElement()
//                     .name("Tokyo Hot")
//                     .lineWidth(5.0)
//                     .fillOpacity(0.4)
//                     .data([229.9, 771.5, 1106.4, 1129.2, 6644.0, 1176.0, 8835.6, 148.5, 8816.4, 6694.1, 7795.6, 9954.4])
//                 ])
//
//         let aaYAxisLabels = AALabels()
//             .style(AAStyle(color: AAColor.gray, fontSize: 10, weight: .bold))
//             .formatter(#"""
// function () {
//         let yValue = this.value;
//         if (yValue == 0) {
//             return "0";
//         } else if (yValue == 2500) {
//             return "25%";
//         } else if (yValue == 5000) {
//             return "50%";
//         } else if (yValue == 7500) {
//             return "75%";
//         } else if (yValue == 10000) {
//             return "100%";
//         }
//     }
// """#)
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//         aaOptions.yAxis?
//             .opposite(true)
//             .tickWidth(2)
//             .lineWidth(1.5)//Y轴轴线颜色
//             .lineColor(AAColor.lightGray)//Y轴轴线颜色
//             .gridLineWidth(0)//Y轴网格线宽度
//             .tickPositions([0,2500,5000,7500,10000])
//             .labels(aaYAxisLabels)
//
//         return aaOptions
//     }

  static AAOptions customYAxisLabels2() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.line)//图形类型
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .dataLabelsEnabledSet(false)
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(8)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([229.9, 771.5, 1106.4, 1129.2, 6644.0, 1176.0, 8835.6, 148.5, 8816.4, 6694.1, 7795.6, 9954.4])
    ]);

    var aaYAxisLabels = AALabels()
        .styleSet(AAStyle.colorSizeWeight(AAColor.gray, 10, AAChartFontWeightType.bold))
        .formatterSet("""
  function () {
          let yValue = this.value;
          if (yValue == 0) {
              return "0";
          } else if (yValue == 2500) {
              return "25%";
          } else if (yValue == 5000) {
              return "50%";
          } else if (yValue == 7500) {
              return "75%";
          } else if (yValue == 10000) {
              return "100%";
          }
          """);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.yAxis
        ?.oppositeSet(true)
        .tickWidthSet(2)
        .lineWidthSet(1.5)//Y轴轴线颜色
        .lineColorSet(AAColor.lightGray)//Y轴轴线颜色
        .gridLineWidthSet(0)//Y轴网格线宽度
        .tickPositionsSet([0,2500,5000,7500,10000])
        .labelsSet(aaYAxisLabels);

    return aaOptions;
  }

  ////Stupid method
//     private func customAreaChartXAxisLabelsTextUnitSuffix1() -> AAOptions {
//         let gradientColorDic1 = AAGradientColor.linearGradient(
//             direction: .toTop,
//             startColor: "#7052f4",
//             endColor: "#00b0ff"
//         )
//
//         let aaChartModel = AAChartModel()
//             .chartType(.area)
//             .title("Custom X Axis Labels Text")
//             .subtitle("By Using JavaScript Formatter Function")
//             .markerSymbolStyle(.borderBlank)
//             .yAxisGridLineWidth(0)
//             .series([
//                 AASeriesElement()
//                     .lineWidth(1.5)
//                     .color("#00b0ff")
//                     .fillColor(gradientColorDic1)
//                     .name("2018")
//                     .data([
//                         1.51, 6.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
//                         4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 12.7, 0.94, 1.44,
//                         18.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46,
//                         3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.33, 4.68, 1.31, 1.10, 13.9, 1.10, 1.16, 1.67,
//                         2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3, 3.32, 3.07, 3.92, 3.05,
//                         2.18, 3.24,3.23, 3.15, 2.90, 1.81, 2.11, 2.43, 5.59, 3.09, 4.09, 6.14, 5.33, 6.05,
//                         5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.48,
//                     ])
//             ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//         aaOptions.xAxis?.labels?
//                 .formatter("""
//                            function () {
//                                const xValue = this.value;
//                                if (xValue%10 == 0) {
//                                    return xValue + " sec"
//                                } else {
//                                    return "";
//                                }
//                            }
// """
//                 )
//
//         return aaOptions
//     }

//Stupid method
static AAOptions customAreaChartXAxisLabelsTextUnitSuffix1() {
  var gradientColorDic1 = AAGradientColor.linearGradient1(
      AALinearGradientDirection.toTop,
       "#7052f4",
      "#00b0ff"
  );

  var aaChartModel = AAChartModel()
      .chartTypeSet(AAChartType.area)
      .titleSet("Custom X Axis Labels Text")
      .subtitleSet("By Using JavaScript Formatter Function")
      .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)
      .yAxisGridLineWidthSet(0)
      .seriesSet([
    AASeriesElement()
        .lineWidthSet(1.5)
        .colorSet("#00b0ff")
        .fillColorSet(gradientColorDic1)
        .nameSet("2018")
        .dataSet([
      1.51, 6.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
      4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 12.7, 0.94, 1.44,
      18.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10, 4.17, 3.85, 4.17, 3.46,
      3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.33, 4.68, 1.31, 1.10, 13.9, 1.10, 1.16, 1.67,
      2.64, 2.86, 3.00, 3.21, 4.14, 4.07, 3.68, 3.11, 3.41, 3, 3.32, 3.07, 3.92, 3.05,
      2.18, 3.24,3.23, 3.15, 2.90, 1.81, 2.11, 2.43, 5.59, 3.09, 4.09, 6.14, 5.33, 6.05,
      5.71, 6.22, 6.56, 4.75, 5.27, 6.02, 5.48,
    ])
  ]);

  var aaOptions = aaChartModel.aa_toAAOptions();
  aaOptions.xAxis?.labels
      ?.formatterSet("""
                 function () {
                     const xValue = this.value;
                     if (xValue%10 == 0) {
                         return xValue + " sec"
                     } else {
                         return "";
                     }
                 }
"""
      );

  return aaOptions;
}

////Smart method
//     private func customAreaChartXAxisLabelsTextUnitSuffix2() -> AAOptions {
//         let aaOptions = customAreaChartXAxisLabelsTextUnitSuffix1()
//         aaOptions.xAxis?
//                 .labels(AALabels()
//                 .step(10)
//                 .format("{value} sec"))
//
//         return aaOptions
//     }

//Smart method
static AAOptions customAreaChartXAxisLabelsTextUnitSuffix2() {
  var aaOptions = customAreaChartXAxisLabelsTextUnitSuffix1();
  aaOptions.xAxis
      ?.labelsSet(
  AALabels()
      .stepSet(10)
      .formatSet("{value} sec")
  );

  return aaOptions;
}

////https://github.com/AAChartModel/AAChartKit/issues/901
//     //https://github.com/AAChartModel/AAChartKit/issues/952
//     func configureTheAxesLabelsFormattersOfDoubleYAxesChart() -> AAOptions {
//         let aaChart = AAChart()
//             .backgroundColor(AAColor.white)
//
//         let aaTitle = AATitle()
//             .text("")
//
//         let aaXAxis = AAXAxis()
//             .visible(true)
//             .min(0)
//             .categories([
//                 "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
//                 "C#", "C++", "Perl", "R", "MATLAB", "SQL"
//             ])
//
//         let aaPlotOptions = AAPlotOptions()
//                 .series(AASeries()
//                         .marker(AAMarker()
//                                 .radius(7)//曲线连接点半径，默认是4
//                                 .symbol(.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
//                                 .fillColor(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
//                                 .lineWidth(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
//                                 .lineColor("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
//                         ))
//
//         let yAxis1 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(false)
//             .endOnTick(false)
//             .tickPositions([0, 50, 100, 150, 200])
//             .labels(AALabels()
//                         .enabled(true)
//                         .style(AAStyle()
//                                 .color("DodgerBlue"))
//                         .formatter("""
//             function () {
//                 let yValue = this.value;
//                 if (yValue >= 200) {
//                     return "极佳";
//                 } else if (yValue >= 150 && yValue < 200) {
//                     return "非常棒";
//                 } else if (yValue >= 100 && yValue < 150) {
//                     return "相当棒";
//                 } else if (yValue >= 50 && yValue < 100) {
//                     return "还不错";
//                 } else {
//                     return "一般";
//                 }
//             }
//             """))
//             .gridLineWidth(0)
//             .title(AATitle()
//                     .text("中文")
//                     .style(AAStyle(color: "DodgerBlue", fontSize: 14, weight: .bold)))
//
//         let yAxis2 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(false)
//             .endOnTick(false)
//             .tickPositions([0, 50, 100, 150, 200])
//             .labels(AALabels()
//                         .enabled(true)
//                         .style(AAStyle()
//                                 .color(AAColor.red))
//                         .formatter("""
//             function () {
//                 let yValue = this.value;
//                 if (yValue >= 200) {
//                     return "Awesome";
//                 } else if (yValue >= 150 && yValue < 200) {
//                     return "Great";
//                 } else if (yValue >= 100 && yValue < 150) {
//                     return "Very Good";
//                 } else if (yValue >= 50 && yValue < 100) {
//                     return "Not Bad";
//                 } else {
//                     return "Just So So";
//                 }
//             }
//            """))
//             .gridLineWidth(0)
//             .title(AATitle()
//                     .text("ENGLISH")
//                     .style(AAStyle(color: AAColor.red, fontSize: 14, weight: .bold)))
//             .opposite(true)
//
//         let aaTooltip = AATooltip()
//             .enabled(true)
//             .shared(true)
//
//         let seriesArr = [
//             AASeriesElement()
//                 .name("2020")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.deepSea)
//                 .yAxis(1)
//                 .data([
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0,
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4
//                 ]),
//             AASeriesElement()
//                 .name("2021")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.sanguine)
//                 .yAxis(0)
//                 .data([
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0
//                 ])
//         ]
//
//         let aaOptions = AAOptions()
//             .chart(aaChart)
//             .title(aaTitle)
//             .plotOptions(aaPlotOptions)
//             .xAxis(aaXAxis)
//             .yAxisArray([yAxis1,yAxis2])
//             .tooltip(aaTooltip)
//             .series(seriesArr)
//
//         return aaOptions
//     }

//https://github.com/AAChartModel/AAChartKit/issues/901
//https://github.com/AAChartModel/AAChartKit/issues/952
static AAOptions configureTheAxesLabelsFormattersOfDoubleYAxesChart() {
    var aaChart = AAChart()
        .backgroundColorSet(AAColor.white);
    
    var aaTitle = AATitle()
        .textSet("");
    
    var aaXAxis = AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet([
            "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
            "C#", "C++", "Perl", "R", "MATLAB", "SQL"
        ]);
    
    var aaPlotOptions = AAPlotOptions()
        .seriesSet(AASeries()
                   .markerSet(AAMarker()
                              .radiusSet(7)//曲线连接点半径，默认是4
                              .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                              .fillColorSet(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
                              .lineWidthSet(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
                              .lineColorSet("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
                   ));
    
    var yAxis1 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(false)
        // .endOnTickSet(false)
        .tickPositionsSet([0, 50, 100, 150, 200])
        .labelsSet(AALabels()
                   .enabledSet(true)
                   .styleSet(AAStyle()
                             .colorSet("DodgerBlue"))
                   .formatterSet("""
            function () {
                let yValue = this.value;
                if (yValue >= 200) {
                    return "极佳";
                } else if (yValue >= 150 && yValue < 200) {
                    return "非常棒";
                } else if (yValue >= 100 && yValue < 150) {
                    return "相当棒";
                } else if (yValue >= 50 && yValue < 100) {
                    return "还不错";
                } else {
                    return "一般";
                }
            }
            """))
        .gridLineWidthSet(0)
        .titleSet(AATitle()
                  .textSet("中文")
                  .styleSet(AAStyle.colorSizeWeight("DodgerBlue", 14, AAChartFontWeightType.bold)));

    var yAxis2 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(false)
        // .endOnTickSet(false)
        .tickPositionsSet([0, 50, 100, 150, 200])
        .labelsSet(AALabels()
                   .enabledSet(true)
                   .styleSet(AAStyle()
                             .colorSet(AAColor.red))
                   .formatterSet("""
            function () {
                let yValue = this.value;
                if (yValue >= 200) {
                    return "Awesome";
                } else if (yValue >= 150 && yValue < 200) {
                    return "Great";
                } else if (yValue >= 100 && yValue < 150) {
                    return "Very Good";
                } else if (yValue >= 50 && yValue < 100) {
                    return "Not Bad";
                } else {
                    return "Just So So";
                }
            }
            """))
        .gridLineWidthSet(0)
        .titleSet(AATitle()
                  .textSet("ENGLISH")
                  .styleSet(AAStyle.colorSizeWeight(AAColor.red, 14, AAChartFontWeightType.bold)))
        .oppositeSet(true);

    var aaTooltip = AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var seriesArr = [
        AASeriesElement()
            .nameSet("2020")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.deepSea)
            .yAxisSet(1)
            .dataSet([
                0, 71.5, 106.4, 129.2, 144.0, 176.0,
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4
            ]),
        AASeriesElement()
            .nameSet("2021")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.sanguine)
            .yAxisSet(0)
            .dataSet([
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
                0, 71.5, 106.4, 129.2, 144.0, 176.0
            ])
    ];

    var aaOptions = AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .plotOptionsSet(aaPlotOptions)
        .xAxisSet(aaXAxis)
        .yAxisArraySet([yAxis1,yAxis2])
        .tooltipSet(aaTooltip)
        .seriesSet(seriesArr);

    return aaOptions;
}

////https://github.com/AAChartModel/AAChartKit/issues/1324
//     func configureTheAxesLabelsFormattersOfDoubleYAxesChart2() -> AAOptions {
//         let aaChart = AAChart()
//             .backgroundColor(AAColor.white)
//
//         let aaTitle = AATitle()
//             .text("")
//
//         let aaXAxis = AAXAxis()
//             .visible(true)
//             .min(0)
//             .categories([
//                 "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
//                 "C#", "C++", "Perl", "R", "MATLAB", "SQL"
//             ])
//
//         let aaPlotOptions = AAPlotOptions()
//             .series(AASeries()
//                 .marker(AAMarker()
//                     .radius(7)//曲线连接点半径，默认是4
//                     .symbol(.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
//                     .fillColor(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
//                     .lineWidth(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
//                     .lineColor("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
//                 ))
//
//         let yAxis1 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(true)
//             .endOnTick(true)
//             .tickPositions([0, 50, 100, 150, 200, 250, 300])
//             .labels(AALabels()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .color("DodgerBlue"))
//                     .formatter("""
//                 function () {
//                     let yValue = this.value;
//                     let formattedYValue = (yValue / 1000).toFixed(3) + '千';
//                     return formattedYValue;
//                 }
//                """)
//             )
//             .gridLineWidth(0)
//             .title(AATitle()
//                 .text(#"以「千」为单位"#)
//                 .style(AAStyle(color: "DodgerBlue", fontSize: 14, weight: .bold)))
//
//         let yAxis2 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(true)
//             .endOnTick(true)
//             .tickPositions([0, 50, 100, 150, 200, 250, 300])
//             .labels(AALabels()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .color(AAColor.red))
//                     .formatter("""
//                 function () {
//                     let yValue = this.value;
//                     let formattedYValue = (yValue / 10000).toFixed(4) + '万';
//                     return formattedYValue;
//                 }
//                """)
//             )
//             .gridLineWidth(0)
//             .title(AATitle()
//                 .text("以『万』为单位")
//                 .style(AAStyle(color: AAColor.red, fontSize: 14, weight: .bold)))
//             .opposite(true)
//
//         let aaTooltip = AATooltip()
//             .enabled(true)
//             .shared(true)
//
//         let seriesArr = [
//             AASeriesElement()
//                 .name("2020")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.deepSea)
//                 .yAxis(1)
//                 .data([
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0,
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4
//                 ]),
//             AASeriesElement()
//                 .name("2021")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.sanguine)
//                 .yAxis(0)
//                 .data([
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0
//                 ])
//         ]
//
//         let aaOptions = AAOptions()
//             .chart(aaChart)
//             .title(aaTitle)
//             .plotOptions(aaPlotOptions)
//             .xAxis(aaXAxis)
//             .yAxisArray([yAxis1,yAxis2])
//             .tooltip(aaTooltip)
//             .series(seriesArr)
//
//         return aaOptions
//     }

  //https://github.com/AAChartModel/AAChartKit/issues/1324
  static AAOptions configureTheAxesLabelsFormattersOfDoubleYAxesChart2() {
    var aaChart = AAChart()
        .backgroundColorSet(AAColor.white);

    var aaTitle = AATitle()
        .textSet("");

    var aaXAxis = AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet([
            "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
            "C#", "C++", "Perl", "R", "MATLAB", "SQL"
        ]);

    var aaPlotOptions = AAPlotOptions()
        .seriesSet(AASeries()
            .markerSet(AAMarker()
                .radiusSet(7)//曲线连接点半径，默认是4
                .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                .fillColorSet(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
                .lineWidthSet(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
                .lineColorSet("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            ));

    var yAxis1 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(true)
        // .endOnTickSet(true)
        .tickPositionsSet([0, 50, 100, 150, 200, 250, 300])
        .labelsSet(AALabels()
            .enabledSet(true)
            .styleSet(AAStyle()
                .colorSet("DodgerBlue"))
                .formatterSet("""
            function () {
                let yValue = this.value;
                let formattedYValue = (yValue / 1000).toFixed(3) + '千';
                return formattedYValue;
            }
           """)
        )
        .gridLineWidthSet(0)
        .titleSet(AATitle()
            .textSet("以「千」为单位")
        .styleSet(AAStyle.colorSizeWeight(AAColor.red, 14, AAChartFontWeightType.bold)));

    var yAxis2 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(true)
        // .endOnTickSet(true)
        .tickPositionsSet([0, 50, 100, 150, 200, 250, 300])
        .labelsSet(AALabels()
            .enabledSet(true)
            .styleSet(AAStyle()
                .colorSet(AAColor.red))
                .formatterSet("""
            function () {
                let yValue = this.value;
                let formattedYValue = (yValue / 10000).toFixed(4) + '万';
                return formattedYValue;
            }
           """)
        )
        .gridLineWidthSet(0)
        .titleSet(AATitle()
            .textSet("以『万』为单位")
            .styleSet(AAStyle.colorSizeWeight(AAColor.red, 14, AAChartFontWeightType.bold)))
        .oppositeSet(true);

    var aaTooltip = AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var seriesArr = [
        AASeriesElement()
            .nameSet("2020")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.deepSea)
            .yAxisSet(1)
            .dataSet([
                0, 71.5, 106.4, 129.2, 144.0, 176.0,
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4
            ]),
        AASeriesElement()
            .nameSet("2021")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.sanguine)
            .yAxisSet(0)
            .dataSet([
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
                0, 71.5, 106.4, 129.2, 144.0, 176.0
            ])
    ];

    var aaOptions = AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .plotOptionsSet(aaPlotOptions)
        .xAxisSet(aaXAxis)
        .yAxisArraySet([yAxis1,yAxis2])
        .tooltipSet(aaTooltip)
        .seriesSet(seriesArr);

    return aaOptions;
}

////https://github.com/AAChartModel/AAChartKit/issues/1324
//     //https://github.com/AAChartModel/AAChartKit/issues/1330
//     func configureTheAxesLabelsFormattersOfDoubleYAxesChart3() -> AAOptions {
//         let aaChart = AAChart()
//             .backgroundColor(AAColor.white)
//
//         let aaTitle = AATitle()
//             .text("")
//
//         let aaXAxis = AAXAxis()
//             .visible(true)
//             .min(0)
//             .categories([
//                 "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
//                 "C#", "C++", "Perl", "R", "MATLAB", "SQL"
//             ])
//
//         let aaPlotOptions = AAPlotOptions()
//             .series(AASeries()
//                 .marker(AAMarker()
//                     .radius(7)//曲线连接点半径，默认是4
//                     .symbol(.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
//                     .fillColor(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
//                     .lineWidth(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
//                     .lineColor("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
//                 ))
//
//         let yAxis1 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(true)
//             .endOnTick(true)
//             .tickPositions([0, 50, 100, 150, 200, 250, 300])
//             .labels(AALabels()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .color("DodgerBlue"))
//                     .formatter("""
//                 function () {
//                     let yValue = this.value;
//                     let unitStr = '千';
//                     if (yValue == 0) {
//                         unitStr = '';
//                     }
//                     let formattedYValue = (yValue / 1000).toFixed(3) + unitStr;
//                     return formattedYValue;
//                 }
//                """)//Y轴文字数值为 0 的时候, 不显示单位
//             )
//             .gridLineWidth(0)
//             .title(AATitle()
//                 .text(#"以「千」为单位"#)
//                 .style(AAStyle(color: "DodgerBlue", fontSize: 14, weight: .bold)))
//
//         let yAxis2 = AAYAxis()
//             .visible(true)
//             .lineWidth(1)
//             .startOnTick(true)
//             .endOnTick(true)
//             .tickPositions([0, 50, 100, 150, 200, 250, 300])
//             .labels(AALabels()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .color(AAColor.red))
//                     .formatter("""
//                 function () {
//                     let yValue = this.value;
//                     let unitStr = '万';
//                     if (yValue == 0) {
//                         unitStr = '';
//                     }
//                     let formattedYValue = (yValue / 10000).toFixed(4) + unitStr;
//                     return formattedYValue;
//                 }
//                """)//Y轴文字数值为 0 的时候, 不显示单位
//             )
//             .gridLineWidth(0)
//             .title(AATitle()
//                 .text("以『万』为单位")
//                 .style(AAStyle(color: AAColor.red, fontSize: 14, weight: .bold)))
//             .opposite(true)
//
//         let aaTooltip = AATooltip()
//             .enabled(true)
//             .shared(true)
//
//         let seriesArr = [
//             AASeriesElement()
//                 .name("2020")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.deepSea)
//                 .yAxis(1)
//                 .data([
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0,
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4
//                 ]),
//             AASeriesElement()
//                 .name("2021")
//                 .type(.spline)
//                 .lineWidth(7)
//                 .color(AAGradientColor.sanguine)
//                 .yAxis(0)
//                 .data([
//                     135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
//                     0, 71.5, 106.4, 129.2, 144.0, 176.0
//                 ])
//         ]
//
//         let aaOptions = AAOptions()
//             .chart(aaChart)
//             .title(aaTitle)
//             .plotOptions(aaPlotOptions)
//             .xAxis(aaXAxis)
//             .yAxisArray([yAxis1,yAxis2])
//             .tooltip(aaTooltip)
//             .series(seriesArr)
//
//         return aaOptions
//     }

  //https://github.com/AAChartModel/AAChartKit/issues/1324
  //https://github.com/AAChartModel/AAChartKit/issues/1330
static AAOptions configureTheAxesLabelsFormattersOfDoubleYAxesChart3() {
    var aaChart = AAChart()
        .backgroundColorSet(AAColor.white);

    var aaTitle = AATitle()
        .textSet("");

    var aaXAxis = AAXAxis()
        .visibleSet(true)
        .minSet(0)
        .categoriesSet([
            "Java", "Swift", "Python", "Ruby", "PHP", "Go","C",
            "C#", "C++", "Perl", "R", "MATLAB", "SQL"
        ]);

    var aaPlotOptions = AAPlotOptions()
        .seriesSet(AASeries()
            .markerSet(AAMarker()
                .radiusSet(7)//曲线连接点半径，默认是4
                .symbolSet(AAChartSymbolType.circle)//曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
                .fillColorSet(AAColor.white)//点的填充色(用来设置折线连接点的填充色)
                .lineWidthSet(3)//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
                .lineColorSet("")//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
            ));

    var yAxis1 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(true)
        // .endOnTickSet(true)
        .tickPositionsSet([0, 50, 100, 150, 200, 250, 300])
        .labelsSet(AALabels()
            .enabledSet(true)
            .styleSet(AAStyle()
                .colorSet("DodgerBlue"))
                .formatterSet("""
            function () {
                let yValue = this.value;
                let unitStr = '千';
                if (yValue == 0) {
                    unitStr = '';
                }
                let formattedYValue = (yValue / 1000).toFixed(3) + unitStr;
                return formattedYValue;
            }
           """)//Y轴文字数值为 0 的时候, 不显示单位
        )
        .gridLineWidthSet(0)
        .titleSet(
        AATitle()
            .textSet("以「千」为单位")
            .styleSet(AAStyle.colorSizeWeight(AAColor.red, 14, AAChartFontWeightType.bold)));

    var yAxis2 = AAYAxis()
        .visibleSet(true)
        .lineWidthSet(1)
        .startOnTickSet(true)
        // .endOnTickSet(true)
        .tickPositionsSet([0, 50, 100, 150, 200, 250, 300])
        .labelsSet(AALabels()
            .enabledSet(true)
            .styleSet(AAStyle()
                .colorSet(AAColor.red))
                .formatterSet("""
            function () {
                let yValue = this.value;
                let unitStr = '万';
                if (yValue == 0) {
                    unitStr = '';
                }
                let formattedYValue = (yValue / 10000).toFixed(4) + unitStr;
                return formattedYValue;
            }
           """)//Y轴文字数值为 0 的时候, 不显示单位
        )
        .gridLineWidthSet(0)
        .titleSet(
        AATitle()
            .textSet("以『万』为单位")
            .styleSet(AAStyle.colorSizeWeight(AAColor.red, 14, AAChartFontWeightType.bold)))
        .oppositeSet(true);

    var aaTooltip = AATooltip()
        .enabledSet(true)
        .sharedSet(true);

    var seriesArr = [
        AASeriesElement()
            .nameSet("2020")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.deepSea)
            .yAxisSet(1)
            .dataSet([
                0, 71.5, 106.4, 129.2, 144.0, 176.0,
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4
            ]),
        AASeriesElement()
            .nameSet("2021")
            .typeSet(AAChartType.spline)
            .lineWidthSet(7)
            .colorSet(AAGradientColor.sanguine)
            .yAxisSet(0)
            .dataSet([
                135.6, 148.5, 216.4, 194.1, 95.6, 54.4,
                0, 71.5, 106.4, 129.2, 144.0, 176.0
            ])
    ];

    var aaOptions = AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .plotOptionsSet(aaPlotOptions)
        .xAxisSet(aaXAxis)
        .yAxisArraySet([yAxis1,yAxis2])
        .tooltipSet(aaTooltip)
        .seriesSet(seriesArr);

    return aaOptions;

    
}

}