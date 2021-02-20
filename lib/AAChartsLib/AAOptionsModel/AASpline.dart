import 'AADataLabels.dart';

 class AASpline {
     AADataLabels dataLabels;
     AASpline dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
    };
  }
}
