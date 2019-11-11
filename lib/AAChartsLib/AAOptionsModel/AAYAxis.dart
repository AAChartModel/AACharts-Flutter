import 'AAPlotBandsElement.dart';
import 'AAPlotLinesElement.dart';
import 'AATitle.dart';
import 'AALabels.dart';
import 'AACrosshair.dart';

 class AAYAxis {
   AATitle title;
   List<AAPlotBandsElement> plotBands;
   List<AAPlotLinesElement> plotLines;
   List<String> categories;
   bool reversed;
   double lineWidth; //x轴轴线宽度
   String lineColor; //x轴轴线线颜色
   bool allowDecimals;
   double max; //x轴最大值
   double min;//x轴最小值（设置为0就不会有负数）
   String tickColor; //x轴轴线下方刻度线颜色
   double gridLineWidth; //x轴网格线宽度
   String gridLineColor; //x轴网格线颜色
   String gridLineDashStyle; //x轴网格线样式
   double off;//x轴垂直偏移
   AALabels labels; //用于设置 x 轴文字相关的
   bool visible; //用于设置 x 轴以及 x 轴文字是否显示
   bool opposite;//是否将坐标轴显示在对立面，默认情况下 x 轴是在图表的下方显示，y 轴是在左方，坐标轴显示在对立面后，x 轴是在上方显示，y 轴是在右方显示（即坐标轴会显示在对立面）。该配置一般是用于多坐标轴区分展示，另外在 Highstock 中，y 轴默认是在对立面显示的。 默认是：false.
   bool startOnTick; //Whether to force the axis to start on a tick. Use this option with the minPadding option to control the axis start. 默认是：false.
   int tickInterval;//x轴刻度点间隔数Set(设置每隔几个点显示一个 X轴的内容:
   AACrosshair crosshair; //准星线样式设置
   AALabels stackLabels;
   String tickmarkPlacement; //本参数只对分类轴有效。 当值为 on 时刻度线将在分类上方显示；当值为 between 时，刻度线将在两个分类中间显示。当 tickInterval 为 1 时，默认是 between，其他情况默认是 on。 默认是：null.
   double tickWidth;//坐标轴刻度线的宽度，设置为 0 时则不显示刻度线
   double tickLength;//坐标轴刻度线的长度。 默认是：10.
   String tickPosition; //刻度线相对于轴线的位置，可用的值有 inside 和 outside，分别表示在轴线的内部和外部。 默认是：outside.

   AAYAxis titleSet(AATitle prop) {
     title = prop;
     return this;
   }

   AAYAxis plotBandsSet(List<AAPlotBandsElement> prop) {
   plotBands = prop;
   return this;
   }

   AAYAxis plotLinesSet(List<AAPlotLinesElement> prop) {
   plotLines = prop;
   return this;
   }

   AAYAxis categoriesSet(List<String> prop) {
   categories = prop;
   return this;
   }

   AAYAxis reversedSet(bool prop) {
   reversed = prop;
   return this;
   }

   AAYAxis lineWidthSet(double prop) {
   lineWidth = prop;
   return this;
   }

   AAYAxis lineColorSet(String prop) {
   lineColor = prop;
   return this;
   }

   AAYAxis allowDecimalsSet(bool prop) {
     allowDecimals = prop;
     return this;
   }

   AAYAxis maxSet(double prop) {
   max = prop;
   return this;
   }

   AAYAxis minSet(double prop) {
   min = prop;
   return this;
   }

   AAYAxis tickColorSet(String prop) {
   tickColor = prop;
   return this;
   }

   AAYAxis gridLineWidthSet(double prop) {
   gridLineWidth = prop;
   return this;
   }

   AAYAxis gridLineColorSet(String prop) {
   gridLineColor = prop;
   return this;
   }

   AAYAxis gridLineDashStyleSet(String prop) {
   gridLineDashStyle = prop;
   return this;
   }

   AAYAxis offSet(double prop) {
   off = prop;
   return this;
   }

   AAYAxis labelsSet(AALabels prop) {
   labels = prop;
   return this;
   }

   AAYAxis visibleSet(bool prop) {
   visible = prop;
   return this;
   }

   AAYAxis oppositeSet(bool prop) {
     opposite = prop;
     return this;
   }

   AAYAxis startOnTickSet(bool prop) {
   startOnTick = prop;
   return this;
   }

   AAYAxis tickIntervalSet(int prop) {
   tickInterval = prop;
   return this;
   }

   AAYAxis crosshairSet(AACrosshair prop) {
   crosshair = prop;
   return this;
   }

   AAYAxis stackLabelsSet(AALabels prop) {
     stackLabels = prop;
     return this;
   }

   AAYAxis tickmarkPlacementSet(String prop) {
   tickmarkPlacement = prop;
   return this;
   }

   AAYAxis tickWidthSet(double prop) {
   tickWidth = prop;
   return this;
   }

   AAYAxis tickLengthSet(double prop) {
   tickLength = prop;
   return this;
   }

   AAYAxis tickPositionSet(String prop) {
   tickPosition = prop;
   return this;
   }

}
