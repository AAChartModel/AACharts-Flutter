
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAnimation.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAArea.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAArearange.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAAreaspline.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AABar.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAChart.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumn.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAColumnrange.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAItemStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALine.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAMarker.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPie.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASeries.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASpline.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AASubtitle.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAXAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAYAxis.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AATooltip.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAPlotOptions.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AALegend.dart';


abstract class AAOptionsComposer {
  static AAOptions configureChartOptions(AAChartModel aaChartModel) {
    AAChart aaChart = new AAChart()
        .typeSet(aaChartModel.chartType) //绘图类型
        .invertedSet(aaChartModel.inverted) //设置是否反转坐标轴，使X轴垂直，Y轴水平。 如果值为 true，则 x 轴默认是 倒置 的。 如果图表中出现条形图系列，则会自动反转
        .backgroundColorSet(aaChartModel.backgroundColor) //设置图表的背景色Set(包含透明度的设置)
        .pinchTypeSet(aaChartModel.zoomType) //设置手势缩放方向
        .panningSet(true) //设置手势缩放后是否可平移
        .polarSet(aaChartModel.polar) //是否极化图表Set(开启极坐标模式)
        .marginLeftSet(aaChartModel.marginLeft) //图表左边距
        .marginRightSet(aaChartModel.marginRight) //图表右边距
        ;

    AATitle aaTitle = new AATitle()
        .textSet(aaChartModel.title) //标题文本内容
        .styleSet(aaChartModel.titleStyle)
    ;

    AASubtitle aaSubtitle = new AASubtitle()
        .textSet(aaChartModel.subtitle) //副标题内容
        .alignSet(aaChartModel.subtitleAlign) //图表副标题文本水平对齐方式。可选的值有 “left”，”center“和“right”。 默认是：center.
        .styleSet(aaChartModel.subtitleStyle)
    ;

    AATooltip aaTooltip = new AATooltip()
        .enabledSet(aaChartModel.tooltipEnabled) //启用浮动提示框
        .sharedSet(true) //多组数据共享一个浮动提示框
        .valueSuffixSet(aaChartModel.tooltipValueSuffix) //浮动提示框的单位名称后缀
        ;

    AAPlotOptions aaPlotOptions = new AAPlotOptions()
        .seriesSet(new AASeries()
        .stackingSet(aaChartModel.stacking) //设置是否百分比堆叠显示图形
    )
    ;


    if (aaChartModel.animationType != AAChartAnimationType.linear) {
      aaPlotOptions.series?.animationSet((new AAAnimation()
          .easingSet(aaChartModel.animationType)
          .durationSet(aaChartModel.animationDuration)
      ));
    }


    _configureAAPlotOptionsMarkerStyle(aaChartModel,aaPlotOptions);
    _configureAAPlotOptionsDataLabels(aaPlotOptions,aaChartModel);

    AALegend aaLegend = new AALegend()
        .enabledSet(aaChartModel.legendEnabled) //是否显示 legend
        .itemStyleSet(new AAItemStyle()
        .colorSet(aaChartModel.axesTextColor))
    ;

    AAOptions aaOptions = new AAOptions()
        .chartSet(aaChart)
        .titleSet(aaTitle)
        .subtitleSet(aaSubtitle)
        .tooltipSet(aaTooltip)
        .plotOptionsSet(aaPlotOptions)
        .legendSet(aaLegend)
        .seriesSet(aaChartModel.series)
        .colorsSet(aaChartModel.colorsTheme) //设置颜色主题
        .touchEventEnabledSet(aaChartModel.touchEventEnabled) //是否支持点击事件
        ;

    _configureAxisContentAndStyle(aaOptions,aaChartModel);

    return aaOptions;
  }

