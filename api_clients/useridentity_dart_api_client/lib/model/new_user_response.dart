part of useridentity_api_client.api;

class NewUserResponse {
  
  UserIdentity data = null;

  NewUserResponse({
    this.data,
  });

  @override
  String toString() {
    return 'NewUserResponse[data=$data, ]';
  }

  NewUserResponse.fromJson(Map<String, dynamic> json) {
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

  static List<NewUserResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<NewUserResponse>() : json.map((value) => NewUserResponse.fromJson(value)).toList();
  }

  static Map<String, NewUserResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewUserResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewUserResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewUserResponse-objects as value to a dart map
  static Map<String, List<NewUserResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewUserResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewUserResponse.listFromJson(value);
       });
     }
     return map;
  }
}

