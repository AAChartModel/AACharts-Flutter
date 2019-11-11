import 'package:aacharts_flutter/AAChartsLib/AATools/AAEasyTool.dart';

import 'AAStyle.dart';

 class AATooltip {
    Object backgroundColor;
    String borderColor;
    double borderRadius;
    double borderWidth;
    AAStyle style;
    bool enabled;
    bool useHTML;
    String formatter;
    String headerFormat;
    String pointFormat;
    String footerFormat;
    int valueDecimals;
    bool shared;
    bool crosshairs;
    String valueSuffix;

     AATooltip backgroundColorSet(Object prop) {
        backgroundColor = prop;
        return this;
    }

     AATooltip borderColorSet(String prop) {
        borderColor = prop;
        return this;
    }

     AATooltip borderRadiusSet(double prop) {
        borderRadius = prop;
        return this;
    }

     AATooltip borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AATooltip styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

     AATooltip enabledSet(bool prop) {
        enabled = prop;
        return this;
    }

     AATooltip useHTMLSet(bool prop) {
        useHTML = prop;
        return this;
    }

     AATooltip formatterSet(String prop) {
        String pureJSFunctionStr = "Set(" + prop + ")";
        pureJSFunctionStr = AAEasyTool.pureJavaScriptFunctionString(pureJSFunctionStr);
        formatter = pureJSFunctionStr;
        return this;
    }

     AATooltip headerFormatSet(String prop) {
        headerFormat = prop;
        return this;
    }

     AATooltip pointFormatSet(String prop) {
        pointFormat = prop;
        return this;
    }

     AATooltip footerFormatSet(String prop) {
        footerFormat = prop;
        return this;
    }

     AATooltip valueDecimalsSet(int prop) {
        valueDecimals = prop;
        return this;
    }

     AATooltip sharedSet(bool prop) {
        shared = prop;
        return this;
    }

     AATooltip crosshairsSet(bool prop) {
        crosshairs = prop;
        return this;
    }

     AATooltip valueSuffixSet(String prop) {
        valueSuffix = prop;
        return this;
    }

     AATooltipSet() {
        enabled = true;
        shared = true;
        crosshairs = true;
    }


    
  
}
