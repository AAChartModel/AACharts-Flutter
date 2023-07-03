
import 'dart:ffi';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ChartComposer/JSFunctionForAAChartEventsComposer.dart';
import '../ChartComposer/JSFunctionForAATooltipComposer.dart';

class JSFunctionForAATooltipPage extends StatelessWidget {
  final int selectedIndex;

  const JSFunctionForAATooltipPage({ Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var aaChartView = AAChartView2();

    var aaChartOptions = chartConfigurationWithSelectedIndex(selectedIndex);
    aaChartView.aa_drawChartWithChartOptions(aaChartOptions);

    return Scaffold(
      appBar: AppBar(
        title: Text('SpecialChart'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: aaChartView
          ),
        ),
      ),
    );
  }

  //   override func chartConfigurationWithSelectedIndex(_ selectedIndex: Int) -> Any? {
  //         switch selectedIndex {
  //         case 0: return customAreaChartTooltipStyleWithSimpleFormatString() //自定义区域图表的浮动提示框样式(使用简单的字符串格式化功能)
  //         case 1: return customAreaChartTooltipStyleWithDifferentUnitSuffix() //自定义区域图表的浮动提示框样式(使用不同单位后缀)
  //         case 2: return customAreaChartTooltipStyleWithColorfulHtmlLabels() //自定义区域图表的浮动提示框样式(使用多彩的 HTML 标签格式)
  //         case 3: return customLineChartTooltipStyleWhenValueBeZeroDoNotShow() //自定义折线图表的浮动提示框样式(当值为零时,不显示浮动提示框)
  //         case 4: return customBoxplotTooltipContent() //自定义箱线图的浮动提示框内容
  //         case 5: return customStackedAndGroupedColumnChartTooltip() //自定义堆积柱状图和分组柱状图的浮动提示框内容
  //         case 6: return customArearangeChartTooltip() //自定义区域范围图的浮动提示框内容
  //         case 7: return customLineChartOriginalPointPositionByConfiguringXAxisFormatterAndTooltipFormatter() //自定义折线图的原始点位置(通过配置 X 轴的数据格式化字符串和浮动提示框的数据格式化字符串)
  //         case 8: return customTooltipWhichDataSourceComeFromOutSideRatherThanSeries() //自定义浮动提示框,其数据源来自于外部,而不是来自于图表的 series 数据
  //         case 9: return customAreasplineChartTooltipStyleByDivWithCSS() //自定义曲线图的浮动提示框样式(通过 div 标签和 CSS 样式)
  //         default:
  //             return AAOptions()
  //         }
  //     }


  AAOptions chartConfigurationWithSelectedIndex(int selectedIndex) {
    switch (selectedIndex) {
      case 0: return JSFunctionForAATooltipComposer.customAreaChartTooltipStyleWithSimpleFormatString(); //自定义区域图表的浮动提示框样式(使用简单的字符串格式化功能)
      case 1: return JSFunctionForAATooltipComposer.customAreaChartTooltipStyleWithDifferentUnitSuffix(); //自定义区域图表的浮动提示框样式(使用不同单位后缀)
      case 2: return JSFunctionForAATooltipComposer.customAreaChartTooltipStyleWithColorfulHtmlLabels(); //自定义区域图表的浮动提示框样式(使用多彩的 HTML 标签格式)
      case 3: return JSFunctionForAATooltipComposer.customLineChartTooltipStyleWhenValueBeZeroDoNotShow(); //自定义折线图表的浮动提示框样式(当值为零时,不显示浮动提示框)
      case 4: return JSFunctionForAATooltipComposer.customBoxplotTooltipContent(); //自定义箱线图的浮动提示框内容
      case 5: return JSFunctionForAATooltipComposer.customStackedAndGroupedColumnChartTooltip(); //自定义堆积柱状图和分组柱状图的浮动提示框内容
      case 6: return JSFunctionForAATooltipComposer.customArearangeChartTooltip(); //自定义区域范围图的浮动提示框内容
      case 7: return JSFunctionForAATooltipComposer.customLineChartOriginalPointPositionByConfiguringXAxisFormatterAndTooltipFormatter(); //自定义折线图的原始点位置(通过配置 X 轴的数据格式化字符串和浮动提示框的数据格式化字符串)
      case 8: return JSFunctionForAATooltipComposer.customTooltipWhichDataSourceComeFromOutSideRatherThanSeries(); //自定义浮动提示框,其数据源来自于外部,而不是来自于图表的 series 数据
      case 9: return JSFunctionForAATooltipComposer.customAreasplineChartTooltipStyleByDivWithCSS(); //自定义曲线图的浮动提示框样式(通过 div 标签和 CSS 样式)

      default: return AAOptions();
    }

  }


}