import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AAZonesElement extends AAObject {
  double? value;
  Object? color;
  Object? fillColor;
  String? dashStyle;

  AAZonesElement valueSet(double? prop) {
    value = prop;
    return this;
  }

  AAZonesElement colorSet(Object? prop) {
    color = prop;
    return this;
  }

  AAZonesElement fillColorSet(Object? prop) {
    fillColor = prop;
    return this;
  }

  AAZonesElement dashStyleSet(String? prop) {
    dashStyle = prop;
    return this;
  }

    Map<String, dynamic> toJson() {
      return {
        "value": this.value,
        "color": this.color,
        "fillColor": this.fillColor,
        "dashStyle": this.dashStyle,
      };
    }

  }