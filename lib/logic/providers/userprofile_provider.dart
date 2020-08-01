import 'package:flutter/material.dart';

import 'package:weaver/data/models/userprofile_model.dart';
import 'package:weaver/logic/repositories/userprofile_repository.dart';

class UserProfileProvider with ChangeNotifier {
  static List<UserProfileModel> _userList = [];

  UserProfileRepository userRepository = new UserProfileRepository();

  UserProfileProvider() {
    _userList = userRepository.getAll();
  }

  List<UserProfileModel> getAll() {
    return _userList;
  }

  UserProfileModel getById(String userId) {
    return _userList.firstWhere(
      (userProfileModel) => userProfileModel.id == userId,
      orElse: () => UserProfileModel.undefined(),
    );
  }

  Future<List<UserProfileModel>> refreshAll() {
    return userRepository.fetchUsers().then((users) {
      _userList = users;
      notifyListeners();
      return;
    });
  }
}
