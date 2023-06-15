import 'AAObject.dart';

 class AACrosshair extends AAObject  {
    double? width;
    String? color;
    String? dashStyle;
    int? zIndex;

    AACrosshair widthSet(double? prop) {
        width = prop;
        return this;
    }

     AACrosshair colorSet(String? prop) {
        color = prop;
        return this;
    }

     AACrosshair dashStyleSet(String? prop) {
        dashStyle = prop;
        return this;
    }

    AACrosshair zIndexSet(int? prop) {
      zIndex = prop;
      return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "width": this.width,
      "color": this.color,
      "dashStyle": this.dashStyle,
      "zIndex": this.zIndex
    };
  }
}
