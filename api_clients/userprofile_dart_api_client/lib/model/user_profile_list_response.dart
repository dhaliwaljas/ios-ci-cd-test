part of userprofile_api_client.api;

class UserProfileListResponse {
  
  List<NewUserRequest> data = [];

  UserProfileListResponse({
    this.data,
  });

  @override
  String toString() {
    return 'UserProfileListResponse[data=$data, ]';
  }

  UserProfileListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      NewUserRequest.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<UserProfileListResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<UserProfileListResponse>() : json.map((value) => UserProfileListResponse.fromJson(value)).toList();
  }

  static Map<String, UserProfileListResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserProfileListResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserProfileListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserProfileListResponse-objects as value to a dart map
  static Map<String, List<UserProfileListResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserProfileListResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserProfileListResponse.listFromJson(value);
       });
     }
     return map;
  }
}

