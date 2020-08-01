part of useridentity_api_client.api;

class UserIdentity {
  
  String id = null;
  
  String email = null;
  
  String password = null;

  UserIdentity({
    this.id,
    this.email,
    this.password,
  });

  @override
  String toString() {
    return 'UserIdentity[id=$id, email=$email, password=$password, ]';
  }

  UserIdentity.fromJson(Map<String, dynamic> json) {
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

  static List<UserIdentity> listFromJson(List<dynamic> json) {
    return json == null ? List<UserIdentity>() : json.map((value) => UserIdentity.fromJson(value)).toList();
  }

  static Map<String, UserIdentity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserIdentity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserIdentity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserIdentity-objects as value to a dart map
  static Map<String, List<UserIdentity>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserIdentity>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserIdentity.listFromJson(value);
       });
     }
     return map;
  }
}

