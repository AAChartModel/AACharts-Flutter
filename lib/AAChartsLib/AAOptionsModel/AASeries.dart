import 'dart:convert';
import 'dart:core';
import 'package:aacharts_flutter/AAChartsLib/AATools/AAEasyTool.dart';

import 'AADataLabels.dart';
import 'AAObject.dart';
import 'AAMarker.dart';
import 'AAAnimation.dart';
import 'AAShadow.dart';
import 'AAStates.dart';

 class AASeries extends AAObject {
   String? borderColor;
   double? borderWidth;
   double? borderRadius;
   Object? borderRadiusTopLeft;
   Object? borderRadiusTopRight;
   Object? borderRadiusBottomLeft;
   Object? borderRadiusBottomRight;
   AAMarker? marker;
   String? stacking;
   Object? animation;
   List<String>? keys;
   bool? colorByPoint;//决定了图表是否给每个数据列或每个点分配一个颜色，默认值是 false， 即默认是给每个数据类分配颜色，
   bool? connectNulls;//设置折线是否断点重连
   AASeriesEvents? events;
   AAShadow? shadow;
   AADataLabels? dataLabels;
   AAStates? states;
   AAPoint? point;
   int? pointInterval;
   String? pointIntervalUnit;
   Object? pointPlacement;
   double? pointStart;

   AASeries borderColorSet(String? prop) {
     borderColor = prop;
     return this;
   }

   AASeries borderWidthSet(double? prop) {
     borderWidth = prop;
     return this;
   }

   AASeries borderRadiusSet(double? prop) {
     borderRadius = prop;
     return this;
   }

   AASeries borderRadiusTopLeftSet(Object? prop) {
     borderRadiusTopLeft = prop;
     return this;
   }

   AASeries borderRadiusTopRightSet(Object? prop) {
     borderRadiusTopRight = prop;
     return this;
   }

   AASeries borderRadiusBottomLeftSet(Object? prop) {
     borderRadiusBottomLeft = prop;
     return this;
   }

   AASeries borderRadiusBottomRightSet(Object? prop) {
     borderRadiusBottomRight = prop;
     return this;
   }

   AASeries markerSet(AAMarker? prop) {
     marker = prop;
     return this;
   }

   AASeries stackingSet(String? prop) {
     stacking = prop;
     return this;
   }

   AASeries animationSet(Object? prop) {
     animation = prop;
     return this;
   }

   AASeries keysSet(List<String>? prop) {
   keys = prop;
   return this;
   }

   AASeries colorByPointSet(bool? prop) {
     colorByPoint = prop;
     return this;
   }

   AASeries connectNullsSet(bool? prop) {
     connectNulls = prop;
     return this;
   }

   AASeries eventsSet(AASeriesEvents? prop) {
     events = prop;
     return this;
   }

   AASeries shadowSet(AAShadow? prop) {
     shadow = prop;
     return this;
   }

   AASeries dataLabelsSet(AADataLabels? prop) {
     dataLabels = prop;
     return this;
   }

   AASeries statesSet(AAStates? prop) {
     states = prop;
     return this;
   }

   AASeries pointSet(AAPoint? prop) {
     point = prop;
     return this;
   }

   AASeries pointIntervalSet(int? prop) {
     pointInterval = prop;
     return this;
   }

   AASeries pointIntervalUnitSet(String? prop) {
     pointIntervalUnit = prop;
     return this;
   }

   AASeries pointPlacementSet(Object? prop) {
     pointPlacement = prop;
     return this;
   }

   AASeries pointStartSet(double? prop) {
     pointStart = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
     return {
       "borderColor": this.borderColor,
       "borderWidth": this.borderWidth,
       "borderRadius": this.borderRadius,
       "borderRadiusTopLeft": this.borderRadiusTopLeft,
       "borderRadiusTopRight": this.borderRadiusTopRight,
       "borderRadiusBottomLeft": this.borderRadiusBottomLeft,
       "borderRadiusBottomRight": this.borderRadiusBottomRight,
       "marker": this.marker == null ? null : this.marker?.toPureJson(),
       "stacking": this.stacking,
       // "animation": this.animation == null ? null : this.animation.toPureJson(),
       "keys": this.keys,
       "colorByPoint": this.colorByPoint,
       "connectNulls": this.connectNulls,
       "events": this.events == null ? null : this.events?.toPureJson(),
       "shadow": this.shadow == null ? null : this.shadow?.toPureJson(),
       "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
       "states": this.states == null ? null : this.states?.toPureJson(),
       "pointInterval": this.pointInterval,
       "pointIntervalUnit": this.pointIntervalUnit,
       "pointPlacement": this.pointPlacement,
       "pointStart": this.pointStart,
     };
   }

}

class AASeriesEvents extends AAObject {
   String? legendItemClick;

  AASeriesEvents legendItemClickSet(String? prop) {
    if (prop == null) {
      return this;
    }
    String pureJSFunctionStr = "(" + prop + ")";
    pureJSFunctionStr = AAEasyTool.pureJavaScriptFunctionString(pureJSFunctionStr);
    legendItemClick = pureJSFunctionStr;
    return this;
  }

   Map<String, dynamic> toJson() {
     return {
       "legendItemClick": this.legendItemClick,
     };
   }

}

class AAPoint extends AAObject {
   AAPointEvents? events;

   AAPoint eventsSet(AAPointEvents? prop) {
     events = prop;
     return this;
   }

}

class AAPointEvents extends AAObject {
   //   public var click: String?
  //     public var mouseOver: String?
  //     public var mouseOut: String?
  //     public var remove: String?
  //     public var select: String?
  //     public var unselect: String?
  //     public var update: String?
  //     public var legendItemClick: String? // Only for pie chart

  String? click;





}
