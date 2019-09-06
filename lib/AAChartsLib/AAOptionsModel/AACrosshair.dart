

 class AACrosshair {
    double width;
    String color;
    String dashStyle;

     AACrosshair widthSet(double prop) {
        width = prop;
        return this;
    }

     AACrosshair colorSet(String prop) {
        color = prop;
        return this;
    }

     AACrosshair dashStyleSet(String prop) {
        dashStyle = prop;
        return this;
    }
}
