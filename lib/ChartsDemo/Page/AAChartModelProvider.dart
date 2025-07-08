import '../../AAChartsLib/AAChartCreator/AAChartModel.dart';
import '../ChartComposer/SpecialChartComposer.dart';
import '../ChartComposer/MixedChartComposer.dart';

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

  static List<AAChartModel> getAllMixedChartModels() {
    return [
      MixedChartComposer.configureArearangeMixedLineChart(),
      MixedChartComposer.configureColumnrangeMixedLineChart(),
      MixedChartComposer.configureStackingColumnMixedLineChart(),
      MixedChartComposer.configureDashStyleTypeMixedChart(),
      MixedChartComposer.configureNegativeColorMixedChart(),
      MixedChartComposer.configureScatterMixedLineChart(),
      MixedChartComposer.configureNegativeColorMixedBubbleChart(),
      MixedChartComposer.configurePolygonMixedScatterChart(),
      MixedChartComposer.configurePolarMixedChart(),
      MixedChartComposer.configureColumnMixedScatterChart(),
      MixedChartComposer.configurePieMixedLineMixedColumnChart(),
      MixedChartComposer.configureLineChartWithShadow(),
      MixedChartComposer.configureNegativeColorMixedAreasplineChart(),
      MixedChartComposer.configureAerasplinerangeMixedColumnrangeMixedLineChart(),
    ];
  }
}