  static void _configureAAPlotOptionsMarkerStyle(
      AAChartModel aaChartModel,
      AAPlotOptions aaPlotOptions) {
    String? chartType = aaChartModel.chartType;
    //数据点标记相关配置，只有线性图Set(折线图、曲线图、折线区域填充图、曲线区域填充图,散点图)才有数据点标记
    if (   chartType == AAChartType.area
        || chartType == AAChartType.areaspline
        || chartType == AAChartType.line
        || chartType == AAChartType.spline
        || chartType == AAChartType.scatter) {
      AAMarker aaMarker = new AAMarker()
          .radiusSet(aaChartModel.markerRadius) //曲线连接点半径，默认是4
          .symbolSet(aaChartModel.markerSymbol); //曲线点类型："circle", "square", "diamond", "triangle","triangle-down"，默认是"circle"
      if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleType.innerBlank) {
        aaMarker.fillColorSet("#ffffff") //点的填充色(用来设置折线连接点的填充色)
            .lineWidthSet(2) //外沿线的宽度(用来设置折线连接点的轮廓描边的宽度)
            .lineColorSet(""); //外沿线的颜色(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色)
      } else if (aaChartModel.markerSymbolStyle == AAChartSymbolStyleType.borderBlank) {
        aaMarker.lineWidthSet(2)
            .lineColorSet(aaChartModel.backgroundColor);
      }
      AASeries? aaSeries = aaPlotOptions.series;
      aaSeries?.markerSet(aaMarker);

    }
  }


  static void _configureAAPlotOptionsDataLabels(
      AAPlotOptions aaPlotOptions,
      AAChartModel aaChartModel) {
    String? chartType = aaChartModel.chartType;

    AADataLabels aaDataLabels = new AADataLabels()
        .enabledSet(aaChartModel.dataLabelsEnabled);
    if (aaChartModel.dataLabelsEnabled == true) {
      aaDataLabels = aaDataLabels
          .styleSet(aaChartModel.dataLabelsStyle);
    }

    switch (chartType) {
      case AAChartType.column:
        AAColumn aaColumn = new AAColumn()
            .borderWidthSet(0)
            .borderRadiusSet(aaChartModel.borderRadius)
            .dataLabelsSet(aaDataLabels);
        if (aaChartModel.polar == true) {
          aaColumn.pointPaddingSet(0)
              .groupPaddingSet(0.005);
        }
        aaPlotOptions.columnSet(aaColumn);
        break;
      case AAChartType.bar:
        AABar aaBar = new AABar()
            .borderWidthSet(0)
            .borderRadiusSet(aaChartModel.borderRadius)
            .dataLabelsSet(aaDataLabels);
        if (aaChartModel.polar == true) {
          aaBar.pointPaddingSet(0)
              .groupPaddingSet(0.005);
        }
        aaPlotOptions.barSet(aaBar);
        break;
      case AAChartType.area:
        aaPlotOptions.areaSet(new AAArea().dataLabelsSet(aaDataLabels));
        break;
      case AAChartType.areaspline:
        aaPlotOptions.areasplineSet(new AAAreaspline().dataLabelsSet(aaDataLabels));
        break;
      case AAChartType.line:
        aaPlotOptions.lineSet(new AALine().dataLabelsSet(aaDataLabels));
        break;
      case AAChartType.spline:
        aaPlotOptions.splineSet(new AASpline().dataLabelsSet(aaDataLabels));
        break;
      case AAChartType.pie:
        AAPie aaPie = new AAPie()
            .allowPointSelectSet(true)
            .cursorSet("pointer")
            .showInLegendSet(true);
        if (aaChartModel.dataLabelsEnabled == true) {
          aaDataLabels.formatSet("<b>{point.name}</b>: {point.percentage:.1f} %");
        }
        aaPie.dataLabelsSet(aaDataLabels);
        aaPlotOptions.pieSet(aaPie);
        break;
      case AAChartType.columnrange:
        AAColumnrange aaColumnrange = new AAColumnrange()
            .borderRadiusSet(0) //The color of the border surrounding each column or bar
            .borderWidthSet(0) //The corner radius of the border surrounding each column or bar. default：0
            .dataLabelsSet(aaDataLabels);
        aaPlotOptions.columnrangeSet(aaColumnrange);
        break;
      case AAChartType.arearange:
        AAArearange aaArearange = new AAArearange()
            .dataLabelsSet(aaDataLabels);
        aaPlotOptions.arearangeSet(aaArearange);
        break;
    }
  }

  static void _configureAxisContentAndStyle (
      AAOptions aaOptions,
      AAChartModel aaChartModel) {
    String? chartType = aaChartModel.chartType;
    //x 轴和 Y 轴的相关配置,扇形图、金字塔图和漏斗图则不需要设置 X 轴和 Y 轴的相关内容
    if (   chartType != AAChartType.pie
        && chartType != AAChartType.pyramid
        && chartType != AAChartType.funnel) {
      bool? aaXAxisLabelsEnabled = aaChartModel.xAxisLabelsEnabled;
      AALabels aaXAxisLabels = new AALabels()
          .enabledSet(aaXAxisLabelsEnabled);//设置 x 轴是否显示文字
      if (aaXAxisLabelsEnabled == true) {
        aaXAxisLabels.styleSet( new AAStyle()
            .colorSet(aaChartModel.axesTextColor)
        );
      }

      AAXAxis aaXAxis = new AAXAxis()
          .labelsSet(aaXAxisLabels) //设置 x 轴是否显示文字
          .reversedSet(aaChartModel.xAxisReversed)
          .gridLineWidthSet(aaChartModel.xAxisGridLineWidth) //x轴网格线宽度
          .categoriesSet(aaChartModel.categories)
          .visibleSet(aaChartModel.xAxisVisible) //x轴是否可见
          .tickIntervalSet(aaChartModel.xAxisTickInterval)
      ;//x轴坐标点间隔数

      bool? aaYAxisLabelsEnabled = aaChartModel.yAxisLabelsEnabled;
      AALabels aaYAxisLabels = new AALabels()
          .enabledSet(aaChartModel.yAxisLabelsEnabled);
      if (aaYAxisLabelsEnabled == true) {
        aaYAxisLabels.styleSet(new AAStyle()
            .colorSet(aaChartModel.axesTextColor)
        );
      }

      AAYAxis aaYAxis = new AAYAxis()
          .labelsSet(aaYAxisLabels) //设置 y 轴是否显示数字
          .minSet(aaChartModel.yAxisMin) //设置 y 轴最小值,最小值等于零就不能显示负值了
          .maxSet(aaChartModel.yAxisMax) //y轴最大值
          .allowDecimalsSet(aaChartModel.yAxisAllowDecimals) //是否允许显示小数
          .reversedSet(aaChartModel.yAxisReversed)
          .gridLineWidthSet(aaChartModel.yAxisGridLineWidth) //y轴网格线宽度
          .titleSet(
          new AATitle()
              .textSet(aaChartModel.yAxisTitle)
          .styleSet(
          new AAStyle()
              .colorSet(aaChartModel.axesTextColor))
      ) //y 轴标题
          .lineWidthSet(aaChartModel.yAxisLineWidth) //设置 y轴轴线的宽度,为0即是隐藏 y轴轴线
          .visibleSet(aaChartModel.yAxisVisible)
      ;

      aaOptions.xAxisSet(aaXAxis)
          .yAxisSet(aaYAxis);
    }
  }



}