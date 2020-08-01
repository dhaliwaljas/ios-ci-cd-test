import 'package:flutter/material.dart';

import 'package:weaver/data/apis/userprofile_api.dart';
import 'package:weaver/data/converters/userprofile_converter.dart';
import 'package:weaver/data/entities/userprofile_entity.dart';
import 'package:weaver/data/models/userprofile_model.dart';

class UserProfileRepository with ChangeNotifier {
  static List<UserProfileEntity> _users = [
    // UserProfileEntity(
    //   avatarUrl: 'avatarUrl',
    //   displayName: 'jas',
    //   id: 'id_jas',
    // ),
    // UserProfileEntity(
    //   avatarUrl: 'avatarUrl',
    //   displayName: 'aman',
    //   id: 'id_aman',
    // ),
  ];

  List<UserProfileModel> getAll() {
    return _entityListToModelList(_users);
  }

  UserProfileModel getById(String id) {
    return (_entityToModel(_users.firstWhere(
      (user) => user.id == id,
      orElse: () => UserProfileEntity.undefined(),
    )));
  }

  UserProfileAPI userProfileAPI = UserProfileAPI();

  Future<List<UserProfileModel>> fetchUsers() {
    return userProfileAPI.fetchAllUsers().then((allUsers) {
      _users = allUsers;
      return _entityListToModelList(_users);
    });
  }

  UserProfileModel _entityToModel(UserProfileEntity userProfileEntity) {
    return UserProfileConverter.entityToModel(userProfileEntity);
  }

  List<UserProfileModel> _entityListToModelList(
      List<UserProfileEntity> userProfileEntityList) {
    return userProfileEntityList.map((user) => _entityToModel(user)).toList();
  }
}
