

 class AALabel {
    String text;
    Object style;

     AALabel textSet(String prop) {
        text = prop;
        return this;
    }

     AALabel styleSet(Object prop) {
        style = prop;
        return this;
    }
}