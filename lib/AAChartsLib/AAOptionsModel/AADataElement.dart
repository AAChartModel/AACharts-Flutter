import 'AADataLabels.dart';
import 'AAMarker.dart';

class AADataElement {
    String name;
    double y;
    Object color;
    AADataLabels dataLabels;
    AAMarker marker;

     AADataElement nameSet(String prop) {
        name = prop;
        return this;
    }

     AADataElement ySet(double prop) {
        y = prop;
        return this;
    }

     AADataElement colorSet(Object prop) {
        color = prop;
        return this;
    }

     AADataElement dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     AADataElement markerSet(AAMarker prop) {
        marker = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "y": this.y,
      "color": this.color,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
      "marker": this.marker == null ? null : this.marker.toJson(),
    };
  }
}
