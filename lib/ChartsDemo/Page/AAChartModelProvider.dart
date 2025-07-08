import '../../AAChartsLib/AAChartCreator/AAChartModel.dart';
import '../ChartComposer/SpecialChartComposer.dart';

class AAChartModelProvider {
  static List<AAChartModel> getAllSpecialChartModels() {
    return [
      SpecialChartComposer.configureBasePolarChart(),
      SpecialChartComposer.configurePolarBarChart(),
      SpecialChartComposer.configurePolarLineChart(),
      SpecialChartComposer.configurePolarAreaChart(),
      SpecialChartComposer.configureStepLineChart(),
      SpecialChartComposer.configureStepAreaChart(),
      SpecialChartComposer.configurePieChart(),
      SpecialChartComposer.configureBubbleChart(),
      SpecialChartComposer.configureScatterChart(),
      SpecialChartComposer.configureArearangeChart(),
      SpecialChartComposer.configureAreasplinerangeChart(),
      SpecialChartComposer.configureColumnrangeChart(),
      SpecialChartComposer.configureBoxplotChart(),
      SpecialChartComposer.configureWaterfallChart(),
      SpecialChartComposer.configurePyramidChart(),
      SpecialChartComposer.configureFunnelChart(),
      SpecialChartComposer.configureErrorbarChart(),
      SpecialChartComposer.configureGaugeChart(),
      SpecialChartComposer.configurePolygonChart(),
      SpecialChartComposer.configureBasePolarChart(), // default
    ];
  }

}
