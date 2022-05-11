
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStyleChartPage extends StatelessWidget {
  final int selectedIndex;

  const CustomStyleChartPage({Key key, @required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var aaChartView = AAChartView();

    var aaChartModel = chartConfigurationWithSelectedIndex(selectedIndex);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: aaChartView
          ),
        ),
      ),
    );
  }

  AAChartModel chartConfigurationWithSelectedIndex(int selectedIndex) {
    switch(selectedIndex) {
      case 0:  return CustomStyleChartComposer.configureColorfulBarChart();
      case 1:  return CustomStyleChartComposer.configureColorfulGradientColorBarChart();
      case 2:  return CustomStyleChartComposer.configureDiscontinuousDataChart();
      case 3:  return CustomStyleChartComposer.configureMixedLineChart();
      case 4:  return CustomStyleChartComposer.configureColorfulColumnChart();
      case 5:  return CustomStyleChartComposer.configureGradientColorBarChart();
      // case 6:  return CustomStyleChartComposer.configureStackingPolarColumnChart();
      case 7:  return CustomStyleChartComposer.configureWithMinusNumberChart();

      default: {
        //statements;
       return CustomStyleChartComposer.configureChartWithShadowStyle();

    }
      break;
    }

  }
}