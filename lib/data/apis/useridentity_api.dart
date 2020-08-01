import 'package:useridentity_api_client/api.dart' as UserIdentityAPIClient;

import 'package:weaver/logic/configurations/http.dart';

class UserIdentityAPI {
  final userIdentityAPI = UserIdentityAPIClient.UserIdentityApi(
    UserIdentityAPIClient.ApiClient(
      basePath: HttpConfig.USERIDENTITY_SERVER_URL,
    ),
  );

  Future<UserIdentityAPIClient.LoginResponse> existingUser(
      String email, String password) {
    var usr = new UserIdentityAPIClient.LoginRequest();
    usr.email = email;

    usr.password = password;

    return userIdentityAPI
        .loginUserIdentity(loginRequest: usr)
        .then((data) => data);
  }

  Future<UserIdentityAPIClient.RegisterResponse> newUser(
      String email, String password) {
    var usr = new UserIdentityAPIClient.RegisterRequest();

    usr.email = email;
    usr.password = password;

    return userIdentityAPI
        .registerUserIdentity(registerRequest: usr)
        .then((data) => data);
  }

  
}
