import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weaver/data/models/task_model.dart';
import 'package:weaver/data/models/userprofile_model.dart';
import 'package:weaver/logic/providers/tasks_provider.dart';

class NewTaskPage extends StatelessWidget {
  static const NAVIGATION_ROUTE = '/newTaskPage';

  final _formKey = GlobalKey<FormState>();

  var _newTask = TaskModel();

  _saveForm(BuildContext context) {
    _formKey.currentState.save();
    Provider.of<TasksProvider>(context).newTask(_newTask);
    Navigator.pop(context);
  }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).maybePop();
          },
        ),
        title: Text(
          'Create new task',
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Title'),
                initialValue: 'title',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onSaved: (data) {
                  _newTask.title = data;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Description'),
                initialValue: 'description',
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.newline,
                onSaved: (data) {
                  _newTask.description = data;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'For'),
                initialValue: 'id_jas',
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                onSaved: (data) {
                  _newTask.assignedTo = UserProfileModel(id: data);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Credit Value'),
                initialValue: '2',
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                onSaved: (data) {
                  _newTask.creditValue = double.parse(data);
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Due At'),
                initialValue: '1589851623457',
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.next,
                onSaved: (data) {
                  _newTask.initiallyDueAt =
                      DateTime.fromMillisecondsSinceEpoch(int.parse(data));
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Final Date'),
                initialValue: '1589851623457',
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.next,
                onSaved: (data) {
                  _newTask.maxDueAt =
                      DateTime.fromMillisecondsSinceEpoch(int.parse(data));
                },
              ),
              RaisedButton(
                  child: Text('Create'),
                  onPressed: () {
                    _saveForm(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
