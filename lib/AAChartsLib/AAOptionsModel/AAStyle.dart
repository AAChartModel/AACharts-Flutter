

 class AAStyle {

    String color;
    String fontSize;
    String fontWeight;
    String textOutLine;

     AAStyle colorSet(String prop) {
        color = prop;
        return this;
    }

     AAStyle fontSizeSet(double prop) {
        fontSize = "${prop}px";
        return this;
    }

     AAStyle fontWeightSet(String prop) {
        fontWeight = prop;
        return this;
    }

     AAStyle textOutlineSet(String prop) {
        textOutLine = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "color": this.color,
      "fontSize": this.fontSize,
      "fontWeight": this.fontWeight,
      "textOutLine": this.textOutLine,
    };
  }
}
