import 'AAObject.dart';
 import 'AAStyle.dart';

class AALabel extends AAObject  {
   String  align;//标签的对齐方式，可用的值有 "left"、"center" 及 "right"。默认值是根据坐标轴的位置（在图表中的位置）即标签的旋转角度进行智能判断的。 默认是：center.
   int  rotation;//标签的旋转角度 默认是：0.
   String  text;//文字
   String  textAlign;//文字对齐
   bool useHTML;//HTML渲染
   String  verticalAlign;//竖直对齐
   AAStyle style;//轴标签的 CSS 样式
   double  x;//水平偏移
   double  y;// 竖直偏移

   AALabel alignSet(String prop) {
    align = prop;
    return this;
  }

   AALabel rotationSet(int prop) {
    rotation = prop;
    return this;
  }

   AALabel textSet(String prop) {
    text = prop;
    return this;
  }

   AALabel textAlignSet(String prop) {
    textAlign = prop;
    return this;
  }

   AALabel useHTMLSet(bool prop) {
    useHTML = prop;
    return this;
  }

   AALabel verticalAlignSet(String prop) {
    verticalAlign = prop;
    return this;
  }

   AALabel styleSet(AAStyle prop) {
    style = prop;
    return this;
  }

   AALabel xSet(double prop) {
    x = prop;
    return this;
  }

   AALabel ySet(double prop) {
    y = prop;
    return this;
  }

   Map<String, dynamic> toJson() {
     return {
       "align": this.align,
       "rotation": this.rotation,
       "text": this.text,
       "textAlign": this.textAlign,
       "useHTML": this.useHTML,
       "verticalAlign": this.verticalAlign,
       "style": this.style == null ? null : this.style.toPureJson(),
       "x": this.x,
       "y": this.y,
     };
   }

}