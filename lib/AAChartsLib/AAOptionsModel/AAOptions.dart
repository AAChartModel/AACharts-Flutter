import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'AACredits.dart';
import 'AALang.dart';
import 'AAObject.dart';
import 'AAChart.dart';
import 'AAPane.dart';
import 'AATitle.dart';
import 'AASubtitle.dart';
import 'AAXAxis.dart';
import 'AAYAxis.dart';
import 'AATooltip.dart';
import 'AAPlotOptions.dart';
import 'AALegend.dart';


 class AAOptions extends AAObject  {
     AAChart? chart;
     AATitle? title;
     AASubtitle? subtitle;
     AAXAxis? xAxis;
     AAYAxis? yAxis;
     List<AAXAxis>? xAxisArray;
     List<AAYAxis>? yAxisArray;
     AATooltip? tooltip;
     AAPlotOptions? plotOptions;
     List? series;
     AALegend? legend;
     AAPane? pane;
     List? colors;
     AACredits? credits;
     AALang? defaultOptions;
     bool? touchEventEnabled;

     AAOptions chartSet(AAChart? prop) {
        chart = prop;
        return this;
    }

     AAOptions titleSet(AATitle? prop) {
        title = prop;
        return this;
    }

     AAOptions subtitleSet(AASubtitle? prop) {
        subtitle = prop;
        return this;
    }

     AAOptions xAxisSet(AAXAxis? prop) {
        xAxis = prop;
        return this;
    }

     AAOptions yAxisSet(AAYAxis? prop) {
        yAxis = prop;
        return this;
    }

     AAOptions xAxisArraySet(List<AAXAxis>? prop) {
       xAxisArray = prop;
       return this;
     }

     AAOptions yAxisArraySet(List<AAYAxis>? prop) {
       yAxisArray = prop;
       return this;
     }

     AAOptions tooltipSet(AATooltip? prop) {
        tooltip = prop;
        return this;
    }

     AAOptions plotOptionsSet(AAPlotOptions? prop) {
        plotOptions = prop;
        return this;
    }

     AAOptions seriesSet(List? prop) {
        series = prop;
        return this;
    }

     AAOptions legendSet(AALegend? prop) {
        legend = prop;
        return this;
    }

     AAOptions paneSet(AAPane? prop) {
       pane = prop;
       return this;
     }

     AAOptions colorsSet(List? prop) {
        colors = prop;
        return this;
    }

    AAOptions creditsSet(AACredits? prop) {
       credits = prop;
       return this;
     }

     AAOptions defaultOptionsSet(AALang? prop) {
       defaultOptions = prop;
       return this;
     }

     AAOptions touchEventEnabledSet(bool? prop) {
        touchEventEnabled = prop;
        return this;
    }

     Map<String, dynamic> toJson() {

       List<Map<String, dynamic>>? xAxisArray;
       if (this.xAxisArray == null) {
         xAxisArray = null;
       } else {
         xAxisArray = [];
         this.xAxisArray?.forEach((element) {
           var elementJson = element.toPureJson();
            if (elementJson != null) {
              xAxisArray?.add(elementJson);
            }
         });
       }

       List<Map<String, dynamic>>? yAxisArray;
       if (this.yAxisArray == null) {
         yAxisArray = null;
       } else {
         yAxisArray = [];
         this.yAxisArray?.forEach((element) {
           var elementJson = element.toPureJson();
           if (elementJson != null) {
             yAxisArray?.add(elementJson);
           }
         });
       }

       List<Map<String, dynamic>>? seriesList;
       if (this.series == null) {
         seriesList = null;
       } else {
         seriesList = [];
         this.series?.forEach((element) {
           seriesList?.add(element.toPureJson());
         });
       }

       var testMap = {
         "chart": this.chart == null ? null : this.chart?.toPureJson(),
         "title": this.title == null ? null : this.title?.toPureJson(),
         "subtitle": this.subtitle == null ? null : this.subtitle?.toPureJson(),
         "xAxis": this.xAxis == null ? null : this.xAxis?.toPureJson(),
         "yAxis": this.yAxis == null ? null : this.yAxis?.toPureJson(),
         "xAxisArray": xAxisArray,
         "yAxisArray": yAxisArray,
         "tooltip": this.tooltip == null ? null : this.tooltip?.toPureJson(),
         "plotOptions": this.plotOptions == null ? null : this.plotOptions?.toPureJson(),
         "series": seriesList,
         "legend": this.legend == null ? null : this.legend?.toPureJson(),
         "pane": this.pane == null ? null : this.pane?.toPureJson(),
         "colors": this.colors == null ? null : this.colors,
         "credits": this.credits == null ? null : this.credits?.toPureJson(),
         "defaultOptions": this.defaultOptions == null ? null : this.defaultOptions?.toPureJson(),

         // "touchEventEnabled": this.touchEventEnabled == null ? null : this.touchEventEnabled,
       };

       //将所有的空值去掉
        testMap.removeWhere((key, value) => value == null);

    return testMap;
  }
}
