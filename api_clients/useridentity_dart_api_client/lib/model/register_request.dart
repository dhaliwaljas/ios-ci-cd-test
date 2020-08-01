part of useridentity_api_client.api;

class RegisterRequest {
  
  String email = null;
  
  String password = null;

  RegisterRequest({
    this.email,
    this.password,
  });

  @override
  String toString() {
    return 'RegisterRequest[email=$email, password=$password, ]';
  }

  RegisterRequest.fromJson(Map<String, dynamic> json) {
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

  static List<RegisterRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<RegisterRequest>() : json.map((value) => RegisterRequest.fromJson(value)).toList();
  }

  static Map<String, RegisterRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RegisterRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RegisterRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RegisterRequest-objects as value to a dart map
  static Map<String, List<RegisterRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<RegisterRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = RegisterRequest.listFromJson(value);
       });
     }
     return map;
  }
}

