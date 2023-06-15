import 'AAObject.dart';
import 'AADataLabels.dart';

class AABar extends AAObject  {
    String? name;
    List? data;
    String? color;
    bool? grouping;//Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other. 默认是：true.
    double? pointPadding;//Padding between each column or bar, in x axis units. 默认是：0.1.
    double? pointPlacement;//Padding between each column or bar, in x axis units. 默认是：0.1.
    double? groupPadding;//Padding between each value groups, in x axis units. 默认是：0.2.
    double? borderWidth;
    bool? colorByPoint;//对每个不同的点设置颜色Set(当图表类型为 AABar 时,设置为 AABar 对象的属性,当图表类型为 bar 时,应该设置为 bar 对象的属性才有效)
    AADataLabels? dataLabels;
    String? stacking;
    double? borderRadius;
    double? yAxis;

     AABar nameSet(String? prop) {
        name = prop;
        return this;
    }

     AABar dataSet(List? prop) {
        data = prop;
        return this;
    }

     AABar colorSet(String? prop) {
        color = prop;
        return this;
    }

     AABar groupingSet(bool? prop) {
        grouping = prop;
        return this;
    }

     AABar pointPaddingSet(double? prop) {
        pointPadding = prop;
        return this;
    }

     AABar pointPlacementSet(double? prop) {
        pointPlacement = prop;
        return this;
    }

     AABar groupPaddingSet(double? prop) {
        groupPadding = prop;
        return this;
    }

     AABar borderWidthSet(double? prop) {
        borderWidth = prop;
        return this;
    }

     AABar colorByPointSet(bool? prop) {
        colorByPoint = prop;
        return this;
    }

     AABar dataLabelsSet(AADataLabels? prop) {
        dataLabels = prop;
        return this;
    }

     AABar stackingSet(String? prop) {
        stacking = prop;
        return this;
    }

     AABar borderRadiusSet(double? prop) {
        borderRadius = prop;
        return this;
    }

     AABar yAxisSet(double? prop) {
        yAxis = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "data": this.data,
      "color": this.color,
      "grouping": this.grouping,
      "pointPadding": this.pointPadding,
      "pointPlacement": this.pointPlacement,
      "groupPadding": this.groupPadding,
      "borderWidth": this.borderWidth,
      "colorByPoint": this.colorByPoint,
      "dataLabels": this.dataLabels == null ? null : this.dataLabels?.toPureJson(),
      "stacking": this.stacking,
      "borderRadius": this.borderRadius,
      "yAxis": this.yAxis,
    };
  }
}
