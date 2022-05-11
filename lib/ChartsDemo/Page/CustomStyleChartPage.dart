
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomStyleChartPage extends StatelessWidget {
  const CustomStyleChartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var aaChartView = AAChartView();

    var aaChartModel = CustomStyleChartComposer.configureChartWithShadowStyle();
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
}