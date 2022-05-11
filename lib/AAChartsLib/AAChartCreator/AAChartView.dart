
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class AAChartView extends StatelessWidget {
  InAppWebViewController webView;
  String url = "";
  double progress = 0;

  // const AAChartView({Key key}) : super(key: key);

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
                    // setState(() {
                      this.url = url ?? '';
                    // });
                  },
                  onLoadStop: (controller, url) async {
                    // setState(() {
                      this.url = url ?? '';
                    // });
                  },
                  onProgressChanged: (controller, progress) {
                    // setState(() {
                      this.progress = progress / 100;
                    // });
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
    );
  }
}