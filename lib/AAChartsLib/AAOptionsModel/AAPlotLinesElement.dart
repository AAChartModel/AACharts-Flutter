import 'AAObject.dart';
import 'AALabel.dart';

 class AAPlotLinesElement extends AAObject  {

    Object color;
    String dashStyle;
    double width;
    double value;
    int zIndex;
    AALabel label;

     AAPlotLinesElement colorSet(Object prop) {
        color = prop;
        return this;
    }

     AAPlotLinesElement dashStyleSet(String prop) {
        dashStyle = prop;
        return this;
    }

     AAPlotLinesElement widthSet(double prop) {
        width = prop;
        return this;
    }

     AAPlotLinesElement valueSet(double prop) {
        value = prop;
        return this;
    }

     AAPlotLinesElement zIndexSet(int prop) {
        zIndex = prop;
        return this;
    }

     AAPlotLinesElement labelSet(AALabel prop) {
        label = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "color": this.color,
      "dashStyle": this.dashStyle,
      "width": this.width,
      "value": this.value,
      "zIndex": this.zIndex,
      "label": this.label == null ? null : this.label.toJson(),
    };
  }
}






