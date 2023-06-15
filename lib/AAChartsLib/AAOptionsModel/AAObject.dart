class AAObject {

  Map<String, dynamic> toJson() {
    return toPureJson();
  }

  Map<String, dynamic> toPureJson() {
    Map<String, dynamic> json = this.toJson();

    Map<String, dynamic> pureJsonMap =  Map<String, dynamic>();

    json.forEach((key, value) {
      if (value != null) {
        pureJsonMap[key] = value;
      }
    });
    return pureJsonMap;
  }
}