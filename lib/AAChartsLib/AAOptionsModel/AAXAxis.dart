import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAxis.dart';

import 'AAObject.dart';
import 'AAPlotBandsElement.dart';
import 'AAPlotLinesElement.dart';
import 'AALabels.dart';
import 'AACrosshair.dart';
import 'AATitle.dart';

class AAXAxis extends AAAxis {

  AAXAxis allowDecimalsSet(bool prop) {
    allowDecimals = prop;
    return this;
  }

  AAXAxis alternateGridColorSet(Object prop) {
    alternateGridColor = prop;
    return this;
  }

  AAXAxis crosshairSet(AACrosshair prop) {
    crosshair = prop;
    return this;
  }

  AAXAxis titleSet(AATitle prop) {
    title = prop;
    return this;
  }

  AAXAxis typeSet(String prop) {
    type = prop;
    return this;
  }

  AAXAxis dateTimeLabelFormatsSet(AADateTimeLabelFormats prop) {
    dateTimeLabelFormats = prop;
    return this;
  }

  AAXAxis plotBandsSet(List<AAPlotBandsElement> prop) {
    plotBands = prop;
    return this;
  }

  AAXAxis plotLinesSet(List<AAPlotLinesElement> prop) {
    plotLines = prop;
    return this;
  }

  AAXAxis categoriesSet(List<String> prop) {
    categories = prop;
    return this;
  }

  AAXAxis linkedToSet(int prop) {
    linkedTo = prop;
    return this;
  }

  AAXAxis reversedSet(bool prop) {
    reversed = prop;
    return this;
  }

  AAXAxis oppositeSet(bool prop) {
    opposite = prop;
    return this;
  }

  AAXAxis lineWidthSet(double prop) {
    lineWidth = prop;
    return this;
  }

  AAXAxis lineColorSet(String prop) {
    lineColor = prop;
    return this;
  }

  AAXAxis maxSet(double prop) {
    max = prop;
    return this;
  }

  AAXAxis minSet(double prop) {
    min = prop;
    return this;
  }

  AAXAxis minRangeSet(int prop) {
    minRange = prop;
    return this;
  }

  AAXAxis minTickIntervalSet(int prop) {
    minTickInterval = prop;
    return this;
  }

  AAXAxis minorGridLineColorSet(String prop) {
    minorGridLineColor = prop;
    return this;
  }

  AAXAxis minorGridLineDashStyleSet(String prop) {
    minorGridLineDashStyle = prop;
    return this;
  }

  AAXAxis minorGridLineWidthSet(double prop) {
    minorGridLineWidth = prop;
    return this;
  }

  AAXAxis minorTickColorSet(String prop) {
    minorTickColor = prop;
    return this;
  }

  AAXAxis minorTickIntervalSet(Object prop) {
    minorTickInterval = prop;
    return this;
  }

  AAXAxis minorTickLengthSet(double prop) {
    minorTickLength = prop;
    return this;
  }

  AAXAxis minorTickPositionSet(String prop) {
    minorTickPosition = prop;
    return this;
  }

  AAXAxis minorTickWidthSet(double prop) {
    minorTickWidth = prop;
    return this;
  }

  AAXAxis gridLineWidthSet(double prop) {
    gridLineWidth = prop;
    return this;
  }

  AAXAxis gridLineColorSet(String prop) {
    gridLineColor = prop;
    return this;
  }

  AAXAxis gridLineDashStyleSet(String prop) {
    gridLineDashStyle = prop;
    return this;
  }

  AAXAxis gridLineInterpolationSet(String prop) {
    gridLineInterpolation = prop;
    return this;
  }

  AAXAxis offSet(double prop) {
    off = prop;
    return this;
  }

  AAXAxis labelsSet(AALabels prop) {
    labels = prop;
    return this;
  }

  AAXAxis visibleSet(bool prop) {
    visible = prop;
    return this;
  }

  AAXAxis startOnTickSet(bool prop) {
    startOnTick = prop;
    return this;
  }

  AAXAxis tickColorSet(String prop) {
    tickColor = prop;
    return this;
  }

  AAXAxis tickIntervalSet(int prop) {
    tickInterval = prop;
    return this;
  }

  AAXAxis tickmarkPlacementSet(String prop) {
    tickmarkPlacement = prop;
    return this;
  }

  AAXAxis tickWidthSet(double prop) {
    tickWidth = prop;
    return this;
  }

  AAXAxis tickLengthSet(double prop) {
    tickLength = prop;
    return this;
  }

  AAXAxis tickPositionSet(String prop) {
    tickPosition = prop;
    return this;
  }

  AAXAxis tickPositionsSet(List prop) {
    tickPositions = prop;
    return this;
  }

  Map<String, dynamic> toJsonSet() {
    return {
      "plotBands": this.plotBands,
      "plotLines": this.plotLines,
      "categories": this.categories,
      "reversed": this.reversed,
      "lineWidth": this.lineWidth,
      "lineColor": this.lineColor,
      "max": this.max,
      "min": this.min,
      "tickColor": this.tickColor,
      "gridLineWidth": this.gridLineWidth,
      "gridLineColor": this.gridLineColor,
      "gridLineDashStyle": this.gridLineDashStyle,
      "off": this.off,
      "labels": this.labels == null ? null : this.labels.toPureJson(),
      "visible": this.visible,
      "startOnTick": this.startOnTick,
      "tickInterval": this.tickInterval,
      "crosshair": this.crosshair == null ? null : this.crosshair.toPureJson(),
      "tickmarkPlacement": this.tickmarkPlacement,
      "tickWidth": this.tickWidth,
      "tickLength": this.tickLength,
      "tickPosition": this.tickPosition,
    };
  }
}
