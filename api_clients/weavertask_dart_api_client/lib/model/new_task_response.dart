part of weavertask_api_client.api;

class NewTaskResponse {
  
  Task data = null;

  NewTaskResponse({
    this.data,
  });

  @override
  String toString() {
    return 'NewTaskResponse[data=$data, ]';
  }

  NewTaskResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      Task.fromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<NewTaskResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<NewTaskResponse>() : json.map((value) => NewTaskResponse.fromJson(value)).toList();
  }

  static Map<String, NewTaskResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewTaskResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewTaskResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewTaskResponse-objects as value to a dart map
  static Map<String, List<NewTaskResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewTaskResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewTaskResponse.listFromJson(value);
       });
     }
     return map;
  }
}

