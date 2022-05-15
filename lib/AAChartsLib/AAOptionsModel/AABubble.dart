import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

import 'AADataLabels.dart';

class AABubble extends AAObject {
   Object minSize; // (String | Number)
   Object maxSize; // (String | Number)
   double zMin;
   double zMax;
   AADataLabels dataLabels;

   AABubble minSizeSet(Object prop) {
     minSize = prop;
     return this;
   }

   AABubble maxSizeSet(Object prop) {
     maxSize = prop;
     return this;
   }

   AABubble zMinSet(double prop) {
     zMin = prop;
     return this;
   }

   AABubble zMaxSet(double prop) {
     zMax = prop;
     return this;
   }

   AABubble dataLabelsSet(AADataLabels prop) {
     dataLabels = prop;
     return this;
   }

   Map<String, dynamic> toJson() {
     return {
       "minSize": this.minSize,
       "maxSize": this.maxSize,
       "zMin": this.zMin,
       "zMax": this.zMax,
       "dataLabels": this.dataLabels == null ? null : this.dataLabels.toPureJson(),
     };
   }
}