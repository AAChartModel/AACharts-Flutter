import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AAPane extends AAObject {
  AABackground? background;
  List? center;
  double? endAngle;
  double? size;
  double? startAngle;

  AAPane backgroundSet(AABackground? prop) {
    background = prop;
    return this;
  }

  AAPane centerSet(List? prop) {
    center = prop;
    return this;
  }

  AAPane endAngleSet(double? prop) {
    endAngle = prop;
    return this;
  }

  AAPane sizeSet(double? prop) {
    size = prop;
    return this;
  }

  AAPane startAngleSet(double? prop) {
    startAngle = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "background": this.background == null ? null : this.background?.toPureJson(),
      "center": this.center,
      "endAngle": this.endAngle,
      "size": this.size,
      "startAngle": this.startAngle,
    };
  }
}

class AABackground extends AAObject{
  Object? backgroundColor;
  String? borderColor;
  double? borderWidth;
  String? className;
  double? innerRadius;
  double? outerRadius;
  String? shape;

  AABackground backgroundColorSet(Object? prop) {
    backgroundColor = prop;
    return this;
  }
  AABackground borderColorSet(String? prop) {
    borderColor = prop;
    return this;
  }

  AABackground borderWidthSet(double? prop) {
    borderWidth = prop;
    return this;
  }

  AABackground classNameSet(String? prop) {
    className = prop;
    return this;
  }

  AABackground innerRadiusSet(double? prop) {
    innerRadius = prop;
    return this;
  }

  AABackground outerRadiusSet(double? prop) {
    outerRadius = prop;
    return this;
  }

  AABackground shapeSet(String? prop) {
    shape = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "backgroundColor": this.backgroundColor,
      "borderColor": this.borderColor,
      "borderWidth": this.borderWidth,
      "className": this.className,
      "innerRadius": this.innerRadius,
      "outerRadius": this.outerRadius,
      "shape": this.shape,
    };
  }

}
