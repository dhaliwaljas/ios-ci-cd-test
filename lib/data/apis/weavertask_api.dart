import 'package:weavertask_api_client/api.dart' as WeaverTaskServiceAPI;

import 'package:weaver/data/converters/task_converter.dart';
import 'package:weaver/data/entities/task_entity.dart';

import 'package:weaver/logic/configurations/http.dart';

import 'package:weaver/util/date_time_util.dart';

class WeaverTaskAPI {
  final taskAPIService = WeaverTaskServiceAPI.TaskApi(
    WeaverTaskServiceAPI.ApiClient(
      basePath: HttpConfig.WEAVERTASK_SERVER_URL,
    ),
  );

  Future<List<TaskEntity>> fetchAllTasks() {
    return taskAPIService.listTasks().then((taskSwaggerIterator) {
      List<TaskEntity> _newTasks = [];
      taskSwaggerIterator.data.forEach((taskSwagger) {
        _newTasks.add(new TaskEntity(
          id: taskSwagger.id,
          title: taskSwagger.title,
          description: taskSwagger.description,
          assignedBy: taskSwagger.assignedBy,
          assignedTo: taskSwagger.assignedTo,
          creditValue: double.parse(taskSwagger.creditValue.toString()),
          initiallyDueAt:
              DateTimeUtil.convertToDateTime(taskSwagger.initiallyDueAt),
          maxDueAt: DateTimeUtil.convertToDateTime(taskSwagger.maxDueDate),
          currentlyDueAt:
              DateTimeUtil.convertToDateTime(taskSwagger.currentlyDueAt),
          completedAt: DateTimeUtil.convertToDateTime(taskSwagger.completedAt),
          createdAt: DateTimeUtil.convertToDateTime(taskSwagger.createdAt),
          updatedAt: DateTimeUtil.convertToDateTime(taskSwagger.updatedAt),
        ));
      });

      return _newTasks;
    }).catchError((err) {
      print('===> Error while fetching all tasks: ' + err.toString());
    });
  }

  Future newTask(TaskEntity task) {
    return taskAPIService.createTask(
      body: TaskConverter.entityToNewTaskAPIModel(task),
    );
  }
}
