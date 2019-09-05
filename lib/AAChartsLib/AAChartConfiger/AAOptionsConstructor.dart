
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';

abstract class AAOptionsConstructor {
  static Map<String,Object> configureChartOptions(AAChartModel aaChartModel) {
    var aaChart = Map<String,Object>();
    aaChart["type"] = aaChartModel.chartType;//图表类型
    aaChart["inverted"] = aaChartModel.inverted;//设置是否反转坐标轴，使X轴垂直，Y轴水平。 如果值为 true，则 x 轴默认是 倒置 的。 如果图表中出现条形图系列，则会自动反转
    aaChart["backgroundColor"] = aaChartModel.backgroundColor;//图表背景色
    aaChart["animation"] = true;//是否开启图表渲染动画
    aaChart["pinchType"] = aaChartModel.zoomType;//设置手势缩放方向
    aaChart["panning"] = true;//设置手势缩放后是否可平移
    aaChart["polar"] = aaChartModel.polar;//是否极化图表(开启极坐标模式)
    aaChart["marginLeft"] = aaChartModel.marginLeft;//图表左边距
    aaChart["marginRight"] = aaChartModel.marginRight;//图表右边距

    var aaTitle = Map<String,Object>();
    aaTitle["text"] = aaChartModel.title;//标题文本内容
    var aaTitleStyle = Map<String,Object>();
    aaTitleStyle["color"] = aaChartModel.titleColor;//标题文字颜色
    aaTitleStyle["fontSize"] = "12px";//标题文字大小
    aaTitle["style"] = aaTitleStyle;

    var aaSubtitle = Map<String,Object>();
    aaSubtitle["text"] = aaChartModel.subtitle;//富标题文本内容
    var aaSubtitleStyle = Map<String,Object>();
    aaSubtitleStyle["color"] = aaChartModel.subTitleColor;//副标题文字颜色
    aaSubtitleStyle["fontSize"] = "9px";//副标题文字大小
    aaSubtitle["style"] = aaSubtitleStyle;

    var aaTooltip = Map<String,Object>();
    aaTooltip["enabled"] = aaChartModel.tooltipEnabled;//是否开启浮动提示框 tooltip
    aaTooltip["valueSuffix"] = aaChartModel.tooltipValueSuffix;// 浮动提示框数字的单位后缀
    aaTooltip["shared"] = true;//多组 series 数据时,是否共享浮动提示框,默认共享
    aaTooltip["crosshairs"] = aaChartModel.tooltipCrosshairs;

    var aaSeries = Map<String,Object>();
    aaSeries["stacking"] = aaChartModel.stacking;//图表堆叠样式类型
    var aaAnimation = Map<String,Object>();
    aaAnimation["duration"] = aaChartModel.animationDuration;//图表渲染的动画时间
    aaAnimation["easing"] = aaChartModel.animationType;//图表渲染的动画类型
    aaSeries["animation"] = aaAnimation;

    var aaPlotOptions = Map<String,Object>();
    aaPlotOptions["series"] = aaSeries;


    //数据点标记的相关配置
    aaPlotOptions = _configureAAPlotOptionsMarkerStyle(aaChartModel,aaSeries,aaPlotOptions);
//    //配置 aaPlotOptions 的 dataLabels 等相关内容
    aaPlotOptions = _configureAAPlotOptionsDataLabels(aaPlotOptions,aaChartModel);


    var aaLegend = Map<String,Object>();
    aaLegend["enabled"] = aaChartModel.legendEnabled;//是否显示图表的图例,默认显示
    aaLegend["layout"] = aaChartModel.legendLayout ;//图例数据项的布局。布局类型： "horizontal" 或 "vertical" 即水平布局和垂直布局 默认是：horizontal.
    aaLegend["align"] = aaChartModel.legendAlign;//设定图例在图表区中的水平对齐方式，合法值有left，center 和 right。
    aaLegend["verticalAlign"] = aaChartModel.legendVerticalAlign;//设定图例在图表区中的垂直对齐方式，合法值有 top，middle 和 bottom。垂直位置可以通过 y 选项做进一步设定。
    aaLegend["borderWidth"] = 0;
    var aaLegendItemStyle = Map<String,Object>();
    aaLegend["color"] = aaChartModel.axisColor;//图例的文字颜色,默认图例的文字颜色和X轴文字颜色一样
    aaLegend["itemStyle"] = aaLegendItemStyle;


    var aaOptions = Map<String,Object>();
    aaOptions["chart"] = aaChart;
    aaOptions["title"] = aaTitle;
    aaOptions["subtitle"] = aaSubtitle;
    aaOptions["tooltip"] = aaTooltip;
    aaOptions["legend"] = aaLegend;
    aaOptions["plotOptions"] = aaPlotOptions;
    aaOptions["colors"] = aaChartModel.colorsTheme;//图表的主体颜色数组
    aaOptions["series"] = aaChartModel.series;//图表的数据列数组
    aaOptions["axisColor"] = aaChartModel.axisColor;//图表的 x 轴颜色

    _configureAxisContentAndStyle(aaOptions,aaChartModel);

    return aaOptions;
  }

