part of mailslurp.api;



class WaitForControllerApi {
  final ApiClient apiClient;

  WaitForControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Wait for conditions to be met with HTTP info returned
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  Future<Response> waitForWithHttpInfo({ WaitForConditions waitForConditions }) async {
    Object postBody = waitForConditions;

    // verify required params are set

    // create path and map variables
    String path = "/waitFor".replaceAll("{format}","json");

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

  /// Wait for conditions to be met
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  Future<List<EmailPreview>> waitFor({ WaitForConditions waitForConditions }) async {
    Response response = await waitForWithHttpInfo( waitForConditions: waitForConditions );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<EmailPreview>') as List).map((item) => item as EmailPreview).toList();
    } else {
      return null;
    }
  }

  /// Wait for and return count number of emails  with HTTP info returned
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  Future<Response> waitForEmailCountWithHttpInfo({ int count, String inboxId, int timeout, bool unreadOnly }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/waitForEmailCount".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
    }
    if(inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inboxId", inboxId));
    }
    if(timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeout", timeout));
    }
    if(unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unreadOnly", unreadOnly));
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

  /// Wait for and return count number of emails 
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  Future<List<EmailPreview>> waitForEmailCount({ int count, String inboxId, int timeout, bool unreadOnly }) async {
    Response response = await waitForEmailCountWithHttpInfo( count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<EmailPreview>') as List).map((item) => item as EmailPreview).toList();
    } else {
      return null;
    }
  }

  /// Fetch inbox&#39;s latest email or if empty wait for an email to arrive with HTTP info returned
  ///
  /// Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set &#x60;unreadOnly&#x3D;true&#x60; or see the other receive methods such as &#x60;waitForNthEmail&#x60; or &#x60;waitForEmailCount&#x60;.
  Future<Response> waitForLatestEmailWithHttpInfo({ String inboxId, int timeout, bool unreadOnly }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/waitForLatestEmail".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inboxId", inboxId));
    }
    if(timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeout", timeout));
    }
    if(unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unreadOnly", unreadOnly));
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

  /// Fetch inbox&#39;s latest email or if empty wait for an email to arrive
  ///
  /// Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set &#x60;unreadOnly&#x3D;true&#x60; or see the other receive methods such as &#x60;waitForNthEmail&#x60; or &#x60;waitForEmailCount&#x60;.
  Future<Email> waitForLatestEmail({ String inboxId, int timeout, bool unreadOnly }) async {
    Response response = await waitForLatestEmailWithHttpInfo( inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
    } else {
      return null;
    }
  }

  /// Wait or return list of emails that match simple matching patterns with HTTP info returned
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
  Future<Response> waitForMatchingEmailWithHttpInfo(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async {
    Object postBody = matchOptions;

    // verify required params are set
    if(matchOptions == null) {
     throw ApiException(400, "Missing required param: matchOptions");
    }

    // create path and map variables
    String path = "/waitForMatchingEmails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "count", count));
    }
    if(inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inboxId", inboxId));
    }
    if(timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeout", timeout));
    }
    if(unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unreadOnly", unreadOnly));
    }

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

  /// Wait or return list of emails that match simple matching patterns
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the &#x60;MatchOptions&#x60; object for options. An example payload is &#x60;{ matches: [{field: &#39;SUBJECT&#39;,should:&#39;CONTAIN&#39;,value:&#39;needle&#39;}] }&#x60;. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController &#x60;getEmailContentMatch&#x60; method.
  Future<List<EmailPreview>> waitForMatchingEmail(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async {
    Response response = await waitForMatchingEmailWithHttpInfo(matchOptions,  count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<EmailPreview>') as List).map((item) => item as EmailPreview).toList();
    } else {
      return null;
    }
  }

  /// Wait for or fetch the email with a given index in the inbox specified with HTTP info returned
  ///
  /// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
  Future<Response> waitForNthEmailWithHttpInfo({ String inboxId, int index, int timeout, bool unreadOnly }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/waitForNthEmail".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "inboxId", inboxId));
    }
    if(index != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "index", index));
    }
    if(timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timeout", timeout));
    }
    if(unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unreadOnly", unreadOnly));
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

  /// Wait for or fetch the email with a given index in the inbox specified
  ///
  /// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
  Future<Email> waitForNthEmail({ String inboxId, int index, int timeout, bool unreadOnly }) async {
    Response response = await waitForNthEmailWithHttpInfo( inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
    } else {
      return null;
    }
  }

}
