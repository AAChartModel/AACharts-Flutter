import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';

import 'AAStyle.dart';

 class AATitle {
    String text;
    AAStyle style;
    String align;
    String verticalAlign;
    double x;
    double y;
    bool useHTML;

     AATitle textSet(String prop) {
        text = prop;
        return this;
    }

     AATitle styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

     AATitle alignSet(String prop) {
        align = prop;
        return this;
    }

     AATitle verticalAlignSet(String prop) {
        verticalAlign = prop;
        return this;
    }

     AATitle xSet(double prop) {
        x = prop;
        return this;
    }

     AATitle ySet(double prop) {
        y = prop;
        return this;
    }

     AATitle useHTMLSet(bool prop) {
        useHTML = prop;
        return this;
    }
}
