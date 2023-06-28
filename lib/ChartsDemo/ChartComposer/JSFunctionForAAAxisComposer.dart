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

}