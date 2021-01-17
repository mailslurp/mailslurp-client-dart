part of mailslurp.api;



class ExpiredControllerApi {
  final ApiClient apiClient;

  ExpiredControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get expired inbox record for a previously existing inbox with HTTP info returned
  ///
  /// Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
  Future<Response> getExpiredInboxByInboxIdWithHttpInfo(String inboxId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/expired/inbox/{inboxId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

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

  /// Get expired inbox record for a previously existing inbox
  ///
  /// Use the inboxId to return an ExpiredInboxRecord if an inbox has expired. Inboxes expire and are disabled if an expiration date is set or plan requires. Returns 404 if no expired inbox is found for the inboxId
  Future<ExpiredInboxDto> getExpiredInboxByInboxId(String inboxId) async {
    Response response = await getExpiredInboxByInboxIdWithHttpInfo(inboxId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ExpiredInboxDto') as ExpiredInboxDto;
    } else {
      return null;
    }
  }

  /// Get an expired inbox record with HTTP info returned
  ///
  /// Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
  Future<Response> getExpiredInboxRecordWithHttpInfo(String expiredId) async {
    Object postBody;

    // verify required params are set
    if(expiredId == null) {
     throw ApiException(400, "Missing required param: expiredId");
    }

    // create path and map variables
    String path = "/expired/{expiredId}".replaceAll("{format}","json").replaceAll("{" + "expiredId" + "}", expiredId.toString());

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

  /// Get an expired inbox record
  ///
  /// Inboxes created with an expiration date will expire after the given date and be moved to an ExpiredInbox entity. You can still read emails in the inbox but it can no longer send or receive emails. Fetch the expired inboxes to view the old inboxes properties
  Future<ExpiredInboxDto> getExpiredInboxRecord(String expiredId) async {
    Response response = await getExpiredInboxRecordWithHttpInfo(expiredId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ExpiredInboxDto') as ExpiredInboxDto;
    } else {
      return null;
    }
  }

  /// List records of expired inboxes with HTTP info returned
  ///
  /// Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
  Future<Response> getExpiredInboxesWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/expired".replaceAll("{format}","json");

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

  /// List records of expired inboxes
  ///
  /// Inboxes created with an expiration date will expire after the given date. An ExpiredInboxRecord is created that records the inboxes old ID and email address. You can still read emails in the inbox (using the inboxes old ID) but the email address associated with the inbox can no longer send or receive emails. Fetch expired inbox records to view the old inboxes properties
  Future<PageExpiredInboxRecordProjection> getExpiredInboxes({ int page, int size, String sort }) async {
    Response response = await getExpiredInboxesWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageExpiredInboxRecordProjection') as PageExpiredInboxRecordProjection;
    } else {
      return null;
    }
  }

}
