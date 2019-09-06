import 'package:flutter/material.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AASeriesElement.dart';
import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAOptionsConstructor.dart';

void main() => runApp(Application());

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}


class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {

    var aaChartModel = AAChartModel()
        .chartTypeSet(AAChartType.area)
        .titleSet("")
        .subtitleSet("")
        .yAxisGridLineWidthSet(0)
        .colorsThemeSet(["#1e90ff","#ef476f","#ffd066","#04d69f","#25547c",])
        .yAxisTitleSet("摄氏度")
        .tooltipValueSuffixSet("℃")
        .backgroundColorSet("#4b2b7f")
        .yAxisGridLineWidthSet(0)
        .seriesSet([
      AASeriesElement()
          .nameSet("Tokyo")
          .dataSet([7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]),
      AASeriesElement()
          .nameSet("New York")
          .dataSet([0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]),
      AASeriesElement()
          .nameSet("Berlin")
          .dataSet([0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]),
      AASeriesElement()
          .nameSet("London")
          .dataSet([3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8])
    ]);

    var testChartModelStr = aaChartModel.toString();

    var aaOptions = AAOptionsConstructor.configureChartOptions(aaChartModel);

    var optionsString = aaOptions.toString();


    return new MaterialApp(
        title: 'dummy application',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('List widget'),
          ),
          body: new ListView(
            children: <Widget>[
              new ListTile(
                title: new Text('item 1dd'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('item 2'),
                trailing: new Icon(Icons.arrow_forward),
              ),
              new ListTile(
                title: new Text('item 3'),
                trailing: new Icon(Icons.arrow_forward),
              ),
            ],
          ),
        )
    );
  }



}