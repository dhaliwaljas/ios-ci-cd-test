import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weaver/logic/providers/auth_provider.dart';

import '../../logic/providers/tasks_provider.dart';

import '../components/task.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 10),
        Consumer<TasksProvider>(
          builder: (ctx, tasksProvider, child) => ListView.builder(
            shrinkWrap: true,
            itemCount: tasksProvider.getAll().length,
            itemBuilder: (ctx, i) => Task(tasksProvider.getAll()[i]),
          ),
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.touch_app,
              color: Colors.blue,
            ),
            onPressed: () {
              // Scaffold.of(context).showSnackBar(SnackBar(
              //   content: Text('SnackBar Example'),
              //   duration: Duration(seconds: 1),
              // ));
              Provider.of<AuthProvider>(context).logout();
            }),
      ],
    );
  }
}
