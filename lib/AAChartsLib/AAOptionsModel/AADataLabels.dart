import 'AAObject.dart';
import 'AAStyle.dart';

 class AADataLabels extends AAObject  {
    bool? enabled;
    String? align;
    AAStyle? style;
    String? format;
    double? rotation;
    bool? allowOverlap;
    bool? useHTML;
    double? distance;
    String? verticalAlign;
    double? x;
    double? y;
    String? color;
    String? backgroundColor;
    String? borderColor;
    double? borderRadius;
    double? borderWidth;
    String? shape;

    bool? crop;
    bool? inside;
    String? overflow;
    AAFilter? filter;
    AATextPath? textPath;
    bool? softConnector;
    String? connectorColor;
    double? connectorPadding;
    String? connectorShape;
    double? connectorWidth;
    String? crookDistance;
    String? alignTo;

     AADataLabels enabledSet(bool? prop) {
        enabled = prop;
        return this;
    }

      AADataLabels alignSet(String? prop) {
        align = prop;
        return this;
      }

     AADataLabels styleSet(AAStyle? prop) {
        style = prop;
        return this;
    }

     AADataLabels formatSet(String? prop) {
        format = prop;
        return this;
    }

     AADataLabels rotationSet(double? prop) {
        rotation = prop;
        return this;
    }

     AADataLabels allowOverlapSet(bool? prop) {
        allowOverlap = prop;
        return this;
    }

     AADataLabels useHTMLSet(bool? prop) {
        useHTML = prop;
        return this;
    }

     AADataLabels distanceSet(double? prop) {
        distance = prop;
        return this;
    }

     AADataLabels verticalAlignSet(String? prop) {
        verticalAlign = prop;
        return this;
    }

     AADataLabels xSet(double? prop) {
        x = prop;
        return this;
    }

     AADataLabels ySet(double? prop) {
        y = prop;
        return this;
    }

     AADataLabels colorSet(String? prop) {
        color = prop;
        return this;
    }

     AADataLabels backgroundColorSet(String? prop) {
        backgroundColor = prop;
        return this;
    }

     AADataLabels borderColorSet(String? prop) {
        borderColor = prop;
        return this;
    }

     AADataLabels borderRadiusSet(double? prop) {
        borderRadius = prop;
        return this;
    }

     AADataLabels borderWidthSet(double? prop) {
        borderWidth = prop;
        return this;
    }

     AADataLabels shapeSet(String? prop) {
        shape = prop;
        return this;
    }

    AADataLabels cropSet(bool? prop) {
      crop = prop;
      return this;
    }

    AADataLabels insideSet(bool? prop) {
      inside = prop;
      return this;
    }

    AADataLabels overflowSet(String? prop) {
      overflow = prop;
      return this;
    }

    AADataLabels filterSet(AAFilter? prop) {
      filter = prop;
      return this;
    }

    AADataLabels textPathSet(AATextPath? prop) {
      textPath = prop;
      return this;
    }

    AADataLabels softConnectorSet(bool? prop) {
      softConnector = prop;
      return this;
    }

    AADataLabels connectorColorSet(String? prop) {
      connectorColor = prop;
      return this;
    }

    AADataLabels connectorPaddingSet(double? prop) {
      connectorPadding = prop;
      return this;
    }

    AADataLabels connectorShapeSet(String? prop) {
      connectorShape = prop;
      return this;
    }

    AADataLabels connectorWidthSet(double? prop) {
      connectorWidth = prop;
      return this;
    }

    AADataLabels crookDistanceSet(String? prop) {
      crookDistance = prop;
      return this;
    }

    AADataLabels alignToSet(String? prop) {
      alignTo = prop;
      return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "style": this.style == null ? null : this.style?.toPureJson(),
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

class AATextPath extends AAObject {
  bool? enabled;
  Map<String, dynamic>? attributes;
  double? value;

  AATextPath enabledSet(bool? prop) {
    enabled = prop;
    return this;
  }

  AATextPath attributesSet(Map<String, dynamic>? prop) {
    attributes = prop;
    return this;
  }

  AATextPath valueSet(double? prop) {
    value = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "attributes": this.attributes,
      "value": this.value,
    };
  }
}

class AAFilter extends AAObject {
  String? property;
  String? operator;
  double? value;

  AAFilter propertySet(String? prop) {
    property = prop;
    return this;
  }

  AAFilter operatorSet(String? prop) {
    operator = prop;
    return this;
  }

  AAFilter valueSet(double? prop) {
    value = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "property": this.property,
      "operator": this.operator,
      "value": this.value,
    };
  }
}
