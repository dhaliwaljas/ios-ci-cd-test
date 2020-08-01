import 'package:userprofile_api_client/api.dart' as WaveUserProfileAPI;

import 'package:weaver/data/entities/userprofile_entity.dart';
import 'package:weaver/logic/configurations/http.dart';

class UserProfileAPI {
  final userProfileAPI = WaveUserProfileAPI.UserProfileApi(
    WaveUserProfileAPI.ApiClient(
      basePath: HttpConfig.USERPROFILE_SERVER_URL,
    ),
  );

  Future<List<UserProfileEntity>> fetchAllUsers() {
    return userProfileAPI.listUserProfiles().then((listOfUser) {
      List<UserProfileEntity> _newUsers = [];

      listOfUser.data.forEach(
        (user) {
          _newUsers.add(
            new UserProfileEntity(
                id: user.id,
                displayName: user.displayName,
                avatarUrl: user.avatarUrl),
          );
        },
      );

      return _newUsers;
    });
  }
}
