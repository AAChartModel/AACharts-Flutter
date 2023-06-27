import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AABubble.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAScatter.dart';

import 'AAObject.dart';
import 'AAColumn.dart';
import 'AALine.dart';
import 'AAPie.dart';
import 'AABar.dart';
import 'AASpline.dart';
import 'AAArea.dart';
import 'AAAreaspline.dart';
import 'AAColumnrange.dart';
import 'AAArearange.dart';
import 'AASeries.dart';

 class AAPlotOptions extends AAObject  {
     AAColumn? column;
     AABar? bar;
     AALine? line;
     AASpline? spline;
     AAArea? area;
     AAAreaspline? areaspline;
     AAPie? pie;
     AABubble? bubble;
     AAColumnrange? columnrange;
     AAArearange? arearange;
     AASeries? series;
     AAScatter? scatter;


     AAPlotOptions columnSet(AAColumn? prop) {
        column = prop;
        return this;
    }

     AAPlotOptions barSet(AABar? prop) {
       bar = prop;
       return this;
     }

     AAPlotOptions lineSet(AALine? prop) {
        line = prop;
        return this;
    }

     AAPlotOptions splineSet(AASpline? prop) {
        spline = prop;
        return this;
    }

     AAPlotOptions areaSet(AAArea? prop) {
        area = prop;
        return this;
    }

     AAPlotOptions areasplineSet(AAAreaspline? prop) {
        areaspline = prop;
        return this;
    }

     AAPlotOptions pieSet(AAPie? prop) {
       pie = prop;
       return this;
     }

     AAPlotOptions bubbleSet(AABubble? prop) {
       bubble = prop;
       return this;
     }

     AAPlotOptions columnrangeSet(AAColumnrange? prop) {
        columnrange = prop;
        return this;
    }

     AAPlotOptions arearangeSet(AAArearange? prop) {
        arearange = prop;
        return this;
    }

     AAPlotOptions seriesSet(AASeries? prop) {
        series = prop;
        return this;
    }

      AAPlotOptions scatterSet(AAScatter? prop) {
          scatter = prop;
          return this;
      }

     Map<String, dynamic> toJson() {
    return {
      "column": this.column == null ? null : this.column?.toPureJson(),
      "line": this.line == null ? null : this.line?.toPureJson(),
      "pie": this.pie == null ? null : this.pie?.toPureJson(),
      "bar": this.bar == null ? null : this.bar?.toPureJson(),
      "spline": this.spline == null ? null : this.spline?.toPureJson(),
      "area": this.area == null ? null : this.area?.toPureJson(),
      "areaspline": this.areaspline == null ? null : this.areaspline?.toPureJson(),
      "columnrange": this.columnrange == null ? null : this.columnrange?.toPureJson(),
      "arearange": this.arearange == null ? null : this.arearange?.toPureJson(),
      "series": this.series == null ? null : this.series?.toPureJson(),
    };
  }
}
