
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
      case 0:  return CustomStyleChartComposer.configureChartWithShadowStyle();
      case 1:  return CustomStyleChartComposer.configureCustomSingleDataLabelChart();


      default: {
        //statements;
       return CustomStyleChartComposer.configureColorfulBarChart();

    }
      break;
    }

  }
}