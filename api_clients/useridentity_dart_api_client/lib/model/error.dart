part of useridentity_api_client.api;

class Error {
  
  num errorCode = null;
  
  String errorMessage = null;

  Error({
    this.errorCode,
    this.errorMessage,
  });

  @override
  String toString() {
    return 'Error[errorCode=$errorCode, errorMessage=$errorMessage, ]';
  }

  Error.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errorCode = json['errorCode'];
    errorMessage = json['errorMessage'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errorCode != null)
      json['errorCode'] = errorCode;
    if (errorMessage != null)
      json['errorMessage'] = errorMessage;
    return json;
  }

  static List<Error> listFromJson(List<dynamic> json) {
    return json == null ? List<Error>() : json.map((value) => Error.fromJson(value)).toList();
  }

  static Map<String, Error> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Error>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Error.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Error-objects as value to a dart map
  static Map<String, List<Error>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Error>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Error.listFromJson(value);
       });
     }
     return map;
  }
}

