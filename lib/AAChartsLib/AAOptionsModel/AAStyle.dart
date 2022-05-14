import 'AAObject.dart';

 class AAStyle extends AAObject  {

    String color;
    String fontSize;
    String fontWeight;
    String textOutLine;

     AAStyle colorSet(String prop) {
        color = prop;
        return this;
    }

     AAStyle fontSizeSet(double prop) {
        fontSize = "${prop}px";
        return this;
    }

     AAStyle fontWeightSet(String prop) {
        fontWeight = prop;
        return this;
    }

     AAStyle textOutlineSet(String prop) {
        textOutLine = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "color": this.color,
      "fontSize": this.fontSize,
      "fontWeight": this.fontWeight,
      "textOutLine": this.textOutLine,
    };
  }

    static AAStyle colorStr(String color) {
      return AAStyle.colorSize(color, null);
    }

    static AAStyle colorSize(String color, double fontSize) {
      return AAStyle.colorSizeWeight(color, fontSize, null);
    }

    static AAStyle colorSizeWeight(String color, double fontSize, String weight) {
      return AAStyle.colorSizeWeightOutline(color, fontSize, weight, null);
    }

    static AAStyle colorSizeWeightOutline(String color, double fontSize, String weight, String outline) {
      var aaStyle = new AAStyle();
      aaStyle
          .colorSet(color)
          .fontSizeSet(fontSize)
          .fontWeightSet(weight)
          .textOutlineSet(outline);
      return aaStyle;
    }
}
