import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AASeriesElement.dart';

class BasicChartComposer {
  //   public static AAChartModel configureBasicOptions() {
  //         return new AAChartModel()
  //                 .backgroundColor("#4b2b7f")
  //                 .dataLabelsEnabled(false)
  //                 .yAxisGridLineWidth(0)
  //                 .touchEventEnabled(true);
  //     }
  //
  //    public static AAChartModel configureAreaChart() {
  //         AASeriesElement element1 = new AASeriesElement()
  //                 .name("Tokyo")
  //                 .data(new Object[]{7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6});
  //         AASeriesElement element2 = new AASeriesElement()
  //                 .name("NewYork")
  //                 .data(new Object[]{0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5});
  //         AASeriesElement element3 = new AASeriesElement()
  //                 .name("London")
  //                 .data(new Object[]{0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0});
  //         AASeriesElement element4 = new AASeriesElement()
  //                 .name("Berlin")
  //                 .data(new Object[]{3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8});
  //
  //        return configureBasicOptions()
  //                .chartType(AAChartType.Area)
  //                .categories(new String[]{"Java","Swift","Python","Ruby", "PHP","Go","C","C#","C++"})
  //                .series(new AASeriesElement[]{element1, element2, element3, element4});
  //     }

  static AAChartModel configureBasicOptions() {
    return AAChartModel()
      ..backgroundColor = "#4b2b7f"
      ..dataLabelsEnabled = false
      ..yAxisGridLineWidth = 0
      ..touchEventEnabled = true;
  }

  static AAChartModel configureAreaChart() {
    var element1 = AASeriesElement()
      ..name = "Tokyo"
      ..data = [7.0, 6.9, 9.5, 14.5, 18.2, 21.5,
                25.2, 26.5, 23.3, 18.3, 13.9, 9.6];
    var element2 = AASeriesElement()
      ..name = "NewYork"
      ..data = [0.2, 0.8, 5.7, 11.3, 17.0, 22.0,
                24.8, 24.1, 20.1, 14.1, 8.6, 2.5];
    var element3 = AASeriesElement()
      ..name = "London"
      ..data = [0.9, 0.6, 3.5, 8.4, 13.5, 17.0,
                18.6, 17.9, 14.3, 9.0, 3.9, 1.0];
    var element4 = AASeriesElement()
      ..name = "Berlin"
      ..data = [3.9, 4.2, 5.7, 8.5, 11.9, 15.2,
                17.0, 16.6, 14.2, 10.3, 6.6, 4.8];

    return configureBasicOptions()
      ..chartType = AAChartType.area
      ..categories = ["Java","Swift","Python","Ruby", "PHP","Go","C","C#","C++"]
      ..series = [element1, element2, element3, element4];
  }
}