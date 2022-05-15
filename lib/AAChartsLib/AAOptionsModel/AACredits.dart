
import 'package:aacharts_flutter/AAChartsLib/AAOptionsModel/AAObject.dart';

import 'AAPosition.dart';
import 'AAStyle.dart';

class AACredits extends AAObject {
  bool enabled;
  String href;
  AAPosition position;
  AAStyle style;
  String text;

  AACredits enabledSet(bool prop) {
    enabled = prop;
    return this;
  }

  AACredits hrefSet(String prop) {
    href = prop;
    return this;
  }

  AACredits positionSet(AAPosition prop) {
    position = prop;
    return this;
  }

  AACredits styleSet(AAStyle prop) {
    style = prop;
    return this;
  }

  AACredits textSet(String prop) {
    text = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "enabled": this.enabled,
      "href": this.href,
      "position": this.position == null ? null : this.position.toPureJson(),
      "style": this.style == null ? null : this.style.toPureJson(),
      "text": this.text,
    };
  }
}
