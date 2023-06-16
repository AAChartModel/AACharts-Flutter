
import 'dart:convert';
import 'dart:developer';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAOptionsComposer.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAOptions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AAChartView2 extends StatelessWidget {
  var webViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    // ..setNavigationDelegate(
    //   NavigationDelegate(
    //     onProgress: (int progress) {
    //       // Update loading bar.
    //     },
    //     onPageStarted: (String url) {},
    //     onPageFinished: (String url) {},
    //     onWebResourceError: (WebResourceError error) {},
    //     onNavigationRequest: (NavigationRequest request) {
    //       if (request.url.startsWith('https://www.baidu.com/')) {
    //         return NavigationDecision.prevent;
    //       }
    //       return NavigationDecision.navigate;
    //     },
    //   ),
    // )
    // ..loadFile('/Users/admin/Documents/GitHub/AACharts-Flutter/assets/AAChartView.html')
  ;



  // InAppWebViewController? webViewController;
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

  void loadLocalFilesAndDrawChart(final AAOptions aaOptions) {
    webViewController
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            if (progress == 100) {
              configureChartOptionsAndDrawChart(aaOptions);
            }
            this.progress = progress / 100;
            // });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.baidu.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadFile('/Users/admin/Documents/GitHub/AACharts-Flutter/assets/AAChartView.html')
    ;

    // webView = InAppWebView(
   //    initialFile: "/Users/admin/Documents/GitHub/AACharts-Flutter/assets/AAChartView.html",
   //    initialOptions: InAppWebViewGroupOptions(
   //        crossPlatform: InAppWebViewOptions(
   //
   //        )
   //    ),
   //    onWebViewCreated: (InAppWebViewController controller) {
   //      webViewController = controller;
   //    },
   //    onLoadStart: (controller, url) {
   //      // setState(() {
   //      this.url = url as String;
   //      // });
   //    },
   //    onLoadStop: (controller, url) {
   //      // setState(() {
   //      this.url = url as String;
   //      configureChartOptionsAndDrawChart(aaOptions);
   //      var result =  controller.evaluateJavascript(source: "1 + 1");
   //      print(result.runtimeType); // int
   //      print(result); // 2
   //      // });
   //    },
   //    onProgressChanged: (controller, progress) {
   //      // setState(() {
   //      if (progress == 100) {
   //        configureChartOptionsAndDrawChart(aaOptions);
   //      }
   //      this.progress = progress / 100;
   //      // });
   //    },
   //  );

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
     webViewController.runJavaScript(javaScriptString);
   }

  String getPrettyJSONString(jsonObject){
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(jsonObject);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: webViewController),
    );
  }
}