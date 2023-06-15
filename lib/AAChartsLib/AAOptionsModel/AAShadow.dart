import 'AAObject.dart';

 class AAShadow extends AAObject  {
    String? color;
    double? offsetX;
    double? offsetY;
    double? opacity;
    double? width;

     AAShadow colorSet(String? prop) {
        color = prop;
        return this;
    }

     AAShadow offsetXSet(double? prop) {
        offsetX = prop;
        return this;
    }

     AAShadow offsetYSet(double? prop) {
        offsetY = prop;
        return this;
    }

     AAShadow opacitySet(double? prop) {
        opacity = prop;
        return this;
    }

     AAShadow widthSet(double? prop) {
        width = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "color": this.color,
      "offsetX": this.offsetX,
      "offsetY": this.offsetY,
      "opacity": this.opacity,
      "width": this.width,
    };
  }
}
