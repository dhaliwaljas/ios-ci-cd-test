part of useridentity_api_client.api;

class LoginResponseData {
  
  String jwt = null;

  LoginResponseData({
    this.jwt,
  });

  @override
  String toString() {
    return 'LoginResponseData[jwt=$jwt, ]';
  }

  LoginResponseData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    jwt = json['jwt'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (jwt != null)
      json['jwt'] = jwt;
    return json;
  }

  static List<LoginResponseData> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginResponseData>() : json.map((value) => LoginResponseData.fromJson(value)).toList();
  }

  static Map<String, LoginResponseData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginResponseData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginResponseData.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginResponseData-objects as value to a dart map
  static Map<String, List<LoginResponseData>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginResponseData>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginResponseData.listFromJson(value);
       });
     }
     return map;
  }
}

