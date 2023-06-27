import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AACrosshair.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotBandsElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAXAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';

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

  //    private func generalDrawingChart() -> AAOptions {
//         AAOptions()
//             .chart(AAChart()
//                 .backgroundColor(AAColor.white)
//                 .events(AAChartEvents()
//                     .load("")))
//             .title(AATitle()
//                 .text("Highcharts export server overview")
//                 .style(AAStyle.init(color: AAColor.black)))
//     }

 static AAOptions generalDrawingChart() {
   return AAOptions()
       .chartSet(
       AAChart()
           .backgroundColorSet(AAColor.white)
           .eventsSet(
           AAChartEvents()
               .loadSet("""
            function () {
                var ren = this.renderer,
                    colors = Highcharts.getOptions().colors,
                    rightArrow = ['M', 0, 0, 'L', 100, 0, 'L', 95, 5, 'M', 100, 0, 'L', 95, -5],
                    leftArrow = ['M', 100, 0, 'L', 0, 0, 'L', 5, 5, 'M', 0, 0, 'L', 5, -5];


                ren.path(['M', 120, 40, 'L', 120, 330])
                    .attr({
                        'stroke-width': 2,
                        stroke: 'silver',
                        dashstyle: 'dash'
                    })
                    .add();

                ren.path(['M', 420, 40, 'L', 420, 330])
                    .attr({
                        'stroke-width': 2,
                        stroke: 'silver',
                        dashstyle: 'dash'
                    })
                    .add();

                ren.label('Web client', 20, 40)
                    .css({
                        fontWeight: 'bold'
                    })
                    .add();
                ren.label('Web service / CLI', 220, 40)
                    .css({
                        fontWeight: 'bold'
                    })
                    .add();
                ren.label('Command line client', 440, 40)
                    .css({
                        fontWeight: 'bold'
                    })
                    .add();

                ren.label('SaaS client<br/>(browser or<br/>script)', 10, 82)
                    .attr({
                        fill: colors[0],
                        stroke: 'white',
                        'stroke-width': 2,
                        padding: 5,
                        r: 5
                    })
                    .css({
                        color: 'white'
                    })
                    .add()
                    .shadow(true);

                ren.path(rightArrow)
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[3]
                    })
                    .translate(95, 95)
                    .add();

                ren.label('POST options in JSON', 90, 75)
                    .css({
                        fontSize: '10px',
                        color: colors[3]
                    })
                    .add();

                ren.label('PhantomJS', 210, 82)
                    .attr({
                        r: 5,
                        width: 100,
                        fill: colors[1]
                    })
                    .css({
                        color: 'white',
                        fontWeight: 'bold'
                    })
                    .add();

                ren.path(['M', 250, 110, 'L', 250, 185, 'L', 245, 180, 'M', 250, 185, 'L', 255, 180])
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[3]
                    })
                    .add();

                ren.label('SVG', 255, 120)
                    .css({
                        color: colors[3],
                        fontSize: '10px'
                    })
                    .add();

                ren.label('Batik', 210, 200)
                    .attr({
                        r: 5,
                        width: 100,
                        fill: colors[1]
                    })
                    .css({
                        color: 'white',
                        fontWeight: 'bold'
                    })
                    .add();

                ren
                    .path([
                        'M', 235, 185,
                        'L', 235, 155,
                        'C', 235, 130, 235, 130, 215, 130,
                        'L', 95, 130,
                        'L', 100, 125,
                        'M', 95, 130,
                        'L', 100, 135
                    ])
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[3]
                    })
                    .add();

                ren.label('Rasterized image', 100, 110)
                    .css({
                        color: colors[3],
                        fontSize: '10px'
                    })
                    .add();

                ren.label('Browser<br/>running<br/>Highcharts', 10, 180)
                    .attr({
                        fill: colors[0],
                        stroke: 'white',
                        'stroke-width': 2,
                        padding: 5,
                        r: 5
                    })
                    .css({
                        color: 'white',
                        width: '100px'
                    })
                    .add()
                    .shadow(true);


                ren.path(rightArrow)
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[1]
                    })
                    .translate(95, 205)
                    .add();

                ren.label('POST SVG', 110, 185)
                    .css({
                        color: colors[1],
                        fontSize: '10px'
                    })
                    .add();

                ren.path(leftArrow)
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[1]
                    })
                    .translate(95, 215)
                    .add();

                ren.label('Rasterized image', 100, 215)
                    .css({
                        color: colors[1],
                        fontSize: '10px'
                    })
                    .add();

                ren.label('Script', 450, 82)
                    .attr({
                        fill: colors[2],
                        stroke: 'white',
                        'stroke-width': 2,
                        padding: 5,
                        r: 5
                    })
                    .css({
                        color: 'white',
                        width: '100px'
                    })
                    .add()
                    .shadow(true);

                ren.path(leftArrow)
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[2]
                    })
                    .translate(330, 90)
                    .add();

                ren.label('Command', 340, 70)
                    .css({
                        color: colors[2],
                        fontSize: '10px'
                    })
                    .add();

                ren.path(rightArrow)
                    .attr({
                        'stroke-width': 2,
                        stroke: colors[2]
                    })
                    .translate(330, 100)
                    .add();

                ren.label('Rasterized image', 330, 100)
                    .css({
                        color: colors[2],
                        fontSize: '10px'
                    })
                    .add();
            }
""")))
       .titleSet(
       AATitle()
           .textSet("Highcharts export server overview")
           .styleSet(
           AAStyle()
               .colorSet(AAColor.black)
       )
   );

 }

 // private func advancedTimeLineChart() -> AAOptions {
