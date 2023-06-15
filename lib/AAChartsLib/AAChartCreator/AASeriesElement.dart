import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAShadow.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStates.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAZonesElement.dart';

class AASeriesElement extends AAObject {
  String? type; //A chart type series. If the type option is not specified, it is inherited from `chart.type`.
  String? name; //The name of the series as shown in the legend, tooltip etc.
  List? data; //An array of data points for the series
  dynamic? color; //The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the options.colors array.
  List? colors; //The color for the parts of the graph or points that are below the threshold
  num? lineWidth; //The line width, It is only valid for line, spline, area, areaspline, arearange and arearangespline chart types
  String? borderColor; //The border color, It is only valid for column, bar, pie, columnrange, pyramid and funnel chart types
  num? borderWidth; //The border width, It is only valid for column, bar, pie, columnrange, pyramid and funnel chart types
  num? borderRadius; //The corner radius of the border surrounding each column or bar.
  dynamic? borderRadiusTopLeft; //The corner radius of the border surrounding each column or bar.
  dynamic? borderRadiusTopRight; //The corner radius of the border surrounding each column or bar.
  dynamic? borderRadiusBottomLeft; //The corner radius of the border surrounding each column or bar.
  dynamic? borderRadiusBottomRight; //The corner radius of the border surrounding each column or bar.
  dynamic? fillColor; //The fill color, It is only valid for area, areaspline, arearange and arearangespline chart types
  num? fillOpacity; //The fill opacity, It is only valid for area, areaspline, arearange and arearangespline chart types. Note that when you set an explicit fillColor, the fillOpacity is not applied. Instead, you should define the opacity in the fillColor with an rgba color definition. Deafualt value：0.75.
  num? threshold; //The threshold, also called zero level or base level. For line type series this is only used in conjunction with negativeColor. default：0.
  dynamic? negativeColor; //The color for the parts of the graph or points that are below the threshold
  dynamic? negativeFillColor; //A separate color for the negative part of the area.
  String? dashStyle; //A name for the dash style to use for the graph. Applies only to series type having a graph, like line, spline, area and scatter in case it has a lineWidth.
  num? xAxis; //The index of the x axis to use.
  num? yAxis; //The index of the y axis to use.
  AADataLabels? dataLabels; //Individual data label for each point. The options are the same as the ones for `plotOptions.series.dataLabels`.
  AAMarker? marker; //Enable or disable the point marker. If null, the markers are hidden when the data is dense, and shown for more widespread data points.
  dynamic? step; //Whether to apply steps to the line. Possible values are left, center and right.
  AAStates? states; //A wrapper object for all the series options in specific states.
  bool? showInLegend; //Whether to display this particular series or series type in the legend. The default value is true for standalone series, false for linked series. Default value：true.
  bool? colorByPoint; //When using automatic point colors pulled from the `options.colors` collection, this option determines whether the chart should receive one color per series or one color per point.
  bool? allowPointSelect; //Allow this series' points to be selected by clicking on the markers, bars or pie slices
  num? zIndex; //Define the visual z index of the series.
  dynamic? size; //The innder size for pie chart (String | Number)
  dynamic? innerSize; //The innder size for pie chart (String | Number)
  dynamic? minSize; //The minimum size for a pie in response to auto margins, Only useful for pie, bubble, funnel, Pyramid (String | Number)
  AAShadow? shadow; //Shadow options for the series
  List<AAZonesElement>? zones; //An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the zoneAxis option.
  String? zoneAxis; //Defines the Axis on which the zones are applied. defalut value：y.
  String? stack; //A stack for the series.
  AATooltip? tooltip; //A configuration object for the tooltip that specifies the tooltip that is shown when the user hovers over a series or point.
  dynamic? pointPlacement; //The point placement of a line series. Possible values are:
  bool? enableMouseTracking; //Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance.
  AADataSorting? dataSorting; //Enable or disable data sorting.
  bool? reversed; //Only useful for pyramid chart and funnel chart.


  AASeriesElement typeSet(String? prop) {
    type = prop;
    return this;
  }

  AASeriesElement nameSet(String? prop) {
    name = prop;
    return this;
  }

  AASeriesElement dataSet(List? prop) {
    data = prop;
    return this;
  }

  AASeriesElement colorSet(dynamic? prop) {
    color = prop;
    return this;
  }

  AASeriesElement colorsSet(List? prop) {
    colors = prop;
    return this;
  }

  AASeriesElement lineWidthSet(num? prop) {
    lineWidth = prop;
    return this;
  }

  AASeriesElement borderColorSet(String? prop) {
    borderColor = prop;
    return this;
  }

  AASeriesElement borderWidthSet(num? prop) {
    borderWidth = prop;
    return this;
  }

  AASeriesElement borderRadiusSet(num? prop) {
    borderRadius = prop;
    return this;
  }

  AASeriesElement borderRadiusTopLeftSet(dynamic? prop) {
    borderRadiusTopLeft = prop;
    return this;
  }

  AASeriesElement borderRadiusTopRightSet(dynamic? prop) {
    borderRadiusTopRight = prop;
    return this;
  }

  AASeriesElement borderRadiusBottomLeftSet(dynamic? prop) {
    borderRadiusBottomLeft = prop;
    return this;
  }

  AASeriesElement borderRadiusBottomRightSet(dynamic? prop) {
    borderRadiusBottomRight = prop;
    return this;
  }

  AASeriesElement fillColorSet(dynamic? prop) {
    fillColor = prop;
    return this;
  }

