import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AAScrollablePlotArea extends AAObject {
  int? minHeight;
  int? minWidth;
  double? opacity;
  double? scrollPositionX;
  double? scrollPositionY;

  AAScrollablePlotArea minHeightSet(int? prop) {
    minHeight = prop;
    return this;
  }

  AAScrollablePlotArea minWidthSet(int? prop) {
    minWidth = prop;
    return this;
  }

  AAScrollablePlotArea opacitySet(double? prop) {
    opacity = prop;
    return this;
  }

  AAScrollablePlotArea scrollPositionXSet(double? prop) {
    scrollPositionX = prop;
    return this;
  }

  AAScrollablePlotArea scrollPositionYSet(double? prop) {
    scrollPositionY = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "minHeight": this.minHeight,
      "minWidth": this.minWidth,
      "opacity": this.opacity,
      "scrollPositionX": this.scrollPositionX,
      "scrollPositionY": this.scrollPositionY,
    };
  }
}