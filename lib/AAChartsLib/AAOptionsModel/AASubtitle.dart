import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAChartModel.dart';

import 'AAStyle.dart';

 class AASubtitle {
    String text;
    AAStyle style;
    String align;
    AAChartVerticalAlignType verticalAlign;
    double x;
    double y;
    bool userHTML;

     AASubtitle textSet(String prop) {
        text = prop;
        return this;
    }

     AASubtitle styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

     AASubtitle alignSet(String prop) {
        align = prop;
        return this;
    }

     AASubtitle verticalAlignSet(AAChartVerticalAlignType prop) {
        verticalAlign = prop;
        return this;
    }

     AASubtitle xSet(double prop) {
        x = prop;
        return this;
    }

     AASubtitle ySet(double prop) {
        y = prop;
        return this;
    }

     AASubtitle userHTMLSet(bool prop) {
        userHTML = prop;
        return this;
    }
}
