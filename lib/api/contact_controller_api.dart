part of mailslurp.api;



class ContactControllerApi {
  final ApiClient apiClient;

  ContactControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a contact with HTTP info returned
  ///
  /// 
  Future<Response> createContactWithHttpInfo(CreateContactOptions createContactOptions) async {
    Object postBody = createContactOptions;

    // verify required params are set
    if(createContactOptions == null) {
     throw ApiException(400, "Missing required param: createContactOptions");
    }

    // create path and map variables
    String path = "/contacts".replaceAll("{format}","json");

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

  /// Create a contact
  ///
  /// 
  Future<ContactDto> createContact(CreateContactOptions createContactOptions) async {
    Response response = await createContactWithHttpInfo(createContactOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ContactDto') as ContactDto;
    } else {
      return null;
    }
  }

  /// Delete contact with HTTP info returned
  ///
  /// 
  Future deleteContactWithHttpInfo(String contactId) async {
    Object postBody;

    // verify required params are set
    if(contactId == null) {
     throw ApiException(400, "Missing required param: contactId");
    }

    // create path and map variables
    String path = "/contacts/{contactId}".replaceAll("{format}","json").replaceAll("{" + "contactId" + "}", contactId.toString());

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

  /// Delete contact
  ///
  /// 
  Future deleteContact(String contactId) async {
    Response response = await deleteContactWithHttpInfo(contactId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get all contacts with HTTP info returned
  ///
  /// 
  Future<Response> getAllContactsWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/contacts/paginated".replaceAll("{format}","json");

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

  /// Get all contacts
  ///
  /// 
  Future<PageContactProjection> getAllContacts({ int page, int size, String sort }) async {
    Response response = await getAllContactsWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageContactProjection') as PageContactProjection;
    } else {
      return null;
    }
  }

  /// Get contact with HTTP info returned
  ///
  /// 
  Future<Response> getContactWithHttpInfo(String contactId) async {
    Object postBody;

    // verify required params are set
    if(contactId == null) {
     throw ApiException(400, "Missing required param: contactId");
    }

    // create path and map variables
    String path = "/contacts/{contactId}".replaceAll("{format}","json").replaceAll("{" + "contactId" + "}", contactId.toString());

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

  /// Get contact
  ///
  /// 
  Future<ContactDto> getContact(String contactId) async {
    Response response = await getContactWithHttpInfo(contactId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ContactDto') as ContactDto;
    } else {
      return null;
    }
  }

  /// Get all contacts with HTTP info returned
  ///
  /// 
  Future<Response> getContactsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/contacts".replaceAll("{format}","json");

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

  /// Get all contacts
  ///
  /// 
  Future<List<ContactProjection>> getContacts() async {
    Response response = await getContactsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<ContactProjection>') as List).map((item) => item as ContactProjection).toList();
    } else {
      return null;
    }
  }

}
