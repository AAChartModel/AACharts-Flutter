import 'dart:convert';

import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAColor.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AADataLabels.dart';
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAStyle.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/ChartOptionsComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:aacharts_flutter/ChartsDemo/Page/SpecialChartPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'dart:convert' as convert;

import 'AAChartsLib/AAChartCreator/AAChartModel.dart';
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
    // List chartTypesArr = [
    //   "Colorful Column Chart---多彩条形图",
    //   "Colorful Gradient Color Chart---多彩颜色渐变条形图",
    //   "Discontinuous Data Chart---数值不连续の图表",
    //   "Mixed Line Chart---虚实线混合折线图",
    //   "Random Colors Colorful Column Chart---随机颜色の多彩柱形图",
    //   "Gradient Color Bar Chart---颜色渐变条形图",
    //   "Stacking polar chart---百分比堆积效果の极地图",
    //   "Area Chart with minus--带有负数の区域填充图",
    //   "Step Line Chart--直方折线图",
    //   "Step Area Chart--直方折线填充图",
    //   "Nightingale Rose Chart---南丁格尔玫瑰图",
    //   "Specific Data Customize Datalabel",
    //   "Chart With Shadow Style---带有阴影效果の图表",
    //   "Colorful gradient Areaspline Chart---多层次渐变区域填充图",
    //   "Colorful gradient Spline Chart---多层次渐变曲线图",
    //   "Gradient Color Areaspline Chart---半透明渐变效果区域填充图",
    //   "Special Style Marker Of Single Data Element Chart",
    //   "Special Style Column Of Single Data Element Chart",
    //   "configure Area Chart Threshold---自定义阈值",
    //   "custom Scatter Chart Marker Symbol Content---自定义散点图の标志点内容",
    //   "custom Line Chart Marker Symbol Content---自定义折线图の标志点内容",
    //   "Triangle Radar Chart---三角形雷达图",
    //   "Quadrangle Radar Chart---四角形雷达图",
    //   "Pentagon Radar Chart---五角形雷达图",
    //   "Hexagon Radar Chart----六角形雷达图",
    //   "Draw Line Chart With Points Coordinates----通过点坐标来绘制折线图",
    //   "custom Special Style DataLabel Of Single Data Element Chart",
    //   "custom Bar Chart Hover Color and Select Color---自定义条形图手指滑动颜色和单个长条被选中颜色",
    //   "custom Line Chart Chart Hover And Select Halo Style",
    //   "custom Spline Chart Marker States Hover Style",
    //   "customNormalStackingChartDataLabelsContentAndStyle---自定义堆积柱状图 DataLabels の内容及样式",
    //   "upsideDownPyramidChart---倒立の金字塔图",
    //   "doubleLayerPieChart---双层嵌套扇形图",
    //   "doubleLayerDoubleColorsPieChart---双层嵌套双颜色主题扇形图",
    //   "disableSomeOfLinesMouseTrackingEffect---针对部分数据列关闭鼠标或手指跟踪行为",
    //   "configureColorfulShadowChart---彩色阴影效果の曲线图",
    //   "configureColorfulDataLabelsStepLineChart---彩色 DataLabels の直方折线图",
    //   "configureColorfulGradientColorAndColorfulDataLabelsStepAreaChart---彩色渐变效果且彩色 DataLabels の直方折线填充图",
    //   "disableSplineChartMarkerHoverEffect---禁用曲线图の手指滑动 marker 点の光圈变化放大の效果",
    //   "configureMaxAndMinDataLabelsForChart---为图表最大值最小值添加 DataLabels 标记",
    //   "customVerticalXAxisCategoriesLabelsByHTMLBreakLineTag---通过 HTML 的换行标签来实现图表的 X 轴的 分类文字标签的换行效果",
    //   "noMoreGroupingAndOverlapEachOtherColumnChart---不分组的相互重叠柱状图📊",
    //   "noMoreGroupingAndNestedColumnChart---不分组的嵌套柱状图📊",
    //   "topRoundedCornersStackingColumnChart---顶部为圆角的堆积柱状图📊",
    //   "freeStyleRoundedCornersStackingColumnChart---各个圆角自由独立设置的堆积柱状图📊",
    // ];

    /*Special types chart*/
    List chartTypeNamesArr = [
      "Polar Chart---极地图",
      "Pie Chart---扇形图",
      "Bubble Chart---气泡图",
      "Scatter Chart---散点图",
      "Arearange Chart---折线区域范围图",
      "Area Spline range Chart--曲线区域范围图",
      "Columnrange Chart--- 柱形范围图",
      "Step Line Chart--- 直方折线图",
      "Step Area Chart--- 直方折线填充图",
      "Boxplot Chart--- 箱线图",
      "Waterfall Chart--- 瀑布图",
      "Pyramid Chart---金字塔图",
      "Funnel Chart---漏斗图",
      "Error Bar Chart---误差图",
    ];

    List chartTypesArr = [
      AAChartType.column,
      AAChartType.pie,
      AAChartType.bubble,
      AAChartType.scatter,
      AAChartType.arearange,
      AAChartType.areasplinerange,
      AAChartType.columnrange,
      AAChartType.line,
      AAChartType.area,
      AAChartType.boxplot,
      AAChartType.waterfall,
      AAChartType.pyramid,
      AAChartType.funnel,
      AAChartType.errorbar,
    ];

   var listView = ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("${chartTypeNamesArr[index]}"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SpecialChartPage(selectedType: chartTypesArr[index]);
                  // return CustomStyleChartPage(selectedIndex: index);
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



