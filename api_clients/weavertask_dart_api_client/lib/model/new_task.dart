part of weavertask_api_client.api;

class NewTask {
  
  String title = null;
  
  String description = null;
  
  num creditValue = null;
  
  String assignedTo = null;
  
  int maxDueDate = null;
  
  int initiallyDueAt = null;

  NewTask({
    this.title,
    this.description,
    this.creditValue,
    this.assignedTo,
    this.maxDueDate,
    this.initiallyDueAt,
  });

  @override
  String toString() {
    return 'NewTask[title=$title, description=$description, creditValue=$creditValue, assignedTo=$assignedTo, maxDueDate=$maxDueDate, initiallyDueAt=$initiallyDueAt, ]';
  }

  NewTask.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    description = json['description'];
    creditValue = json['creditValue'];
    assignedTo = json['assignedTo'];
    maxDueDate = json['maxDueDate'];
    initiallyDueAt = json['initiallyDueAt'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (description != null)
      json['description'] = description;
    if (creditValue != null)
      json['creditValue'] = creditValue;
    if (assignedTo != null)
      json['assignedTo'] = assignedTo;
    if (maxDueDate != null)
      json['maxDueDate'] = maxDueDate;
    if (initiallyDueAt != null)
      json['initiallyDueAt'] = initiallyDueAt;
    return json;
  }

  static List<NewTask> listFromJson(List<dynamic> json) {
    return json == null ? List<NewTask>() : json.map((value) => NewTask.fromJson(value)).toList();
  }

  static Map<String, NewTask> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewTask>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewTask.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewTask-objects as value to a dart map
  static Map<String, List<NewTask>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewTask>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewTask.listFromJson(value);
       });
     }
     return map;
  }
}

