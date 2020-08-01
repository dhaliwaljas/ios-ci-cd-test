import 'package:weaver/logic/repositories/userprofile_repository.dart';

import 'package:weaver/data/apis/weavertask_api.dart';
import 'package:weaver/data/converters/task_converter.dart';
import 'package:weaver/data/entities/task_entity.dart';
import 'package:weaver/data/models/task_model.dart';

class TaskRepository {
  static List<TaskEntity> _tasks = [];

  // get functions
  List<TaskModel> getAll() {
    return _entityListToModelList(_tasks);
  }

  TaskModel getById(String id) {
    return _entityToModel(
      _tasks.firstWhere(
        (user) => user.id == id,
        orElse: () => TaskEntity.undefined(),
      ),
    );
  }

  // API calls
  WeaverTaskAPI taskAPI = WeaverTaskAPI();

  Future<List<TaskModel>> fetchTasks() {
    return taskAPI.fetchAllTasks().then((allTasks) {
      _tasks = allTasks;

      return _entityListToModelList(_tasks);
    });
  }


  Future addNewTask(TaskModel task) {
    return taskAPI.newTask(formDataToEntity(task));
  }

  // Converters
  UserProfileRepository userProfileRepository = new UserProfileRepository();

  TaskModel _entityToModel(TaskEntity taskEntity) {
    return TaskConverter.entityToModel(
      task: taskEntity,
      assignedBy: UserProfileRepository().getById(taskEntity.assignedBy),
      assignedTo: UserProfileRepository().getById(taskEntity.assignedTo),
    );
  }

  List<TaskModel> _entityListToModelList(List<TaskEntity> taskEntityList) {
    return taskEntityList
        .map((taskEntity) => _entityToModel(taskEntity))
        .toList();
  }

  //temporary converter
  TaskEntity formDataToEntity(TaskModel model) {
    return TaskEntity(
      id: null,
      title: model.title,
      description: model.description,
      createdBy: null,
      assignedBy: null,
      assignedTo: model.assignedTo.id,
      creditValue: model.creditValue,
      initiallyDueAt: model.initiallyDueAt,
      maxDueAt: model.maxDueAt,
      currentlyDueAt: model.initiallyDueAt,
      completedAt: model.initiallyDueAt,
      createdAt: model.initiallyDueAt,
      updatedAt: model.initiallyDueAt,
    );
  }
}
