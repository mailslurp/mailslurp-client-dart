//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiAutomatedInboxPlacementControllerApi {
  ApiAutomatedInboxPlacementControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an encrypted sender connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAutomatedInboxPlacementConnectionOptions] createAutomatedInboxPlacementConnectionOptions (required):
  Future<Response> createAutomatedInboxPlacementConnectionWithHttpInfo(CreateAutomatedInboxPlacementConnectionOptions createAutomatedInboxPlacementConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections';

    // ignore: prefer_final_locals
    Object? postBody = createAutomatedInboxPlacementConnectionOptions;

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

  /// Create an encrypted sender connection
  ///
  /// Parameters:
  ///
  /// * [CreateAutomatedInboxPlacementConnectionOptions] createAutomatedInboxPlacementConnectionOptions (required):
  Future<AutomatedInboxPlacementConnectionDto?> createAutomatedInboxPlacementConnection(CreateAutomatedInboxPlacementConnectionOptions createAutomatedInboxPlacementConnectionOptions,) async {
    final response = await createAutomatedInboxPlacementConnectionWithHttpInfo(createAutomatedInboxPlacementConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementConnectionDto',) as AutomatedInboxPlacementConnectionDto;
    
    }
    return null;
  }

  /// Create an automated inbox placement schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAutomatedInboxPlacementScheduleOptions] createAutomatedInboxPlacementScheduleOptions (required):
  Future<Response> createAutomatedInboxPlacementScheduleWithHttpInfo(CreateAutomatedInboxPlacementScheduleOptions createAutomatedInboxPlacementScheduleOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules';

    // ignore: prefer_final_locals
    Object? postBody = createAutomatedInboxPlacementScheduleOptions;

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

  /// Create an automated inbox placement schedule
  ///
  /// Parameters:
  ///
  /// * [CreateAutomatedInboxPlacementScheduleOptions] createAutomatedInboxPlacementScheduleOptions (required):
  Future<AutomatedInboxPlacementScheduleDto?> createAutomatedInboxPlacementSchedule(CreateAutomatedInboxPlacementScheduleOptions createAutomatedInboxPlacementScheduleOptions,) async {
    final response = await createAutomatedInboxPlacementScheduleWithHttpInfo(createAutomatedInboxPlacementScheduleOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementScheduleDto',) as AutomatedInboxPlacementScheduleDto;
    
    }
    return null;
  }

  /// Disconnect a sender connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> deleteAutomatedInboxPlacementConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

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

  /// Disconnect a sender connection
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<void> deleteAutomatedInboxPlacementConnection(String connectionId,) async {
    final response = await deleteAutomatedInboxPlacementConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an automated inbox placement schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<Response> deleteAutomatedInboxPlacementScheduleWithHttpInfo(String scheduleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}'
      .replaceAll('{scheduleId}', scheduleId);

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

  /// Delete an automated inbox placement schedule
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<void> deleteAutomatedInboxPlacementSchedule(String scheduleId,) async {
    final response = await deleteAutomatedInboxPlacementScheduleWithHttpInfo(scheduleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a sender connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> getAutomatedInboxPlacementConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

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

  /// Get a sender connection
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<AutomatedInboxPlacementConnectionDto?> getAutomatedInboxPlacementConnection(String connectionId,) async {
    final response = await getAutomatedInboxPlacementConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementConnectionDto',) as AutomatedInboxPlacementConnectionDto;
    
    }
    return null;
  }

  /// List sender connections
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutomatedInboxPlacementConnectionsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections';

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

  /// List sender connections
  Future<List<AutomatedInboxPlacementConnectionDto>?> getAutomatedInboxPlacementConnections() async {
    final response = await getAutomatedInboxPlacementConnectionsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AutomatedInboxPlacementConnectionDto>') as List)
        .cast<AutomatedInboxPlacementConnectionDto>()
        .toList();

    }
    return null;
  }

  /// List non-secret execution events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [String] executionId (required):
  Future<Response> getAutomatedInboxPlacementExecutionEventsWithHttpInfo(String scheduleId, String executionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}/executions/{executionId}/events'
      .replaceAll('{scheduleId}', scheduleId)
      .replaceAll('{executionId}', executionId);

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

  /// List non-secret execution events
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [String] executionId (required):
  Future<List<AutomatedInboxPlacementEventDto>?> getAutomatedInboxPlacementExecutionEvents(String scheduleId, String executionId,) async {
    final response = await getAutomatedInboxPlacementExecutionEventsWithHttpInfo(scheduleId, executionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AutomatedInboxPlacementEventDto>') as List)
        .cast<AutomatedInboxPlacementEventDto>()
        .toList();

    }
    return null;
  }

  /// List schedule executions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [int] limit:
  Future<Response> getAutomatedInboxPlacementExecutionsWithHttpInfo(String scheduleId, { int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}/executions'
      .replaceAll('{scheduleId}', scheduleId);

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

  /// List schedule executions
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [int] limit:
  Future<List<AutomatedInboxPlacementExecutionDto>?> getAutomatedInboxPlacementExecutions(String scheduleId, { int? limit, }) async {
    final response = await getAutomatedInboxPlacementExecutionsWithHttpInfo(scheduleId,  limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AutomatedInboxPlacementExecutionDto>') as List)
        .cast<AutomatedInboxPlacementExecutionDto>()
        .toList();

    }
    return null;
  }

  /// List automated inbox placement sender providers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutomatedInboxPlacementProvidersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/providers';

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

  /// List automated inbox placement sender providers
  Future<List<AutomatedInboxPlacementProviderDto>?> getAutomatedInboxPlacementProviders() async {
    final response = await getAutomatedInboxPlacementProvidersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AutomatedInboxPlacementProviderDto>') as List)
        .cast<AutomatedInboxPlacementProviderDto>()
        .toList();

    }
    return null;
  }

  /// Get an automated inbox placement schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<Response> getAutomatedInboxPlacementScheduleWithHttpInfo(String scheduleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}'
      .replaceAll('{scheduleId}', scheduleId);

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

  /// Get an automated inbox placement schedule
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<AutomatedInboxPlacementScheduleDto?> getAutomatedInboxPlacementSchedule(String scheduleId,) async {
    final response = await getAutomatedInboxPlacementScheduleWithHttpInfo(scheduleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementScheduleDto',) as AutomatedInboxPlacementScheduleDto;
    
    }
    return null;
  }

  /// Get automation inbox placement analytics over time
  ///
  /// Returns chart-ready metrics for billed placement runs created by this schedule only.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  ///
  /// * [int] runLimit:
  Future<Response> getAutomatedInboxPlacementScheduleAnalyticsSeriesWithHttpInfo(String scheduleId, { DateTime? since, DateTime? before, String? bucket, int? runLimit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}/analytics/series'
      .replaceAll('{scheduleId}', scheduleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (bucket != null) {
      queryParams.addAll(_queryParams('', 'bucket', bucket));
    }
    if (runLimit != null) {
      queryParams.addAll(_queryParams('', 'runLimit', runLimit));
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

  /// Get automation inbox placement analytics over time
  ///
  /// Returns chart-ready metrics for billed placement runs created by this schedule only.
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  ///
  /// * [int] runLimit:
  Future<InboxPlacementAnalyticsSeriesDto?> getAutomatedInboxPlacementScheduleAnalyticsSeries(String scheduleId, { DateTime? since, DateTime? before, String? bucket, int? runLimit, }) async {
    final response = await getAutomatedInboxPlacementScheduleAnalyticsSeriesWithHttpInfo(scheduleId,  since: since, before: before, bucket: bucket, runLimit: runLimit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementAnalyticsSeriesDto',) as InboxPlacementAnalyticsSeriesDto;
    
    }
    return null;
  }

  /// List automated inbox placement schedules
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAutomatedInboxPlacementSchedulesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules';

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

  /// List automated inbox placement schedules
  Future<List<AutomatedInboxPlacementScheduleDto>?> getAutomatedInboxPlacementSchedules() async {
    final response = await getAutomatedInboxPlacementSchedulesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AutomatedInboxPlacementScheduleDto>') as List)
        .cast<AutomatedInboxPlacementScheduleDto>()
        .toList();

    }
    return null;
  }

  /// Rotate sender connection credentials
  ///
  /// Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [RotateAutomatedInboxPlacementConnectionCredentialsOptions] rotateAutomatedInboxPlacementConnectionCredentialsOptions (required):
  Future<Response> rotateAutomatedInboxPlacementConnectionCredentialsWithHttpInfo(String connectionId, RotateAutomatedInboxPlacementConnectionCredentialsOptions rotateAutomatedInboxPlacementConnectionCredentialsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections/{connectionId}/credentials'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody = rotateAutomatedInboxPlacementConnectionCredentialsOptions;

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

  /// Rotate sender connection credentials
  ///
  /// Verifies the replacement SMTP settings before atomically replacing the encrypted credential envelope. A failed verification leaves the existing connection unchanged.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [RotateAutomatedInboxPlacementConnectionCredentialsOptions] rotateAutomatedInboxPlacementConnectionCredentialsOptions (required):
  Future<AutomatedInboxPlacementConnectionDto?> rotateAutomatedInboxPlacementConnectionCredentials(String connectionId, RotateAutomatedInboxPlacementConnectionCredentialsOptions rotateAutomatedInboxPlacementConnectionCredentialsOptions,) async {
    final response = await rotateAutomatedInboxPlacementConnectionCredentialsWithHttpInfo(connectionId, rotateAutomatedInboxPlacementConnectionCredentialsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementConnectionDto',) as AutomatedInboxPlacementConnectionDto;
    
    }
    return null;
  }

  /// Run an automated inbox placement schedule now
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<Response> runAutomatedInboxPlacementScheduleWithHttpInfo(String scheduleId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}/run'
      .replaceAll('{scheduleId}', scheduleId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Run an automated inbox placement schedule now
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  Future<AutomatedInboxPlacementExecutionDto?> runAutomatedInboxPlacementSchedule(String scheduleId,) async {
    final response = await runAutomatedInboxPlacementScheduleWithHttpInfo(scheduleId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementExecutionDto',) as AutomatedInboxPlacementExecutionDto;
    
    }
    return null;
  }

  /// Update a sender connection
  ///
  /// Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [UpdateAutomatedInboxPlacementConnectionOptions] updateAutomatedInboxPlacementConnectionOptions (required):
  Future<Response> updateAutomatedInboxPlacementConnectionWithHttpInfo(String connectionId, UpdateAutomatedInboxPlacementConnectionOptions updateAutomatedInboxPlacementConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections/{connectionId}'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody = updateAutomatedInboxPlacementConnectionOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update a sender connection
  ///
  /// Updates non-secret connection metadata. Use the credentials endpoint to replace SMTP credentials or transport settings.
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  ///
  /// * [UpdateAutomatedInboxPlacementConnectionOptions] updateAutomatedInboxPlacementConnectionOptions (required):
  Future<AutomatedInboxPlacementConnectionDto?> updateAutomatedInboxPlacementConnection(String connectionId, UpdateAutomatedInboxPlacementConnectionOptions updateAutomatedInboxPlacementConnectionOptions,) async {
    final response = await updateAutomatedInboxPlacementConnectionWithHttpInfo(connectionId, updateAutomatedInboxPlacementConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementConnectionDto',) as AutomatedInboxPlacementConnectionDto;
    
    }
    return null;
  }

  /// Update an automated inbox placement schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [UpdateAutomatedInboxPlacementScheduleOptions] updateAutomatedInboxPlacementScheduleOptions (required):
  Future<Response> updateAutomatedInboxPlacementScheduleWithHttpInfo(String scheduleId, UpdateAutomatedInboxPlacementScheduleOptions updateAutomatedInboxPlacementScheduleOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/schedules/{scheduleId}'
      .replaceAll('{scheduleId}', scheduleId);

    // ignore: prefer_final_locals
    Object? postBody = updateAutomatedInboxPlacementScheduleOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an automated inbox placement schedule
  ///
  /// Parameters:
  ///
  /// * [String] scheduleId (required):
  ///
  /// * [UpdateAutomatedInboxPlacementScheduleOptions] updateAutomatedInboxPlacementScheduleOptions (required):
  Future<AutomatedInboxPlacementScheduleDto?> updateAutomatedInboxPlacementSchedule(String scheduleId, UpdateAutomatedInboxPlacementScheduleOptions updateAutomatedInboxPlacementScheduleOptions,) async {
    final response = await updateAutomatedInboxPlacementScheduleWithHttpInfo(scheduleId, updateAutomatedInboxPlacementScheduleOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementScheduleDto',) as AutomatedInboxPlacementScheduleDto;
    
    }
    return null;
  }

  /// Verify a sender connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<Response> verifyAutomatedInboxPlacementConnectionWithHttpInfo(String connectionId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/automations/connections/{connectionId}/verify'
      .replaceAll('{connectionId}', connectionId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Verify a sender connection
  ///
  /// Parameters:
  ///
  /// * [String] connectionId (required):
  Future<AutomatedInboxPlacementConnectionDto?> verifyAutomatedInboxPlacementConnection(String connectionId,) async {
    final response = await verifyAutomatedInboxPlacementConnectionWithHttpInfo(connectionId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AutomatedInboxPlacementConnectionDto',) as AutomatedInboxPlacementConnectionDto;
    
    }
    return null;
  }
}