  static Map<String,Object> _configureAAPlotOptionsMarkerStyle(
      AAChartModel aaChartModel,
      Map<String,Object> aaSeries,
      Map<String,Object> aaPlotOptions) {
    String chartType = aaChartModel.chartType;
    //数据点标记相关配置，只有线性图(折线图、曲线图、折线区域填充图、曲线区域填充图,散点图)才有数据点标记
    if (   chartType == AAChartType.area
        || chartType == AAChartType.areaspline
        || chartType == AAChartType.line
        || chartType == AAChartType.spline
        || chartType == AAChartType.scatter) {
      var aaMarker = Map<String,Object>();
      aaMarker["radius"] = aaChartModel.markerRadius;//曲线连接点半径，默认是4
      aaMarker["symbol"] =aaChartModel.markerSymbol;//曲线连接点类型："circle"] = "square"] = "diamond"] = "triangle"] ="triangle-down"，默认是"circle"

      //设置曲线连接点风格样式
      if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleType.innerBlank) {
        aaMarker["fillColor"] = "#FFFFFF";//点的填充色(用来设置折线连接点的填充色)
        aaMarker["lineWidth"] = 2;//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
        aaMarker["lineColor"] = "";//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色。)
      } else if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleType.borderBlank) {
        aaMarker["lineWidth"] = 2;//外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
        aaMarker["lineColor"] = aaChartModel.backgroundColor;//外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色。)
      }

      aaSeries["marker"] = aaMarker;
      aaPlotOptions["series"] = aaSeries;
    }
    return new Map<String,dynamic>.from(aaPlotOptions);
  }


  static Map<String,Object> _configureAAPlotOptionsDataLabels (
      Map<String,Object> aaPlotOptions,
      AAChartModel aaChartModel) {

    String chartType = aaChartModel.chartType;
    var aaDataLabels = Map<String,Object>();
    aaDataLabels["enabled"] = aaChartModel.xAxisLabelsEnabled;
    var aaSomeTypeChart = Map<String,Object>();

    if (chartType == AAChartType.column
        || chartType == AAChartType.bar) {
      aaSomeTypeChart["borderWidth"] = 0;
      aaSomeTypeChart["borderRadius"] = aaChartModel.borderRadius;
      aaSomeTypeChart["dataLabels"] = aaDataLabels;
      if (aaChartModel.polar == true) {
        aaSomeTypeChart["pointPadding"] = 0;
        aaSomeTypeChart["groupPadding"] = 0.005;
      }
    } else if (chartType == AAChartType.pie) {
      aaSomeTypeChart["allowPointSelect"] = true;
      aaSomeTypeChart["cursor"] = "pointer";
      aaSomeTypeChart["showInLegend"] = aaChartModel.legendEnabled;
      aaDataLabels["format"] = "{point.name}";
      aaSomeTypeChart["dataLabels"] = aaDataLabels;
    } else {
      aaSomeTypeChart["dataLabels"] =aaDataLabels;
    }

    aaPlotOptions[chartType] = aaSomeTypeChart;

    return new Map<String,dynamic>.from(aaPlotOptions);
  }

  static void _configureAxisContentAndStyle (
      Map<String,Object> aaOptions,
      AAChartModel aaChartModel) {

    var chartType = aaChartModel.chartType;
    if (   chartType != AAChartType.pie
        && chartType != AAChartType.pyramid
        && chartType != AAChartType.funnel) {
      var aaAxisLabel = Map<String,Object>();
      aaAxisLabel["enabled"] = aaChartModel.xAxisLabelsEnabled;

      var aaXAxis = Map<String,Object>();
      aaXAxis["label"] = aaAxisLabel;
      aaXAxis["reversed"] = aaChartModel.xAxisReversed;
      aaXAxis["gridLineWidth"] = aaChartModel.xAxisGridLineWidth;
      aaXAxis["categories"] = aaChartModel.categories;
      aaXAxis["visible"] = aaChartModel.xAxisVisible;

      var aaYAxis = Map<String,Object>();
      aaYAxis["label"] = aaAxisLabel;
      aaYAxis["reversed"] = aaChartModel.yAxisReversed;
      aaYAxis["gridLineWidth"] = aaChartModel.yAxisGridLineWidth;
      aaYAxis["title"] = aaChartModel.yAxisTitle;
      aaYAxis["lineWidth"] = aaChartModel.yAxisLineWidth;
      aaYAxis["visible"] = aaChartModel.yAxisVisible;

      aaOptions["xAxis"] =aaXAxis;
      aaOptions["yAxis"] = aaYAxis;
    }
  }



}