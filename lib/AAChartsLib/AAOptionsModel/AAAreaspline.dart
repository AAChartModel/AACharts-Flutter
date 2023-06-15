import 'AAObject.dart';
import 'AADataLabels.dart';

class AAAreaspline extends AAObject  {
     AADataLabels? dataLabels;

     AAAreaspline dataLabelsSet(AADataLabels? prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
    };
  }
}
