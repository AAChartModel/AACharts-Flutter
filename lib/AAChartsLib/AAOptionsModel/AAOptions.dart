import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';
import 'AAObject.dart';
import 'AAChart.dart';
import 'AATitle.dart';
import 'AASubtitle.dart';
import 'AAXAxis.dart';
import 'AAYAxis.dart';
import 'AATooltip.dart';
import 'AAPlotOptions.dart';
import 'AALegend.dart';


 class AAOptions extends AAObject  {
     AAChart chart;
     AATitle title;
     AASubtitle subtitle;
     AAXAxis xAxis;
     AAYAxis yAxis;
     AATooltip tooltip;
     AAPlotOptions plotOptions;
     List series;
     AALegend legend;
     List colors;
     bool touchEventEnabled;

     AAOptions chartSet(AAChart prop) {
        chart = prop;
        return this;
    }

     AAOptions titleSet(AATitle prop) {
        title = prop;
        return this;
    }

     AAOptions subtitleSet(AASubtitle prop) {
        subtitle = prop;
        return this;
    }

     AAOptions xAxisSet(AAXAxis prop) {
        xAxis = prop;
        return this;
    }

     AAOptions yAxisSet(Object prop) {
        yAxis = prop;
        return this;
    }

     AAOptions tooltipSet(AATooltip prop) {
        tooltip = prop;
        return this;
    }

     AAOptions plotOptionsSet(AAPlotOptions prop) {
        plotOptions = prop;
        return this;
    }

     AAOptions seriesSet(List prop) {
        series = prop;
        return this;
    }

     AAOptions legendSet(AALegend prop) {
        legend = prop;
        return this;
    }

     AAOptions colorsSet(List prop) {
        colors = prop;
        return this;
    }

     AAOptions touchEventEnabledSet(bool prop) {
        touchEventEnabled = prop;
        return this;
    }

     Map<String, dynamic> toJson() {

       List<Map<String, dynamic>> seriesList;
       if (this.series == null) {
         seriesList = null;
       } else {
         seriesList = List<Map<String, dynamic>>();
         this.series.forEach((element) {
           seriesList.add(element.toPureJson());
         });
       }

       var testMap = {
         "chart": this.chart == null ? null : this.chart.toPureJson(),
         "title": this.title == null ? null : this.title.toPureJson(),
         "subtitle": this.subtitle == null ? null : this.subtitle.toPureJson(),
         "xAxis": this.xAxis == null ? null : this.xAxis.toPureJson(),
         "yAxis": this.yAxis == null ? null : this.yAxis.toPureJson(),
         "tooltip": this.tooltip == null ? null : this.tooltip.toPureJson(),
         "plotOptions": this.plotOptions == null ? null : this.plotOptions.toPureJson(),
         "series": seriesList,
         "legend": this.legend == null ? null : this.legend.toPureJson(),
         "colors": this.colors == null ? null : this.colors,
         // "touchEventEnabled": this.touchEventEnabled == null ? null : this.touchEventEnabled,
       };

    return testMap;
  }
}
