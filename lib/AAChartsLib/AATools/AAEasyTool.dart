
 class AAEasyTool {

  static String pureJavaScriptFunctionString(String jsFunctionStr)  {
    String pureJSFunctionStr = "(" + jsFunctionStr + ")";
    // String pureJSFunctionStr = jsFunctionStr;

    pureJSFunctionStr = pureJSFunctionStr.replaceAll("'", "\"");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\0", "");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\n", "");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\\", "\\\\");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\"", "\\\"");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\'", "\\\'");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\n", "\\n");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\r", "\\r");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\f", "\\f");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\u2028", "\\u2028");
    pureJSFunctionStr = pureJSFunctionStr.replaceAll("\u2029","\\u2029" );
    return pureJSFunctionStr;
  }
}

class AAJSArrayConverter {
  //Convert List to JS Array String
  static String JSArrayWithDartArray(List<dynamic> list) {
    var jsArray = "[";
    for (var i = 0; i < list.length; i++) {
      jsArray += "${list[i]}";
      if (i != list.length - 1) {
        jsArray += ",";
      }
    }
    jsArray += "]";
    return jsArray;
  }
}
