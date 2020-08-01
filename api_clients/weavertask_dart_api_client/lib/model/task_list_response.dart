part of weavertask_api_client.api;

class TaskListResponse {
  
  List<Task> data = [];

  TaskListResponse({
    this.data,
  });

  @override
  String toString() {
    return 'TaskListResponse[data=$data, ]';
  }

  TaskListResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    data = (json['data'] == null) ?
      null :
      Task.listFromJson(json['data']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (data != null)
      json['data'] = data;
    return json;
  }

  static List<TaskListResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<TaskListResponse>() : json.map((value) => TaskListResponse.fromJson(value)).toList();
  }

  static Map<String, TaskListResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TaskListResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TaskListResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TaskListResponse-objects as value to a dart map
  static Map<String, List<TaskListResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TaskListResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TaskListResponse.listFromJson(value);
       });
     }
     return map;
  }
}

