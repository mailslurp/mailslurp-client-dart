part of mailslurp.api;



class AliasControllerApi {
  final ApiClient apiClient;

  AliasControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an email alias with HTTP info returned
  ///
  /// Create an email alias belonging to a user ID. To create anonymous aliases use the &#x60;createAnonymousAlias&#x60; method.
  Future createAliasWithHttpInfo(CreateOwnedAliasOptions createOwnedAliasOptions) async {
    Object postBody = createOwnedAliasOptions;

    // verify required params are set
    if(createOwnedAliasOptions == null) {
     throw ApiException(400, "Missing required param: createOwnedAliasOptions");
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

  /// Create an email alias
  ///
  /// Create an email alias belonging to a user ID. To create anonymous aliases use the &#x60;createAnonymousAlias&#x60; method.
  Future createAlias(CreateOwnedAliasOptions createOwnedAliasOptions) async {
    Response response = await createAliasWithHttpInfo(createOwnedAliasOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Create an anonymous email alias with HTTP info returned
  ///
  /// 
  Future<Response> createAnonymousAliasWithHttpInfo(CreateAnonymousAliasOptions createAnonymousAliasOptions) async {
    Object postBody = createAnonymousAliasOptions;

    // verify required params are set
    if(createAnonymousAliasOptions == null) {
     throw ApiException(400, "Missing required param: createAnonymousAliasOptions");
    }

    // create path and map variables
    String path = "/aliases/anonymous".replaceAll("{format}","json");

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

  /// Create an anonymous email alias
  ///
  /// 
  Future<Alias> createAnonymousAlias(CreateAnonymousAliasOptions createAnonymousAliasOptions) async {
    Response response = await createAnonymousAliasWithHttpInfo(createAnonymousAliasOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Alias') as Alias;
    } else {
      return null;
    }
  }

  /// Delete an owned alias with HTTP info returned
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

  /// Delete an owned alias
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
  Future<Alias> getAlias(String aliasId) async {
    Response response = await getAliasWithHttpInfo(aliasId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Alias') as Alias;
    } else {
      return null;
    }
  }

  /// Get all email aliases with HTTP info returned
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

  /// Get all email aliases
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

  /// Update an owned alias with HTTP info returned
  ///
  /// 
  Future updateAliasWithHttpInfo(String aliasId, CreateOwnedAliasOptions createOwnedAliasOptions) async {
    Object postBody = createOwnedAliasOptions;

    // verify required params are set
    if(aliasId == null) {
     throw ApiException(400, "Missing required param: aliasId");
    }
    if(createOwnedAliasOptions == null) {
     throw ApiException(400, "Missing required param: createOwnedAliasOptions");
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

  /// Update an owned alias
  ///
  /// 
  Future updateAlias(String aliasId, CreateOwnedAliasOptions createOwnedAliasOptions) async {
    Response response = await updateAliasWithHttpInfo(aliasId, createOwnedAliasOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
