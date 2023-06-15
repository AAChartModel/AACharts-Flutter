import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AALang extends AAObject {
  String? noData;
  int? numericSymbolMagnitude;
  List<String>? numericSymbols;
  String? resetZoom;
  String? thousandsSep;

  AALang noDataSet(String? prop) {
    noData = prop;
    return this;
  }

  AALang numericSymbolMagnitudeSet(int? prop) {
    numericSymbolMagnitude = prop;
    return this;
  }

  AALang numericSymbolsSet(List<String>? prop) {
    numericSymbols = prop;
    return this;
  }

  AALang resetZoomSet(String? prop) {
    resetZoom = prop;
    return this;
  }

  AALang thousandsSepSet(String? prop) {
    thousandsSep = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "noData": this.noData,
      "numericSymbolMagnitude": this.numericSymbolMagnitude,
      "numericSymbols": this.numericSymbols,
      "resetZoom": this.resetZoom,
      "thousandsSep": this.thousandsSep,
    };
  }
}
