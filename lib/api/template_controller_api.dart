//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TemplateControllerApi {
  TemplateControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  ///   createTemplateOptions
  Future<Response> createTemplateWithHttpInfo(CreateTemplateOptions createTemplateOptions) async {
    // Verify required params are set.
    if (createTemplateOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createTemplateOptions');
    }

    final path = r'/templates';

    Object postBody = createTemplateOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create a Template
  ///
  /// Parameters:
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  ///   createTemplateOptions
  Future<TemplateDto> createTemplate(CreateTemplateOptions createTemplateOptions) async {
    final response = await createTemplateWithHttpInfo(createTemplateOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TemplateDto') as TemplateDto;
        }
    return Future<TemplateDto>.value(null);
  }

  /// Delete Template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   TemplateId
  Future<Response> deleteTemplateWithHttpInfo(String templateId) async {
    // Verify required params are set.
    if (templateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: templateId');
    }

    final path = r'/templates/{TemplateId}'
      .replaceAll('{' + 'TemplateId' + '}', templateId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete Template
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   TemplateId
  Future<void> deleteTemplate(String templateId) async {
    final response = await deleteTemplateWithHttpInfo(templateId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Get all Templates in paginated format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllTemplatesWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/templates/paginated';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all Templates in paginated format
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageTemplateProjection> getAllTemplates({ int page, int size, String sort }) async {
    final response = await getAllTemplatesWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageTemplateProjection') as PageTemplateProjection;
        }
    return Future<PageTemplateProjection>.value(null);
  }

  /// Get Template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   TemplateId
  Future<Response> getTemplateWithHttpInfo(String templateId) async {
    // Verify required params are set.
    if (templateId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: templateId');
    }

    final path = r'/templates/{TemplateId}'
      .replaceAll('{' + 'TemplateId' + '}', templateId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get Template
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   TemplateId
  Future<TemplateDto> getTemplate(String templateId) async {
    final response = await getTemplateWithHttpInfo(templateId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'TemplateDto') as TemplateDto;
        }
    return Future<TemplateDto>.value(null);
  }

  /// Get all Templates
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTemplatesWithHttpInfo() async {
    final path = r'/templates';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all Templates
  Future<List<TemplateProjection>> getTemplates() async {
    final response = await getTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<TemplateProjection>') as List)
        .cast<TemplateProjection>()
        .toList(growable: false);
    }
    return Future<List<TemplateProjection>>.value(null);
  }
}
