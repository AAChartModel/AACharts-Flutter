import 'AAObject.dart';
import 'AAAnimation.dart';

class AAChart extends AAObject  {
  String type;
  Object backgroundColor;
  String plotBackgroundImage;
  String pinchType;
  bool panning;
  String panKey;
  bool polar;
  AAAnimation animation;
  bool inverted;
  List<double> margin;
  double marginTop;
  double marginRight;
  double marginBottom;
  double marginLeft;

  AAChart typeSet(String prop) {
    type = prop;
    return this;
  }

  AAChart backgroundColorSet(Object prop) {
    backgroundColor = prop;
    return this;
  }

  AAChart plotBackgroundImageSet(String prop) {
    plotBackgroundImage = prop;
    return this;
  }

  AAChart pinchTypeSet(String prop) {
    pinchType = prop;
    return this;
  }

  AAChart panningSet(bool prop) {
    panning = prop;
    return this;
  }

  AAChart panKeySet(String prop) {
    panKey = prop;
    return this;
  }

  AAChart polarSet(bool prop) {
    polar = prop;
    return this;
  }

  AAChart animationSet(AAAnimation prop) {
    animation = prop;
    return this;
  }

  AAChart invertedSet(bool prop) {
    inverted = prop;
    return this;
  }

  AAChart marginSet(List<double> prop) {
    margin = prop;
    return this;
  }

  AAChart marginTopSet(double prop) {
    marginTop = prop;
    return this;
  }

  AAChart marginRightSet(double prop) {
    marginRight = prop;
    return this;
  }

  AAChart marginBottomSet(double prop) {
    marginBottom = prop;
    return this;
  }

  AAChart marginLeftSet(double prop) {
    marginLeft = prop;
    return this;
  }

  Map<String, dynamic> toJson() {
    return {
      "type": this.type,
      "backgroundColor": this.backgroundColor,
      "plotBackgroundImage": this.plotBackgroundImage,
      "pinchType": this.pinchType,
      "panning": this.panning,
      "panKey": this.panKey,
      "polar": this.polar,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "inverted": this.inverted,
      "marginLeft": this.marginLeft,
      "marginRight": this.marginRight,
    };
  }
}
