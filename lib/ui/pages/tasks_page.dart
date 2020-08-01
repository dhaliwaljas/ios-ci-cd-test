import 'package:flutter/material.dart';

import '../component_lists/task_list.dart';

class TasksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: TaskList(),
      // floatingActionButton: IconButton(
      //     icon: Icon(
      //       Icons.touch_app,
      //       color: Colors.blue,
      //     ),
      //     onPressed: () {
      //       Scaffold.of(context).showSnackBar(SnackBar(
      //         content: Text('SnackBar Example'),
      //         duration: Duration(seconds: 1),
      //       ));
      //     }),
    );
  }
}
