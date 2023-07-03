
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicChartPage extends StatelessWidget {
  final String selectedType;

  const BasicChartPage({ Key? key, required this.selectedType}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var aaChartView = AAChartView2();

    var aaChartModel = configureChartModelWithChartType(selectedType);
    aaChartView.aa_drawChartWithChartModel(aaChartModel);

    return Scaffold(
      appBar: AppBar(
        title: Text('BasicChart'),
      ),
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

  AAChartModel configureChartModelWithChartType(String chartType) {
    switch (chartType) {

      default: return AAChartModel();
    }
  }

}