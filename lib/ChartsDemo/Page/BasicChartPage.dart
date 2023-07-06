
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
          children: <Widget>[
            Text("Stacking Type Selection"),
            SegmentedControlExample(),
            Text("          "),

            Text("Corners Style Type Selection"),
            SegmentedControlExample1(),
            Text("          "),

            MyStatefulWidget(),
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


class SegmentedControlExample extends StatefulWidget {
  const SegmentedControlExample({super.key});

  @override
  State<SegmentedControlExample> createState() =>
      _SegmentedControlExampleState();
}

class _SegmentedControlExampleState extends State<SegmentedControlExample> {
  String _selectedSegment = "No stacking";

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl<String>(
      selectedColor: Colors.red.withOpacity(1),
      unselectedColor: Colors.white.withOpacity(1),      // Provide horizontal padding around the children.
      padding: const EdgeInsets.symmetric(horizontal: 12),
      // This represents a currently selected segmented control.
      groupValue: _selectedSegment,
      // Callback that sets the selected segmented control.
      onValueChanged: (String value) {
        setState(() {
          _selectedSegment = value;
        });
      },
      children: const <String, Widget>{
        "No stacking": Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('No stacking'),
        ),
        "Normal stacking": Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Normal stacking'),
        ),
        "Percent stacking": Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text("Percent stacking"),
        ),
      },
    );
  }
}


class SegmentedControlExample1 extends StatefulWidget {
  const SegmentedControlExample1({super.key});

  @override
  State<SegmentedControlExample1> createState() =>
      _SegmentedControlExampleState1();
}

class _SegmentedControlExampleState1 extends State<SegmentedControlExample1> {
  String _selectedSegment = "◉ ◉ ◉";

  @override
  Widget build(BuildContext context) {
    return CupertinoSegmentedControl<String>(
      selectedColor: Colors.green.withOpacity(1),
      unselectedColor: Colors.white.withOpacity(1),      // Provide horizontal padding around the children.
      padding: const EdgeInsets.symmetric(horizontal: 12),
      // This represents a currently selected segmented control.
      groupValue: _selectedSegment,
      // Callback that sets the selected segmented control.
      onValueChanged: (String value) {
        setState(() {
          _selectedSegment = value;
        });
      },
      children: const <String, Widget>{
        "◉ ◉ ◉": Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("◉ ◉ ◉"),
        ),
        "■ ■ ■": Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("■ ■ ■"),
        ),
        "◆ ◆ ◆": Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("◆ ◆ ◆"),
        ),
        "▲ ▲ ▲": Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("▲ ▲ ▲"),
        ),
        "▼ ▼ ▼": Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("▼ ▼ ▼"),
        ),
      },
    );
  }
}

/// stateful widget that the main application instantiates
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// private State class that goes with MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool isSwitched = false;
  bool isSwitched1 = false;
  bool isSwitched2 = false;
  bool isSwitched3 = false;
  bool isSwitched4 = false;
  bool isSwitched5 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Spacer(),

        Column(
          children: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Text("X Reversed"),
          ],
        ),
        Spacer(),

        Column(
          children: <Widget>[
            Switch(
              value: isSwitched1,
              onChanged: (value) {
                setState(() {
                  isSwitched1 = value;
                });
              },
            ),
            Text("Y Reversed"),
          ],
        ),
        Spacer(),

        Column(
          children: <Widget>[
            Switch(
              value: isSwitched2,
              onChanged: (value) {
                setState(() {
                  isSwitched2 = value;
                });
              },
            ),
            Text("X Inverted"),
          ],
        ),
        Spacer(),

        Column(
          children: <Widget>[
            Switch(
              value: isSwitched3,
              onChanged: (value) {
                setState(() {
                  isSwitched3 = value;
                });
              },
            ),
            Text("Polarization"),
          ],
        ),
        Spacer(),

        Column(
          children: <Widget>[
            Switch(
              value: isSwitched4,
              onChanged: (value) {
                setState(() {
                  isSwitched4 = value;
                });
              },
            ),
            Text("Data Show"),
          ],
        ),
        Spacer(),

      ],
    );
  }
}