  AASeriesElement fillOpacitySet(num? prop) {
    fillOpacity = prop;
    return this;
  }

  AASeriesElement thresholdSet(num? prop) {
    threshold = prop;
    return this;
  }

  AASeriesElement negativeColorSet(dynamic? prop) {
    negativeColor = prop;
    return this;
  }

  AASeriesElement negativeFillColorSet(dynamic? prop) {
    negativeFillColor = prop;
    return this;
  }

  AASeriesElement dashStyleSet(String? prop) {
    dashStyle = prop;
    return this;
  }

  AASeriesElement xAxisSet(num? prop) {
    xAxis = prop;
    return this;
  }

  AASeriesElement yAxisSet(num? prop) {
    yAxis = prop;
    return this;
  }

  AASeriesElement dataLabelsSet(AADataLabels? prop) {
    dataLabels = prop;
    return this;
  }

  AASeriesElement markerSet(AAMarker? prop) {
    marker = prop;
    return this;
  }

  AASeriesElement stepSet(dynamic? prop) {
    step = prop;
    return this;
  }

  AASeriesElement statesSet(AAStates? prop) {
    states = prop;
    return this;
  }

  AASeriesElement showInLegendSet(bool? prop) {
    showInLegend = prop;
    return this;
  }

  AASeriesElement colorByPointSet(bool? prop) {
    colorByPoint = prop;
    return this;
  }

  AASeriesElement allowPointSelectSet(bool? prop) {
    allowPointSelect = prop;
    return this;
  }

  AASeriesElement zIndexSet(num? prop) {
    zIndex = prop;
    return this;
  }

  AASeriesElement sizeSet(dynamic? prop) {
    size = prop;
    return this;
  }

  AASeriesElement innerSizeSet(dynamic? prop) {
    innerSize = prop;
    return this;
  }

  AASeriesElement minSizeSet(dynamic? prop) {
    minSize = prop;
    return this;
  }

  AASeriesElement shadowSet(AAShadow? prop) {
    shadow = prop;
    return this;
  }

  AASeriesElement zonesSet(List<AAZonesElement>? prop) {
    zones = prop;
    return this;
  }

  AASeriesElement zoneAxisSet(String? prop) {
    zoneAxis = prop;
    return this;
  }

  AASeriesElement stackSet(String? prop) {
    stack = prop;
    return this;
  }

  AASeriesElement tooltipSet(AATooltip? prop) {
    tooltip = prop;
    return this;
  }

  AASeriesElement pointPlacementSet(dynamic? prop) {
    pointPlacement = prop;
    return this;
  }

  AASeriesElement enableMouseTrackingSet(bool? prop) {
    enableMouseTracking = prop;
    return this;
  }

  AASeriesElement dataSortingSet(AADataSorting? prop) {
    dataSorting = prop;
    return this;
  }

  AASeriesElement reversedSet(bool? prop) {
    reversed = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "name": this.name,
      "data": this.data,
      "color": this.color,
      "lineWidth": this.lineWidth,
      "borderWidth": this.borderWidth,
      "borderColor": this.borderColor,
      "fillColor": this.fillColor,
      "fillOpacity": this.fillOpacity,
      "threshold": this.threshold,
      "negativeColor": this.negativeColor,
      "negativeFillColor": this.negativeFillColor,
      "dashStyle": this.dashStyle,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toJson(),
      "marker": this.marker == null ? null : this.marker?.toJson(),
      "step": this.step,
      "colorByPoint": this.colorByPoint,
      "allowPointSelect": this.allowPointSelect,
      "zIndex": this.zIndex,
      "innerSize": this.innerSize,
      "minSize": this.minSize,
      "shadow": this.shadow == null ? null : this.shadow?.toJson(),
      "zones": this.zones,
      "zoneAxis": this.zoneAxis,
      "stack": this.stack,
      "enableMouseTracking": this.enableMouseTracking,
      "showInLegend": this.showInLegend,
      "yAxis": this.yAxis,
      "xAxis": this.xAxis,
      "tooltip": this.tooltip == null ? null : this.tooltip?.toJson(),
      "pointPlacement": this.pointPlacement,
      "dataSorting": this.dataSorting == null ? null : this.dataSorting?.toJson(),
      "reversed": this.reversed,
    };
  }
}

class AADataSorting {
  bool? enabled;
  bool? matchByName;
  AADataSorting enabledSet(bool? prop) {
    enabled = prop;
    return this;
  }

  AADataSorting matchByNameSet(bool? prop) {
    matchByName = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "matchByName": this.matchByName,
    };
  }
}

class AADataElement extends AAObject {
  String? name;
  double? x;
  double? y;
  Object? color;
  AADataLabels? dataLabels;
  AAMarker? marker;

  AADataElement nameSet(String? prop) {
    name = prop;
    return this;
  }

  AADataElement xSet(double? prop) {
    x = prop;
    return this;
  }

  AADataElement ySet(double? prop) {
    y = prop;
    return this;
  }

  AADataElement colorSet(Object? prop) {
    color = prop;
    return this;
  }

  AADataElement dataLabelsSet(AADataLabels? prop) {
    dataLabels = prop;
    return this;
  }

  AADataElement markerSet(AAMarker? prop) {
    marker = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "x": this.x,
      "y": this.y,
      "color": this.color,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toJson(),
      "marker": this.marker == null ? null : this.marker?.toJson(),
    };
  }
}
