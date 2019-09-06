import 'AADataLabels.dart';

 class AAPie {
    AADataLabels dataLabels;
    double size;
    bool allowPointSelect;
    String cursor;
    bool showInLegend;
    double startAngle;
    double endAngle;
    double depth;
    double center;

     AAPie dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     AAPie sizeSet(double prop) {
        size = prop;
        return this;
    }

     AAPie allowPointSelectSet(bool prop) {
        allowPointSelect = prop;
        return this;
    }

     AAPie cursorSet(String prop) {
        cursor = prop;
        return this;
    }

     AAPie showInLegendSet(bool prop) {
        showInLegend = prop;
        return this;
    }

     AAPie startAngleSet(double prop) {
        startAngle = prop;
        return this;
    }

     AAPie endAngleSet(double prop) {
        endAngle = prop;
        return this;
    }

     AAPie depthSet(double prop) {
        depth = prop;
        return this;
    }

     AAPie centerSet(double prop) {
        center = prop;
        return this;
    }

}
