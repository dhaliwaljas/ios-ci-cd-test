part of weavertask_api_client.api;

class Task {
  
  String id = null;
  
  String createdBy = null;
  
  String assignedBy = null;
  
  num currentlyDueAt = null;
  
  num completedAt = null;
  
  num createdAt = null;
  
  num updatedAt = null;
  
  String title = null;
  
  String description = null;
  
  num creditValue = null;
  
  String assignedTo = null;
  
  int maxDueDate = null;
  
  int initiallyDueAt = null;

  Task({
    this.id,
    this.createdBy,
    this.assignedBy,
    this.currentlyDueAt,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.description,
    this.creditValue,
    this.assignedTo,
    this.maxDueDate,
    this.initiallyDueAt,
  });

  @override
  String toString() {
    return 'Task[id=$id, createdBy=$createdBy, assignedBy=$assignedBy, currentlyDueAt=$currentlyDueAt, completedAt=$completedAt, createdAt=$createdAt, updatedAt=$updatedAt, title=$title, description=$description, creditValue=$creditValue, assignedTo=$assignedTo, maxDueDate=$maxDueDate, initiallyDueAt=$initiallyDueAt, ]';
  }

  Task.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    createdBy = json['createdBy'];
    assignedBy = json['assignedBy'];
    currentlyDueAt = json['currentlyDueAt'];
    completedAt = json['completedAt'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    title = json['title'];
    description = json['description'];
    creditValue = json['creditValue'];
    assignedTo = json['assignedTo'];
    maxDueDate = json['maxDueDate'];
    initiallyDueAt = json['initiallyDueAt'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (createdBy != null)
      json['createdBy'] = createdBy;
    if (assignedBy != null)
      json['assignedBy'] = assignedBy;
    if (currentlyDueAt != null)
      json['currentlyDueAt'] = currentlyDueAt;
    if (completedAt != null)
      json['completedAt'] = completedAt;
    if (createdAt != null)
      json['createdAt'] = createdAt;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt;
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

  static List<Task> listFromJson(List<dynamic> json) {
    return json == null ? List<Task>() : json.map((value) => Task.fromJson(value)).toList();
  }

  static Map<String, Task> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Task>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Task.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Task-objects as value to a dart map
  static Map<String, List<Task>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Task>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Task.listFromJson(value);
       });
     }
     return map;
  }
}

