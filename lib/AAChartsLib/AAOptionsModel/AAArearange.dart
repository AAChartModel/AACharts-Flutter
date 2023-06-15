import 'AAObject.dart';
import 'AADataLabels.dart';

class AAArearange extends AAObject  {
    AADataLabels? dataLabels;

     AAArearange dataLabelsSet(AADataLabels? prop) {
        dataLabels = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
    };
  }
}
