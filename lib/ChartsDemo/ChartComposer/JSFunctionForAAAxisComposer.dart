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
import '../../AAChartsLib/AAOptionsModel/AADataLabels.dart';
import '../../AAChartsLib/AAOptionsModel/AAItemStyle.dart';
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

////https://github.com/AAChartModel/AAChartKit/issues/1217
//     func customColumnChartXAxisLabelsTextByInterceptTheFirstFourCharacters() -> AAOptions {
//         let aaChartModel = AAChartModel()
//             .chartType(.bar)//图表类型
//             .title("春江花月夜")//图表主标题
//             .subtitle("张若虚")//图表副标题
//             .xAxisReversed(true)
//             .xAxisLabelsStyle(AAStyle(color: AAColor.black))
//             .legendEnabled(false)
//             .categories([
//                 "春江潮水连海平", "海上明月共潮生",
//                 "滟滟随波千万里", "何处春江无月明",
//                 "江流宛转绕芳甸", "月照花林皆似霰",
//                 "空里流霜不觉飞", "汀上白沙看不见",
//                 "江天一色无纤尘", "皎皎空中孤月轮",
//                 "江畔何人初见月", "江月何年初照人",
//                 "人生代代无穷已", "江月年年望相似",
//                 "不知江月待何人", "但见长江送流水",
//                 "白云一片去悠悠", "青枫浦上不胜愁",
//                 "谁家今夜扁舟子", "何处相思明月楼",
//                 "可怜楼上月裴回", "应照离人妆镜台",
//                 "玉户帘中卷不去", "捣衣砧上拂还来",
//                 "此时相望不相闻", "愿逐月华流照君",
//                 "鸿雁长飞光不度", "鱼龙潜跃水成文",
//                 "昨夜闲潭梦落花", "可怜春半不还家",
//                 "江水流春去欲尽", "江潭落月复西斜",
//                 "斜月沉沉藏海雾", "碣石潇湘无限路",
//                 "不知乘月几人归", "落月摇情满江树",
//             ])
//             .series([
//                 AASeriesElement()
//                     .lineWidth(1.5)
//                     .color(AAGradientColor.linearGradient(
//                         direction: .toTop,
//                         startColor: "#7052f4",
//                         endColor: "#00b0ff"
//                     ))
//                     .name("2018")
//                     .data([
//                         1.51, 3.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
//                         4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 2.7, 0.94, 1.44,
//                         3.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90,
//                     ])
//             ]);
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//         aaOptions.xAxis?.labels?
//             .formatter("""
//         function () {
//             let xAxisCategory = this.value;
//             if (xAxisCategory.length > 4) {
//                 return xAxisCategory.substr(0, 4);
//             } else {
//                 return xAxisCategory;
//             }
//         }
//         """)
//
//         return aaOptions
//     }

//https://github.com/AAChartModel/AAChartKit/issues/1217
static customColumnChartXAxisLabelsTextByInterceptTheFirstFourCharacters() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.bar)//图表类型
        .titleSet("春江花月夜")//图表主标题
        .subtitleSet("张若虚")//图表副标题
        .xAxisReversedSet(true)
        .xAxisLabelsStyleSet(AAStyle.colorStr(AAColor.black))
        .legendEnabledSet(false)
        .categoriesSet([
        "春江潮水连海平", "海上明月共潮生",
        "滟滟随波千万里", "何处春江无月明",
        "江流宛转绕芳甸", "月照花林皆似霰",
        "空里流霜不觉飞", "汀上白沙看不见",
        "江天一色无纤尘", "皎皎空中孤月轮",
        "江畔何人初见月", "江月何年初照人",
        "人生代代无穷已", "江月年年望相似",
        "不知江月待何人", "但见长江送流水",
        "白云一片去悠悠", "青枫浦上不胜愁",
        "谁家今夜扁舟子", "何处相思明月楼",
        "可怜楼上月裴回", "应照离人妆镜台",
        "玉户帘中卷不去", "捣衣砧上拂还来",
        "此时相望不相闻", "愿逐月华流照君",
        "鸿雁长飞光不度", "鱼龙潜跃水成文",
        "昨夜闲潭梦落花", "可怜春半不还家",
        "江水流春去欲尽", "江潭落月复西斜",
        "斜月沉沉藏海雾", "碣石潇湘无限路",
        "不知乘月几人归", "落月摇情满江树",
    ])
        .seriesSet([
        AASeriesElement()
          .lineWidthSet(1.5)
          .colorSet(AAGradientColor.linearGradient1(
            AALinearGradientDirection.toTop,
            "#7052f4",
            "#00b0ff"
          ))
          .nameSet("2018")
          .dataSet([
            1.51, 3.7, 0.94, 1.44, 1.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90, 4.61, 4.10,
            4.17, 3.85, 4.17, 3.46, 3.46, 3.55, 3.50, 4.13, 2.58, 2.28,1.51, 2.7, 0.94, 1.44,
            3.6, 1.63, 1.56, 1.91, 2.45, 3.87, 3.24, 4.90,
          ])
    ]);

    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.xAxis?.labels
        ?.formatterSet("""
    function () {
        let xAxisCategory = this.value;
        if (xAxisCategory.length > 4) {
            return xAxisCategory.substr(0, 4);
        } else {
            return xAxisCategory;
        }
    }
    """);

    return aaOptions;

}

