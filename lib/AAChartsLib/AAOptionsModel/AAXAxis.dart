import 'AAObject.dart';
import 'AAPlotBandsElement.dart';
import 'AAPlotLinesElement.dart';
import 'AALabels.dart';
import 'AACrosshair.dart';

class AAXAxis extends AAObject {
     List<AAPlotBandsElement> plotBands;
     List<AAPlotLinesElement> plotLines;
     List<String> categories;
     bool reversed;
     double lineWidth; //x轴轴线宽度
     String lineColor; //x轴轴线线颜色
     double max; //x轴最大值
     double min;//x轴最小值（设置为0就不会有负数）
     String tickColor; //x轴轴线下方刻度线颜色
     double gridLineWidth; //x轴网格线宽度
     String gridLineColor; //x轴网格线颜色
     String gridLineDashStyle; //x轴网格线样式
     double off;//x轴垂直偏移
     AALabels labels; //用于设置 x 轴文字相关的
     bool visible; //用于设置 x 轴以及 x 轴文字是否显示
     bool startOnTick; //Whether to force the axis to start on a tick. Use this option with the minPadding option to control the axis start. 默认是：false.
     int tickInterval;//x轴刻度点间隔数Set(设置每隔几个点显示一个 X轴的内容:
     AACrosshair crosshair; //准星线样式设置
     String tickmarkPlacement; //本参数只对分类轴有效。 当值为 on 时刻度线将在分类上方显示；当值为 between 时，刻度线将在两个分类中间显示。当 tickInterval 为 1 时，默认是 between，其他情况默认是 on。 默认是：null.
     double tickWidth;//坐标轴刻度线的宽度，设置为 0 时则不显示刻度线
     double tickLength;//坐标轴刻度线的长度。 默认是：10.
     String tickPosition; //刻度线相对于轴线的位置，可用的值有 inside 和 outside，分别表示在轴线的内部和外部。 默认是：outside.


     AAXAxis plotBandsSet(List<AAPlotBandsElement> prop) {
        plotBands = prop;
        return this;
    }

     AAXAxis plotLinesSet(List<AAPlotLinesElement> prop) {
        plotLines = prop;
        return this;
    }

     AAXAxis categoriesSet(List<String> prop) {
        categories = prop;
        return this;
    }

     AAXAxis reversedSet(bool prop) {
        reversed = prop;
        return this;
    }

     AAXAxis lineWidthSet(double prop) {
        lineWidth = prop;
        return this;
    }

     AAXAxis lineColorSet(String prop) {
        lineColor = prop;
        return this;
    }

     AAXAxis maxSet(double prop) {
        max = prop;
        return this;
    }

     AAXAxis minSet(double prop) {
        min = prop;
        return this;
    }

     AAXAxis tickColorSet(String prop) {
        tickColor = prop;
        return this;
    }

     AAXAxis gridLineWidthSet(double prop) {
        gridLineWidth = prop;
        return this;
    }

     AAXAxis gridLineColorSet(String prop) {
        gridLineColor = prop;
        return this;
    }

     AAXAxis gridLineDashStyleSet(String prop) {
        gridLineDashStyle = prop;
        return this;
    }

     AAXAxis offSet(double prop) {
        off = prop;
        return this;
    }

     AAXAxis labelsSet(AALabels prop) {
        labels = prop;
        return this;
    }

     AAXAxis visibleSet(bool prop) {
        visible = prop;
        return this;
    }

     AAXAxis startOnTickSet(bool prop) {
        startOnTick = prop;
        return this;
    }

     AAXAxis tickIntervalSet(int prop) {
        tickInterval = prop;
        return this;
    }

     AAXAxis crosshairSet(AACrosshair prop) {
        crosshair = prop;
        return this;
    }

     AAXAxis tickmarkPlacementSet(String prop) {
        tickmarkPlacement = prop;
        return this;
    }

     AAXAxis tickWidthSet(double prop) {
        tickWidth = prop;
        return this;
    }

     AAXAxis tickLengthSet(double prop) {
        tickLength = prop;
        return this;
    }

     AAXAxis tickPositionSet(String prop) {
        tickPosition = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "plotBands": this.plotBands,
      "plotLines": this.plotLines,
      "categories": this.categories,
      "reversed": this.reversed,
      "lineWidth": this.lineWidth,
      "lineColor": this.lineColor,
      "max": this.max,
      "min": this.min,
      "tickColor": this.tickColor,
      "gridLineWidth": this.gridLineWidth,
      "gridLineColor": this.gridLineColor,
      "gridLineDashStyle": this.gridLineDashStyle,
      "off": this.off,
      "labels": this.labels == null ? null : this.labels.toJson(),
      "visible": this.visible,
      "startOnTick": this.startOnTick,
      "tickInterval": this.tickInterval,
      "crosshair": this.crosshair == null ? null : this.crosshair.toJson(),
      "tickmarkPlacement": this.tickmarkPlacement,
      "tickWidth": this.tickWidth,
      "tickLength": this.tickLength,
      "tickPosition": this.tickPosition,
    };
  }
}
