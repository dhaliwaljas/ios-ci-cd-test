import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weaver/logic/providers/tasks_provider.dart';
import 'package:weaver/logic/providers/userprofile_provider.dart';

class DataSynchronizerService {
  UserProfileProvider _usersProvider;
  TasksProvider _tasksProvider;

  DataSynchronizerService(BuildContext ctx) {
    this._tasksProvider = Provider.of<TasksProvider>(ctx, listen: false);
    this._usersProvider = Provider.of<UserProfileProvider>(ctx, listen: false);
  }

  synchronizeAll() {
    print('===> syncronizeAll');
    return _usersProvider.refreshAll().then((_) => _tasksProvider.refreshAll());
  }

  synchronizeTasks() {
    return _tasksProvider.refreshAll();
  }
}