////https://github.com/AAChartModel/AAChartKit/issues/852 自定义蜘蛛🕷图样式
//     private func customSpiderChartStyle() -> AAOptions {
//         let categoryArr = [
//             "周转天数(天)",
//             "订单满足率",
//             "订单履约时效",
//             "动销率",
//             "畅销商品缺货率",
//             "高库存金额占比",
//             "不动销金额占比",
//             "停采金额占比",
//         ]
//         let categoryJSArrStr = categoryArr.aa_toJSArray()
//
//         let xAxisLabelsFormatter = """
//                                    function () {
//                                    return \(categoryJSArrStr)[this.value];
//                                    }
//                                    """;
//
//         let aaChartModel = AAChartModel()
//                 .chartType(.line)//图表类型
//                 .title("健康体检表")//图表主标题
//                 .colorsTheme(["#fe117c", "#ffc069",])//设置主体颜色数组
//                 .yAxisLineWidth(0)
//                 .yAxisGridLineWidth(1)//y轴横向分割线宽度为0(即是隐藏分割线)
//                 .yAxisTickPositions([0, 5, 10, 15, 20, 25, 30, 35])
//                 .markerRadius(5)
//                 .markerSymbol(.circle)
//                 .polar(true)
//                 .series([
//                     AASeriesElement()
//                             .name("本月得分")
//                             .data([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5,]),
//                     AASeriesElement()
//                             .name("上月得分")
//                             .data([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, ]),
//                 ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//
//         aaOptions.chart?
//                 .marginLeft(80)
//                 .marginRight(80)
//
//         aaOptions.xAxis?
//                 .lineWidth(0)//避免多边形外环之外有额外套了一层无用的外环
//                 .labels?
//                 .style(AAStyle(color: AAColor.black))
//                 .formatter(xAxisLabelsFormatter)
//
//         aaOptions.yAxis?
//                 .gridLineInterpolation("polygon")//设置蜘蛛网🕸图表的网线为多边形
//                 .labels(AALabels()
//                         .style(AAStyle()
//                                 .color(AAColor.black)))
//
//         //设定图例项的CSS样式。只支持有关文本的CSS样式设定。
//         /* 默认是：{
//          "color": "#333333",
//          "cursor": "pointer",
//          "fontSize": "12px",
//          "fontWeight": "bold"
//          }
//          */
//         let aaItemStyle = AAItemStyle()
//                 .color(AAColor.gray)//字体颜色
//                 .cursor("pointer")//(在移动端这个属性没什么意义,其实不用设置)指定鼠标滑过数据列时鼠标的形状。当绑定了数据列点击事件时，可以将此参数设置为 "pointer"，用来提醒用户改数据列是可以点击的。
//                 .fontSize(14)//字体大小
//                 .fontWeight(.thin)//字体为细体字
//
//
//         aaOptions.legend?
//                 .enabled(true)
//                 .align(.center)//设置图例位于水平方向上的右侧
//                 .layout(.horizontal)//设置图例排列方式为垂直排布
//                 .verticalAlign(.top)//设置图例位于竖直方向上的顶部
//                 .itemStyle(aaItemStyle)
//
//
//         return aaOptions
//     }

  //https://github.com/AAChartModel/AAChartKit/issues/852 自定义蜘蛛🕷图样式
  static AAOptions customSpiderChartStyle() {
    var categoryArr = [
      "周转天数(天)",
      "订单满足率",
      "订单履约时效",
      "动销率",
      "畅销商品缺货率",
      "高库存金额占比",
      "不动销金额占比",
      "停采金额占比",
    ];

    // var categoryJSArrStr = categoryArr.aa_toJSArray();
    var categoryJSArrStr = javaScriptArrayStringWithJavaArray(categoryArr);

    var xAxisLabelsFormatter = """
    function () {
    return $categoryJSArrStr[this.value];
    }
    """;

    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.line)//图表类型
        .titleSet("健康体检表")//图表主标题
        .colorsThemeSet(["#fe117c", "#ffc069",])//设置主体颜色数组
        .yAxisLineWidthSet(0)
        .yAxisGridLineWidthSet(1)//y轴横向分割线宽度为0(即是隐藏分割线)
        // .yAxisTickPositionsSet([0, 5, 10, 15, 20, 25, 30, 35])
        .markerRadiusSet(5)
        .markerSymbolSet(AAChartSymbolType.circle)
        .polarSet(true)
        .seriesSet([
          AASeriesElement()
              .nameSet("本月得分")
              .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5,]),
          AASeriesElement()
              .nameSet("上月得分")
              .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, ]),
        ]);

    var aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.chart
        ?.marginLeftSet(80)
        .marginRightSet(80);

    aaOptions.xAxis
        ?.lineWidthSet(0)//避免多边形外环之外有额外套了一层无用的外环
        .labels
        ?.styleSet(AAStyle.colorStr(AAColor.black))
        .formatterSet(xAxisLabelsFormatter);

    aaOptions.yAxis
        ?.gridLineInterpolationSet("polygon")//设置蜘蛛网🕸图表的网线为多边形
        .labelsSet(AALabels()
            .styleSet(AAStyle()
                .colorSet(AAColor.black)));

    //设定图例项的CSS样式。只支持有关文本的CSS样式设定。
    /* 默认是：{
     "color": "#333333",
     "cursor": "pointer",
     "fontSize": "12px",
     "fontWeight": "bold"
     }
     */

    var aaItemStyle = AAItemStyle()
        .colorSet(AAColor.gray)//字体颜色
        .cursorSet("pointer")//(在移动端这个属性没什么意义,其实不用设置)指定鼠标滑过数据列时鼠标的形状。当绑定了数据列点击事件时，可以将此参数设置为 "pointer"，用来提醒用户改数据列是可以点击的。
        .fontSizeSet(14)//字体大小
        .fontWeightSet(AAChartFontWeightType.thin);//字体为细体字


    aaOptions.legend
        ?.enabledSet(true)
        .alignSet(AAChartAlignType.center)//设置图例位于水平方向上的右侧
        .layoutSet(AAChartLayoutType.horizontal)//设置图例排列方式为垂直排布
        .verticalAlignSet(AAChartVerticalAlignType.top)//设置图例位于竖直方向上的顶部
        .itemStyleSet(aaItemStyle);

    return aaOptions;


}

