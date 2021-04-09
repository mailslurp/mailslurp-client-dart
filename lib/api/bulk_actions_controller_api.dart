part of mailslurp.api;



class BulkActionsControllerApi {
  final ApiClient apiClient;

  BulkActionsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Bulk create Inboxes (email addresses) with HTTP info returned
  ///
  /// 
  Future<Response> bulkCreateInboxesWithHttpInfo(int count) async {
    Object postBody;

    // verify required params are set
    if(count == null) {
     throw ApiException(400, "Missing required param: count");
    }

    // create path and map variables
    String path = "/bulk/inboxes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

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

  /// Bulk create Inboxes (email addresses)
  ///
  /// 
  Future<List<Inbox>> bulkCreateInboxes(int count) async {
    Response response = await bulkCreateInboxesWithHttpInfo(count);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Inbox>') as List).map((item) => item as Inbox).toList();
    } else {
      return null;
    }
  }

  /// Bulk Delete Inboxes with HTTP info returned
  ///
  /// 
  Future bulkDeleteInboxesWithHttpInfo(List<String> ids) async {
    Object postBody = ids;

    // verify required params are set
    if(ids == null) {
     throw ApiException(400, "Missing required param: ids");
    }

    // create path and map variables
    String path = "/bulk/inboxes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Bulk Delete Inboxes
  ///
  /// 
  Future bulkDeleteInboxes(List<String> ids) async {
    Response response = await bulkDeleteInboxesWithHttpInfo(ids);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Bulk Send Emails with HTTP info returned
  ///
  /// 
  Future bulkSendEmailsWithHttpInfo(BulkSendEmailOptions bulkSendEmailOptions) async {
    Object postBody = bulkSendEmailOptions;

    // verify required params are set
    if(bulkSendEmailOptions == null) {
     throw ApiException(400, "Missing required param: bulkSendEmailOptions");
    }

    // create path and map variables
    String path = "/bulk/send".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

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

  /// Bulk Send Emails
  ///
  /// 
  Future bulkSendEmails(BulkSendEmailOptions bulkSendEmailOptions) async {
    Response response = await bulkSendEmailsWithHttpInfo(bulkSendEmailOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
