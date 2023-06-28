import 'package:aacharts_flutter/AAChartsLib/AATools/AAEasyTool.dart';

import 'AAAxis.dart';
import 'AAObject.dart';
import 'AAStyle.dart';

 class AATooltip extends AAObject  {
    Object? backgroundColor;
    String? borderColor;
    double? borderRadius;
    double? borderWidth;
    AAStyle? style;
    bool? enabled;
    bool? useHTML;
    String? formatter;
    String? headerFormat;
    String? pointFormat;
    String? footerFormat;
    int? valueDecimals;
    bool? shared;
    String? valuePrefix;
    String? valueSuffix;
    bool? followPointer;
    bool? followTouchMove;//https://api.highcharts.com.cn/highcharts#chart.panning
    bool? shadow;
    double? padding;
    String? pointFormatter;
    String? positioner;
    AADateTimeLabelFormats? dateTimeLabelFormats;
    bool? split;

     AATooltip backgroundColorSet(Object? prop) {
        backgroundColor = prop;
        return this;
    }

     AATooltip borderColorSet(String? prop) {
        borderColor = prop;
        return this;
    }

     AATooltip borderRadiusSet(double? prop) {
        borderRadius = prop;
        return this;
    }

     AATooltip borderWidthSet(double? prop) {
        borderWidth = prop;
        return this;
    }

     AATooltip styleSet(AAStyle? prop) {
        style = prop;
        return this;
    }

     AATooltip enabledSet(bool? prop) {
        enabled = prop;
        return this;
    }

     AATooltip useHTMLSet(bool? prop) {
        useHTML = prop;
        return this;
    }

     AATooltip formatterSet(String? prop) {
       if (prop != null) {
         formatter = AAEasyTool.pureJavaScriptFunctionString(prop);
       }
        return this;
    }

     AATooltip headerFormatSet(String? prop) {
        headerFormat = prop;
        return this;
    }

     AATooltip pointFormatSet(String? prop) {
        pointFormat = prop;
        return this;
    }

     AATooltip footerFormatSet(String? prop) {
        footerFormat = prop;
        return this;
    }

     AATooltip valueDecimalsSet(int? prop) {
        valueDecimals = prop;
        return this;
    }

     AATooltip sharedSet(bool? prop) {
        shared = prop;
        return this;
    }

    AATooltip valuePrefixSet(String? prop) {
      valuePrefix = prop;
      return this;
    }

     AATooltip valueSuffixSet(String? prop) {
        valueSuffix = prop;
        return this;
    }

      AATooltip followPointerSet(bool? prop) {
          followPointer = prop;
          return this;
      }

      AATooltip followTouchMoveSet(bool? prop) {
          followTouchMove = prop;
          return this;
      }

      AATooltip shadowSet(bool? prop) {
          shadow = prop;
          return this;
      }

      AATooltip paddingSet(double? prop) {
          padding = prop;
          return this;
      }

      AATooltip pointFormatterSet(String? prop) {
          pointFormatter = prop;
          return this;
      }

      AATooltip positionerSet(String? prop) {
          positioner = prop;
          return this;
      }

      AATooltip dateTimeLabelFormatsSet(AADateTimeLabelFormats? prop) {
          dateTimeLabelFormats = prop;
          return this;
      }

      AATooltip splitSet(bool? prop) {
          split = prop;
          return this;
      }

    //  AATooltip() {
    //     enabled = true;
    //     shared = true;
    //     crosshairs = true;
    // }

    Map<String, dynamic> toJson() {
    var jsonMap = {
      "backgroundColor": this.backgroundColor,
      "borderColor": this.borderColor,
      "borderRadius": this.borderRadius,
      "borderWidth": this.borderWidth,
      "style": this.style == null ? null : this.style?.toPureJson(),
      "enabled": this.enabled,
      "useHTML": this.useHTML,
      "formatter": this.formatter,
      "headerFormat": this.headerFormat,
      "pointFormat": this.pointFormat,
      "footerFormat": this.footerFormat,
      "valueDecimals": this.valueDecimals,
      "shared": this.shared,
      "valuePrefix": this.valuePrefix,
      "valueSuffix": this.valueSuffix,
      "followPointer": this.followPointer,
      "followTouchMove": this.followTouchMove,
      "shadow": this.shadow,
      "padding": this.padding,
      "pointFormatter": this.pointFormatter,
      "positioner": this.positioner,
      "dateTimeLabelFormats": this.dateTimeLabelFormats,
      "split": this.split,
    };

    //将所有空值删除
    jsonMap.removeWhere((key, value) => value == null);
    return jsonMap;
  }
}
