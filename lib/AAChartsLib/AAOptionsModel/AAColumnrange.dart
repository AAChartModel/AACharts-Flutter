import 'AADataLabels.dart';


class AAColumnrange {
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
}
