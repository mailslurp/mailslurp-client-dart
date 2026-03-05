//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TemplateControllerApi {
  TemplateControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a Template
  ///
  /// Create an email template with variables for use with templated transactional emails.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  Future<Response> createTemplateWithHttpInfo(CreateTemplateOptions createTemplateOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates';

    // ignore: prefer_final_locals
    Object? postBody = createTemplateOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a Template
  ///
  /// Create an email template with variables for use with templated transactional emails.
  ///
  /// Parameters:
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  Future<TemplateDto?> createTemplate(CreateTemplateOptions createTemplateOptions,) async {
    final response = await createTemplateWithHttpInfo(createTemplateOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateDto',) as TemplateDto;
    
    }
    return null;
  }

  /// Delete email template
  ///
  /// Delete template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<Response> deleteTemplateWithHttpInfo(String templateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/{templateId}'
      .replaceAll('{templateId}', templateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete email template
  ///
  /// Delete template
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<void> deleteTemplate(String templateId,) async {
    final response = await deleteTemplateWithHttpInfo(templateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List templates
  ///
  /// Get all templates in paginated format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllTemplatesWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/paginated';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List templates
  ///
  /// Get all templates in paginated format
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageTemplateProjection?> getAllTemplates({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAllTemplatesWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageTemplateProjection',) as PageTemplateProjection;
    
    }
    return null;
  }

  /// Get template
  ///
  /// Get email template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<Response> getTemplateWithHttpInfo(String templateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/{templateId}'
      .replaceAll('{templateId}', templateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get template
  ///
  /// Get email template
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<TemplateDto?> getTemplate(String templateId,) async {
    final response = await getTemplateWithHttpInfo(templateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateDto',) as TemplateDto;
    
    }
    return null;
  }

  /// Get template preview HTML
  ///
  /// Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<Response> getTemplatePreviewHtmlWithHttpInfo(String templateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/{templateId}/preview/html'
      .replaceAll('{templateId}', templateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get template preview HTML
  ///
  /// Get email template preview with passed template variables in HTML format for browsers. Pass template variables as query params.
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<String?> getTemplatePreviewHtml(String templateId,) async {
    final response = await getTemplatePreviewHtmlWithHttpInfo(templateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get template preview Json
  ///
  /// Get email template preview with passed template variables in JSON format. Pass template variables as query params.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<Response> getTemplatePreviewJsonWithHttpInfo(String templateId,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/{templateId}/preview/json'
      .replaceAll('{templateId}', templateId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get template preview Json
  ///
  /// Get email template preview with passed template variables in JSON format. Pass template variables as query params.
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  Future<TemplatePreview?> getTemplatePreviewJson(String templateId,) async {
    final response = await getTemplatePreviewJsonWithHttpInfo(templateId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplatePreview',) as TemplatePreview;
    
    }
    return null;
  }

  /// List templates
  ///
  /// Get all templates
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTemplatesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/templates';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List templates
  ///
  /// Get all templates
  Future<List<TemplateProjection>?> getTemplates() async {
    final response = await getTemplatesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<TemplateProjection>') as List)
        .cast<TemplateProjection>()
        .toList();

    }
    return null;
  }

  /// Update template
  ///
  /// Update email template
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  Future<Response> updateTemplateWithHttpInfo(String templateId, CreateTemplateOptions createTemplateOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/templates/{templateId}'
      .replaceAll('{templateId}', templateId);

    // ignore: prefer_final_locals
    Object? postBody = createTemplateOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update template
  ///
  /// Update email template
  ///
  /// Parameters:
  ///
  /// * [String] templateId (required):
  ///   Template ID
  ///
  /// * [CreateTemplateOptions] createTemplateOptions (required):
  Future<TemplateDto?> updateTemplate(String templateId, CreateTemplateOptions createTemplateOptions,) async {
    final response = await updateTemplateWithHttpInfo(templateId, createTemplateOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TemplateDto',) as TemplateDto;
    
    }
    return null;
  }
}
