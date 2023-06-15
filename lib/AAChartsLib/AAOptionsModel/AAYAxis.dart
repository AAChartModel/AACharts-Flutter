import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAxis.dart';

import 'AAObject.dart';
import 'AAPlotBandsElement.dart';
import 'AAPlotLinesElement.dart';
import 'AATitle.dart';
import 'AALabels.dart';
import 'AACrosshair.dart';

 class AAYAxis extends AAAxis {

   Object? stackLabels;
   AAYAxis stackLabelsSet(Object? prop) {
     stackLabels = prop;
     return this;
   }
   ///////////////////////////////////////////

   AAYAxis allowDecimalsSet(bool? prop) {
     allowDecimals = prop;
     return this;
   }

   AAYAxis alternateGridColorSet(Object? prop) {
     alternateGridColor = prop;
     return this;
   }

   AAYAxis crosshairSet(AACrosshair? prop) {
     crosshair = prop;
     return this;
   }

   AAYAxis titleSet(AATitle? prop) {
     title = prop;
     return this;
   }

   AAYAxis typeSet(String? prop) {
     type = prop;
     return this;
   }

   AAYAxis dateTimeLabelFormatsSet(AADateTimeLabelFormats? prop) {
     dateTimeLabelFormats = prop;
     return this;
   }

   AAYAxis plotBandsSet(List<AAPlotBandsElement>? prop) {
     plotBands = prop;
     return this;
   }

   AAYAxis plotLinesSet(List<AAPlotLinesElement>? prop) {
     plotLines = prop;
     return this;
   }

   AAYAxis categoriesSet(List<String>? prop) {
     categories = prop;
     return this;
   }

   AAYAxis linkedToSet(int? prop) {
     linkedTo = prop;
     return this;
   }

   AAYAxis reversedSet(bool? prop) {
     reversed = prop;
     return this;
   }

   AAYAxis oppositeSet(bool? prop) {
     opposite = prop;
     return this;
   }

   AAYAxis lineWidthSet(double? prop) {
     lineWidth = prop;
     return this;
   }

   AAYAxis lineColorSet(String? prop) {
     lineColor = prop;
     return this;
   }

   AAYAxis maxSet(double? prop) {
     max = prop;
     return this;
   }

   AAYAxis minSet(double? prop) {
     min = prop;
     return this;
   }

   AAYAxis minRangeSet(int? prop) {
     minRange = prop;
     return this;
   }

   AAYAxis minTickIntervalSet(int? prop) {
     minTickInterval = prop;
     return this;
   }

   AAYAxis minorGridLineColorSet(String? prop) {
     minorGridLineColor = prop;
     return this;
   }

   AAYAxis minorGridLineDashStyleSet(String? prop) {
     minorGridLineDashStyle = prop;
     return this;
   }

   AAYAxis minorGridLineWidthSet(double? prop) {
     minorGridLineWidth = prop;
     return this;
   }

   AAYAxis minorTickColorSet(String? prop) {
     minorTickColor = prop;
     return this;
   }

   AAYAxis minorTickIntervalSet(Object? prop) {
     minorTickInterval = prop;
     return this;
   }

   AAYAxis minorTickLengthSet(double? prop) {
     minorTickLength = prop;
     return this;
   }

   AAYAxis minorTickPositionSet(String? prop) {
     minorTickPosition = prop;
     return this;
   }

   AAYAxis minorTickWidthSet(double? prop) {
     minorTickWidth = prop;
     return this;
   }

   AAYAxis gridLineWidthSet(double? prop) {
     gridLineWidth = prop;
     return this;
   }

   AAYAxis gridLineColorSet(String? prop) {
     gridLineColor = prop;
     return this;
   }

   AAYAxis gridLineDashStyleSet(String? prop) {
     gridLineDashStyle = prop;
     return this;
   }

   AAYAxis gridLineInterpolationSet(String? prop) {
     gridLineInterpolation = prop;
     return this;
   }

   AAYAxis offSet(double? prop) {
     off = prop;
     return this;
   }

   AAYAxis labelsSet(AALabels? prop) {
     labels = prop;
     return this;
   }

   AAYAxis visibleSet(bool? prop) {
     visible = prop;
     return this;
   }

   AAYAxis startOnTickSet(bool? prop) {
     startOnTick = prop;
     return this;
   }

   AAYAxis tickColorSet(String? prop) {
     tickColor = prop;
     return this;
   }

   AAYAxis tickAmountSet(int? prop) {
     tickAmount = prop;
     return this;
   }

   AAYAxis tickIntervalSet(int? prop) {
     tickInterval = prop;
     return this;
   }

   AAYAxis tickmarkPlacementSet(String? prop) {
     tickmarkPlacement = prop;
     return this;
   }

   AAYAxis tickWidthSet(double? prop) {
     tickWidth = prop;
     return this;
   }

   AAYAxis tickLengthSet(double? prop) {
     tickLength = prop;
     return this;
   }

   AAYAxis tickPositionSet(String? prop) {
     tickPosition = prop;
     return this;
   }

   AAYAxis tickPositionsSet(List? prop) {
     tickPositions = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
    return {
      "title": this.title == null ? null : this.title?.toPureJson(),
      "plotBands": this.plotBands,
      "plotLines": this.plotLines,
      "categories": this.categories,
      "reversed": this.reversed,
      "lineWidth": this.lineWidth,
      "lineColor": this.lineColor,
      "allowDecimals": this.allowDecimals,
      "max": this.max,
      "min": this.min,
      "tickColor": this.tickColor,
      "gridLineWidth": this.gridLineWidth,
      "gridLineColor": this.gridLineColor,
      "gridLineDashStyle": this.gridLineDashStyle,
      "off": this.off,
      "labels": this.labels == null ? null : this.labels?.toPureJson(),
      "visible": this.visible,
      "opposite": this.opposite,
      "startOnTick": this.startOnTick,
      "tickInterval": this.tickInterval,
      "crosshair": this.crosshair,
      // "stackLabels": this.stackLabels == null ? null : this.stackLabels.toPureJson(),
      "tickmarkPlacement": this.tickmarkPlacement,
      "tickWidth": this.tickWidth,
      "tickLength": this.tickLength,
      "tickPosition": this.tickPosition,
    };
  }


}
