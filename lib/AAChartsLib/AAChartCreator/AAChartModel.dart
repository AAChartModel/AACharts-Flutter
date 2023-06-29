import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';

enum AAChartAnimationType {
  linear,
  easeInQuad,
  easeOutQuad,
  easeInOutQuad,
  easeInCubic,
  easeOutCubic,
  easeInOutCubic,
  easeInQuart,
  easeOutQuart,
  easeInOutQuart,
  easeInQuint,
  easeOutQuint,
  easeInOutQuint,
  easeInSine,
  easeOutSine,
  easeInOutSine,
  easeInExpo,
  easeOutExpo,
  easeInOutExpo,
  easeInCirc,
  easeOutCirc,
  easeInOutCirc,
  easeOutBounce,
  easeInBack,
  easeOutBack,
  easeInOutBack,
  elastic,
  swingFromTo,
  swingFrom,
  swingTo,
  bounce,
  bouncePast,
  easeFromTo,
  easeFrom,
  easeTo
}

abstract class AAChartType {
  static const String column = 'column';          //Column series display one column per value along an X axis.
  static const String bar = 'bar';                //A bar series is a special type of column series where the columns are horizontal.
  static const String area = 'area';              //The area series type.
  static const String areaspline = 'areaspline';  //The area spline series is an area series where the graph between the points is smoothed into a spline.
  static const String line = 'line';              //A line series displays information as a series of data points connected by straight line segments.
  static const String spline = 'spline';          //A spline series is a special type of line series, where the segments between the data points are smoothed.
  static const String scatter = 'scatter';        //A scatter plot uses cartesian coordinates to display values for two variables for a set of data.
  static const String pie = 'pie';                //A pie chart is a circular graphic which is divided into slices to illustrate numerical proportion.
  static const String bubble = 'bubble';          //A bubble series is a three dimensional series type where each point renders an X, Y and Z value. Each points is drawn as a bubble where the position along the X and Y axes mark the X and Y values, and the size of the bubble relates to the Z value.
  static const String pyramid = 'pyramid';        //A pyramid series is a special type of funnel, without neck and reversed by default.
  static const String funnel = 'funnel';          //Funnel charts are a type of chart often used to visualize stages in a sales project, where the top are the initial stages with the most clients. It requires that the modules/funnel.js file is loaded.
  static const String columnrange = 'columnrange';//The column range is a cartesian series type with higher and lower Y values along an X axis. To display horizontal bars, set chart.inverted to true.
  static const String arearange = 'arearange';    //The area range series is a carteseian series with higher and lower values for each point along an X axis, where the area between the values is shaded.
  static const String areasplinerange = 'areasplinerange';//The area spline range is a cartesian series type with higher and lower Y values along an X axis. The area inside the range is colored, and the graph outlining the area is a smoothed spline.
  static const String boxplot = 'boxplot';        //A box plot is a convenient way of depicting groups of data through their five-number summaries: the smallest observation (sample minimum), lower quartile (Q1), median (Q2), upper quartile (Q3), and largest observation (sample maximum).
  static const String waterfall = 'waterfall';    //A waterfall chart displays sequentially introduced positive or negative values in cumulative columns.
  static const String polygon = 'polygon';        //A polygon series can be used to draw any freeform shape in the cartesian coordinate system. A fill is applied with the color option, and stroke is applied through lineWidth and lineColor options.
  static const String gauge = 'gauge';            //Gauges are circular plots displaying one or more values with a dial pointing to values along the perimeter.
  static const String errorbar = 'errorbar';      //Error bars are a graphical representation of the variability of data and are used on graphs to indicate the error, or uncertainty in a reported measurement.

}

abstract class AAChartZoomType {
  static const none = "none";
  static const x = "x";
  static const y = "y";
  static const xy = "xy";
}

abstract class AAChartStackingType {
  static const none = "";
  static const normal = "normal";
  static const percent = "percent";
}

