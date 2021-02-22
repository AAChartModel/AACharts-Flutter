import 'AAObject.dart';
import 'AADataLabels.dart';


class AAColumnrange extends AAObject  {
    double borderRadius;
    double borderWidth;
    AADataLabels dataLabels;

     AAColumnrange borderRadiusSet(double prop) {
        borderRadius = prop;
        return this;
    }

     AAColumnrange borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AAColumnrange dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "borderRadius": this.borderRadius,
      "borderWidth": this.borderWidth,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
    };
  }
}
