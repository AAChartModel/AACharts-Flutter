import 'AAObject.dart';
import 'AAItemStyle.dart';

 class AALegend extends AAObject  {
    String? layout; //图例数据项的布局。布局类型： "horizontal" 或 "vertical" 即水平布局和垂直布局 默认是：horizontal.
    String? align; //设定图例在图表区中的水平对齐方式，合法值有left，center 和 right。
    String? verticalAlign; //设定图例在图表区中的垂直对齐方式，合法值有 top，middle 和 bottom。垂直位置可以通过 y 选项做进一步设定。
    bool? enabled;
    String? borderColor;
    double? borderWidth;
    double? itemMarginTop; //图例的每一项的顶部外边距，单位px。 默认是：0.
    AAItemStyle? itemStyle;
    double? symbolHeight;
    double? symbolPadding;
    double? symbolRadius;
    double? symbolWidth;
    double? x;
    double? y;
    bool? floating;

    AALegend layoutSet(String? prop) {
        layout = prop;
        return this;
    }

     AALegend alignSet(String? prop) {
        align = prop;
        return this;
    }

     AALegend verticalAlignSet(String? prop) {
        verticalAlign = prop;
        return this;
    }

     AALegend enabledSet(bool? prop) {
        enabled = prop;
        return this;
    }

     AALegend borderColorSet(String? prop) {
        borderColor = prop;
        return this;
    }

     AALegend borderWidthSet(double? prop) {
        borderWidth = prop;
        return this;
    }

     AALegend itemMarginTopSet(double? prop) {
        itemMarginTop = prop;
        return this;
    }

     AALegend itemStyleSet(AAItemStyle? prop) {
        itemStyle = prop;
        return this;
    }

    AALegend symbolHeightSet(double? prop) {
      symbolHeight = prop;
      return this;
    }

    AALegend symbolPaddingSet(double? prop) {
      symbolPadding = prop;
      return this;
    }

    AALegend symbolRadiusSet(double? prop) {
      symbolRadius = prop;
      return this;
    }

    AALegend symbolWidthSet(double? prop) {
      symbolWidth = prop;
      return this;
    }

     AALegend xSet(double? prop) {
        x = prop;
        return this;
    }

     AALegend ySet(double? prop) {
        y = prop;
        return this;
    }

    AALegend floatingSet(bool? prop) {
      floating = prop;
      return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "layout": this.layout,
      "align": this.align,
      "verticalAlign": this.verticalAlign,
      "enabled": this.enabled,
      "borderColor": this.borderColor,
      "borderWidth": this.borderWidth,
      "itemMarginTop": this.itemMarginTop,
      "itemStyle": this.itemStyle == null ? null : this.itemStyle?.toPureJson(),
      "x": this.x,
      "y": this.y,
    };
  }
}