//// Refer to the issue https://github.com/AAChartModel/AAChartKit/issues/589
//     private func customizeEveryDataLabelSinglelyByDataLabelsFormatter() -> AAOptions  {
//         let aaChartModel = AAChartModel()
//                 .chartType(.areaspline)//图表类型
//                 .dataLabelsEnabled(true)
//                 .tooltipEnabled(false)
//                 .colorsTheme([AAGradientColor.fizzyPeach])
//                 .markerRadius(0)
//                 .legendEnabled(false)
//                 .categories(["美国🇺🇸","欧洲🇪🇺","中国🇨🇳","日本🇯🇵","韩国🇰🇷","越南🇻🇳","中国香港🇭🇰",])
//                 .series([
//                     AASeriesElement()
//                             .data([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2])
//                 ])
//
//         let aaOptions = aaChartModel.aa_toAAOptions()
//         aaOptions.yAxis?.gridLineDashStyle = AAChartLineDashStyleType.longDash.rawValue//设置Y轴的网格线样式为 AAChartLineDashStyleTypeLongDash
//
//         aaOptions.tooltip?.shared = true
//
//
//         let unitArr = ["美元", "欧元", "人民币", "日元", "韩元", "越南盾", "港币", ]
//         let unitJSArrStr = unitArr.aa_toJSArray()
//         //单组 series 图表, 获取选中的点的索引是 this.point.index ,多组并且共享提示框,则是this.points[0].index
//         let dataLabelsFormatter = """
//                                   function () {
//                                   return this.y + \(unitJSArrStr)[this.point.index];
//                                   }
//                                   """
//
//         let aaDataLabels = AADataLabels()
//                 .style(AAStyle(color: AAColor.red, fontSize: 10, weight: .bold))
//                 .formatter(dataLabelsFormatter)
//                 .backgroundColor(AAColor.white)// white color
//                 .borderColor(AAColor.red)// red color
//                 .borderRadius(1.5)
//                 .borderWidth(1.3)
//                 .x(3).y(-20)
//                 .verticalAlign(.middle)
//
//         aaOptions.plotOptions?.series?.dataLabels = aaDataLabels
//
//         return aaOptions
//     }
  
  // Refer to the issue https://github.com/AAChartModel/AAChartKit/issues/589
  static AAOptions customizeEveryDataLabelSinglelyByDataLabelsFormatter() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图表类型
        .dataLabelsEnabledSet(true)
        .tooltipEnabledSet(false)
        .colorsThemeSet([AAGradientColor.fizzyPeach])
        .markerRadiusSet(0)
        .legendEnabledSet(false)
        .categoriesSet(["美国🇺🇸", "欧洲🇪🇺", "中国🇨🇳", "日本🇯🇵", "韩国🇰🇷", "越南🇻🇳", "中国香港🇭🇰", ])
        .seriesSet([
      AASeriesElement()
          .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2])
    ]);
    
    var aaOptions = aaChartModel.aa_toAAOptions();
    aaOptions.yAxis?.gridLineDashStyle = AAChartLineDashStyleType.longDash;//设置Y轴的网格线样式为 AAChartLineDashStyleTypeLongDash
    
    aaOptions.tooltip?.shared = true;
    
    var unitArr = ["美元", "欧元", "人民币", "日元", "韩元", "越南盾", "港币", ];
    var unitJSArrStr = javaScriptArrayStringWithJavaArray(unitArr);
    //单组 series 图表, 获取选中的点的索引是 this.point.index ,多组并且共享提示框,则是this.points[0].index
    var dataLabelsFormatter = """
                              function () {
                              return this.y + \(unitJSArrStr)[this.point.index];
                              }
                              """;
    
    var aaDataLabels = AADataLabels()
        .styleSet(AAStyle.colorSizeWeight(AAColor.red, 10, AAChartFontWeightType.bold))
        // .formatterSet(dataLabelsFormatter)
        .backgroundColorSet(AAColor.white)// white color
        .borderColorSet(AAColor.red)// red color
        .borderRadiusSet(1.5)
        .borderWidthSet(1.3)
        .xSet(3).ySet(-20)
        .verticalAlignSet(AAChartVerticalAlignType.middle);

    aaOptions.plotOptions?.series?.dataLabels = aaDataLabels;

    return aaOptions;
  }

//  private fun javaScriptArrayStringWithJavaArray(javaArray: Array<String>): String {
//         val originalJsArrStr = StringBuilder()
//         for (element: Any in javaArray) {
//             originalJsArrStr.append("'").append(element.toString()).append("',")
//         }
//         return "[$originalJsArrStr]"
//     }

static String javaScriptArrayStringWithJavaArray(List<String> javaArray) {
  var originalJsArrStr = StringBuffer();
  for (var element in javaArray) {
    originalJsArrStr.write("'$element',");
  }
  return "[${originalJsArrStr.toString()}]";
}
}