import 'AAObject.dart';
import 'AAStyle.dart';

 class AATitle extends AAObject  {
    String? text;
    AAStyle? style;
    String? align;
    String? verticalAlign;
    double? x;
    double? y;
    bool? useHTML;

     AATitle textSet(String? prop) {
        text = prop;
        return this;
    }

     AATitle styleSet(AAStyle? prop) {
        style = prop;
        return this;
    }

     AATitle alignSet(String? prop) {
        align = prop;
        return this;
    }

     AATitle verticalAlignSet(String? prop) {
        verticalAlign = prop;
        return this;
    }

     AATitle xSet(double? prop) {
        x = prop;
        return this;
    }

     AATitle ySet(double? prop) {
        y = prop;
        return this;
    }

     AATitle useHTMLSet(bool? prop) {
        useHTML = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "text": this.text,
      "style": this.style == null ? null : this.style?.toPureJson(),
      "align": this.align,
      "verticalAlign": this.verticalAlign,
      "x": this.x,
      "y": this.y,
      "useHTML": this.useHTML,
    };
  }
}
