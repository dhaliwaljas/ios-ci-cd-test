import 'package:flutter/material.dart';
import 'package:weaver/data/helpers/loggable.dart';

class UserProfileEntity implements Loggable {
  String id;
  String displayName;
  String avatarUrl;

  UserProfileEntity.undefined({
    this.id: 'user id not found',
    this.displayName: 'user not Found',
    this.avatarUrl: '',
  });

  UserProfileEntity({
    @required this.id,
    @required this.displayName,
    @required this.avatarUrl,
  });

  @override
  String toLog() => ({
        'id': id,
        'displayName': displayName,
        'avatarUrl': avatarUrl,
      }).toString();
}
