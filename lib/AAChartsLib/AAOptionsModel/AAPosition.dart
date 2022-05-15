
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AAPosition extends AAObject {
  String align;
  String verticalAlign;
  double x;
  double y;

  AAPosition alignSet(String prop) {
    align = prop;
    return this;
  }

  AAPosition verticalAlignSet(String prop) {
    verticalAlign = prop;
    return this;
  }

  AAPosition xSet(double prop) {
    x = prop;
    return this;
  }

  AAPosition ySet(double prop) {
    y = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "align": this.align,
      "verticalAlign": this.verticalAlign,
      "x": this.x,
      "y": this.y,
    };
  }

}
