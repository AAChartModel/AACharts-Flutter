
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

    // var aaChartView = AAChartView2();
    //
    // var aaChartModel = configureChartModelWithChartType(selectedType);
    // aaChartView.aa_drawChartWithChartModel(aaChartModel);



    return Scaffold(
      appBar: AppBar(
        title: Text('BasicChart'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SegmentedControlExample(),
            Text('Craft beautiful UIs'),
            SegmentedControlExample(),
          ],
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

/// Flutter code sample for [CupertinoSegmentedControl].

enum Sky { midnight, viridian, cerulean }

void main() => runApp(const SegmentedControlApp());

class SegmentedControlApp extends StatelessWidget {
  const SegmentedControlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: SegmentedControlExample(),
    );
  }
}

class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() =>
      _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  Sky _selectedSegment = Sky.midnight;

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl<Sky>(
      selectedColor: Colors.red.withOpacity(1),
      unselectedColor: Colors.white.withOpacity(1),      // Provide horizontal padding around the children.
      padding: const EdgeInsets.symmetric(horizontal: 12),
      // This represents a currently selected segmented control.
      groupValue: _selectedSegment,
      // Callback that sets the selected segmented control.
      onValueChanged: (Sky value) {
        setState(() {
          _selectedSegment = value;
        });
      },
      children: const <Sky, Widget>{
        Sky.midnight: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Midnight'),
        ),
        Sky.viridian: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Viridian'),
        ),
        Sky.cerulean: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Cerulean'),
        ),
      },
    );
  }
}



