
import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AAChartView extends StatelessWidget {
  InAppWebViewController webViewController;
  InAppWebView webView;
  String url = "";
  double progress = 0;

  String optionsJson;


  void aa_drawChartWithChartModel(AAChartModel aaChartModel) {
    AAOptions aaOptions = AAOptionsComposer.configureChartOptions(aaChartModel);
    this.aa_drawChartWithChartOptions(aaOptions);
  }

  void aa_drawChartWithChartOptions(AAOptions chartOptions) {
    if (this.optionsJson != null) {
      this.aa_refreshChartWithChartOptions(chartOptions);
    } else {
      this.loadLocalFilesAndDrawChart(chartOptions);
    }
  }

  void loadLocalFilesAndDrawChart(final AAOptions aaOptions) {
   webView = InAppWebView(
      initialFile: "assets/AAChartView.html",
      initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(

          )
      ),
      onWebViewCreated: (InAppWebViewController controller) {
        webViewController = controller;
      },
      onLoadStart: (controller, url) {
        // setState(() {
        this.url = url ?? '';
        // });
      },
      onLoadStop: (controller, url) {
        // setState(() {
        this.url = url ?? '';
        configureChartOptionsAndDrawChart(aaOptions);
        var result =  controller.evaluateJavascript(source: "1 + 1");
        print(result.runtimeType); // int
        print(result); // 2
        // });
      },
      onProgressChanged: (controller, progress) {
        // setState(() {
        if (progress == 100) {
          configureChartOptionsAndDrawChart(aaOptions);
        }
        this.progress = progress / 100;
        // });
      },
    );

  }

   void aa_refreshChartWithChartOptions(AAOptions chartOptions) {
    configureChartOptionsAndDrawChart(chartOptions);
  }

   void configureChartOptionsAndDrawChart(AAOptions chartOptions) {
    Map<String, dynamic> aaOptionsJsonMap = chartOptions.toJson();
    String aaOptionsJsonStr = jsonEncode(aaOptionsJsonMap);
    this.optionsJson = aaOptionsJsonStr;
    String javaScriptStr = "loadTheHighChartView('$aaOptionsJsonStr')";

    this.safeEvaluateJavaScriptString(javaScriptStr);
  }

   void safeEvaluateJavaScriptString(String javaScriptString) {
     webViewController.evaluateJavascript(source: javaScriptString);
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