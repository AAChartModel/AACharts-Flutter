import 'AAObject.dart';
import 'AADataLabels.dart';

 class AAColumn extends AAObject  {
    String name;
    List data;
    String color;
    bool grouping;//Whether to group non-stacked columns or to let them render independent of each other. Non-grouped columns will be laid out individually and overlap each other. 默认是：true.
    double pointPadding;//Padding between each column or bar, in x axis units. 默认是：0.1.
    double pointPlacement;//Padding between each column or bar, in x axis units. 默认是：0.1.
    double groupPadding;//Padding between each value groups, in x axis units. 默认是：0.2.
    double borderWidth;
    bool colorByPoint;//对每个不同的点设置颜色Set(当图表类型为 AAColumn 时,设置为 AAColumn 对象的属性,当图表类型为 bar 时,应该设置为 bar 对象的属性才有效)
    AADataLabels dataLabels;
    String stacking;
    double borderRadius;
    double yAxis;

     AAColumn nameSet(String prop) {
        name = prop;
        return this;
    }

     AAColumn dataSet(List prop) {
        data = prop;
        return this;
    }

     AAColumn colorSet(String prop) {
        color = prop;
        return this;
    }

     AAColumn groupingSet(bool prop) {
        grouping = prop;
        return this;
    }

     AAColumn pointPaddingSet(double prop) {
        pointPadding = prop;
        return this;
    }

     AAColumn pointPlacementSet(double prop) {
        pointPlacement = prop;
        return this;
    }

     AAColumn groupPaddingSet(double prop) {
        groupPadding = prop;
        return this;
    }

     AAColumn borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AAColumn colorByPointSet(bool prop) {
        colorByPoint = prop;
        return this;
    }

     AAColumn dataLabelsSet(AADataLabels prop) {
        dataLabels = prop;
        return this;
    }

     AAColumn stackingSet(String prop) {
        stacking = prop;
        return this;
    }

     AAColumn borderRadiusSet(double prop) {
        borderRadius = prop;
        return this;
    }

     AAColumn yAxisSet(double prop) {
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
      "dataLabels": this.dataLabels == null ? null : this.dataLabels.toJson(),
      "stacking": this.stacking,
      "borderRadius": this.borderRadius,
      "yAxis": this.yAxis,
    };
  }
}
