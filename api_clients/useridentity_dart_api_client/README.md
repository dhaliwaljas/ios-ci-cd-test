# useridentity_api_client
Wave User Identity service


This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.1
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  useridentity_api_client:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  useridentity_api_client:
    path: /path/to/useridentity_api_client
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

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

## Documentation for API Endpoints

All URIs are relative to *https://virtserver.swaggerhub.com/hasiltech/useridentity/1.0.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*UserIdentityApi* | [**createUserIdentity**](doc//UserIdentityApi.md#createuseridentity) | **POST** /users | Create user identity
*UserIdentityApi* | [**listUserIdentities**](doc//UserIdentityApi.md#listuseridentities) | **GET** /users | List user identities
*UserIdentityApi* | [**loginUserIdentity**](doc//UserIdentityApi.md#loginuseridentity) | **POST** /login | Login user identity
*UserIdentityApi* | [**registerUserIdentity**](doc//UserIdentityApi.md#registeruseridentity) | **POST** /register | Register user identity


## Documentation For Models

 - [Error](doc//Error.md)
 - [LoginRequest](doc//LoginRequest.md)
 - [LoginResponse](doc//LoginResponse.md)
 - [LoginResponseData](doc//LoginResponseData.md)
 - [NewUserRequest](doc//NewUserRequest.md)
 - [NewUserResponse](doc//NewUserResponse.md)
 - [RegisterRequest](doc//RegisterRequest.md)
 - [RegisterResponse](doc//RegisterResponse.md)
 - [UserIdentity](doc//UserIdentity.md)
 - [UserIdentityListResponse](doc//UserIdentityListResponse.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author




