
import 'package:flutter/material.dart';
import 'AAChartsLib/AAChartCreator/AAChartView.dart';
import 'ChartsDemo/Page/ChildListViewPage.dart';


void main() => runApp(Application());

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}


class _ApplicationState extends State<Application> {
  late AAChartView aaChartView;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //下划线widget预定义以供复用。
    Widget divider1 = Divider(color: Colors.blue);
    Widget divider2 = Divider(color: Colors.green);

   List<String> sectionTitleArr = [
      "Basic Type Chart | 基础类型图表",
      "Special Type Chart | 特殊类型图表",
      "Custom Style Chart| 一些自定义风格样式图表",
      "Mixed Chart | 混合图形",
      "JS Function For AAChartEvents---通过 JSFunction 自定义 AAChartEvents 的事件",
      "Draw Chart With AAOptions | 通过Options绘图",
      "JS Function For AATooltip---通过 JSFunction 自定义 AATooltip 的事件",
   ];

   var listView = ListView.separated(
        itemCount: sectionTitleArr.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("${sectionTitleArr[index]}"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ChildListViewPage(selectedIndex: index);
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