abstract class AAChartSymbolType {
  static const circle = "circle";               //◉ ◉ ◉
  static const square = "square";               //◼ ◼ ◼
  static const diamond = "diamond";             //◆ ◆ ◆
  static const triangle = "triangle";           //▲ ▲ ▲
  static const triangleDown = "triangle-down";  //▼ ▼ ▼
}

abstract class AAChartSymbolStyleType {
  static const normal = "normal";
  static const innerBlank = "innerBlank";
  static const borderBlank = "borderBlank";
}

abstract class AAChartLayoutType {
  static const horizontal = "horizontal";
  static const vertical = "vertical";
}

abstract class AAChartAlignType {
  static const left = "left";
  static const center = "center";
  static const right = "right";
}

abstract class AAChartVerticalAlignType {
  static const top = "top";
  static const middle = "middle";
  static const bottom = "bottom";
}

abstract class  AAChartLineDashStyleType {
  static const solid           = 'solid';           //———————————————————————————————————
  static const shortDash       = 'shortDash';       //— — — — — — — — — — — — — — — — — —
  static const shortDot        = 'shortDot';        //ⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈⵈ
  static const shortDashDot    = 'shortDashDot';    //—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧—‧
  static const shortDashDotDot = 'shortDashDotDot'; //—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧—‧‧
  static const dot             = 'dot';             //‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧‧
  static const dash            = 'dash';            //—— —— —— —— —— —— —— —— —— —— —— ——
  static const longDash        = 'longDash';        //——— ——— ——— ——— ——— ——— ——— ——— ———
  static const dashDot         = 'dashDot';         //——‧——‧——‧——‧——‧——‧——‧——‧——‧——‧——‧——‧
  static const longDashDot     = 'longDashDot';     //———‧———‧———‧———‧———‧———‧———‧———‧———‧
  static const longDashDotDot  = 'longDashDotDot';  //———‧‧———‧‧———‧‧———‧‧———‧‧———‧‧———‧‧
}

abstract class AAChartFontWeightType {
  static const thin = "thin";
  static const regular = "regular";
  static const bold = "bold";
}


class AAChartModel {
  AAChartAnimationType? animationType; //动画类型
  int? animationDuration; //动画时间
  String? title; //标题内容
  AAStyle? titleStyle;
  String? subtitle; //副标题内容
  String? subtitleAlign;
  AAStyle? subtitleStyle;
  String? axesTextColor; //x 轴和 y 轴文字颜色
  String? chartType; //图表类型
  String? stacking; //堆积样式
  String? markerSymbol; //折线曲线连接点的类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
  String? markerSymbolStyle; //折线或者曲线的连接点是否为空心的
  String? zoomType; //缩放类型 AAChartZoomTypeX表示可沿着 x 轴进行手势缩放
  bool? inverted; //x 轴是否翻转(垂直)
  bool? xAxisReversed; //x 轴翻转
  bool? yAxisReversed; //y 轴翻转
  bool? gradientColorEnable; //是否要为渐变色
  bool? polar; //是否极化图形(变为雷达图)
  List<double>? margin;
  double? marginLeft; //图表左边距
  double? marginRight; //图表右边距
  bool? dataLabelsEnabled; //是否显示数据
  AAStyle? dataLabelsStyle;
  bool? xAxisLabelsEnabled; //x 轴是否显示数据
  AAStyle? xAxisLabelsStyle;
  int? xAxisTickInterval;
  List<String>? categories; //x 轴是否显示数据
  double? xAxisGridLineWidth; //x 轴网格线的宽度
  bool? xAxisVisible; //x 轴是否显示
  bool? yAxisVisible; //y 轴是否显示
  bool? yAxisLabelsEnabled; //y 轴是否显示数据
  String? yAxisTitle; //y 轴标题
  double? yAxisLineWidth; //y 轴轴线的宽度
  double? yAxisMin;
  double? yAxisMax;
  bool? yAxisAllowDecimals;
  num? yAxisGridLineWidth; //y 轴网格线的宽度
  bool? tooltipEnabled; //是否显示浮动提示框(默认显示)
  String? tooltipValueSuffix; //浮动提示框单位后缀
  bool? tooltipCrosshairs; //是否显示准星线(默认显示)
  List? colorsTheme; //图表主题颜色数组
  List? series; //图表的数据数组
  bool? legendEnabled; //是否显示图例
  String? legendLayout; //图例数据项的布局。布局类型： "horizontal" 或 "vertical" 即水平布局和垂直布局 默认是：horizontal.
  String? legendAlign; //设定图例在图表区中的水平对齐方式，合法值有left，center 和 right。
  String? legendVerticalAlign; //设定图例在图表区中的垂直对齐方式，合法值有 top，middle 和 bottom。垂直位置可以通过 y 选项做进一步设定。
  Object? backgroundColor; //图表背景色
  double? borderRadius; //柱状图长条图头部圆角半径(可用于设置头部的形状,仅对条形图,柱状图有效)
  double? markerRadius; //折线连接点的半径长度
  // String? titleColor; //标题颜色
  // String? subTitleColor; //副标题颜色
  String? axisColor; //x 轴和 y 轴文字颜色
  bool? touchEventEnabled; //是否支持用户触摸事件

