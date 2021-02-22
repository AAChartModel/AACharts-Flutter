import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/ChartOptionsComposer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:convert' as convert;


void main() => runApp(Application());

// class Application extends StatefulWidget {
//   @override
//   _ApplicationState createState() => _ApplicationState();
// }
//
//
// class _ApplicationState extends State<Application> {
//   @override
//   Widget build(BuildContext context) {
//     var aaChartModel = AAChartModel()
//         .chartTypeSet(AAChartType.area)
//         .titleSet("")
//         .subtitleSet("")
//         .yAxisGridLineWidthSet(0)
//         .colorsThemeSet(
//         ["#1e90ff", "#ef476f", "#ffd066", "#04d69f", "#25547c",])
//         .yAxisTitleSet("摄氏度")
//         .tooltipValueSuffixSet("℃")
//         .backgroundColorSet("#4b2b7f")
//         .yAxisGridLineWidthSet(0)
//         .seriesSet([
//       AASeriesElement()
//           .nameSet("Tokyo")
//           .dataSet(
//           [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
//       AASeriesElement()
//           .nameSet("New York")
//           .dataSet(
//           [0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
//       AASeriesElement()
//           .nameSet("Berlin")
//           .dataSet(
//           [0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
//       AASeriesElement()
//           .nameSet("London")
//           .dataSet(
//           [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8])
//     ]);
//
//     var testChartModelStr = aaChartModel.toString();
//
//     var aaOptions = AAOptionsConstructor.configureChartOptions(aaChartModel);
//
//     var optionsString = aaOptions.toString();
//
//
//     return new MaterialApp(
//         title: 'dummy application',
//         home: new Scaffold(
//           appBar: new AppBar(
//             title: new Text('List widget'),
//           ),
//           body: new ListView(
//             children: <Widget>[
//               new ListTile(
//                 title: new Text('item 1dd'),
//                 trailing: new Icon(Icons.arrow_forward),
//               ),
//               new ListTile(
//                 title: new Text('item 2'),
//                 trailing: new Icon(Icons.arrow_forward),
//               ),
//               new ListTile(
//                 title: new Text('item 3'),
//                 trailing: new Icon(Icons.arrow_forward),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }

class Application extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}



class _MyAppState extends State<Application> {

  InAppWebViewController webView;
  String url = "";
  double progress = 0;



  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    AADataLabels aaDataLabels = AADataLabels()
        .borderColorSet(AAColor.black)
        .borderRadiusSet(3)
        .styleSet(
        AAStyle()
            .colorSet(AAColor.red)
            .fontSizeSet(15)
    );

    var testJson = aaDataLabels.toJson();

    var testOptionsJson1 = ChartOptionsComposer.configureTheAAOptionsOfAreaChart().toJson();
    var testOptionsJson2 = ChartOptionsComposer.configureAAPlotBandsForChart().toJson();
    var testOptionsJson3 = ChartOptionsComposer.configureAAPlotLinesForChart().toJson();
    String jsonString = convert.jsonEncode(testOptionsJson1);


    print(testOptionsJson1.toString());
    print(testOptionsJson2.toString());
    print(testOptionsJson3.toString());


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('InAppWebView Example'),
        ),
        body: Container(
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    "CURRENT URL\n${(url.length > 50) ? url.substring(0, 50) + "..." : url}"),
              ),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: progress < 1.0
                      ? LinearProgressIndicator(value: progress)
                      : Container()),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                  child: InAppWebView(
                    initialUrl: "https://flutter.dev/",
                    initialHeaders: {},
                    initialOptions: InAppWebViewGroupOptions(
                        crossPlatform: InAppWebViewOptions(

                        )
                    ),
                    onWebViewCreated: (InAppWebViewController controller) {
                      webView = controller;
                    },
                    onLoadStart: (controller, url) {
                      setState(() {
                        this.url = url ?? '';
                      });
                    },
                    onLoadStop: (controller, url) async {
                      setState(() {
                        this.url = url ?? '';
                      });
                    },
                    onProgressChanged: (controller, progress) {
                      setState(() {
                        this.progress = progress / 100;
                      });
                    },
                  ),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Icon(Icons.arrow_back),
                    onPressed: () {
                      webView?.goBack();
                    },
                  ),
                  RaisedButton(
                    child: Icon(Icons.arrow_forward),
                    onPressed: () {
                      webView?.goForward();
                    },
                  ),
                  RaisedButton(
                    child: Icon(Icons.refresh),
                    onPressed: () {
                      webView?.reload();
                    },
                  ),
                ],
              ),
            ])),
      ),
    );
  }
}



