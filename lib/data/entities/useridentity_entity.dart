import 'package:flutter/material.dart';
import 'package:weaver/data/helpers/loggable.dart';

class UserIdentityEntity implements Loggable {
  String id;
  String email;
  String password;

  UserIdentityEntity.undefined({
    this.id: 'user id not found',
    this.email: 'user not Found',
    this.password: '',
  });

  UserIdentityEntity({
    @required this.id,
    @required this.email,
    @required this.password,
  });

  @override
  String toLog() => ({
        'id': id,
        'email': email,
        'password': password,
      }).toString();
}
