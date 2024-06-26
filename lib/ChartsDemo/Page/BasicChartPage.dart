
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView2.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/BasicChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/SpecialChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var aaChartView = AAChartView2();
var aaChartModel = AAChartModel();

void refreshChartView() {
  aaChartView.aa_drawChartWithChartModel(aaChartModel);
}


class BasicChartPage extends StatelessWidget {
  final String selectedType;

  const BasicChartPage({ Key? key, required this.selectedType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      aaChartModel = configureChartModelWithChartType(selectedType);
      aaChartView.aa_drawChartWithChartModel(aaChartModel);

    //获取屏幕的宽高
    final size = MediaQuery.of(context).size;

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
            Container(
                width: size.width, // set the desired width
                height: size.height - 350, // set the desired height
                child: aaChartView
            )
            ,
            Text("Stacking Type Selection",
              style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),),
            //添加一个红色的 Text

            SegmentedControlExample(),
            Text("          "),

            Text("Corners Style Type Selection",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
            SegmentedControlExample1(),
            Text("          "),

            MyStatefulWidget(),



          ],
        ),
      ),
      //设置背景色为 #4b2b7f 这样的十六进制字符串
      backgroundColor: Color(0xff4b2b7f),
    );
  }

  AAChartModel configureChartModelWithChartType(String chartType) {
    switch (chartType) {

      default: return BasicChartComposer.configureAreaChart();
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

          if (value == "No stacking") {
            aaChartModel.stacking = AAChartStackingType.none;
          } else if (value == "Normal stacking") {
            aaChartModel.stacking = AAChartStackingType.normal;
          } else if (value == "Percent stacking") {
            aaChartModel.stacking = AAChartStackingType.percent;
          }

          refreshChartView();
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

          if (value == "◉ ◉ ◉") {
            aaChartModel.markerSymbol = AAChartSymbolType.circle;
          } else if (value == "■ ■ ■") {
            aaChartModel.markerSymbol = AAChartSymbolType.square;
          } else if (value == "◆ ◆ ◆") {
            aaChartModel.markerSymbol = AAChartSymbolType.diamond;
          } else if (value == "▲ ▲ ▲") {
            aaChartModel.markerSymbol = AAChartSymbolType.triangle;
          } else if (value == "▼ ▼ ▼") {
            aaChartModel.markerSymbol = AAChartSymbolType.triangleDown;
          }

          refreshChartView();
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

                  if (value == true) {
                    aaChartModel.xAxisReversed = true;
                  } else {
                    aaChartModel.xAxisReversed = false;
                  }
                  refreshChartView();

                });
              },
            ),
            Text("X Reversed",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
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

                  if (value == true) {
                    aaChartModel.yAxisReversed = true;
                  } else {
                    aaChartModel.yAxisReversed = false;
                  }
                  refreshChartView();
                });
              },
            ),
            Text("Y Reversed",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
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

                  if (value == true) {
                    aaChartModel.inverted = true;
                  } else {
                    aaChartModel.inverted = false;
                  }
                  refreshChartView();
                });
              },
            ),
            Text("X Inverted",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
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

                  if (value == true) {
                    aaChartModel.polar = true;
                  } else {
                    aaChartModel.polar = false;
                  }
                  refreshChartView();
                });
              },
            ),
            Text("Polarization",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
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

                  if (value == true) {
                    aaChartModel.dataLabelsEnabled = true;
                  } else {
                    aaChartModel.dataLabelsEnabled = false;
                  }
                  refreshChartView();
                });
              },
            ),
            Text("Data Show",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),),
          ],
        ),
        Spacer(),

      ],
    );
  }
}



