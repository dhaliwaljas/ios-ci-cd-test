# userprofile_api_client.api.UserProfileApi

## Load the API package
```dart
import 'package:userprofile_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserProfile**](UserProfileApi.md#createUserProfile) | **POST** /profiles | Create user profile
[**listUserProfiles**](UserProfileApi.md#listUserProfiles) | **GET** /profiles | List user profiles


# **createUserProfile**
> NewUserResponse createUserProfile(newUserRequest)

Create user profile

### Example 
```dart
import 'package:userprofile_api_client/api.dart';

var api_instance = UserProfileApi();
var newUserRequest = NewUserRequest(); // NewUserRequest | 

try { 
    var result = api_instance.createUserProfile(newUserRequest);
    print(result);
} catch (e) {
    print("Exception when calling UserProfileApi->createUserProfile: $e\n");
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

# **listUserProfiles**
> UserProfileListResponse listUserProfiles()

List user profiles

### Example 
```dart
import 'package:userprofile_api_client/api.dart';

var api_instance = UserProfileApi();

try { 
    var result = api_instance.listUserProfiles();
    print(result);
} catch (e) {
    print("Exception when calling UserProfileApi->listUserProfiles: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserProfileListResponse**](UserProfileListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

