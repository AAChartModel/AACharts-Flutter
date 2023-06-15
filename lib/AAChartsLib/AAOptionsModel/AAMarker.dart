import 'AAObject.dart';

 class AAMarker extends AAObject  {
    bool? enabled;
    double? radius;
    String? symbol;
    String? fillColor;//点的填充色(用来设置折线连接点的填充色)
    double? lineWidth;//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
    Object? lineColor;//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色。)
    AAMarkerStates? states;

    AAMarker enabledSet(bool? prop) {
      enabled = prop;
      return this;
    }

     AAMarker radiusSet(double? prop) {
        radius = prop;
        return this;
    }

     AAMarker symbolSet(String? prop) {
        symbol = prop;
        return this;
    }

     AAMarker fillColorSet(String? prop) {
        fillColor = prop;
        return this;
    }

     AAMarker lineWidthSet(double? prop) {
        lineWidth = prop;
        return this;
    }

     AAMarker lineColorSet(Object? prop) {
        lineColor = prop;
        return this;
    }

    AAMarker statesSet(AAMarkerStates? prop) {
      states = prop;
      return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "radius": this.radius,
      "symbol": this.symbol,
      "fillColor": this.fillColor,
      "lineWidth": this.lineWidth,
      "lineColor": this.lineColor,
    };
  }
}

class AAMarkerStates {
  AAMarkerHover? hover;


  AAMarkerStates hoverSet(AAMarkerHover? prop) {
    hover = prop;
    return this;
  }
}

class AAMarkerHover {

  bool? enabled;
  String? fillColor;
  String? lineColor;
  double? lineWidth;
  double? lineWidthPlus;
  double? radius;
  double? radiusPlus;

  AAMarkerHover enabledSet(bool? prop) {
    enabled = prop;
    return this;
  }

  AAMarkerHover fillColorSet(String? prop) {
    fillColor = prop;
    return this;
  }

  AAMarkerHover lineColorSet(String? prop) {
    lineColor = prop;
    return this;
  }

  AAMarkerHover lineWidthSet(double? prop) {
    lineWidth = prop;
    return this;
  }

  AAMarkerHover lineWidthPlusSet(double? prop) {
    lineWidthPlus = prop;
    return this;
  }

  AAMarkerHover radiusSet(double? prop) {
    radius = prop;
    return this;
  }

  AAMarkerHover radiusPlusSet(double? prop) {
    radiusPlus = prop;
    return this;
  }

}

