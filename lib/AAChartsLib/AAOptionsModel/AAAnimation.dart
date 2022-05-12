

 import 'package:aacharts_flutter/AAChartsLib/AAChartCreator/AAChartModel.dart';

import 'AAObject.dart';

class AAAnimation extends AAObject  {
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
      "easing": this.easing == null ? null : this.easing.index,
    };
  }
}
