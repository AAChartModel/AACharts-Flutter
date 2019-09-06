

 import 'package:flutter_app_learning/AAChartsLib/AAChartConfiger/AAChartModel.dart';

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
}
