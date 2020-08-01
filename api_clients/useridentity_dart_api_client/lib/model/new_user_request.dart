part of useridentity_api_client.api;

class NewUserRequest {
  
  String id = null;
  
  String email = null;
  
  String password = null;

  NewUserRequest({
    this.id,
    this.email,
    this.password,
  });

  @override
  String toString() {
    return 'NewUserRequest[id=$id, email=$email, password=$password, ]';
  }

  NewUserRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (email != null)
      json['email'] = email;
    if (password != null)
      json['password'] = password;
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

