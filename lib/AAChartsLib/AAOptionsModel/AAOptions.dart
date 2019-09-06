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
     Object yAxis;
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

}
