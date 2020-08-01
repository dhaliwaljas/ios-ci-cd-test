part of useridentity_api_client.api;

class LoginRequest {
  
  String email = null;
  
  String password = null;

  LoginRequest({
    this.email,
    this.password,
  });

  @override
  String toString() {
    return 'LoginRequest[email=$email, password=$password, ]';
  }

  LoginRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (email != null)
      json['email'] = email;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<LoginRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<LoginRequest>() : json.map((value) => LoginRequest.fromJson(value)).toList();
  }

  static Map<String, LoginRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, LoginRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = LoginRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of LoginRequest-objects as value to a dart map
  static Map<String, List<LoginRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<LoginRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = LoginRequest.listFromJson(value);
       });
     }
     return map;
  }
}

