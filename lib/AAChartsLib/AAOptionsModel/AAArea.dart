
 import 'AADataLabels.dart';

class AAArea {
     AADataLabels dataLabels;
     AAArea dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
    };
  }
}
