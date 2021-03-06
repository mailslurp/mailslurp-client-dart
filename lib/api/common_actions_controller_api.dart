part of mailslurp.api;



class CommonActionsControllerApi {
  final ApiClient apiClient;

  CommonActionsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create new random inbox with HTTP info returned
  ///
  /// Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  Future<Response> createNewEmailAddressWithHttpInfo({ DateTime expiresAt, int expiresIn, bool useDomainPool }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/createInbox".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresAt", expiresAt));
    }
    if(expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresIn", expiresIn));
    }
    if(useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "useDomainPool", useDomainPool));
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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create new random inbox
  ///
  /// Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  Future<Inbox> createNewEmailAddress({ DateTime expiresAt, int expiresIn, bool useDomainPool }) async {
    Response response = await createNewEmailAddressWithHttpInfo( expiresAt: expiresAt, expiresIn: expiresIn, useDomainPool: useDomainPool );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Create new random inbox with HTTP info returned
  ///
  /// Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  Future<Response> createNewEmailAddress1WithHttpInfo({ DateTime expiresAt, int expiresIn, bool useDomainPool }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/newEmailAddress".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresAt", expiresAt));
    }
    if(expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresIn", expiresIn));
    }
    if(useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "useDomainPool", useDomainPool));
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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create new random inbox
  ///
  /// Returns an Inbox with an &#x60;id&#x60; and an &#x60;emailAddress&#x60;
  Future<Inbox> createNewEmailAddress1({ DateTime expiresAt, int expiresIn, bool useDomainPool }) async {
    Response response = await createNewEmailAddress1WithHttpInfo( expiresAt: expiresAt, expiresIn: expiresIn, useDomainPool: useDomainPool );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Delete all emails in an inbox with HTTP info returned
  ///
  /// Deletes all emails
  Future emptyInboxWithHttpInfo(String inboxId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/emptyInbox".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "inboxId", inboxId));

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

  /// Delete all emails in an inbox
  ///
  /// Deletes all emails
  Future emptyInbox(String inboxId) async {
    Response response = await emptyInboxWithHttpInfo(inboxId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Send an email with HTTP info returned
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from.
  Future sendEmailSimpleWithHttpInfo(SimpleSendEmailOptions emailOptions) async {
    Object postBody = emailOptions;

    // verify required params are set
    if(emailOptions == null) {
     throw ApiException(400, "Missing required param: emailOptions");
    }

    // create path and map variables
    String path = "/sendEmail".replaceAll("{format}","json");

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

  /// Send an email
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from.
  Future sendEmailSimple(SimpleSendEmailOptions emailOptions) async {
    Response response = await sendEmailSimpleWithHttpInfo(emailOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