  AAChartModel animationTypeSet(AAChartAnimationType? prop) {
    animationType = prop;
    return this;
  }

  AAChartModel animationDurationSet(int? prop) {
    animationDuration = prop;
    return this;
  }

  AAChartModel titleSet(String? prop) {
    title = prop;
    return this;
  }

  AAChartModel titleStyleSet(AAStyle? prop) {
    titleStyle = prop;
    return this;
  }

  AAChartModel subtitleSet(String? prop) {
    subtitle = prop;
    return this;
  }

  AAChartModel subtitleAlignSet(String? prop) {
    subtitleAlign = prop;
    return this;
  }

  AAChartModel subtitleStyleSet(AAStyle? prop) {
    subtitleStyle = prop;
    return this;
  }

  AAChartModel axesTextColorSet(String? prop) {
    axesTextColor = prop;
    return this;
  }

  AAChartModel chartTypeSet(String? prop) {
    chartType = prop;
    return this;
  }

  AAChartModel stackingSet(String? prop) {
    stacking = prop;
    return this;
  }

  AAChartModel markerSymbolSet(String? prop) {
    markerSymbol = prop;
    return this;
  }

  AAChartModel markerSymbolStyleSet(String? prop) {
    markerSymbolStyle = prop;
    return this;
  }

  AAChartModel zoomTypeSet(String? prop) {
    zoomType = prop;
    return this;
  }

  AAChartModel invertedSet(bool? prop) {
    inverted = prop;
    return this;
  }

  AAChartModel xAxisReversedSet(bool? prop) {
    xAxisReversed = prop;
    return this;
  }

  AAChartModel yAxisReversedSet(bool? prop) {
    yAxisReversed = prop;
    return this;
  }

  AAChartModel tooltipEnabledSet(bool? prop) {
    tooltipEnabled = prop;
    return this;
  }

  AAChartModel tooltipValueSuffixSet(String? prop) {
    tooltipValueSuffix = prop;
    return this;
  }

  AAChartModel tooltipCrosshairsSet(bool? prop) {
    tooltipCrosshairs = prop;
    return this;
  }

  AAChartModel gradientColorEnableSet(bool? prop) {
    gradientColorEnable = prop;
    return this;
  }

  AAChartModel polarSet(bool? prop) {
    polar = prop;
    return this;
  }

  AAChartModel marginSet(List<double>? prop) {
    margin = prop;
    return this;
  }

  AAChartModel dataLabelsEnabledSet(bool? prop) {
    dataLabelsEnabled = prop;
    return this;
  }

  AAChartModel dataLabelsStyleSet(AAStyle? prop) {
    dataLabelsStyle = prop;
    return this;
  }

  AAChartModel xAxisLabelsEnabledSet(bool? prop) {
    xAxisLabelsEnabled = prop;
    return this;
  }

