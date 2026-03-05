//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DomainMonitorControllerApi {
  DomainMonitorControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create domain monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDomainMonitorOptions] createDomainMonitorOptions (required):
  Future<Response> createDomainMonitorWithHttpInfo(CreateDomainMonitorOptions createDomainMonitorOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors';

    // ignore: prefer_final_locals
    Object? postBody = createDomainMonitorOptions;

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

  /// Create domain monitor
  ///
  /// Parameters:
  ///
  /// * [CreateDomainMonitorOptions] createDomainMonitorOptions (required):
  Future<DomainMonitorDto?> createDomainMonitor(CreateDomainMonitorOptions createDomainMonitorOptions,) async {
    final response = await createDomainMonitorWithHttpInfo(createDomainMonitorOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorDto',) as DomainMonitorDto;
    
    }
    return null;
  }

  /// Create alert sink for monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [CreateDomainMonitorAlertSinkOptions] createDomainMonitorAlertSinkOptions (required):
  Future<Response> createDomainMonitorAlertSinkWithHttpInfo(String monitorId, CreateDomainMonitorAlertSinkOptions createDomainMonitorAlertSinkOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/alert-sinks'
      .replaceAll('{monitorId}', monitorId);

    // ignore: prefer_final_locals
    Object? postBody = createDomainMonitorAlertSinkOptions;

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

  /// Create alert sink for monitor
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [CreateDomainMonitorAlertSinkOptions] createDomainMonitorAlertSinkOptions (required):
  Future<DomainMonitorAlertSinkDto?> createDomainMonitorAlertSink(String monitorId, CreateDomainMonitorAlertSinkOptions createDomainMonitorAlertSinkOptions,) async {
    final response = await createDomainMonitorAlertSinkWithHttpInfo(monitorId, createDomainMonitorAlertSinkOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorAlertSinkDto',) as DomainMonitorAlertSinkDto;
    
    }
    return null;
  }

  /// Delete domain monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<Response> deleteDomainMonitorWithHttpInfo(String monitorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}'
      .replaceAll('{monitorId}', monitorId);

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

  /// Delete domain monitor
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<void> deleteDomainMonitor(String monitorId,) async {
    final response = await deleteDomainMonitorWithHttpInfo(monitorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete monitor alert sink
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [String] sinkId (required):
  Future<Response> deleteDomainMonitorAlertSinkWithHttpInfo(String monitorId, String sinkId,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/alert-sinks/{sinkId}'
      .replaceAll('{monitorId}', monitorId)
      .replaceAll('{sinkId}', sinkId);

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

  /// Delete monitor alert sink
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [String] sinkId (required):
  Future<void> deleteDomainMonitorAlertSink(String monitorId, String sinkId,) async {
    final response = await deleteDomainMonitorAlertSinkWithHttpInfo(monitorId, sinkId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get domain monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<Response> getDomainMonitorWithHttpInfo(String monitorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}'
      .replaceAll('{monitorId}', monitorId);

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

  /// Get domain monitor
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<DomainMonitorDto?> getDomainMonitor(String monitorId,) async {
    final response = await getDomainMonitorWithHttpInfo(monitorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorDto',) as DomainMonitorDto;
    
    }
    return null;
  }

  /// List alert sinks for monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<Response> getDomainMonitorAlertSinksWithHttpInfo(String monitorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/alert-sinks'
      .replaceAll('{monitorId}', monitorId);

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

  /// List alert sinks for monitor
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<List<DomainMonitorAlertSinkDto>?> getDomainMonitorAlertSinks(String monitorId,) async {
    final response = await getDomainMonitorAlertSinksWithHttpInfo(monitorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainMonitorAlertSinkDto>') as List)
        .cast<DomainMonitorAlertSinkDto>()
        .toList();

    }
    return null;
  }

  /// Get monitor insights
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<Response> getDomainMonitorInsightsWithHttpInfo(String monitorId, { DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/insights'
      .replaceAll('{monitorId}', monitorId);

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

  /// Get monitor insights
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<DomainMonitorInsightsDto?> getDomainMonitorInsights(String monitorId, { DateTime? since, DateTime? before, }) async {
    final response = await getDomainMonitorInsightsWithHttpInfo(monitorId,  since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorInsightsDto',) as DomainMonitorInsightsDto;
    
    }
    return null;
  }

  /// List monitor runs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<Response> getDomainMonitorRunsWithHttpInfo(String monitorId, { DateTime? since, DateTime? before, String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/runs'
      .replaceAll('{monitorId}', monitorId);

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
    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
    }
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

  /// List monitor runs
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<List<DomainMonitorRunDto>?> getDomainMonitorRuns(String monitorId, { DateTime? since, DateTime? before, String? status, int? limit, }) async {
    final response = await getDomainMonitorRunsWithHttpInfo(monitorId,  since: since, before: before, status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainMonitorRunDto>') as List)
        .cast<DomainMonitorRunDto>()
        .toList();

    }
    return null;
  }

  /// Get monitor trend series
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  Future<Response> getDomainMonitorSeriesWithHttpInfo(String monitorId, { DateTime? since, DateTime? before, String? bucket, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/series'
      .replaceAll('{monitorId}', monitorId);

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

  /// Get monitor trend series
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  Future<DomainMonitorSeriesDto?> getDomainMonitorSeries(String monitorId, { DateTime? since, DateTime? before, String? bucket, }) async {
    final response = await getDomainMonitorSeriesWithHttpInfo(monitorId,  since: since, before: before, bucket: bucket, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorSeriesDto',) as DomainMonitorSeriesDto;
    
    }
    return null;
  }

  /// List domain monitors
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainMonitorsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors';

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

  /// List domain monitors
  Future<List<DomainMonitorDto>?> getDomainMonitors() async {
    final response = await getDomainMonitorsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<DomainMonitorDto>') as List)
        .cast<DomainMonitorDto>()
        .toList();

    }
    return null;
  }

  /// Run monitor now
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<Response> runDomainMonitorNowWithHttpInfo(String monitorId,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}/run-now'
      .replaceAll('{monitorId}', monitorId);

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

  /// Run monitor now
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  Future<DomainMonitorRunNowResult?> runDomainMonitorNow(String monitorId,) async {
    final response = await runDomainMonitorNowWithHttpInfo(monitorId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorRunNowResult',) as DomainMonitorRunNowResult;
    
    }
    return null;
  }

  /// Run due monitors for user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxRuns:
  Future<Response> runDueDomainMonitorsWithHttpInfo({ int? maxRuns, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/run-due';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (maxRuns != null) {
      queryParams.addAll(_queryParams('', 'maxRuns', maxRuns));
    }

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

  /// Run due monitors for user
  ///
  /// Parameters:
  ///
  /// * [int] maxRuns:
  Future<DomainMonitorRunDueResult?> runDueDomainMonitors({ int? maxRuns, }) async {
    final response = await runDueDomainMonitorsWithHttpInfo( maxRuns: maxRuns, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorRunDueResult',) as DomainMonitorRunDueResult;
    
    }
    return null;
  }

  /// Update domain monitor
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [UpdateDomainMonitorOptions] updateDomainMonitorOptions (required):
  Future<Response> updateDomainMonitorWithHttpInfo(String monitorId, UpdateDomainMonitorOptions updateDomainMonitorOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/monitors/{monitorId}'
      .replaceAll('{monitorId}', monitorId);

    // ignore: prefer_final_locals
    Object? postBody = updateDomainMonitorOptions;

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

  /// Update domain monitor
  ///
  /// Parameters:
  ///
  /// * [String] monitorId (required):
  ///
  /// * [UpdateDomainMonitorOptions] updateDomainMonitorOptions (required):
  Future<DomainMonitorDto?> updateDomainMonitor(String monitorId, UpdateDomainMonitorOptions updateDomainMonitorOptions,) async {
    final response = await updateDomainMonitorWithHttpInfo(monitorId, updateDomainMonitorOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DomainMonitorDto',) as DomainMonitorDto;
    
    }
    return null;
  }
}
