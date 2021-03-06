part of userprofile_api_client.api;



class UserProfileApi {
  final ApiClient apiClient;

  UserProfileApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create user profile with HTTP info returned
  ///
  /// 
  Future<Response> createUserProfileWithHttpInfo({ NewUserRequest newUserRequest }) async {
    Object postBody = newUserRequest;

    // verify required params are set

    // create path and map variables
    String path = "/profiles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create user profile
  ///
  ///NewUserRequest newUserRequest :
  ///    
  /// 
  Future<NewUserResponse> createUserProfile({ NewUserRequest newUserRequest }) async {
    Response response = await createUserProfileWithHttpInfo( newUserRequest: newUserRequest );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NewUserResponse') as NewUserResponse;
    } else {
      return null;
    }
  }

  /// List user profiles with HTTP info returned
  ///
  /// 
  Future<Response> listUserProfilesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/profiles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List user profiles
  ///
  /// 
  Future<UserProfileListResponse> listUserProfiles() async {
    Response response = await listUserProfilesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserProfileListResponse') as UserProfileListResponse;
    } else {
      return null;
    }
  }

}
