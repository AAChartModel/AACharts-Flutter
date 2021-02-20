

 import 'package:aacharts_flutter/AAChartsLib/AAChartConfiger/AAChartModel.dart';

class AAAnimation {
    int duration;
    AAChartAnimationType easing;

     AAAnimation durationSet(int prop) {
        duration = prop;
        return this;
    }

     AAAnimation easingSet(AAChartAnimationType prop) {
        easing = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "duration": this.duration,
      "easing": this.easing,
    };
  }
}
