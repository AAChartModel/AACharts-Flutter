import 'AAObject.dart';
import 'AADataLabels.dart';

 class AALine extends AAObject  {
     AADataLabels? dataLabels;
     AALine dataLabelsSet(AADataLabels? prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
    };
  }
}
