import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AALang extends AAObject {
  String resetZoom;
  String thousandsSep;

  AALang resetZoomSet(String prop) {
    resetZoom = prop;
    return this;
  }

  AALang thousandsSepSet(String prop) {
    thousandsSep = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "resetZoom": this.resetZoom,
      "thousandsSep": this.thousandsSep,
    };
  }
}
