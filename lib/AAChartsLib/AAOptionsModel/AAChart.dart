import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AATools/AAEasyTool.dart';

import 'AAObject.dart';
import 'AAAnimation.dart';
import 'AAResetZoomButton.dart';
import 'AAScrollablePlotArea.dart';

class AAChart extends AAObject  {
  String? type;
  Object? backgroundColor;
  String? plotBackgroundImage;
  String? pinchType;
  bool? panning;
  String? panKey;
  bool? polar;
  AAAnimation? animation;
  bool? inverted;
  List<double>? margin;
  double? marginTop;
  double? marginRight;
  double? marginBottom;
  double? marginLeft;
  AAScrollablePlotArea? scrollablePlotArea;
  AAResetZoomButton? resetZoomButton;
  String? zoomType;
  AAChartEvents? events;
  Object? height;


  AAChart typeSet(String? prop) {
    type = prop;
    return this;
  }

  AAChart backgroundColorSet(Object? prop) {
    backgroundColor = prop;
    return this;
  }

  AAChart plotBackgroundImageSet(String? prop) {
    plotBackgroundImage = prop;
    return this;
  }

  AAChart pinchTypeSet(String? prop) {
    pinchType = prop;
    return this;
  }

  AAChart panningSet(bool? prop) {
    panning = prop;
    return this;
  }

  AAChart panKeySet(String? prop) {
    panKey = prop;
    return this;
  }

  AAChart polarSet(bool? prop) {
    polar = prop;
    return this;
  }

  AAChart animationSet(AAAnimation? prop) {
    animation = prop;
    return this;
  }

  AAChart invertedSet(bool? prop) {
    inverted = prop;
    return this;
  }

  AAChart marginSet(List<double>? prop) {
    margin = prop;
    return this;
  }

  AAChart marginTopSet(double? prop) {
    marginTop = prop;
    return this;
  }

  AAChart marginRightSet(double? prop) {
    marginRight = prop;
    return this;
  }

  AAChart marginBottomSet(double? prop) {
    marginBottom = prop;
    return this;
  }

  AAChart marginLeftSet(double? prop) {
    marginLeft = prop;
    return this;
  }

  AAChart scrollablePlotAreaSet(AAScrollablePlotArea? prop) {
    scrollablePlotArea = prop;
    return this;
  }

  AAChart resetZoomButtonSet(AAResetZoomButton? prop) {
    resetZoomButton = prop;
    return this;
  }

  AAChart zoomTypeSet(String? prop) {
    zoomType = prop;
    return this;
  }

  AAChart eventsSet(AAChartEvents? prop) {
    events = prop;
    return this;
  }

  AAChart heightSet(Object? prop) {
    height = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "backgroundColor": this.backgroundColor,
      "plotBackgroundImage": this.plotBackgroundImage,
      "pinchType": this.pinchType,
      "panning": this.panning,
      "panKey": this.panKey,
      "polar": this.polar,
      "animation": this.animation == null ? null : this.animation?.toPureJson(),
      "inverted": this.inverted,
      "margin": this.margin,
      "marginTop": this.marginTop,
      "marginRight": this.marginRight,
      "marginBottom": this.marginBottom,
      "marginLeft": this.marginLeft,
      "scrollablePlotArea": this.scrollablePlotArea == null ? null : this.scrollablePlotArea?.toPureJson(),
      "resetZoomButton": this.resetZoomButton == null ? null : this.resetZoomButton?.toPureJson(),
      "zoomType": this.zoomType,
      "events": this.events == null ? null : this.events?.toPureJson(),
      "height": this.height,
    };
  }

}


class AAChartEvents extends AAObject {

  // public var click: String?
  //     public var load: String?
  //     public var redraw: String?
  //     public var render: String?
  //     public var selection: String?
  String? click;
  String? load;
  String? redraw;
  String? render;
  String? selection;

  AAChartEvents clickSet(String? prop) {
    if (prop != null) {
      click = AAEasyTool.pureJavaScriptFunctionString(prop);
    }
    return this;
  }

  AAChartEvents loadSet(String? prop) {
    if (prop != null) {
      load = AAEasyTool.pureJavaScriptFunctionString(prop);
    }
    return this;
  }

  AAChartEvents redrawSet(String? prop) {
    if (prop != null) {
      redraw = AAEasyTool.pureJavaScriptFunctionString(prop);
    }
    return this;
  }

  AAChartEvents renderSet(String? prop) {
    if (prop != null) {
      render = AAEasyTool.pureJavaScriptFunctionString(prop);
    }
    return this;
  }

  AAChartEvents selectionSet(String? prop) {
    if (prop != null) {
      selection = AAEasyTool.pureJavaScriptFunctionString(prop);
    }
    return this;
  }

}
