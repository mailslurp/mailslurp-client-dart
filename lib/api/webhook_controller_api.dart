part of mailslurp.api;



class WebhookControllerApi {
  final ApiClient apiClient;

  WebhookControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Attach a WebHook URL to an inbox with HTTP info returned
  ///
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  Future<Response> createWebhookWithHttpInfo(String inboxId, CreateWebhookOptions webhookOptions) async {
    Object postBody = webhookOptions;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }
    if(webhookOptions == null) {
     throw ApiException(400, "Missing required param: webhookOptions");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/webhooks".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

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

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions webhookOptions) async {
    Response response = await createWebhookWithHttpInfo(inboxId, webhookOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookDto') as WebhookDto;
    } else {
      return null;
    }
  }

  /// Delete and disable a Webhook for an Inbox with HTTP info returned
  ///
  /// 
  Future deleteWebhookWithHttpInfo(String inboxId, String webhookId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }
    if(webhookId == null) {
     throw ApiException(400, "Missing required param: webhookId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/webhooks/{webhookId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString()).replaceAll("{" + "webhookId" + "}", webhookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Delete and disable a Webhook for an Inbox
  ///
  /// 
  Future deleteWebhook(String inboxId, String webhookId) async {
    Response response = await deleteWebhookWithHttpInfo(inboxId, webhookId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List Webhooks Paginated with HTTP info returned
  ///
  /// List webhooks in paginated form. Allows for page index, page size, and sort direction.
  Future<Response> getAllWebhooksWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/webhooks/paginated".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

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
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Webhooks Paginated
  ///
  /// List webhooks in paginated form. Allows for page index, page size, and sort direction.
  Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort }) async {
    Response response = await getAllWebhooksWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageWebhookProjection') as PageWebhookProjection;
    } else {
      return null;
    }
  }

  /// Get a webhook for an Inbox with HTTP info returned
  ///
  /// 
  Future<Response> getWebhookWithHttpInfo(String webhookId) async {
    Object postBody;

    // verify required params are set
    if(webhookId == null) {
     throw ApiException(400, "Missing required param: webhookId");
    }

    // create path and map variables
    String path = "/webhooks/{webhookId}".replaceAll("{format}","json").replaceAll("{" + "webhookId" + "}", webhookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get a webhook for an Inbox
  ///
  /// 
  Future<WebhookDto> getWebhook(String webhookId) async {
    Response response = await getWebhookWithHttpInfo(webhookId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookDto') as WebhookDto;
    } else {
      return null;
    }
  }

  /// Get all Webhooks for an Inbox with HTTP info returned
  ///
  /// 
  Future<Response> getWebhooksWithHttpInfo(String inboxId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/webhooks".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get all Webhooks for an Inbox
  ///
  /// 
  Future<List<WebhookDto>> getWebhooks(String inboxId) async {
    Response response = await getWebhooksWithHttpInfo(inboxId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WebhookDto>') as List).map((item) => item as WebhookDto).toList();
    } else {
      return null;
    }
  }

  /// Send webhook test data with HTTP info returned
  ///
  /// 
  Future<Response> sendTestDataWithHttpInfo(String webhookId) async {
    Object postBody;

    // verify required params are set
    if(webhookId == null) {
     throw ApiException(400, "Missing required param: webhookId");
    }

    // create path and map variables
    String path = "/webhooks/{webhookId}/test".replaceAll("{format}","json").replaceAll("{" + "webhookId" + "}", webhookId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

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

  /// Send webhook test data
  ///
  /// 
  Future<WebhookTestResult> sendTestData(String webhookId) async {
    Response response = await sendTestDataWithHttpInfo(webhookId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookTestResult') as WebhookTestResult;
    } else {
      return null;
    }
  }

}
