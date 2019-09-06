import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';

import 'AAStyle.dart';

 class AATitle {
    String text;
    AAStyle style;
    AAChartAlignType align;
    AAChartVerticalAlignType verticalAlign;
    double x;
    double y;
    bool userHTML;

     AATitle textSet(String prop) {
        text = prop;
        return this;
    }

     AATitle styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

     AATitle alignSet(AAChartAlignType prop) {
        align = prop;
        return this;
    }

     AATitle verticalAlignSet(AAChartVerticalAlignType prop) {
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

     AATitle userHTMLSet(bool prop) {
        userHTML = prop;
        return this;
    }
}
