
import 'dart:convert';
import 'dart:developer';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter/services.dart' show rootBundle;


class AAChartView extends StatelessWidget {
  InAppWebViewController? webViewController;
  InAppWebView? webView;
  String url = "";
  double progress = 0;

  String? optionsJson;


  void aa_drawChartWithChartModel(AAChartModel aaChartModel) {

    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);

    // String pureJsonStr =  configurePureOptionsJsonStr(aaOptions);
    // print(pureJsonStr);

    this.aa_drawChartWithChartOptions(aaOptions);
  }

  void aa_drawChartWithChartOptions(AAOptions chartOptions) {
    if (this.optionsJson != null) {
      this.aa_refreshChartWithChartOptions(chartOptions);
    } else {
      this.loadLocalFilesAndDrawChart(chartOptions);
    }

    //debug print
    Map<String, dynamic>? aaOptionsJsonMap = chartOptions.toPureJson();
    String prettyJsonStr = getPrettyJSONString(aaOptionsJsonMap);
    log(prettyJsonStr);
    //debug print
  }

  Future<void> loadLocalFilesAndDrawChart(final AAOptions aaOptions) async {
    // String fileHtmlContents = await rootBundle.loadString("assets/AAChartView.html");
    // Uri url = Uri.dataFromString(fileHtmlContents,
    //     mimeType: 'text/html', encoding: Encoding.getByName('utf-8'));
    webView = InAppWebView(
      initialUrlRequest: URLRequest(
          url: Uri.parse("file:///Users/admin/Documents/GitHub/AACharts-Flutter/assets/AAChartView.html")),
     // initialUrlRequest: URLRequest(
     //     url: url
     // ),
     initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(

          )
      ),
      onWebViewCreated: (InAppWebViewController controller) {
        webViewController = controller;
      },
      onLoadStart: (controller, url) {
        // setState(() {
        this.url = url as String;
        // });
      },
      onLoadStop: (controller, url) {
        // setState(() {
        // this.url = url as String;
        configureChartOptionsAndDrawChart(aaOptions);
        // var result =  controller.evaluateJavascript(source: "1 + 1");
        // print(result.runtimeType); // int
        // print(result); // 2
        // });
      },
      onProgressChanged: (controller, progress) {
        // setState(() {
        // if (progress == 100) {
        //   configureChartOptionsAndDrawChart(aaOptions);
        // }
        // this.progress = progress / 100;
        // });
      },
    );

   webViewController?.addJavaScriptHandler(
     handlerName: 'handleError',
     callback: (args) {
       // Handle the error in Dart
       print('JavaScript error: ${args[0]}');
     },
   );



  }


   void aa_refreshChartWithChartOptions(AAOptions chartOptions) {
    configureChartOptionsAndDrawChart(chartOptions);
  }

   void configureChartOptionsAndDrawChart(AAOptions chartOptions) {
    String javaScriptStr = configurePureOptionsJsonStr(chartOptions);

    this.safeEvaluateJavaScriptString(javaScriptStr);
  }

   String configurePureOptionsJsonStr(AAOptions chartOptions) {
     Map<String, dynamic>? aaOptionsJsonMap = chartOptions.toPureJson();
     String aaOptionsJsonStr = jsonEncode(aaOptionsJsonMap);
     this.optionsJson = aaOptionsJsonStr;
     String javaScriptStr = "loadTheHighChartView('$aaOptionsJsonStr')";
     return javaScriptStr;
   }

   void safeEvaluateJavaScriptString(String javaScriptString) {
     webViewController?.evaluateJavascript(source: javaScriptString).then((result) {
       // JavaScript execution succeeded
     }).catchError((error) {
       // JavaScript execution failed, capture the NSError information
       print('JavaScript error: ${error.message}');
     });

   }

  String getPrettyJSONString(jsonObject){
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }


  @override
  Widget build(BuildContext context) {
 

    return Scaffold(
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
                child: webView
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Icon(Icons.arrow_back),
                  onPressed: () {
                    // webView?.goBack();
                    Navigator.pop(context);

                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.arrow_forward),
                  onPressed: () {
                    webViewController?.goForward();
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.refresh),
                  onPressed: () {
                    webViewController?.reload();
                  },
                ),
              ],
            ),
          ])),
    );
  }
}