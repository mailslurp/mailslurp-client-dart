part of mailslurp.api;



class TemplateControllerApi {
  final ApiClient apiClient;

  TemplateControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a Template with HTTP info returned
  ///
  /// 
  Future<Response> createTemplateWithHttpInfo(CreateTemplateOptions createTemplateOptions) async {
    Object postBody = createTemplateOptions;

    // verify required params are set
    if(createTemplateOptions == null) {
     throw ApiException(400, "Missing required param: createTemplateOptions");
    }

    // create path and map variables
    String path = "/templates".replaceAll("{format}","json");

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

  /// Create a Template
  ///
  /// 
  Future<TemplateDto> createTemplate(CreateTemplateOptions createTemplateOptions) async {
    Response response = await createTemplateWithHttpInfo(createTemplateOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TemplateDto') as TemplateDto;
    } else {
      return null;
    }
  }

  /// Delete Template with HTTP info returned
  ///
  /// 
  Future deleteTemplateWithHttpInfo(String templateId) async {
    Object postBody;

    // verify required params are set
    if(templateId == null) {
     throw ApiException(400, "Missing required param: templateId");
    }

    // create path and map variables
    String path = "/templates/{TemplateId}".replaceAll("{format}","json").replaceAll("{" + "TemplateId" + "}", templateId.toString());

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

  /// Delete Template
  ///
  /// 
  Future deleteTemplate(String templateId) async {
    Response response = await deleteTemplateWithHttpInfo(templateId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get all Templates in paginated format with HTTP info returned
  ///
  /// 
  Future<Response> getAllTemplatesWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/templates/paginated".replaceAll("{format}","json");

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

  /// Get all Templates in paginated format
  ///
  /// 
  Future<PageTemplateProjection> getAllTemplates({ int page, int size, String sort }) async {
    Response response = await getAllTemplatesWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageTemplateProjection') as PageTemplateProjection;
    } else {
      return null;
    }
  }

  /// Get Template with HTTP info returned
  ///
  /// 
  Future<Response> getTemplateWithHttpInfo(String templateId) async {
    Object postBody;

    // verify required params are set
    if(templateId == null) {
     throw ApiException(400, "Missing required param: templateId");
    }

    // create path and map variables
    String path = "/templates/{TemplateId}".replaceAll("{format}","json").replaceAll("{" + "TemplateId" + "}", templateId.toString());

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

  /// Get Template
  ///
  /// 
  Future<TemplateDto> getTemplate(String templateId) async {
    Response response = await getTemplateWithHttpInfo(templateId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TemplateDto') as TemplateDto;
    } else {
      return null;
    }
  }

  /// Get all Templates with HTTP info returned
  ///
  /// 
  Future<Response> getTemplatesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/templates".replaceAll("{format}","json");

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

  /// Get all Templates
  ///
  /// 
  Future<List<TemplateProjection>> getTemplates() async {
    Response response = await getTemplatesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TemplateProjection>') as List).map((item) => item as TemplateProjection).toList();
    } else {
      return null;
    }
  }

}
