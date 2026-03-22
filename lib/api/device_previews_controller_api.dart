//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DevicePreviewsControllerApi {
  DevicePreviewsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a running device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CancelDevicePreviewRunOptions] cancelDevicePreviewRunOptions:
  Future<Response> cancelDevicePreviewRunWithHttpInfo(String runId, { CancelDevicePreviewRunOptions? cancelDevicePreviewRunOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/cancel'
      .replaceAll('{runId}', runId);

    // ignore: prefer_final_locals
    Object? postBody = cancelDevicePreviewRunOptions;

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

  /// Cancel a running device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [CancelDevicePreviewRunOptions] cancelDevicePreviewRunOptions:
  Future<CancelDevicePreviewRunResult?> cancelDevicePreviewRun(String runId, { CancelDevicePreviewRunOptions? cancelDevicePreviewRunOptions, }) async {
    final response = await cancelDevicePreviewRunWithHttpInfo(runId,  cancelDevicePreviewRunOptions: cancelDevicePreviewRunOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CancelDevicePreviewRunResult',) as CancelDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Create device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFeedbackOptions] createDevicePreviewFeedbackOptions (required):
  Future<Response> createDevicePreviewFeedbackWithHttpInfo(CreateDevicePreviewFeedbackOptions createDevicePreviewFeedbackOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback';

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewFeedbackOptions;

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

  /// Create device preview feedback
  ///
  /// Parameters:
  ///
  /// * [CreateDevicePreviewFeedbackOptions] createDevicePreviewFeedbackOptions (required):
  Future<DevicePreviewFeedbackDto?> createDevicePreviewFeedback(CreateDevicePreviewFeedbackOptions createDevicePreviewFeedbackOptions,) async {
    final response = await createDevicePreviewFeedbackWithHttpInfo(createDevicePreviewFeedbackOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }

  /// Create a new device preview run for an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<Response> createDevicePreviewRunWithHttpInfo(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewOptions;

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

  /// Create a new device preview run for an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<CreateDevicePreviewRunResult?> createDevicePreviewRun(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    final response = await createDevicePreviewRunWithHttpInfo(emailId,  createDevicePreviewOptions: createDevicePreviewOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Delete local device preview run data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> deleteDevicePreviewRunWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}'
      .replaceAll('{runId}', runId);

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

  /// Delete local device preview run data
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DeleteDevicePreviewRunResult?> deleteDevicePreviewRun(String runId,) async {
    final response = await deleteDevicePreviewRunWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteDevicePreviewRunResult',) as DeleteDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Return active run for email or create one when none exists
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<Response> ensureDevicePreviewRunWithHttpInfo(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews/latest'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = createDevicePreviewOptions;

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

  /// Return active run for email or create one when none exists
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [CreateDevicePreviewOptions] createDevicePreviewOptions:
  Future<CreateDevicePreviewRunResult?> ensureDevicePreviewRun(String emailId, { CreateDevicePreviewOptions? createDevicePreviewOptions, }) async {
    final response = await ensureDevicePreviewRunWithHttpInfo(emailId,  createDevicePreviewOptions: createDevicePreviewOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateDevicePreviewRunResult',) as CreateDevicePreviewRunResult;
    
    }
    return null;
  }

  /// Get a single device preview feedback item
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  Future<Response> getDevicePreviewFeedbackWithHttpInfo(String feedbackId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback/{feedbackId}'
      .replaceAll('{feedbackId}', feedbackId);

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

  /// Get a single device preview feedback item
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  Future<DevicePreviewFeedbackDto?> getDevicePreviewFeedback(String feedbackId,) async {
    final response = await getDevicePreviewFeedbackWithHttpInfo(feedbackId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }

  /// List device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] source_:
  ///
  /// * [String] runId:
  ///
  /// * [String] status:
  ///
  /// * [String] provider:
  ///
  /// * [String] category:
  ///
  /// * [String] search:
  Future<Response> getDevicePreviewFeedbackItemsWithHttpInfo({ int? page, int? size, String? source_, String? runId, String? status, String? provider, String? category, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback';

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
    if (source_ != null) {
      queryParams.addAll(_queryParams('', 'source', source_));
    }
    if (runId != null) {
      queryParams.addAll(_queryParams('', 'runId', runId));
    }
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
    }
    if (category != null) {
      queryParams.addAll(_queryParams('', 'category', category));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List device preview feedback
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] source_:
  ///
  /// * [String] runId:
  ///
  /// * [String] status:
  ///
  /// * [String] provider:
  ///
  /// * [String] category:
  ///
  /// * [String] search:
  Future<DevicePreviewFeedbackListDto?> getDevicePreviewFeedbackItems({ int? page, int? size, String? source_, String? runId, String? status, String? provider, String? category, String? search, }) async {
    final response = await getDevicePreviewFeedbackItemsWithHttpInfo( page: page, size: size, source_: source_, runId: runId, status: status, provider: provider, category: category, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackListDto',) as DevicePreviewFeedbackListDto;
    
    }
    return null;
  }

  /// Get device preview run status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewRunWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}'
      .replaceAll('{runId}', runId);

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

  /// Get device preview run status
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DevicePreviewRunDto?> getDevicePreviewRun(String runId,) async {
    final response = await getDevicePreviewRunWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewRunDto',) as DevicePreviewRunDto;
    
    }
    return null;
  }

  /// Get provider-level progress for a device preview run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] provider (required):
  Future<Response> getDevicePreviewRunProviderProgressWithHttpInfo(String runId, String provider,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/providers/{provider}'
      .replaceAll('{runId}', runId)
      .replaceAll('{provider}', provider);

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

  /// Get provider-level progress for a device preview run
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] provider (required):
  Future<DevicePreviewProviderProgressDto?> getDevicePreviewRunProviderProgress(String runId, String provider,) async {
    final response = await getDevicePreviewRunProviderProgressWithHttpInfo(runId, provider,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewProviderProgressDto',) as DevicePreviewProviderProgressDto;
    
    }
    return null;
  }

  /// Get device preview run results
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getDevicePreviewRunResultsWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/results'
      .replaceAll('{runId}', runId);

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

  /// Get device preview run results
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<DevicePreviewRunResultsDto?> getDevicePreviewRunResults(String runId,) async {
    final response = await getDevicePreviewRunResultsWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewRunResultsDto',) as DevicePreviewRunResultsDto;
    
    }
    return null;
  }

  /// Get a seeded device preview screenshot image
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] screenshotId (required):
  Future<Response> getDevicePreviewRunScreenshotWithHttpInfo(String runId, String screenshotId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/{runId}/screenshots/{screenshotId}/image'
      .replaceAll('{runId}', runId)
      .replaceAll('{screenshotId}', screenshotId);

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

  /// Get a seeded device preview screenshot image
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  ///
  /// * [String] screenshotId (required):
  Future<String?> getDevicePreviewRunScreenshot(String runId, String screenshotId,) async {
    final response = await getDevicePreviewRunScreenshotWithHttpInfo(runId, screenshotId,);
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

  /// List previous device preview runs for an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] limit:
  Future<Response> getDevicePreviewRunsWithHttpInfo(String emailId, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List previous device preview runs for an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] limit:
  Future<List<DevicePreviewRunDto>?> getDevicePreviewRuns(String emailId, { int? limit, }) async {
    final response = await getDevicePreviewRunsWithHttpInfo(emailId,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewRunDto>') as List)
        .cast<DevicePreviewRunDto>()
        .toList();

    }
    return null;
  }

  /// List previous device preview runs for account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> getDevicePreviewRunsForAccountWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// List previous device preview runs for account
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<DevicePreviewRunDto>?> getDevicePreviewRunsForAccount({ int? limit, }) async {
    final response = await getDevicePreviewRunsForAccountWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DevicePreviewRunDto>') as List)
        .cast<DevicePreviewRunDto>()
        .toList();

    }
    return null;
  }

  /// List previous device preview runs for an email in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getDevicePreviewRunsOffsetPaginatedWithHttpInfo(String emailId, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/device-previews/offset-paginated'
      .replaceAll('{emailId}', emailId);

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

  /// List previous device preview runs for an email in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageDevicePreviewRunProjection?> getDevicePreviewRunsOffsetPaginated(String emailId, { int? page, int? size, String? sort, }) async {
    final response = await getDevicePreviewRunsOffsetPaginatedWithHttpInfo(emailId,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDevicePreviewRunProjection',) as PageDevicePreviewRunProjection;
    
    }
    return null;
  }

  /// Update device preview feedback
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  ///
  /// * [UpdateDevicePreviewFeedbackOptions] updateDevicePreviewFeedbackOptions (required):
  Future<Response> updateDevicePreviewFeedbackWithHttpInfo(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/device-previews/feedback/{feedbackId}'
      .replaceAll('{feedbackId}', feedbackId);

    // ignore: prefer_final_locals
    Object? postBody = updateDevicePreviewFeedbackOptions;

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

  /// Update device preview feedback
  ///
  /// Parameters:
  ///
  /// * [String] feedbackId (required):
  ///
  /// * [UpdateDevicePreviewFeedbackOptions] updateDevicePreviewFeedbackOptions (required):
  Future<DevicePreviewFeedbackDto?> updateDevicePreviewFeedback(String feedbackId, UpdateDevicePreviewFeedbackOptions updateDevicePreviewFeedbackOptions,) async {
    final response = await updateDevicePreviewFeedbackWithHttpInfo(feedbackId, updateDevicePreviewFeedbackOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DevicePreviewFeedbackDto',) as DevicePreviewFeedbackDto;
    
    }
    return null;
  }
}
