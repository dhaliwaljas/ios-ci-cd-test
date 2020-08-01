# useridentity_api_client.api.UserIdentityApi

## Load the API package
```dart
import 'package:useridentity_api_client/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/hasiltech/useridentity/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserIdentity**](UserIdentityApi.md#createUserIdentity) | **POST** /users | Create user identity
[**listUserIdentities**](UserIdentityApi.md#listUserIdentities) | **GET** /users | List user identities
[**loginUserIdentity**](UserIdentityApi.md#loginUserIdentity) | **POST** /login | Login user identity
[**registerUserIdentity**](UserIdentityApi.md#registerUserIdentity) | **POST** /register | Register user identity


# **createUserIdentity**
> NewUserResponse createUserIdentity(newUserRequest)

Create user identity

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = UserIdentityApi();
var newUserRequest = NewUserRequest(); // NewUserRequest | 

try { 
    var result = api_instance.createUserIdentity(newUserRequest);
    print(result);
} catch (e) {
    print("Exception when calling UserIdentityApi->createUserIdentity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newUserRequest** | [**NewUserRequest**](NewUserRequest.md)|  | [optional] 

### Return type

[**NewUserResponse**](NewUserResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUserIdentities**
> UserIdentityListResponse listUserIdentities()

List user identities

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = UserIdentityApi();

try { 
    var result = api_instance.listUserIdentities();
    print(result);
} catch (e) {
    print("Exception when calling UserIdentityApi->listUserIdentities: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserIdentityListResponse**](UserIdentityListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUserIdentity**
> LoginResponse loginUserIdentity(loginRequest)

Login user identity

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = UserIdentityApi();
var loginRequest = LoginRequest(); // LoginRequest | 

try { 
    var result = api_instance.loginUserIdentity(loginRequest);
    print(result);
} catch (e) {
    print("Exception when calling UserIdentityApi->loginUserIdentity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginRequest** | [**LoginRequest**](LoginRequest.md)|  | [optional] 

### Return type

[**LoginResponse**](LoginResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUserIdentity**
> RegisterResponse registerUserIdentity(registerRequest)

Register user identity

### Example 
```dart
import 'package:useridentity_api_client/api.dart';

var api_instance = UserIdentityApi();
var registerRequest = RegisterRequest(); // RegisterRequest | 

try { 
    var result = api_instance.registerUserIdentity(registerRequest);
    print(result);
} catch (e) {
    print("Exception when calling UserIdentityApi->registerUserIdentity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerRequest** | [**RegisterRequest**](RegisterRequest.md)|  | [optional] 

### Return type

[**RegisterResponse**](RegisterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

