import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStates.dart';

class AAScatter extends AAObject {
  //  public var lineWidth: Float?
  //     public var lineColor: String?
  //     public var dashStyle: String?
  //     public var enableMouseTracking: Bool?
  //     public var linkedTo: String?
  //     public var states: AAStates?
  //     public var marker: AAMarker?

  num? lineWidth;
  String? lineColor;
  String? dashStyle;
  bool? enableMouseTracking;
  String? linkedTo;
  AAStates? states;
  AAMarker? marker;

  AAScatter lineWidthSet(num? prop) {
    lineWidth = prop;
    return this;
  }

  AAScatter lineColorSet(String? prop) {
    lineColor = prop;
    return this;
  }

  AAScatter dashStyleSet(String? prop) {
    dashStyle = prop;
    return this;
  }

  AAScatter enableMouseTrackingSet(bool? prop) {
    enableMouseTracking = prop;
    return this;
  }

  AAScatter linkedToSet(String? prop) {
    linkedTo = prop;
    return this;
  }

  AAScatter statesSet(AAStates? prop) {
    states = prop;
    return this;
  }

  AAScatter markerSet(AAMarker? prop) {
    marker = prop;
    return this;
  }


  Map<String, dynamic> toJson() {
    return {
      "lineWidth": lineWidth,
      "lineColor": lineColor,
      "dashStyle": dashStyle,
      "enableMouseTracking": enableMouseTracking,
      "linkedTo": linkedTo,
      "states": states?.toJson(),
      "marker": marker?.toJson(),
    };
  }
}