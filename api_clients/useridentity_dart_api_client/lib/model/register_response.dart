part of useridentity_api_client.api;

class RegisterResponse {
  
  UserIdentity data = null;

  RegisterResponse({
    this.data,
  });

  @override
  String toString() {
    return 'RegisterResponse[data=$data, ]';
  }

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      UserIdentity.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<RegisterResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<RegisterResponse>() : json.map((value) => RegisterResponse.fromJson(value)).toList();
  }

  static Map<String, RegisterResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegisterResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegisterResponse-objects as value to a dart map
  static Map<String, List<RegisterResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegisterResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegisterResponse.listFromJson(value);
       });
     }
     return map;
  }
}

