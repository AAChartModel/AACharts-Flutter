import 'AAObject.dart';
import 'AADataLabels.dart';

 class AASpline extends AAObject  {
     AADataLabels dataLabels;
     AASpline dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toPureJson(),
    };
  }
}