  AAChartModel xAxisLabelsStyleSet(AAStyle? prop) {
    xAxisLabelsStyle = prop;
    return this;
  }

  AAChartModel xAxisTickIntervalSet(int? prop) {
    xAxisTickInterval = prop;
    return this;
  }

  AAChartModel categoriesSet(List<String>? prop) {
    categories = prop;
    return this;
  }

  AAChartModel xAxisGridLineWidthSet(double? prop) {
    xAxisGridLineWidth = prop;
    return this;
  }

  AAChartModel yAxisGridLineWidthSet(num? prop) {
    yAxisGridLineWidth = prop;
    return this;
  }

  AAChartModel xAxisVisibleSet(bool? prop) {
    xAxisVisible = prop;
    return this;
  }

  AAChartModel yAxisVisibleSet(bool? prop) {
    yAxisVisible = prop;
    return this;
  }

  AAChartModel yAxisLabelsEnabledSet(bool? prop) {
    yAxisLabelsEnabled = prop;
    return this;
  }

  AAChartModel yAxisTitleSet(String? prop) {
    yAxisTitle = prop;
    return this;
  }

  AAChartModel yAxisLineWidthSet(double? prop) {
    yAxisLineWidth = prop;
    return this;
  }

  AAChartModel yAxisMinSet(double? prop) {
    yAxisMin = prop;
    return this;
  }

  AAChartModel yAxisMaxSet(double? prop) {
    yAxisMax = prop;
    return this;
  }

  AAChartModel yAxisAllowDecimalsSet(bool? prop) {
    yAxisAllowDecimals = prop;
    return this;
  }

  AAChartModel colorsThemeSet(List? prop) {
    colorsTheme = prop;
    return this;
  }

  AAChartModel legendEnabledSet(bool? prop) {
    legendEnabled = prop;
    return this;
  }

  AAChartModel backgroundColorSet(Object? prop) {
    backgroundColor = prop;
    return this;
  }

  AAChartModel borderRadiusSet(double? prop) {
    borderRadius = prop;
    return this;
  }

  AAChartModel markerRadiusSet(double? prop) {
    markerRadius = prop;
    return this;
  }

  AAChartModel seriesSet(List? prop) {
    series = prop;
    return this;
  }

  AAChartModel touchEventEnabledSet(bool? prop) {
    touchEventEnabled = prop;
    return this;
  }

  AAOptions aa_toAAOptions() {
    return AAOptionsComposer.configureChartOptions(this);
  }

  // AAChartModel() {
  //    title                 = "";
  //    backgroundColor       = "#ffffff";
  //    axisColor             = "#000000";
  //    // animationType         = AAChartAnimationType.bounce as int;
  //    animationDuration     = 800;//以毫秒为单位
  //    chartType             = AAChartType.column;
  //    stacking              = AAChartStackingType.none;
  //    zoomType              = AAChartZoomType.none;//默认禁用手势缩放
  //    colorsTheme           = ["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",];
  //    dataLabelsEnabled     = true;
  //    tooltipEnabled        = true;
  //    tooltipCrosshairs     = true;
  //    xAxisLabelsEnabled    = true;
  //    xAxisVisible          = true;// X 轴默认可见
  //    yAxisVisible          = true;// Y 轴默认可见
  //    yAxisLabelsEnabled    = true;
  //    yAxisLineWidth        = 0;
  //    yAxisGridLineWidth    = 0.6;
  //    legendEnabled         = true;
  //    legendLayout          = AAChartLayoutType.horizontal;
  //    legendAlign           = AAChartAlignType.center;
  //    legendVerticalAlign   = AAChartVerticalAlignType.bottom;
  //    borderRadius          = 0; //柱状图长条图头部圆角半径可用于设置头部的形状,仅对条形图,柱状图有效,设置为1000时,柱形图或者条形图头部为楔形)
  //    markerRadius          = 5; //折线连接点的半径长度,如果设置默认值为0,那么这样就相当于不显示了
  // }
}
