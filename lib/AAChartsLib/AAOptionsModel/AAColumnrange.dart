import 'AAObject.dart';
import 'AADataLabels.dart';


class AAColumnrange extends AAObject  {
  num borderRadius; //The color of the border surrounding each column or bar
  num borderWidth; //The corner radius of the border surrounding each column or bar. default：0
  AADataLabels dataLabels;
  num groupPadding; //Padding between each value groups, in x axis units. default：0.2.
  bool grouping;
  num pointPadding; //Padding between each column or bar, in x axis units. default：0.1.
  num pointPlacement; //Padding between each column or bar, in x axis units. default：0.1.

  AAColumnrange borderRadiusSet(num prop) {
    borderRadius = prop;
    return this;
  }

  AAColumnrange borderWidthSet(num prop) {
    borderWidth = prop;
    return this;
  }

  AAColumnrange dataLabelsSet(AADataLabels prop) {
    dataLabels = prop;
    return this;
  }

  AAColumnrange groupPaddingSet(num prop) {
    groupPadding = prop;
    return this;
  }

  AAColumnrange groupingSet(bool prop) {
    grouping = prop;
    return this;
  }

  AAColumnrange pointPaddingSet(num prop) {
    pointPadding = prop;
    return this;
  }

  AAColumnrange pointPlacementSet(num prop) {
     pointPlacement = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "borderRadius": this.borderRadius,
      "borderWidth": this.borderWidth,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toPureJson(),
      "groupPadding": this.groupPadding,
      "grouping": this.grouping,
      "pointPadding": this.pointPadding,
      "pointPlacement": this.pointPlacement,
    };
  }
}
