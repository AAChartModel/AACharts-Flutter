import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAColor.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAOptionsConstructor.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AASeriesElement.dart';

class ChartOptionsComposer {
  static Map configureAAPlotBandsForChart() {
    AAChartModel aaChartModel = new AAChartModel()
        .chartTypeSet(AAChartType.spline)//图形类型
        .dataLabelsEnabledSet(false)
        .markerRadiusSet(0)
        .seriesSet([
     AASeriesElement()
        .nameSet("Tokyo")
        .dataSet([7.0, 6.9, 2.5, 14.5, 18.2, 21.5, 5.2, 26.5, 23.3, 45.3, 13.9, 9.6])
        .colorSet(AAColor.white())
        .lineWidthSet(10.0),
    ]);

    Map aaOptions = AAOptionsConstructor.configureChartOptions(aaChartModel);
    return aaOptions;
  }
}