import 'AADataLabels.dart';

 class AALine {
     AADataLabels dataLabels;
     AALine dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
    };
  }
}
