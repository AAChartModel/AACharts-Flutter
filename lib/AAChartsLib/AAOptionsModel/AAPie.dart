import 'AAObject.dart';
import 'AADataLabels.dart';

class AAPie extends AAObject  {
  String? type;
  List? data;
  AADataLabels? dataLabels;
  double? size;
  bool? allowPointSelect;
  String? cursor;
  bool? showInLegend;
  double? startAngle;
  double? endAngle;
  double? depth;
  List? center;

  AAPie typeSet(String? prop) {
    type = prop;
    return this;
  }

  AAPie dataSet(List? prop) {
    data = prop;
    return this;
  }

  AAPie dataLabelsSet(AADataLabels? prop) {
    dataLabels = prop;
    return this;
  }

  AAPie sizeSet(double? prop) {
    size = prop;
    return this;
  }

  AAPie allowPointSelectSet(bool? prop) {
    allowPointSelect = prop;
    return this;
  }

  AAPie cursorSet(String? prop) {
    cursor = prop;
    return this;
  }

  AAPie showInLegendSet(bool? prop) {
    showInLegend = prop;
    return this;
  }

  AAPie startAngleSet(double? prop) {
    startAngle = prop;
    return this;
  }

  AAPie endAngleSet(double? prop) {
    endAngle = prop;
    return this;
  }

  AAPie depthSet(double? prop) {
    depth = prop;
    return this;
  }

  AAPie centerSet(List? prop) {
    center = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "data": this.data,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
      "size": this.size,
      "allowPointSelect": this.allowPointSelect,
      "cursor": this.cursor,
      "showInLegend": this.showInLegend,
      "startAngle": this.startAngle,
      "endAngle": this.endAngle,
      "depth": this.depth,
      "center": this.center,
    };
  }
}
