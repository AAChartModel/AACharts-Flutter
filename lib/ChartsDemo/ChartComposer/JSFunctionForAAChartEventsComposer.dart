import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';

import '../../AAChartsLib/AAChartCreator/AASeriesElement.dart';
import '../../AAChartsLib/AAOptionsModel/AAChart.dart';

class JSFunctionForAAChartEventsComposer {
  ////https://github.com/AAChartModel/AAChartKit-Swift/issues/345
  //     private func setCrosshairAndTooltipToTheDefaultPositionAfterLoadingChart() -> AAOptions {
  //         let aaChartModel = AAChartModel()
  //             .chartType(.areaspline)//图形类型
  //             .markerSymbolStyle(.borderBlank)//折线连接点样式为外边缘空白
  //             .dataLabelsEnabled(false)
  //             .colorsTheme(["#04d69f","#1e90ff","#ef476f","#ffd066",])
  //             .stacking(.normal)
  //             .markerRadius(0)
  //             .series([
  //                 AASeriesElement()
  //                     .name("Tokyo Hot")
  //                     .lineWidth(5.0)
  //                     .fillOpacity(0.4)
  //                     .data([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36])
  //                 ,
  //                 AASeriesElement()
  //                     .name("Berlin Hot")
  //                     .lineWidth(5.0)
  //                     .fillOpacity(0.4)
  //                     .data([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67])
  //                 ,
  //                 AASeriesElement()
  //                     .name("New York Hot")
  //                     .lineWidth(5.0)
  //                     .fillOpacity(0.4)
  //                     .data([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64])
  //                 ,
  //                 AASeriesElement()
  //                     .name("London Hot")
  //                     .lineWidth(5.0)
  //                     .fillOpacity(0.4)
  //                     .data([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53])
  //                 ,
  //             ])
  //
  //         let aaOptions = aaChartModel.aa_toAAOptions()
  //
  //         aaOptions.tooltip?
  //             .style(AAStyle(color: AAColor.white))
  //             .backgroundColor("#050505")
  //             .borderColor("#050505")
  //
  //         aaOptions.xAxis?.crosshair(
  //             AACrosshair()
  //                 .color(AAColor.darkGray)
  //                 .dashStyle(.longDashDotDot)
  //                 .width(2)
  //         )
  //
  //         //默认选中的位置索引
  //         let defaultSelectedIndex = 5
  //
  //         //https://api.highcharts.com/highcharts/chart.events.load
  //         //https://www.highcharts.com/forum/viewtopic.php?t=36508
  //         aaOptions.chart?.events(
  //             AAChartEvents()
  //                 .load("""
  //         function() {
  //             let points = [],
  //                 chart = this,
  //                 series = chart.series,
  //                 length = series.length;
  //
  //             for (let i = 0; i < length; i++) {
  //               let pointElement = series[i].data[\(defaultSelectedIndex)];
  //               points.push(pointElement);
  //             }
  //             chart.xAxis[0].drawCrosshair(null, points[0]);
  //             chart.tooltip.refresh(points);
  //           }
  // """))
  //
  //         return aaOptions
  //     }

  //https://github.com/AAChartModel/AAChartKit-Swift/issues/345
  static AAOptions setCrosshairAndTooltipToTheDefaultPositionAfterLoadingChart() {
    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.areaspline)//图形类型
        .markerSymbolStyleSet(AAChartSymbolStyleType.borderBlank)//折线连接点样式为外边缘空白
        .dataLabelsEnabledSet(false)
        .colorsThemeSet(["#04d69f","#1e90ff","#ef476f","#ffd066",])
        .stackingSet(AAChartStackingType.normal)
        .markerRadiusSet(0)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.45, 0.43, 0.50, 0.55, 0.58, 0.62, 0.83, 0.39, 0.56, 0.67, 0.50, 0.34, 0.50, 0.67, 0.58, 0.29, 0.46, 0.23, 0.47, 0.46, 0.38, 0.56, 0.48, 0.36])
      ,
      AASeriesElement()
          .nameSet("Berlin Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.38, 0.31, 0.32, 0.32, 0.64, 0.66, 0.86, 0.47, 0.52, 0.75, 0.52, 0.56, 0.54, 0.60, 0.46, 0.63, 0.54, 0.51, 0.58, 0.64, 0.60, 0.45, 0.36, 0.67])
      ,
      AASeriesElement()
          .nameSet("New York Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.46, 0.32, 0.53, 0.58, 0.86, 0.68, 0.85, 0.73, 0.69, 0.71, 0.91, 0.74, 0.60, 0.50, 0.39, 0.67, 0.55, 0.49, 0.65, 0.45, 0.64, 0.47, 0.63, 0.64])
      ,
      AASeriesElement()
          .nameSet("London Hot")
          .lineWidthSet(5.0)
          .fillOpacitySet(0.4)
          .dataSet([0.60, 0.51, 0.52, 0.53, 0.64, 0.84, 0.65, 0.68, 0.63, 0.47, 0.72, 0.60, 0.65, 0.74, 0.66, 0.65, 0.71, 0.59, 0.65, 0.77, 0.52, 0.53, 0.58, 0.53])
      ,
    ]);

    AAOptions aaOptions = aaChartModel.aa_toAAOptions();

    aaOptions.tooltip
        ?.styleSet(AAStyle.colorStr("#050505"))
        .backgroundColorSet("#FFFFFF")
        .borderColorSet("#050505");

    aaOptions.xAxis?.crosshairSet(
        AACrosshair()
            .colorSet(AAColor.darkGray)
            .dashStyleSet(AAChartLineDashStyleType.longDashDotDot)
            .widthSet(2)
    );

    //默认选中的位置索引
    int defaultSelectedIndex = 5;

    //https://api.highcharts.com/highcharts/chart.events.load
    //https://www.highcharts.com/forum/viewtopic.php?t=36508
    aaOptions.chart?.eventsSet(
        AAChartEvents()
            .loadSet("""
        function() {
            let points = [],
                chart = this,
                series = chart.series,
                length = series.length;
    
            for (let i = 0; i < length; i++) {
              let pointElement = series[i].data[$defaultSelectedIndex];
              points.push(pointElement);
            }
            chart.xAxis[0].drawCrosshair(null, points[0]);
            chart.tooltip.refresh(points);
          }
    """));

    return aaOptions;


  }

}