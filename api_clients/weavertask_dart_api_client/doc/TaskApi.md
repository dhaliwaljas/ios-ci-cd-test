# weavertask_api_client.api.TaskApi

## Load the API package
```dart
import 'package:weavertask_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTask**](TaskApi.md#createTask) | **POST** /tasks | Create task
[**listTasks**](TaskApi.md#listTasks) | **GET** /tasks | List Tasks


# **createTask**
> NewTaskResponse createTask(body)

Create task

### Example 
```dart
import 'package:weavertask_api_client/api.dart';

var api_instance = TaskApi();
var body = NewTask(); // NewTask | 

try { 
    var result = api_instance.createTask(body);
    print(result);
} catch (e) {
    print("Exception when calling TaskApi->createTask: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **NewTask**|  | [optional] 

### Return type

[**NewTaskResponse**](NewTaskResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listTasks**
> TaskListResponse listTasks()

List Tasks

### Example 
```dart
import 'package:weavertask_api_client/api.dart';

var api_instance = TaskApi();

try { 
    var result = api_instance.listTasks();
    print(result);
} catch (e) {
    print("Exception when calling TaskApi->listTasks: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TaskListResponse**](TaskListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

