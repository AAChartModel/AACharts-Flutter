 import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

class AAStates extends AAObject {
  AAHover? hover;
  AASelect? select;
  AAInactive? inactive;

  AAStates hoverSet(AAHover? prop) {
    hover = prop;
    return this;
  }

  AAStates selectSet(AASelect? prop) {
    select = prop;
    return this;
  }

  AAStates inactiveSet(AAInactive? prop) {
    inactive = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "hover": hover?.toPureJson(),
      "select": select?.toPureJson(),
      "inactive": inactive?.toPureJson(),
    };
  }

}

 class AAHover extends AAObject{
   bool? enabled;
   String? borderColor;
   double? brightness;
   String? color;
   AAHalo? halo;
   double? lineWidth;
   double? lineWidthPlus;

   AAHover enabledSet(bool? prop) {
     enabled = prop;
     return this;
   }

   AAHover borderColorSet(String? prop) {
     borderColor = prop;
     return this;
   }

   AAHover brightnessSet(double? prop) {
     brightness = prop;
     return this;
   }

   AAHover colorSet(String? prop) {
     color = prop;
     return this;
   }

   AAHover haloSet(AAHalo? prop) {
     halo = prop;
     return this;
   }

   AAHover lineWidthSet(double? prop) {
     lineWidth = prop;
     return this;
   }

   AAHover lineWidthPlusSet(double? prop) {
     lineWidthPlus = prop;
     return this;
   }

    Map<String, dynamic> toJson() {
      return {
        "enabled": enabled,
        "borderColor": borderColor,
        "brightness": brightness,
        "color": color,
        "halo": halo?.toPureJson(),
        "lineWidth": lineWidth,
        "lineWidthPlus": lineWidthPlus,
      };
    }
 }

 class AASelect extends AAObject{
   bool? enabled;
   String? borderColor;
   String? color;
   AAHalo? halo;

   AASelect enabledSet(bool? prop) {
     enabled = prop;
     return this;
   }

   AASelect borderColorSet(String? prop) {
     borderColor = prop;
     return this;
   }

   AASelect colorSet(String? prop) {
     color = prop;
     return this;
   }

    AASelect haloSet(AAHalo? prop) {
     halo = prop;
     return this;
   }

    Map<String, dynamic> toJson() {
      return {
        "enabled": enabled,
        "borderColor": borderColor,
        "color": color,
        "halo": halo?.toPureJson(),
      };
    }
 }

 class AAInactive extends AAObject{
   bool? enabled;
   double? opacity;

   AAInactive enabledSet(bool? prop) {
     enabled = prop;
     return this;
   }

   AAInactive opacitySet(double? prop) {
     opacity = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
     return {
       "enabled": enabled,
       "opacity": opacity,
     };
   }
 }

 class AAHalo extends AAObject{
   Map? attributes;
   double? opacity;
   double? size;

   AAHalo attributesSet(AASVGAttributes? prop) {
     attributes = prop?.toPureJson();
     return this;
   }

   AAHalo opacitySet(double? prop) {
     opacity = prop;
     return this;
   }

   AAHalo sizeSet(double? prop) {
     size = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
     return {
       "attributes": attributes,
       "opacity": opacity,
       "size": size,
     };
   }
 }

 class AASVGAttributes extends AAObject{
   String? fill;
   String? stroke;
   double? strokeWidth;

   AASVGAttributes fillSet(String? prop) {
     fill = prop;
     return this;
   }

   AASVGAttributes strokeSet(String? prop) {
     stroke = prop;
     return this;
   }

   AASVGAttributes strokeWidthSet(double? prop) {
     strokeWidth = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
     return {
       "fill": fill,
       "stroke": stroke,
       "stroke-width": strokeWidth,
     };
   }
 }

