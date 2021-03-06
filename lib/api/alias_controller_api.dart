part of mailslurp.api;



class AliasControllerApi {
  final ApiClient apiClient;

  AliasControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active. with HTTP info returned
  ///
  /// Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  Future<Response> createAliasWithHttpInfo(CreateAliasOptions createAliasOptions) async {
    Object postBody = createAliasOptions;

    // verify required params are set
    if(createAliasOptions == null) {
     throw ApiException(400, "Missing required param: createAliasOptions");
    }

    // create path and map variables
    String path = "/aliases".replaceAll("{format}","json");

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

  /// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  ///
  /// Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  Future<AliasDto> createAlias(CreateAliasOptions createAliasOptions) async {
    Response response = await createAliasWithHttpInfo(createAliasOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AliasDto') as AliasDto;
    } else {
      return null;
    }
  }

  /// Delete an email alias with HTTP info returned
  ///
  /// 
  Future deleteAliasWithHttpInfo(String aliasId) async {
    Object postBody;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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

  /// Delete an email alias
  ///
  /// 
  Future deleteAlias(String aliasId) async {
    Response response = await deleteAliasWithHttpInfo(aliasId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get an email alias with HTTP info returned
  ///
  /// Get an email alias by ID
  Future<Response> getAliasWithHttpInfo(String aliasId) async {
    Object postBody;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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

  /// Get an email alias
  ///
  /// Get an email alias by ID
  Future<AliasDto> getAlias(String aliasId) async {
    Response response = await getAliasWithHttpInfo(aliasId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AliasDto') as AliasDto;
    } else {
      return null;
    }
  }

  /// Get emails for an alias with HTTP info returned
  ///
  /// Get paginated emails for an alias by ID
  Future<Response> getAliasEmailsWithHttpInfo(String aliasId, { int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}/emails".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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

  /// Get emails for an alias
  ///
  /// Get paginated emails for an alias by ID
  Future<PageEmailProjection> getAliasEmails(String aliasId, { int page, int size, String sort }) async {
    Response response = await getAliasEmailsWithHttpInfo(aliasId,  page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailProjection') as PageEmailProjection;
    } else {
      return null;
    }
  }

  /// Get threads created for an alias with HTTP info returned
  ///
  /// Returns threads created for an email alias in paginated form
  Future<Response> getAliasThreadsWithHttpInfo(String aliasId, { int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}/threads".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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

  /// Get threads created for an alias
  ///
  /// Returns threads created for an email alias in paginated form
  Future<PageThreadProjection> getAliasThreads(String aliasId, { int page, int size, String sort }) async {
    Response response = await getAliasThreadsWithHttpInfo(aliasId,  page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageThreadProjection') as PageThreadProjection;
    } else {
      return null;
    }
  }

  /// Get all email aliases you have created with HTTP info returned
  ///
  /// Get all email aliases in paginated form
  Future<Response> getAliasesWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/aliases".replaceAll("{format}","json");

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

  /// Get all email aliases you have created
  ///
  /// Get all email aliases in paginated form
  Future<PageAlias> getAliases({ int page, int size, String sort }) async {
    Response response = await getAliasesWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageAlias') as PageAlias;
    } else {
      return null;
    }
  }

  /// Reply to an email with HTTP info returned
  ///
  /// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails &#x60;to&#x60;, &#x60;cc&#x60;, and &#x60;bcc&#x60;.
  Future<Response> replyToAliasEmailWithHttpInfo(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions) async {
    Object postBody = replyToAliasEmailOptions;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }
    if(replyToAliasEmailOptions == null) {
     throw ApiException(400, "Missing required param: replyToAliasEmailOptions");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}/emails/{emailId}".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString()).replaceAll("{" + "emailId" + "}", emailId.toString());

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Reply to an email
  ///
  /// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails &#x60;to&#x60;, &#x60;cc&#x60;, and &#x60;bcc&#x60;.
  Future<SentEmailDto> replyToAliasEmail(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions) async {
    Response response = await replyToAliasEmailWithHttpInfo(aliasId, emailId, replyToAliasEmailOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SentEmailDto') as SentEmailDto;
    } else {
      return null;
    }
  }

  /// Send an email from an alias inbox with HTTP info returned
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  Future<Response> sendAliasEmailWithHttpInfo(String aliasId, { SendEmailOptions sendEmailOptions }) async {
    Object postBody = sendEmailOptions;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}/emails".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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

  /// Send an email from an alias inbox
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  Future<SentEmailDto> sendAliasEmail(String aliasId, { SendEmailOptions sendEmailOptions }) async {
    Response response = await sendAliasEmailWithHttpInfo(aliasId,  sendEmailOptions: sendEmailOptions );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SentEmailDto') as SentEmailDto;
    } else {
      return null;
    }
  }

  /// Update an email alias with HTTP info returned
  ///
  /// 
  Future updateAliasWithHttpInfo(String aliasId, UpdateAliasOptions updateAliasOptions) async {
    Object postBody = updateAliasOptions;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }
    if(updateAliasOptions == null) {
     throw ApiException(400, "Missing required param: updateAliasOptions");
    }

    // create path and map variables
    String path = "/aliases/{aliasId}".replaceAll("{format}","json").replaceAll("{" + "aliasId" + "}", aliasId.toString());

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
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Update an email alias
  ///
  /// 
  Future updateAlias(String aliasId, UpdateAliasOptions updateAliasOptions) async {
    Response response = await updateAliasWithHttpInfo(aliasId, updateAliasOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
