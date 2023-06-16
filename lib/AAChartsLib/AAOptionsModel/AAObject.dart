class AAObject {
  // Map<String, dynamic>? toJson() {
  //   return {};
  // }

  //声明一个 toJson 方法，返回一个 Map<String, dynamic> 类型的对象, 让子类可以继承
  Map<String, dynamic>? toJson() {
    return {};
  }

  Map<String, dynamic>? toPureJson() {
    Map<String, dynamic>? json = this.toJson();

    if (json != null) {
      Map<String, dynamic>? pureJsonMap = Map<String, dynamic>();
      json?.forEach((key, value) {
        if (value != null) {
          pureJsonMap[key] = value;
        }
      });
      return pureJsonMap;
    }
  }
}