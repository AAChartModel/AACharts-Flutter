import 'AAObject.dart';
import 'AAStyle.dart';

 class AADataLabels extends AAObject  {
    bool enabled;
    AAStyle style;
    String format;
    double rotation;
    bool allowOverlap;
    bool useHTML;
    double distance;
    String verticalAlign;
    double x;
    double y;
    String color;
    String backgroundColor;
    String borderColor;
    double borderRadius;
    double borderWidth;
    String shape;


     AADataLabels enabledSet(bool prop) {
        enabled = prop;
        return this;
    }

     AADataLabels styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

     AADataLabels formatSet(String prop) {
        format = prop;
        return this;
    }

     AADataLabels rotationSet(double prop) {
        rotation = prop;
        return this;
    }

     AADataLabels allowOverlapSet(bool prop) {
        allowOverlap = prop;
        return this;
    }

     AADataLabels useHTMLSet(bool prop) {
        useHTML = prop;
        return this;
    }

     AADataLabels distanceSet(double prop) {
        distance = prop;
        return this;
    }

     AADataLabels verticalAlignSet(String prop) {
        verticalAlign = prop;
        return this;
    }

     AADataLabels xSet(double prop) {
        x = prop;
        return this;
    }

     AADataLabels ySet(double prop) {
        y = prop;
        return this;
    }

     AADataLabels colorSet(String prop) {
        color = prop;
        return this;
    }

     AADataLabels backgroundColorSet(String prop) {
        backgroundColor = prop;
        return this;
    }

     AADataLabels borderColorSet(String prop) {
        borderColor = prop;
        return this;
    }

     AADataLabels borderRadiusSet(double prop) {
        borderRadius = prop;
        return this;
    }

     AADataLabels borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AADataLabels shapeSet(String prop) {
        shape = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "style": this.style == null ? null : this.style.toJson(),
      "format": this.format,
      "rotation": this.rotation,
      "allowOverlap": this.allowOverlap,
      "useHTML": this.useHTML,
      "distance": this.distance,
      "verticalAlign": this.verticalAlign,
      "x": this.x,
      "y": this.y,
      "color": this.color,
      "backgroundColor": this.backgroundColor,
      "borderColor": this.borderColor,
      "borderRadius": this.borderRadius,
      "borderWidth": this.borderWidth,
      "shape": this.shape,
    };
  }
}
