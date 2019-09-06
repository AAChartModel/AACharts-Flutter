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

}
