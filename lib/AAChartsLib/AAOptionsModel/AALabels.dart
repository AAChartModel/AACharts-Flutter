import 'package:aacharts_flutter/AAChartsLib/AATools/AAEasyTool.dart';

import 'AAObject.dart';
import 'AAStyle.dart';

 class AALabels extends AAObject  {
    String? align;//轴标签的对齐方式，可用的值有 "left"、"center" 及 "right"。默认值是根据坐标轴的位置（在图表中的位置）即标签的旋转角度进行智能判断的。 默认是：center.
    Object? autoRotation; //只针对水平轴有效，允许在防止轴标签重叠时自动旋转轴标签的角度。当空间足够时，轴标签不会被旋转。当图表变小时（主要是宽度变小） ，轴标签开始旋转对应的角度，然后会依次删除间隔的轴标签并尝试旋转数组中的角度。可以通过将此参数设置为 false 来关闭轴标签旋转（这将导致标签自动换行）。 默认是：[-45].
    double? autoRotationLimit;//当每个分类的宽度比该参数的值大很多（像素）时，轴标签将不会被自动旋转，而是以换行的形式展示轴标签。 当轴标签包含多个短词时换行展示轴标签可以使得轴标签有足够的空间，所以设置合理的自动旋转下限是非常有意义的。 默认是：80.
    double? distance;//只针对极地图有效，定义周标签与绘图区边缘的距离。 默认是：15.
    bool? enabled;//是否显示坐标轴标签 默认是：true.
    String? format;//坐标轴格式化字符串。 默认是：{value}.
    String? formatter;//坐标轴格式化字符串。 默认是：{value}.
    double? padding;//轴标签的内间距，作用是保证轴标签之间有空隙。 默认是：5.
    double? rotation;//轴标签的旋转角度 默认是：0.
    int? staggerLines;//只针对水平轴有效，定义轴标签显示行数。
    int? step;//显示 n 的倍数标签，例如设置为 2 则表示标签间隔一个轴标签显示。默认情况下，为了避免轴标签被覆盖，该参数会根据情况自动计算。可以通过设置此参数为 1 来阻止自动计算。
    AAStyle? style;//轴标签的 CSS 样式
    double? x;//相对于坐标轴刻度线的水平偏移。 默认是：0.
    double? y;//相对于坐标轴刻度线的垂直平偏移。 默认是：null.
    bool? useHTML;//HTML渲染

     AALabels alignSet(String? prop) {
        align = prop;
        return this;
    }

     AALabels autoRotationSet(Object? prop) {
        autoRotation = prop;        
        return this;
    }

     AALabels autoRotationLimitSet(double? prop) {
        autoRotationLimit = prop;
        return this;
    }

     AALabels distanceSet(double? prop) {
        distance = prop;
        return this;
    }

     AALabels enabledSet(bool? prop) {
        enabled = prop;
        return this;
    }

     AALabels formatSet(String? prop) {
        format = prop;
        return this;
    }

     AALabels formatterSet(String? prop) {
       if (prop != null) {
         formatter = AAEasyTool.pureJavaScriptFunctionString(prop);
       }
        return this;
    }

     AALabels paddingSet(double? prop) {
        padding = prop;
        return this;
    }

     AALabels rotationSet(double? prop) {
        rotation = prop;
        return this;
    }

     AALabels staggerLinesSet(int? prop) {
        staggerLines = prop;
        return this;
    }

     AALabels stepSet(int? prop) {
        step = prop;
        return this;
    }

     AALabels styleSet(AAStyle? prop) {
        style =  prop;
        return this;
    }

     AALabels xSet(double? prop) {
        x = prop;
        return this;
    }

     AALabels ySet(double? prop) {
        y = prop;
        return this;
    }

     AALabels useHTMLSet(bool? prop) {
        useHTML = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "align": this.align,
      "autoRotation": this.autoRotation,
      "autoRotationLimit": this.autoRotationLimit,
      "distance": this.distance,
      "enabled": this.enabled,
      "format": this.format,
      "formatter": this.formatter,
      "padding": this.padding,
      "rotation": this.rotation,
      "staggerLines": this.staggerLines,
      "step": this.step,
      "style": this.style == null ? null : this.style?.toPureJson(),
      "x": this.x,
      "y": this.y,
      "useHTML": this.useHTML,
    };
  }
}