//         AAOptions()
//             .chart(AAChart()
//                 .events(AAChartEvents()
//                     .load("")))
//             .xAxis(AAXAxis()
//                 .type(.datetime)
//                 .minTickInterval(31536000000)
//                 .labels(AALabels()
//                     .align(.left))
//                 .plotBands([
//                     AAPlotBandsElement()
//                         .from(1259280000000)
//                         .to(1291161600000)
//                         .color("#EFFFFF")
//                         .label(AALabel()
//                             .text("办事处:Torstein的地下室")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(180)),
//                     AAPlotBandsElement()
//                         .from(1291161600000)
//                         .to(1380585600000)
//                         .color("#FFFFEF")
//                         .label(AALabel()
//                             .text("办事处:Tomtebu")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(30)),
//                     AAPlotBandsElement()
//                         .from(1380585600000)
//                         .to(1417046400000)
//                         .color("#FFEFFF")
//                         .label(AALabel()
//                             .text("办事处:VikØrsta")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(30))
//                     ]))
//             .title(AATitle()
//                 .text("Highsoft 公司发展历程"))
//             .tooltip(AATooltip()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .width(250))
//             )
//             .yAxisArray([
//                 AAYAxis()
//                     .max(100)
//                     .labels(AALabels()
//                         .enabled(false))
//                     .title(AATitle()
//                         .text(""))
//                     .gridLineColor("rgba(0, 0, 0, 0.07)"),
//                 AAYAxis()
//                     .allowDecimals(false)
//                     .max(15)
//                     .labels(AALabels()
//                         .style(AAStyle()
//                             .color("#90ed7d")))
//                     .title(AATitle()
//                         .text("雇员")
//                         .style(AAStyle()
//                             .color("#90ed7d")))
//                     .opposite(true)
//                     .gridLineWidth(0)
//                 ])
//             .plotOptions(AAPlotOptions()
//                 .series(AASeries()
//                     .marker(AAMarker()
//                         .enabled(false)
//                         .symbol(.circle)
//                         .radius(2))
// //                        .fillOpacity(0.5)
//                 )
// //                .flags(AAFlags()
// //                    .tooltip(AATooltip()
// //                        .xDateFormat("%B %e, %Y")))
//             )() -> AAOptions {
//         AAOptions()
//             .chart(AAChart()
//                 .events(AAChartEvents()
//                     .load("")))
//             .xAxis(AAXAxis()
//                 .type(.datetime)
//                 .minTickInterval(31536000000)
//                 .labels(AALabels()
//                     .align(.left))
//                 .plotBands([
//                     AAPlotBandsElement()
//                         .from(1259280000000)
//                         .to(1291161600000)
//                         .color("#EFFFFF")
//                         .label(AALabel()
//                             .text("办事处:Torstein的地下室")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(180)),
//                     AAPlotBandsElement()
//                         .from(1291161600000)
//                         .to(1380585600000)
//                         .color("#FFFFEF")
//                         .label(AALabel()
//                             .text("办事处:Tomtebu")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(30)),
//                     AAPlotBandsElement()
//                         .from(1380585600000)
//                         .to(1417046400000)
//                         .color("#FFEFFF")
//                         .label(AALabel()
//                             .text("办事处:VikØrsta")
//                             .style(AAStyle()
//                                 .color("#999999"))
//                             .y(30))
//                     ]))
//             .title(AATitle()
//                 .text("Highsoft 公司发展历程"))
//             .tooltip(AATooltip()
//                 .enabled(true)
//                 .style(AAStyle()
//                     .width(250))
//             )
//             .yAxisArray([
//                 AAYAxis()
//                     .max(100)
//                     .labels(AALabels()
//                         .enabled(false))
//                     .title(AATitle()
//                         .text(""))
//                     .gridLineColor("rgba(0, 0, 0, 0.07)"),
//                 AAYAxis()
//                     .allowDecimals(false)
//                     .max(15)
//                     .labels(AALabels()
//                         .style(AAStyle()
//                             .color("#90ed7d")))
//                     .title(AATitle()
//                         .text("雇员")
//                         .style(AAStyle()
//                             .color("#90ed7d")))
//                     .opposite(true)
//                     .gridLineWidth(0)
//                 ])
//             .plotOptions(AAPlotOptions()
//                 .series(AASeries()
//                     .marker(AAMarker()
//                         .enabled(false)
//                         .symbol(.circle)
//                         .radius(2))
// //                        .fillOpacity(0.5)
//                 )
// //                .flags(AAFlags()
// //                    .tooltip(AATooltip()
// //                        .xDateFormat("%B %e, %Y")))
//             )
  //           .series([
  //                 AASeriesElement()
  //                     .type(.line)
  //                     .id("google-trends")
  //                     .dashStyle(.longDashDotDot)
  //                     .name("Google search for highcharts")
  //                     .data([])
  //                     .tooltip(AATooltip()
  // //                            .xDateFormat("%B %Y")
  //                         .valueSuffix(" % of best month")),
  //                 AASeriesElement()
  //                     .name("收入")
  //                     .id("revenue")
  //                     .type(.area)
  //                     .data([])
  //                     .tooltip(AATooltip()
  //     //                        .xDateFormat("%B %Y")
  //                         .valueSuffix(" % of best month")),
  //                 AASeriesElement()
  //                     .yAxis(1)
  //                     .name("Highsoft 员工")
  //                     .id("employees")
  //                     .type(.area)
  //                     .step("left")
  //                     .tooltip(AATooltip()
  //                         .headerFormat("{point.x:%B %e, %Y}")
  //                         .pointFormat("{point.name}{point.y}")
  //                         .valueSuffix(" employees"))
  //                     .data([])

