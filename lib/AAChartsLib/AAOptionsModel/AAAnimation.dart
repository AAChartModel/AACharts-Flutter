

 class AAAnimation {
    int duration;
    String easing;

     AAAnimation durationSet(int prop) {
        duration = prop;
        return this;
    }

     AAAnimation easingSet(String prop) {
        easing = prop;
        return this;
    }
}
