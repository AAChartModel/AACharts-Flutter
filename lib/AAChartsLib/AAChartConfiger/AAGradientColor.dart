enum AALinearGradientDirection {
  toTop,           //⇧⇧⇧⇧⇧⇧
  toBottom,        //⇩⇩⇩⇩⇩⇩
  toLeft,          //⇦⇦⇦⇦⇦⇦
  toRight,         //⇨⇨⇨⇨⇨⇨
  toTopLeft,       //⇖⇖⇖⇖⇖⇖
  toTopRight,      //⇗⇗⇗⇗⇗⇗
  toBottomLeft,    //⇙⇙⇙⇙⇙⇙
  toBottomRight,   //⇘⇘⇘⇘⇘⇘
}


class AAGradientColor {

  static Map<String,Object> get oceanBlue {
    return oceanBlueColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get sanguine {
    return sanguineColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get lusciousLime {
    return lusciousLimeColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get purpleLake {
    return purpleLakeColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get freshPapaya {
    return freshPapayaColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get ultramarine {
    return ultramarineColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get pinkSugar {
    return pinkSugarColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get lemonDrizzle {
    return lemonDrizzleColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get victoriaPurple {
    return victoriaPurpleColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get springGreens {
    return springGreensColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get mysticMauve {
    return mysticMauveColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get reflexSilver {
    return reflexSilverColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get neonGlow {
    return neonGlowColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get berrySmoothie {
    return berrySmoothieColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get newLeaf {
    return newLeafColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get cottonCandy {
    return cottonCandyColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get pixieDust {
    return pixieDustColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get fizzyPeach {
    return fizzyPeachColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get sweetDream {
    return sweetDreamColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get firebrick {
    return firebrickColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get wroughtIron {
    return wroughtIronColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get deepSea {
    return deepSeaColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get coastalBreeze {
    return coastalBreezeColor(AALinearGradientDirection.toTop);
  }

  static Map<String,Object> get eveningDelight {
    return eveningDelightColor(AALinearGradientDirection.toTop);
  }


  static Map<String,Object> oceanBlueColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#2E3192","#1BFFFF");
  }

  static Map<String,Object> sanguineColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#D4145A","#FBB03B");
  }

  static Map<String,Object> lusciousLimeColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#009245","#FCEE21");
  }

  static Map<String,Object> purpleLakeColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#662D8C","#ED1E79");
  }

  static Map<String,Object> freshPapayaColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#ED1C24","#FCEE21");
  }

  static Map<String,Object> ultramarineColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#00A8C5","#FFFF7E");
  }

  static Map<String,Object> pinkSugarColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#D74177","#FFE98A");
  }

  static Map<String,Object> lemonDrizzleColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#FB872B","#D9E021");
  }

  static Map<String,Object> victoriaPurpleColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#312A6C","#852D91");
  }

  static Map<String,Object> springGreensColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#009E00","#FFFF96");
  }

  static Map<String,Object> mysticMauveColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#B066FE","#63E2FF");
  }

  static Map<String,Object> reflexSilverColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#808080","#E6E6E6");
  }

  static Map<String,Object> neonGlowColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#00FFA1","#00FFFF");
  }

  static Map<String,Object> berrySmoothieColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#8E78FF","#FC7D7B");
  }

  static Map<String,Object> newLeafColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#00537E","#3AA17E");
  }

  static Map<String,Object> cottonCandyColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#FCA5F1","#B5FFFF");
  }

  static Map<String,Object> pixieDustColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#D585FF","#00FFEE");
  }

  static Map<String,Object> fizzyPeachColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#F24645","#EBC08D");
  }

  static Map<String,Object> sweetDreamColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#3A3897","#A3A1FF");
  }

  static Map<String,Object> firebrickColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#45145A","#FF5300");
  }

  static Map<String,Object> wroughtIronColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#333333","#5A5454");
  }

  static Map<String,Object> deepSeaColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#4F00BC","#29ABE2");
  }

  static Map<String,Object> coastalBreezeColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop,"#00B7FF","#FFFFC7");
  }

  static Map<String,Object> eveningDelightColor(AALinearGradientDirection direction) {
    return linearGradient1(AALinearGradientDirection.toTop, "#93278F", "#00A99D");
  }


   static  Map<String,Object> configureGradientColor(String startColor, String endColor) {
    return {
      "linearGradient": {
        "x1": 0,
        "y1": 0,
        "x2": 0,
        "y2": 1
      },
      "stops": {
      [0,"$startColor"],
      [1,"$endColor"]
      }//颜色字符串设置支持十六进制类型和 rgba 类型
    };
  }

  static Map<String,Object> linearGradient0(
      String startColor,
      String endColor
      ) {
    return linearGradient1(
        AALinearGradientDirection.toTop,
        startColor,
        endColor
    );
}


  static Map<String,Object> linearGradient1(
      AALinearGradientDirection direction,
      String startColor,
      String endColor
      ) {
    return linearGradient2(
        direction,
        [
          [0, startColor],
          [1, endColor]
        ]
    );
  }

  static Map<String,Object> linearGradient2(
      AALinearGradientDirection direction,
      List stops
      ) {
    Map linearGradient = _linearGradientDirectionDictionary(direction);
    return {
      "linearGradient": linearGradient,
      "stops": stops //颜色字符串设置支持十六进制类型和 rgba 类型
    };
  }

  // ignore: missing_return
  static Map<String,int> _linearGradientDirectionDictionary(
      AALinearGradientDirection direction
      ) {
    switch (direction) {
      case AALinearGradientDirection.toTop:
        return {"x1":0, "y1":1, "x2":0, "y2":0};
      case AALinearGradientDirection.toBottom:
        return {"x1":0, "y1":0, "x2":0, "y2":1};
      case AALinearGradientDirection.toLeft:
        return {"x1":1, "y1":0, "x2":0, "y2":0};
      case AALinearGradientDirection.toRight:
        return {"x1":0, "y1":0, "x2":1, "y2":0};
      case AALinearGradientDirection.toTopLeft:
        return {"x1":1, "y1":1, "x2":0, "y2":0};
      case AALinearGradientDirection.toTopRight:
        return {"x1":0, "y1":1, "x2":1, "y2":0};
      case AALinearGradientDirection.toBottomLeft:
        return {"x1":1, "y1":0, "x2":0, "y2":1};
      case AALinearGradientDirection.toBottomRight:
        return {"x1":0, "y1":0, "x2":1, "y2":1};
    }
  }

}