static AAOptions advancedTimeLineChart() {
  return AAOptions()
      .chartSet(
      AAChart()
          .eventsSet(
          AAChartEvents()
              .loadSet("")))
      .xAxisSet(
      AAXAxis()
          .typeSet(AAChartAxisType.datetime)
          .minTickIntervalSet(31536000000)
          .labelsSet(
          AALabels()
              .alignSet(AAChartAlignType.left))
          .plotBandsSet([
      AAPlotBandsElement()
          .fromSet(1259280000000)
          .toSet(1291161600000)
          .colorSet("#EFFFFF")
          .labelSet(
          AALabel()
              .textSet("办事处:Torstein的地下室")
              .styleSet(
              AAStyle()
                  .colorSet("#999999"))
              .ySet(180)),
      AAPlotBandsElement()
          .fromSet(1291161600000)
          .toSet(1380585600000)
          .colorSet("#FFFFEF")
          .labelSet(
          AALabel()
              .textSet("办事处:Tomtebu")
              .styleSet(
              AAStyle()
                  .colorSet("#999999"))
              .ySet(30)),
      AAPlotBandsElement()
          .fromSet(1380585600000)
          .toSet(1417046400000)
          .colorSet("#FFEFFF")
          .labelSet(
          AALabel()
              .textSet("办事处:VikØrsta")
              .styleSet(
              AAStyle()
                  .colorSet("#999999"))
              .ySet(30))
    ]))
      .titleSet(
      AATitle()
          .textSet("Highsoft 公司发展历程"))
      .tooltipSet(
      AATooltip()
          .enabledSet(true)
          .styleSet(
          AAStyle()
              .widthSet(250))
      )
      .yAxisArraySet([
      AAYAxis()
          .maxSet(100)
          .labelsSet(
          AALabels()
              .enabledSet(false))
          .titleSet(
          AATitle()
              .textSet(""))
          .gridLineColorSet("rgba(0, 0, 0, 0.07)"),
      AAYAxis()
          .allowDecimalsSet(false)
          .maxSet(15)
          .labelsSet(
          AALabels()
              .styleSet(
              AAStyle()
                  .colorSet("#90ed7d")))
          .titleSet(
          AATitle()
              .textSet("雇员")
              .styleSet(
              AAStyle()
                  .colorSet("#90ed7d")))
          .oppositeSet(true)
          .gridLineWidthSet(0)
    ])
      .plotOptionsSet(
      AAPlotOptions()
          .seriesSet(
          AASeries()
              .markerSet(
              AAMarker()
                  .enabledSet(false)
                  .symbolSet(AAChartSymbolType.circle)
                  .radiusSet(2))
//                        .fillOpacity(0.5)
          )
//                .flags(AAFlags()
//                    .tooltip(AATooltip()
//                        .xDateFormat("%B %e, %Y")))
      )
      .seriesSet([
    AASeriesElement()
        .typeSet(AAChartType.line)
        .idSet("google-trends")
        .dashStyleSet(AAChartLineDashStyleType.longDashDotDot)
        .nameSet("Google search for highcharts")
        .dataSet([
      {"x": 1258322400000, /* November 2009 */ "y": 0},
      {"x": 1260961200000, "y":  5},
      {"x": 1263639600000, "y":  7},
      {"x": 1266188400000, "y":  5},
      {"x": 1268740800000, "y":  6},
      {"x": 1271368800000, "y":  8},
      {"x": 1274004000000, "y": 11},
      {"x": 1276639200000, "y":  9},
      {"x": 1279274400000, "y": 12},
      {"x": 1281952800000, "y": 13},
      {"x": 1284588000000, "y": 17},
      {"x": 1287223200000, "y": 17},
      {"x": 1289858400000, "y": 18},
      {"x": 1292497200000, "y": 20},
      {"x": 1295175600000, "y": 20},
      {"x": 1297724400000, "y": 27},
      {"x": 1300276800000, "y": 32},
      {"x": 1302904800000, "y": 29},
      {"x": 1305540000000, "y": 34},
      {"x": 1308175200000, "y": 34},
      {"x": 1310810400000, "y": 36},
      {"x": 1313488800000, "y": 43},
      {"x": 1316124000000, "y": 44},
      {"x": 1318759200000, "y": 42},
      {"x": 1321394400000, "y": 47},
      {"x": 1324033200000, "y": 46},
      {"x": 1326711600000, "y": 50},
      {"x": 1329303600000, "y": 57},
      {"x": 1331899200000, "y": 54},
      {"x": 1334527200000, "y": 59},
      {"x": 1337162400000, "y": 62},
      {"x": 1339797600000, "y": 66},
      {"x": 1342432800000, "y": 61},
      {"x": 1345111200000, "y": 68},
      {"x": 1347746400000, "y": 67},
      {"x": 1350381600000, "y": 73},
      {"x": 1353016800000, "y": 63},
      {"x": 1355655600000, "y": 54},
      {"x": 1358334000000, "y": 67},
      {"x": 1360882800000, "y": 74},
      {"x": 1363435200000, "y": 81},
      {"x": 1366063200000, "y": 89},
      {"x": 1368698400000, "y": 83},
      {"x": 1371333600000, "y": 88},
      {"x": 1373968800000, "y": 86},
      {"x": 1376647200000, "y": 81},
      {"x": 1379282400000, "y": 83},
      {"x": 1381917600000, "y": 95},
      {"x": 1384552800000, "y": 86},
      {"x": 1387191600000, "y": 83},
      {"x": 1389870000000, "y": 89},
      {"x": 1392418800000, "y": 90},
      {"x": 1394971200000, "y": 94},
      {"x": 1397599200000, "y":100},
      {"x": 1400234400000, "y":100},
      {"x": 1402869600000, "y": 99},
      {"x": 1405504800000, "y": 99},
      {"x": 1408183200000, "y": 93},
      {"x": 1410818400000, "y": 97},
      {"x": 1413453600000, "y": 98}
        ])
        .tooltipSet(
        AATooltip()
        //                            .xDateFormatSet("%B %Y")
            .valueSuffixSet(" % of best month")),
    AASeriesElement()
        .nameSet("收入")
        .idSet("revenue")
        .typeSet(AAChartType.area)
        .dataSet([
      [1257033600000,  2],
      [1259625600000,  3],
      [1262304000000,  2],
      [1264982400000,  3],
      [1267401600000,  4],
      [1270080000000,  4],
      [1272672000000,  4],
      [1275350400000,  4],
      [1277942400000,  5],
      [1280620800000,  7],
      [1283299200000,  6],
      [1285891200000,  9],
      [1288569600000, 10],
      [1291161600000,  8],
      [1293840000000, 10],
      [1296518400000, 13],
      [1298937600000, 15],
      [1301616000000, 14],
      [1304208000000, 15],
      [1306886400000, 16],
      [1309478400000, 22],
      [1312156800000, 19],
      [1314835200000, 20],
      [1317427200000, 32],
      [1320105600000, 34],
      [1322697600000, 36],
      [1325376000000, 34],
      [1328054400000, 40],
      [1330560000000, 37],
      [1333238400000, 35],
      [1335830400000, 40],
      [1338508800000, 38],
      [1341100800000, 39],
      [1343779200000, 43],
      [1346457600000, 49],
      [1349049600000, 43],
      [1351728000000, 54],
      [1354320000000, 44],
      [1356998400000, 43],
      [1359676800000, 43],
      [1362096000000, 52],
      [1364774400000, 52],
      [1367366400000, 56],
      [1370044800000, 62],
      [1372636800000, 66],
      [1375315200000, 62],
      [1377993600000, 63],
      [1380585600000, 60],
      [1383264000000, 60],
      [1385856000000, 58],
      [1388534400000, 65],
      [1391212800000, 52],
      [1393632000000, 72],
      [1396310400000, 57],
      [1398902400000, 70],
      [1401580800000, 63],
      [1404172800000, 65],
      [1406851200000, 65],
      [1409529600000, 89],
      [1412121600000,100]
    ])
        .tooltipSet(
        AATooltip()
        //                            .xDateFormatSet("%B %Y")
            .valueSuffixSet(" % of best month")),
    AASeriesElement()
        .yAxisSet(1)
        .nameSet("Highsoft 员工")
        .idSet("employees")
        .typeSet(AAChartType.area)
        .stepSet("left")
        .tooltipSet(
        AATooltip()
            .headerFormatSet("{point.x:%B %e, %Y}")
            .pointFormatSet("{point.name}{point.y}")
            .valueSuffixSet(" employees"))
        .dataSet([
      {"x": AADateUTC(2009, 10,  1), "y":  1, "name": "Torstein 一个人工作", "image": "Torstein" },
      {"x": AADateUTC(2010, 10, 20), "y":  2, "name": "Grethe 加入", "image": "Grethe" },
      {"x": AADateUTC(2011, 3,   1), "y":  3, "name": "Erik 加入", "image": null },
      {"x": AADateUTC(2011, 7,   1), "y":  4, "name": "Gert 加入", "image": "Gert" },
      {"x": AADateUTC(2011, 7,  15), "y":  5, "name": "Hilde 加入", "image": "Hilde" },
      {"x": AADateUTC(2012, 5,   1), "y":  6, "name": "Guro 加入", "image": "Guro" },
      {"x": AADateUTC(2012, 8,   1), "y":  5, "name": "Erik left", "image": null },
      {"x": AADateUTC(2012, 8,  15), "y":  6, "name": "Anne Jorunn 加入", "image": "AnneJorunn" },
      {"x": AADateUTC(2013, 0,   1), "y":  7, "name": "Hilde T. 加入", "image": null },
      {"x": AADateUTC(2013, 7,   1), "y":  8, "name": "Jon Arild 加入", "image": "JonArild" },
      {"x": AADateUTC(2013, 7,  20), "y":  9, "name": "Øystein 加入", "image": "Oystein" },
      {"x": AADateUTC(2013, 9,   1), "y": 10, "name": "Stephane 加入", "image": "Stephane" },
      {"x": AADateUTC(2014, 9,   1), "y": 11, "name": "Anita 加入", "image": "Anita" },
      {"x": AADateUTC(2014, 10, 27), "y": 11, "name": "", "image": null}
    ])
  ])
  ;

}

  //get date UTC seconds
  static num AADateUTC(int year, int month, int day) {
    var dateStr = '${year}-${month}-${day}';
    var date = DateTime.parse(dateStr);
    var dateSeconds = date.second;
    return dateSeconds;
  }

}