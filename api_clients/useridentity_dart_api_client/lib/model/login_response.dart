part of useridentity_api_client.api;

class LoginResponse {
  
  LoginResponseData data = null;

  LoginResponse({
    this.data,
  });

  @override
  String toString() {
    return 'LoginResponse[data=$data, ]';
  }

  LoginResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      LoginResponseData.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<LoginResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginResponse>() : json.map((value) => LoginResponse.fromJson(value)).toList();
  }

  static Map<String, LoginResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginResponse-objects as value to a dart map
  static Map<String, List<LoginResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginResponse.listFromJson(value);
       });
     }
     return map;
  }
}

