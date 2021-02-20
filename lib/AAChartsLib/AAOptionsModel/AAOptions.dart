import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AASeriesElement.dart';

import 'AAChart.dart';
import 'AATitle.dart';
import 'AASubtitle.dart';
import 'AAXAxis.dart';
import 'AAYAxis.dart';
import 'AATooltip.dart';
import 'AAPlotOptions.dart';
import 'AALegend.dart';


 class AAOptions {
     AAChart chart;
     AATitle title;
     AASubtitle subtitle;
     AAXAxis xAxis;
     AAYAxis yAxis;
     AATooltip tooltip;
     AAPlotOptions plotOptions;
     List<AASeriesElement> series;
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

     AAOptions seriesSet(List<AASeriesElement> prop) {
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
    return {
      "chart": this.chart == null ? null : this.chart.toJson(),
      "title": this.title == null ? null : this.title.toJson(),
      "subtitle": this.subtitle == null ? null : this.subtitle.toJson(),
      "xAxis": this.xAxis == null ? null : this.xAxis.toJson(),
      "yAxis": this.yAxis == null ? null : this.yAxis.toJson(),
      "tooltip": this.tooltip == null ? null : this.tooltip.toJson(),
      "plotOptions": this.plotOptions == null ? null : this.plotOptions.toJson(),
      "series": this.series == null ? null : this.series,
      "legend": this.legend == null ? null : this.legend.toJson(),
      "colors": this.colors == null ? null : this.colors,
      "touchEventEnabled": this.touchEventEnabled,
    };
  }
}
