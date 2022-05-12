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


abstract class AAGradientColor {

  static Map<String,Object> get oceanBlue {
    Map<String,Object> color = oceanBlueColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get sanguine {
    Map<String,Object> color = sanguineColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get lusciousLime {
    Map<String,Object> color = lusciousLimeColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get purpleLake {
    Map<String,Object> color = purpleLakeColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get freshPapaya {
    Map<String,Object> color = freshPapayaColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get ultramarine {
    Map<String,Object> color = ultramarineColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get pinkSugar {
    Map<String,Object> color = pinkSugarColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get lemonDrizzle {
    Map<String,Object> color = lemonDrizzleColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get victoriaPurple {
    Map<String,Object> color = victoriaPurpleColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get springGreens {
    Map<String,Object> color = springGreensColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get mysticMauve {
    Map<String,Object> color = mysticMauveColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get reflexSilver {
    Map<String,Object> color = reflexSilverColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get neonGlow {
    Map<String,Object> color = neonGlowColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get berrySmoothie {
    Map<String,Object> color = berrySmoothieColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get newLeaf {
    Map<String,Object> color = newLeafColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get cottonCandy {
    Map<String,Object> color = cottonCandyColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get pixieDust {
    Map<String,Object> color = pixieDustColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get fizzyPeach {
    Map<String,Object> color = fizzyPeachColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get sweetDream {
    Map<String,Object> color = sweetDreamColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get firebrick {
    Map<String,Object> color = firebrickColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get wroughtIron {
    Map<String,Object> color = wroughtIronColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get deepSea {
    Map<String,Object> color = deepSeaColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get coastalBreeze {
    Map<String,Object> color =  coastalBreezeColor(AALinearGradientDirection.toTop);
    return color;
  }

  static Map<String,Object> get eveningDelight {
    Map<String,Object> color = eveningDelightColor(AALinearGradientDirection.toTop);
    return color;
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