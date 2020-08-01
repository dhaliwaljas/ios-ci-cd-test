import 'package:weaver/data/models/userprofile_model.dart';

class TaskModel {
  String id;
  String title;
  String description;
  double creditValue;
  UserProfileModel createdBy;
  UserProfileModel assignedBy;
  UserProfileModel assignedTo;
  DateTime initiallyDueAt;
  DateTime maxDueAt;
  DateTime currentlyDueAt;
  DateTime completedAt;
  DateTime createdAt;
  DateTime updatedAt;

  TaskModel.undefined({
    this.id: 'title id not found',
    this.title: 'title not found',
    this.description: 'description not found',
    this.creditValue: 0,
    this.createdBy: const UserProfileModel.undefined(),
    this.assignedBy: const UserProfileModel.undefined(),
    this.assignedTo: const UserProfileModel.undefined(),
  });

  TaskModel({
    this.id,
    this.title,
    this.description,
    this.creditValue,
    this.createdBy,
    this.assignedBy,
    this.assignedTo,
    this.initiallyDueAt,
    this.maxDueAt,
    this.currentlyDueAt,
    this.completedAt,
    this.createdAt,
    this.updatedAt,
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
