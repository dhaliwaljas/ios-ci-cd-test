part of useridentity_api_client.api;

class UserIdentityListResponse {
  
  List<UserIdentity> data = [];

  UserIdentityListResponse({
    this.data,
  });

  @override
  String toString() {
    return 'UserIdentityListResponse[data=$data, ]';
  }

  UserIdentityListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      UserIdentity.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<UserIdentityListResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UserIdentityListResponse>() : json.map((value) => UserIdentityListResponse.fromJson(value)).toList();
  }

  static Map<String, UserIdentityListResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserIdentityListResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserIdentityListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserIdentityListResponse-objects as value to a dart map
  static Map<String, List<UserIdentityListResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserIdentityListResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserIdentityListResponse.listFromJson(value);
       });
     }
     return map;
  }
}

