import 'AAObject.dart';

 class AAItemStyle extends AAObject  {
    String color;
    String cursor;
    String pointer;
    String fontSize;
    String fontWeight;


     AAItemStyle colorSet(String prop) {
        this.color = prop;
        return this;
    }

     AAItemStyle cursorSet(String prop) {
        this.cursor = prop;
        return this;
    }

     AAItemStyle pointerSet(String prop) {
        this.pointer = prop;
        return this;
    }

     AAItemStyle fontSizeSet(double prop) {
        this.fontSize = "${prop}px";
        return this;
    }

     AAItemStyle fontWeightSet(String prop) {
        this.fontWeight = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "color": this.color,
      "cursor": this.cursor,
      "pointer": this.pointer,
      "fontSize": this.fontSize,
      "fontWeight": this.fontWeight,
    };
  }
}
