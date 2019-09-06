import 'package:flutter_app_learning/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:flutter_app_learning/AAChartsLib/AAOptionsModel/AAMarker.dart';

class AASeriesElement {

  String type;               //A chart type series. If the type option is not specified, it is inherited from `chart.type`.
  String name;               //The name of the series as shown in the legend, tooltip etc.
  List data;                //An array of data points for the series
  var color;               //The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the options.colors array.
  double lineWidth;          //折线图、曲线图、直方折线图、折线填充图、曲线填充图、直方折线填充图的线条宽度
  double borderWidth;       //柱形图、条形图、扇形图等图形的描边宽度
  String borderColor;        //柱形图、条形图、扇形图等图形的描边颜色
  var fillColor;            //折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色
  double fillOpacity;          //折线填充图、曲线填充图、直方折线填充图等填充图类型的填充颜色透明度 Fill opacity for the area. Note that when you set an explicit fillColor, the fillOpacity is not applied. Instead, you should define the opacity in the fillColor with an rgba color definition. 默认是：0.75. https;//api.hcharts.cn/highcharts#plotOptions.area.fillOpacity
  double threshold;           //The threshold, also called zero level or base level. For line type series this is only used in conjunction with negativeColor. default：0.
  var negativeColor;       //The color for the parts of the graph or points that are below the threshold
  String dashStyle;         //A name for the dash style to use for the graph. Applies only to series type having a graph, like line, spline, area and scatter in case it has a lineWidth.
  AADataLabels dataLabels;   //Individual data label for each point. The options are the same as the ones for `plotOptions.series.dataLabels`.
  AAMarker marker;                //Enable or disable the point marker. If null, the markers are hidden when the data is dense, and shown for more widespread data points.
  var step;                  //Whether to apply steps to the line. Possible values are left, center and right.
  bool colorByPoint;          //When using automatic point colors pulled from the `options.colors` collection, this option determines whether the chart should receive one color per series or one color per point.
  bool allowPointSelect;      //Allow this series' points to be selected by clicking on the markers, bars or pie slices
  int zIndex;                //Define the visual z index of the series.
  String innerSize;           //内部圆环半径大小占比(内部圆环半径/扇形图半径)
  AAShadow shadow;
  List zones;
  String stack;

  AASeriesElement typeSet(String prop) {
    type = prop;
    return this;
  }

  AASeriesElement nameSet(String prop) {
    name = prop;
    return this;
  }

  AASeriesElement dataSet(List prop) {
    data = prop;
    return this;
  }

  AASeriesElement colorSet(var prop) {
    color = prop;
    return this;
  }

  AASeriesElement lineWidthSet(double prop) {
    lineWidth = prop;
    return this;
  }

  AASeriesElement borderWidthSet(double prop) {
    borderWidth = prop;
    return this;
  }

  AASeriesElement borderColorSet(String prop) {
    borderColor = prop;
    return this;
  }

  AASeriesElement fillColorSet(var prop) {
    fillColor = prop;
    return this;
  }

  AASeriesElement fillOpacitySet(double prop) {
    fillOpacity = prop;
    return this;
  }

  AASeriesElement thresholdSet(double prop) {
    threshold = prop;
    return this;
  }

  AASeriesElement negativeColorSet(var prop) {
    negativeColor = prop;
    return this;
  }

  AASeriesElement dashStyleSet(String prop) {
    dashStyle = prop;
    return this;
  }

  AASeriesElement dataLabelsSet(AADataLabels prop) {
    dataLabels = prop;
    return this;
  }

  AASeriesElement markerSet(AAMarker prop) {
    marker = prop;
    return this;
  }

  AASeriesElement stepSet(var prop) {
    step = prop;
    return this;
  }

  AASeriesElement colorByPointSet(bool prop) {
    colorByPoint = prop;
    return this;
  }

  AASeriesElement allowPointSelectSet(bool prop) {
    allowPointSelect = prop;
    return this;
  }

  AASeriesElement zIndexSet(int prop) {
    zIndex = prop;
    return this;
  }

  AASeriesElement innerSizeSet(String prop) {
    innerSize = prop;
    return this;
  }

  AASeriesElement shadowSet(AAShadow prop) {
    shadow = prop;
    return this;
  }

  AASeriesElement zonesSet(List prop) {
    zones = prop;
    return this;
  }

  AASeriesElement stackSet(String prop) {
    stack = prop;
    return this;
  }

}

class AADataElement {
  String name;
  double y;
  Object color;
  AADataLabels dataLabels;
  AAMarker marker;

  AADataElement nameSet(String prop) {
    name = prop;
    return this;
  }

  AADataElement ySet(double prop) {
    y = prop;
    return this;
  }

  AADataElement colorSet(Object prop) {
    color = prop;
    return this;
  }

  AADataElement dataLabelsSet(AADataLabels prop) {
    dataLabels = prop;
    return this;
  }

  AADataElement markerSet(AAMarker prop) {
    marker = prop;
    return this;
  }
}


class AAShadow {
  String color;
  double offsetX;
  double offsetY;
  double opacity;
  double width;

  AAShadow colorSet(String prop) {
    color = prop;
    return this;
  }

  AAShadow offsetXSet(double prop) {
    offsetX = prop;
    return this;
  }

  AAShadow offsetYSet(double prop) {
    offsetY = prop;
    return this;
  }

  AAShadow opacitySet(double prop) {
    opacity = prop;
    return this;
  }

  AAShadow widthSet(double prop) {
    width = prop;
    return this;
  }

}