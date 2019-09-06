import 'AALabel.dart';

 class AAPlotBandsElement {
    double from;
    double to;
    Object color;
    String borderColor;
    double borderWidth;
    String className;
    AALabel label;
    int zIndex;

     AAPlotBandsElement fromSet(double prop) {
        from = prop;
        return this;
    }

     AAPlotBandsElement toSet(double prop) {
        to = prop;
        return this;
    }

     AAPlotBandsElement colorSet(Object prop) {
        color = prop;
        return this;
    }

     AAPlotBandsElement borderColorSet(String prop) {
        borderColor = prop;
        return this;
    }

     AAPlotBandsElement borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AAPlotBandsElement classNameSet(String prop) {
        className = prop;
        return this;
    }

     AAPlotBandsElement labelSet(AALabel prop) {
        label = prop;
        return this;
    }

     AAPlotBandsElement zIndexSet(int prop) {
        zIndex = prop;
        return this;
    }

}
