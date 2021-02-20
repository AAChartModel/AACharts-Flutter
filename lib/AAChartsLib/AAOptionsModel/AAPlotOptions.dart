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

 class AAPlotOptions {
     AAColumn column;
     AALine line;
     AAPie pie;
     AABar bar;
     AASpline spline;
     AAArea area;
     AAAreaspline areaspline;
     AAColumnrange columnrange;
     AAArearange arearange;
     AASeries series;


     AAPlotOptions columnSet(AAColumn prop) {
        column = prop;
        return this;
    }

     AAPlotOptions lineSet(AALine prop) {
        line = prop;
        return this;
    }

     AAPlotOptions pieSet(AAPie prop) {
        pie = prop;
        return this;
    }

     AAPlotOptions barSet(AABar prop) {
        bar = prop;
        return this;
    }

     AAPlotOptions splineSet(AASpline prop) {
        spline = prop;
        return this;
    }

     AAPlotOptions areaSet(AAArea prop) {
        area = prop;
        return this;
    }

     AAPlotOptions areasplineSet(AAAreaspline prop) {
        areaspline = prop;
        return this;
    }

     AAPlotOptions columnrangeSet(AAColumnrange prop) {
        columnrange = prop;
        return this;
    }

     AAPlotOptions arearangeSet(AAArearange prop) {
        arearange = prop;
        return this;
    }

     AAPlotOptions seriesSet(AASeries prop) {
        series = prop;
        return this;
    }

     Map<String, dynamic> toJson() {
    return {
      "column": this.column == null ? null : this.column.toJson(),
      "line": this.line == null ? null : this.line.toJson(),
      "pie": this.pie == null ? null : this.pie.toJson(),
      "bar": this.bar == null ? null : this.bar.toJson(),
      "spline": this.spline == null ? null : this.spline.toJson(),
      "area": this.area == null ? null : this.area.toJson(),
      "areaspline": this.areaspline == null ? null : this.areaspline.toJson(),
      "columnrange": this.columnrange == null ? null : this.columnrange.toJson(),
      "arearange": this.arearange == null ? null : this.arearange.toJson(),
      "series": this.series == null ? null : this.series.toJson(),
    };
  }
}
