library userprofile_api_client.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/user_profile_api.dart';

part 'model/error.dart';
part 'model/new_user_request.dart';
part 'model/new_user_response.dart';
part 'model/user_profile_list_response.dart';


ApiClient defaultApiClient = ApiClient();
