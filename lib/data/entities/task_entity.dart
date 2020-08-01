import 'package:flutter/material.dart';
import 'package:weaver/data/helpers/loggable.dart';

class TaskEntity with ChangeNotifier implements Loggable {
  String id;
  String title;
  String description;
  String createdBy;
  String assignedBy;
  String assignedTo;
  double creditValue;
  DateTime initiallyDueAt;
  DateTime maxDueAt;
  DateTime currentlyDueAt;
  DateTime completedAt;
  DateTime createdAt;
  DateTime updatedAt;
  // String status;
  // String _version;

  TaskEntity.undefined({
    this.id: '',
    this.title: 'title not found',
    this.description: 'description not found',
    this.creditValue: 0,
    this.createdBy: 'user not found',
    this.assignedBy: 'user not found',
    this.assignedTo: 'user not found',
  });

  TaskEntity({
    @required this.id,
    @required this.title,
    @required this.description,
    this.createdBy,
    @required this.assignedBy,
    @required this.assignedTo,
    @required this.creditValue,
    @required this.initiallyDueAt,
    @required this.maxDueAt,
    @required this.currentlyDueAt,
    @required this.completedAt,
    @required this.createdAt,
    @required this.updatedAt,
  });

  @override
  String toLog() => ({
        'id': id,
        'title': title,
        'description': description,
        'creditValue': creditValue,
        'createdBy': createdBy,
        'assignedBy': assignedBy,
        'assignedTo': assignedTo,
        'initiallyDueAt': initiallyDueAt,
        'maxDueAt': maxDueAt,
        'currentlyDueAt': currentlyDueAt,
        'completedAt': completedAt,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      }).toString();
}
