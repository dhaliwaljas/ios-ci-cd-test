import 'package:flutter/material.dart';

// import '../providers/users_provider.dart';

import '../repositories/task_repository.dart';

import '../../data/models/task_model.dart';

class TasksProvider with ChangeNotifier {
  static List<TaskModel> _taskList = [];

  TasksProvider() {
    _taskList = taskRepository.getAll();
  }

  TaskRepository taskRepository = TaskRepository();
  // UsersProvider usersProvider = UsersProvider();

  List<TaskModel> getAll() {
    return _taskList;
  }

  TaskModel getById(String taskId) {
    return _taskList.firstWhere(
      (taskModel) => taskModel.id == taskId,
      orElse: () => TaskModel.undefined(),
    );
  }

  Future<List<TaskModel>> refreshAll() {
    return taskRepository.fetchTasks().then((tasks) {
      _taskList = tasks;
      notifyListeners();
      return;
    });
  }

  Future newTask(TaskModel task) {
    return taskRepository.addNewTask(task);
  }
}
