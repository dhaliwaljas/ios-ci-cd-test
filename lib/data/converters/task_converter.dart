import 'package:weavertask_api_client/api.dart';

import 'package:weaver/data/entities/task_entity.dart';
import 'package:weaver/data/models/task_model.dart';
import 'package:weaver/data/models/userprofile_model.dart';

class TaskConverter {
  static TaskModel entityToModel({
    TaskEntity task,
    UserProfileModel assignedBy,
    UserProfileModel assignedTo,
  }) {
    return TaskModel(
      id: task.id,
      title: task.title,
      description: task.description,
      currentlyDueAt: task.currentlyDueAt,
      completedAt: task.completedAt,
      assignedBy: assignedBy,
      assignedTo: assignedTo,
    );
  }

  static TaskEntity modelToEntity(TaskModel model) {
    return TaskEntity(
      id: model.id,
      title: model.title,
      description: model.description,
      creditValue: model.creditValue,
      createdBy: model.createdBy.id,
      assignedBy: model.assignedBy.id,
      assignedTo: model.assignedTo.id,
      initiallyDueAt: model.initiallyDueAt,
      maxDueAt: model.maxDueAt,
      currentlyDueAt: model.currentlyDueAt,
      completedAt: model.completedAt,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  static NewTask entityToNewTaskAPIModel(TaskEntity entity) {
    var newTask = new NewTask();
    newTask.title = entity.title;
    newTask.assignedTo = entity.assignedTo;
    newTask.creditValue = entity.creditValue;
    newTask.description = entity.description;
    newTask.initiallyDueAt = entity.initiallyDueAt.millisecondsSinceEpoch;
    newTask.maxDueDate = entity.maxDueAt.millisecondsSinceEpoch;

    return newTask;
  }
}
