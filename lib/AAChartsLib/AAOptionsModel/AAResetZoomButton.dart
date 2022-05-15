import 'AAPosition.dart';

class AAResetZoomButton {
  AAPosition position;
  String relativeTo;
  Map theme;

  AAResetZoomButton positionSet(AAPosition prop) {
    position = prop;
    return this;
  }

  AAResetZoomButton relativeToSet(String prop) {
    relativeTo = prop;
    return this;
  }

  AAResetZoomButton themeSet(Map prop) {
    theme = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "position": this.position == null ? null : this.position.toPureJson(),
      "relativeTo": this.relativeTo,
      "theme": this.theme,
    };
  }


}