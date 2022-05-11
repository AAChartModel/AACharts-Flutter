import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/ChartOptionsComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:convert' as convert;

import 'AAChartsLib/AAChartCreator/AAChartView.dart';
import 'ChartsDemo/Page/ChildListViewPage.dart';
import 'ChartsDemo/Page/CustomStyleChartPage.dart';


// Future main() async {
//   runApp(new Application());
// }

void main() => runApp(Application());

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}


class _ApplicationState extends State<Application> {
  AAChartView aaChartView;

  @override
  void initState() {
    super.initState();
  }




  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);

   var listView = ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CustomStyleChartPage(selectedIndex: index,);
                }));

              }, // Handle your onTap here.
          );
        },
       //分割器构造器
       separatorBuilder: (BuildContext context, int index) {
     return index%2==0?divider1:divider2;
   },
    );



    return new MaterialApp(
        title: 'dummy application',
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('List widget'),
          ),
          body: listView
        )
    );
  }
}



// class Application extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Image.network(
              'https://picsum.photos/250?image=9',
            ),
          ),
        ),
      ),
    );
  }
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
  // How to pretty-print JSON using Dart.
  //https://gist.github.com/kasperpeulen/d61029fc0bc6cd104602
  static void prettyPrintJson(String input) {
     JsonDecoder decoder = JsonDecoder();
     JsonEncoder encoder = JsonEncoder.withIndent('  ');
    var object = decoder.convert(input);
    var prettyString = encoder.convert(object);
    prettyString.split('\n').forEach((element) => print(element));
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


    print(testOptionsJson1);
    print(testOptionsJson2);
    print(testOptionsJson3);

    prettyPrintJson(jsonString);



    // https://stackoverflow.com/a/61981071/12302132
    // https://stackoverflow.com/a/59119002/12302132
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
                    initialFile: "assets/AAChartView.html",

                    // initialUrl: "https://flutter.dev/",
                    // initialHeaders: {},
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



