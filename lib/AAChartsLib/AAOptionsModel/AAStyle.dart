import 'AAObject.dart';

class AAStyle extends AAObject  {
  String background;
  String backgroundColor;
  String border;
  String borderRadius;
  String color;
  String cursor;
  String fontFamily;
  String fontSize;
  String fontWeight;
  double height;
  double lineWidth;
  double opacity;
  String padding;
  String pointerEvents;
  String position;
  String textAlign;
  String textDecoration;
  String textOutline;
  String textOverflow;
  String top;
  String transition;
  String whiteSpace;
  double width;

  AAStyle backgroundSet(String prop) {
    background = prop;
    return this;
  }

  AAStyle backgroundColorSet(String prop) {
    backgroundColor = prop;
    return this;
  }

  AAStyle borderSet(String prop) {
    border = prop;
    return this;
  }

  AAStyle borderRadiusSet(double prop) {
    borderRadius = "${prop}px";
    return this;
  }

  AAStyle colorSet(String prop) {
    color = prop;
    return this;
  }

  AAStyle cursorSet(String prop) {
    cursor = prop;
    return this;
  }

  AAStyle fontFamilySet(String prop) {
    fontFamily = prop;
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

  AAStyle heightSet(double prop) {
    height = prop;
    return this;
  }

  AAStyle lineWidthSet(double prop) {
    lineWidth = prop;
    return this;
  }

  AAStyle opacitySet(double prop) {
    opacity = prop;
    return this;
  }

  AAStyle paddingSet(double prop) {
    padding = "${prop}px";
    return this;
  }

  AAStyle pointerEventsSet(String prop) {
    pointerEvents = prop;
    return this;
  }

  AAStyle positionSet(String prop) {
    position = prop;
    return this;
  }

  AAStyle textAlignSet(String prop) {
    textAlign = prop;
    return this;
  }

  AAStyle textDecorationSet(String prop) {
    textDecoration = prop;
    return this;
  }

  AAStyle textOutlineSet(String prop) {
    textOutline = prop;
    return this;
  }

  AAStyle textOverflowSet(String prop) {
    textOverflow = prop;
    return this;
  }

  AAStyle topSet(String prop) {
    top = prop;
    return this;
  }

  AAStyle transitionSet(String prop) {
    transition = prop;
    return this;
  }

  AAStyle whiteSpaceSet(String prop) {
    whiteSpace = prop;
    return this;
  }

  AAStyle widthSet(double prop) {
    width = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "background": this.background,
      "backgroundColor": this.backgroundColor,
      "border": this.border,
      "borderRadius": this.borderRadius,
      "color": this.color,
      "cursor": this.cursor,
      "fontFamily": this.fontFamily,
      "fontSize": this.fontSize,
      "fontWeight": this.fontWeight,
      "height": this.height,
      "lineWidth": this.lineWidth,
      "opacity": this.opacity,
      "padding": this.padding,
      "pointerEvents": this.pointerEvents,
      "position": this.position,
      "textAlign": this.textAlign,
      "textDecoration": this.textDecoration,
      "textOutline": this.textOutline,
      "textOverflow": this.textOverflow,
      "top": this.top,
      "transition": this.transition,
      "whiteSpace": this.whiteSpace,
      "width": this.width,
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
