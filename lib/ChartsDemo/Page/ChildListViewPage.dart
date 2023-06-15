
import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartView.dart';
import 'package:aacharts_flutter/ChartsDemo/ChartComposer/CustomStyleChartComposer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CustomStyleChartPage.dart';

class ChildListViewPage extends StatelessWidget {
  const ChildListViewPage({ Key? key}) : super(key: key);

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


    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
              tag: 'imageHero',
              child: listView
          ),
        ),
      ),
    );
  }
}