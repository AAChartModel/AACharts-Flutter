

 class AAMarker {
    double radius;
    String symbol;
    String fillColor;//点的填充色Set(用来设置折线连接点的填充色)
    double lineWidth;//外沿线的宽度Set(用来设置折线连接点的轮廓描边的宽度)
    Object lineColor;//外沿线的颜色Set(用来设置折线连接点的轮廓描边颜色，当值为空字符串时，默认取数据点或数据列的颜色。)


     AAMarker radiusSet(double prop) {
        radius = prop;
        return this;
    }

     AAMarker symbolSet(String prop) {
        symbol = prop;
        return this;
    }

     AAMarker fillColorSet(String prop) {
        fillColor = prop;
        return this;
    }

     AAMarker lineWidthSet(double prop) {
        lineWidth = prop;
        return this;
    }

     AAMarker lineColorSet(Object prop) {
        lineColor = prop;
        return this;
    }

}
