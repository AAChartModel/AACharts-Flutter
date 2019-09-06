import 'AAMarker.dart';
import 'AAAnimation.dart';
import 'AAShadow.dart';

 class AASeries {
    double borderRadius;
    AAMarker marker;
    String stacking;
    Object animation;
    List keys;
    bool colorByPoint;//决定了图表是否给每个数据列或每个点分配一个颜色，默认值是 false， 即默认是给每个数据类分配颜色，
    bool connectNulls;//设置折线是否断点重连
    Map events;
    AAShadow shadow;

     AASeries borderRadiusSet(double prop) {
        borderRadius = prop;
        return this;
    }

     AASeries markerSet(AAMarker prop) {
        marker = prop;
        return this;
    }

     AASeries stackingSet(String prop) {
        stacking = prop;
        return this;
    }

     AASeries animationSet(Object prop) {
        animation = prop;
        return this;
    }

     AASeries keysSet(List prop) {
        keys = prop;
        return this;
    }

     AASeries colorByPointSet(bool prop) {
        colorByPoint = prop;
        return this;
    }

     AASeries connectNullsSet(bool prop) {
        connectNulls = prop;
        return this;
    }

     AASeries eventsSet(Map prop) {
        events = prop;
        return this;
    }

     AASeries shadowSet(AAShadow prop) {
        shadow = prop;
        return this;
    }

}
