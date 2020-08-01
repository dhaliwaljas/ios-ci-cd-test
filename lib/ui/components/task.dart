import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:weaver/data/models/task_model.dart';

class Task extends StatelessWidget {
  final TaskModel _task;

  Task(this._task);

  String due(text) {
    return DateFormat('MMM d, EEE').format(text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[400],
            width: 0.3,
          ),
          top: BorderSide(
            color: Colors.grey[400],
            width: 0.3,
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _task.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                // due(_task.currentlyDueAt),
                _task.assignedTo.displayName,
                style: TextStyle(
                  color: Colors.grey[600],
                  letterSpacing: 1.1,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Spacer(),
          GestureDetector(
            child: Icon(Icons.info_outline),
            onTap: () {
              // _popUpSheet(context);
              // Scaffold.of(context).showSnackBar(SnackBar(
              //   content: Text('SnackBar Example'),
              //   duration: Duration(seconds: 1),
              // ));
            },
          ),
        ],
      ),
    );
  }

  // void _popUpSheet(context) {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     shape: StadiumBorder(),
  //     builder: (BuildContext context) => TaskDetailsSheet(_task),
  //   );
  // }
}
