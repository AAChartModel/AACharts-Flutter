

 class AAWaterfallChart {
     String upColor;
     String color;
     double borderWidth;
     List data;

     AAWaterfallChart upColorSet(String prop) {
        upColor = prop;
        return this;
    }

     AAWaterfallChart colorSet(String prop) {
        color = prop;
        return this;
    }

     AAWaterfallChart borderWidthSet(double prop) {
        borderWidth = prop;
        return this;
    }

     AAWaterfallChart dataSet(List prop) {
        data = prop;
        return this;
    }
}
