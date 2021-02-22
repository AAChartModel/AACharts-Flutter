import 'AAObject.dart';
 import 'AAStyle.dart';

class AALabel extends AAObject  {
    String text;
    AAStyle style;

     AALabel textSet(String prop) {
        text = prop;
        return this;
    }

     AALabel styleSet(AAStyle prop) {
        style = prop;
        return this;
    }

    Map<String, dynamic> toJson() {
    return {
      "text": this.text,
      "style": this.style == null ? null : this.style.toJson(),
    };
  }
}