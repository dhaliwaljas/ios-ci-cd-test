part of weavertask_api_client.api;

class TaskApi {
  final ApiClient apiClient;

  TaskApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create task with HTTP info returned
  ///
  ///
  Future<Response> createTaskWithHttpInfo({NewTask body}) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/tasks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// Create task
  ///
  ///NewTask body :
  ///
  ///
  Future<NewTaskResponse> createTask({NewTask body}) async {
    Response response = await createTaskWithHttpInfo(body: body);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'NewTaskResponse') as NewTaskResponse;
    } else {
      return null;
    }
  }

  /// List Tasks with HTTP info returned
  ///
  ///
  Future<Response> listTasksWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/tasks".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [
      // "application/json"
    ];

    String nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = [];

    if (nullableContentType != null &&
        nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, nullableContentType, authNames);
    return response;
  }

  /// List Tasks
  ///
  ///
  Future<TaskListResponse> listTasks() async {
    Response response = await listTasksWithHttpInfo();
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if (response.body != null) {
      return apiClient.deserialize(
          _decodeBodyBytes(response), 'TaskListResponse') as TaskListResponse;
    } else {
      return null;
    }
  }
}
