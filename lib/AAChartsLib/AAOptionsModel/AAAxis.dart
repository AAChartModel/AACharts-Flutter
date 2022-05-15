import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

import 'AACrosshair.dart';
import 'AALabels.dart';
import 'AAPlotBandsElement.dart';
import 'AAPlotLinesElement.dart';
import 'AATitle.dart';

class AAAxis extends AAObject {
  bool allowDecimals;
  Object alternateGridColor;
  AACrosshair crosshair; //准星线样式设置
  AATitle title;
  String type;
  AADateTimeLabelFormats dateTimeLabelFormats;
  List<AAPlotBandsElement> plotBands;
  List<AAPlotLinesElement> plotLines;
  List<String> categories;
  int linkedTo;
  bool reversed;
  bool opposite;
  double lineWidth; //坐标轴轴线宽度
  String lineColor; //坐标轴轴线线颜色
  double max; //坐标轴最大值
  double min;//坐标轴最小值（设置为0就不会有负数）
  int minRange;
  int minTickInterval; //The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours. Defaults to the closest distance between two points on the axis.
  String minorGridLineColor; //Color of the minor, secondary grid lines.
  String minorGridLineDashStyle; //The dash or dot style of the minor grid lines.
  double minorGridLineWidth; //Width of the minor, secondary grid lines.
  String minorTickColor; //Color for the minor tick marks.
  Object minorTickInterval; /*Specific tick interval in axis units for the minor ticks. On a linear axis, if "auto", the minor tick interval is calculated as a fifth of the tickInterval. If null or undefined, minor ticks are not shown.
     On logarithmic axes, the unit is the power of the value. For example, setting the minorTickInterval to 1 puts one tick on each of 0.1, 1, 10, 100 etc. Setting the minorTickInterval to 0.1 produces 9 ticks between 1 and 10, 10 and 100 etc.
    If user settings dictate minor ticks to become too dense, they don't make sense, and will be ignored to prevent performance problems.*/
  double minorTickLength; //The pixel length of the minor tick marks.
  String minorTickPosition; //The position of the minor tick marks relative to the axis line. Can be one of inside and outside. Defaults to outside.
  double minorTickWidth; //The pixel width of the minor tick mark.

  double gridLineWidth; //坐标轴网格线宽度
  String gridLineColor; //坐标轴网格线颜色
  String gridLineDashStyle; //坐标轴网格线样式
  String gridLineInterpolation;
  double off;//坐标轴垂直偏移
  AALabels labels; //用于设置坐标轴文字相关的
  bool visible; //用于设置坐标轴以及坐标轴文字是否显示
  bool startOnTick; //Whether to force the axis to start on a tick. Use this option with the minPadding option to control the axis start. 默认是：false.
  String tickColor; //坐标轴轴线下方刻度线颜色
  int tickInterval;//坐标轴刻度点间隔数(设置每隔几个点显示一个 坐标轴的内容:
  String tickmarkPlacement; //本参数只对分类轴有效。 当值为 on 时刻度线将在分类上方显示；当值为 between 时，刻度线将在两个分类中间显示。当 tickInterval 为 1 时，默认是 between，其他情况默认是 on。 默认是：null.
  double tickWidth;//坐标轴刻度线的宽度，设置为 0 时则不显示刻度线
  double tickLength;//坐标轴刻度线的长度。 默认是：10.
  String tickPosition; //刻度线相对于轴线的位置，可用的值有 inside 和 outside，分别表示在轴线的内部和外部。 默认是：outside.
  List tickPositions; // Custom chart axis coordinates

}

class AADateTimeLabelFormats extends AAObject {
  String millisecond;
  String second;
  String minute;
  String hour;
  String day;
  String week;
  String month;
  String year;

  AADateTimeLabelFormats millisecondSet(String prop) {
    millisecond = prop;
    return this;
  }

  AADateTimeLabelFormats secondSet(String prop) {
    second = prop;
    return this;
  }

  AADateTimeLabelFormats minuteSet(String prop) {
    minute = prop;
    return this;
  }

  AADateTimeLabelFormats hourSet(String prop) {
    hour = prop;
    return this;
  }

  AADateTimeLabelFormats daySet(String prop) {
    day = prop;
    return this;
  }

  AADateTimeLabelFormats weekSet(String prop) {
    week = prop;
    return this;
  }

  AADateTimeLabelFormats monthSet(String prop) {
    month = prop;
    return this;
  }

  AADateTimeLabelFormats yearSet(String prop) {
    year = prop;
    return this;
  }
}