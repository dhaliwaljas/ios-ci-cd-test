part of userprofile_api_client.api;

class NewUserRequest {
  
  String id = null;
  
  String displayName = null;
  
  String avatarUrl = null;

  NewUserRequest({
    this.id,
    this.displayName,
    this.avatarUrl,
  });

  @override
  String toString() {
    return 'NewUserRequest[id=$id, displayName=$displayName, avatarUrl=$avatarUrl, ]';
  }

  NewUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    displayName = json['displayName'];
    avatarUrl = json['avatarUrl'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (displayName != null)
      json['displayName'] = displayName;
    if (avatarUrl != null)
      json['avatarUrl'] = avatarUrl;
    return json;
  }

  static List<NewUserRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<NewUserRequest>() : json.map((value) => NewUserRequest.fromJson(value)).toList();
  }

  static Map<String, NewUserRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewUserRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewUserRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewUserRequest-objects as value to a dart map
  static Map<String, List<NewUserRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewUserRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewUserRequest.listFromJson(value);
       });
     }
     return map;
  }
}

