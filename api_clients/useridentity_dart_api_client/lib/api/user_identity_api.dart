part of useridentity_api_client.api;



class UserIdentityApi {
  final ApiClient apiClient;

  UserIdentityApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create user identity with HTTP info returned
  ///
  /// 
  Future<Response> createUserIdentityWithHttpInfo({ NewUserRequest newUserRequest }) async {
    Object postBody = newUserRequest;

    // verify required params are set

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

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

  /// Create user identity
  ///
  ///NewUserRequest newUserRequest :
  ///    
  /// 
  Future<NewUserResponse> createUserIdentity({ NewUserRequest newUserRequest }) async {
    Response response = await createUserIdentityWithHttpInfo( newUserRequest: newUserRequest );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'NewUserResponse') as NewUserResponse;
    } else {
      return null;
    }
  }

  /// List user identities with HTTP info returned
  ///
  /// 
  Future<Response> listUserIdentitiesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/users".replaceAll("{format}","json");

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

  /// List user identities
  ///
  /// 
  Future<UserIdentityListResponse> listUserIdentities() async {
    Response response = await listUserIdentitiesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UserIdentityListResponse') as UserIdentityListResponse;
    } else {
      return null;
    }
  }

  /// Login user identity with HTTP info returned
  ///
  /// 
  Future<Response> loginUserIdentityWithHttpInfo({ LoginRequest loginRequest }) async {
    Object postBody = loginRequest;

    // verify required params are set

    // create path and map variables
    String path = "/login".replaceAll("{format}","json");

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

  /// Login user identity
  ///
  ///LoginRequest loginRequest :
  ///    
  /// 
  Future<LoginResponse> loginUserIdentity({ LoginRequest loginRequest }) async {
    Response response = await loginUserIdentityWithHttpInfo( loginRequest: loginRequest );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'LoginResponse') as LoginResponse;
    } else {
      return null;
    }
  }

  /// Register user identity with HTTP info returned
  ///
  /// 
  Future<Response> registerUserIdentityWithHttpInfo({ RegisterRequest registerRequest }) async {
    Object postBody = registerRequest;

    // verify required params are set

    // create path and map variables
    String path = "/register".replaceAll("{format}","json");

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

  /// Register user identity
  ///
  ///RegisterRequest registerRequest :
  ///    
  /// 
  Future<RegisterResponse> registerUserIdentity({ RegisterRequest registerRequest }) async {
    Response response = await registerUserIdentityWithHttpInfo( registerRequest: registerRequest );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RegisterResponse') as RegisterResponse;
    } else {
      return null;
    }
  }

}
