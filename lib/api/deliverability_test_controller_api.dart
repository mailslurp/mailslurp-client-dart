//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeliverabilityTestControllerApi {
  DeliverabilityTestControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel deliverability simulation job
  ///
  /// Cancel a running or paused simulation job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<Response> cancelDeliverabilitySimulationJobWithHttpInfo(String testId, String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/{jobId}/cancel'
      .replaceAll('{testId}', testId)
      .replaceAll('{jobId}', jobId);

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

  /// Cancel deliverability simulation job
  ///
  /// Cancel a running or paused simulation job.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<DeliverabilitySimulationJobDto?> cancelDeliverabilitySimulationJob(String testId, String jobId,) async {
    final response = await cancelDeliverabilitySimulationJobWithHttpInfo(testId, jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Create deliverability simulation job
  ///
  /// Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [CreateDeliverabilitySimulationJobOptions] createDeliverabilitySimulationJobOptions (required):
  Future<Response> createDeliverabilitySimulationJobWithHttpInfo(String testId, CreateDeliverabilitySimulationJobOptions createDeliverabilitySimulationJobOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs'
      .replaceAll('{testId}', testId);

    // ignore: prefer_final_locals
    Object? postBody = createDeliverabilitySimulationJobOptions;

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

  /// Create deliverability simulation job
  ///
  /// Create and start a simulation job for a running deliverability test. Only one active simulation job is allowed per user.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [CreateDeliverabilitySimulationJobOptions] createDeliverabilitySimulationJobOptions (required):
  Future<DeliverabilitySimulationJobDto?> createDeliverabilitySimulationJob(String testId, CreateDeliverabilitySimulationJobOptions createDeliverabilitySimulationJobOptions,) async {
    final response = await createDeliverabilitySimulationJobWithHttpInfo(testId, createDeliverabilitySimulationJobOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Create deliverability/load test
  ///
  /// Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateDeliverabilityTestOptions] createDeliverabilityTestOptions (required):
  Future<Response> createDeliverabilityTestWithHttpInfo(CreateDeliverabilityTestOptions createDeliverabilityTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability';

    // ignore: prefer_final_locals
    Object? postBody = createDeliverabilityTestOptions;

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

  /// Create deliverability/load test
  ///
  /// Create a deliverability test for inboxes or phone numbers using ALL, PATTERN, or EXPLICIT selector scope.
  ///
  /// Parameters:
  ///
  /// * [CreateDeliverabilityTestOptions] createDeliverabilityTestOptions (required):
  Future<DeliverabilityTestDto?> createDeliverabilityTest(CreateDeliverabilityTestOptions createDeliverabilityTestOptions,) async {
    final response = await createDeliverabilityTestWithHttpInfo(createDeliverabilityTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Delete deliverability/load test
  ///
  /// Delete test and all persisted entity-level results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> deleteDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}'
      .replaceAll('{testId}', testId);

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

  /// Delete deliverability/load test
  ///
  /// Delete test and all persisted entity-level results.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeleteResult?> deleteDeliverabilityTest(String testId,) async {
    final response = await deleteDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteResult',) as DeleteResult;
    
    }
    return null;
  }

  /// Duplicate deliverability/load test
  ///
  /// Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> duplicateDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/duplicate'
      .replaceAll('{testId}', testId);

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

  /// Duplicate deliverability/load test
  ///
  /// Create a fresh deliverability test using an existing test configuration, including selector scope, exclusions, and expectations.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityTestDto?> duplicateDeliverabilityTest(String testId,) async {
    final response = await duplicateDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Export deliverability/load test report as PDF
  ///
  /// Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> exportDeliverabilityTestReportWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/report/export'
      .replaceAll('{testId}', testId);

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

  /// Export deliverability/load test report as PDF
  ///
  /// Export a PDF report for a terminal deliverability test (COMPLETE, FAILED, or STOPPED), including configuration, summary outcomes, and detailed entity-level results.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<void> exportDeliverabilityTestReport(String testId,) async {
    final response = await exportDeliverabilityTestReportWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Export deliverability/load test entity results as CSV
  ///
  /// Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [bool] matched:
  Future<Response> exportDeliverabilityTestResultsWithHttpInfo(String testId, { bool? matched, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/results/export'
      .replaceAll('{testId}', testId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (matched != null) {
      queryParams.addAll(_queryParams('', 'matched', matched));
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

  /// Export deliverability/load test entity results as CSV
  ///
  /// Export per-entity deliverability results including expectation-level pass/fail counts. The latest status is evaluated with the same polling safeguards before export.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [bool] matched:
  Future<void> exportDeliverabilityTestResults(String testId, { bool? matched, }) async {
    final response = await exportDeliverabilityTestResultsWithHttpInfo(testId,  matched: matched, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get deliverability analytics time series
  ///
  /// Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] scope:
  ///
  /// * [String] bucket:
  ///
  /// * [int] runLimit:
  Future<Response> getDeliverabilityAnalyticsSeriesWithHttpInfo({ DateTime? since, DateTime? before, String? scope, String? bucket, int? runLimit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/analytics/series';

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
    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
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

  /// Get deliverability analytics time series
  ///
  /// Compare deliverability runs over a time range with bucketed chart metrics and run-level rows for table views.
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] scope:
  ///
  /// * [String] bucket:
  ///
  /// * [int] runLimit:
  Future<DeliverabilityAnalyticsSeriesDto?> getDeliverabilityAnalyticsSeries({ DateTime? since, DateTime? before, String? scope, String? bucket, int? runLimit, }) async {
    final response = await getDeliverabilityAnalyticsSeriesWithHttpInfo( since: since, before: before, scope: scope, bucket: bucket, runLimit: runLimit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityAnalyticsSeriesDto',) as DeliverabilityAnalyticsSeriesDto;
    
    }
    return null;
  }

  /// Get deliverability failure hotspots
  ///
  /// Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] scope:
  ///
  /// * [int] limit:
  Future<Response> getDeliverabilityFailureHotspotsWithHttpInfo({ DateTime? since, DateTime? before, String? scope, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/analytics/hotspots';

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
    if (scope != null) {
      queryParams.addAll(_queryParams('', 'scope', scope));
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

  /// Get deliverability failure hotspots
  ///
  /// Find commonly failing entities and phone country/variant dimensions across deliverability runs in a time range.
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] scope:
  ///
  /// * [int] limit:
  Future<DeliverabilityFailureHotspotsDto?> getDeliverabilityFailureHotspots({ DateTime? since, DateTime? before, String? scope, int? limit, }) async {
    final response = await getDeliverabilityFailureHotspotsWithHttpInfo( since: since, before: before, scope: scope, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityFailureHotspotsDto',) as DeliverabilityFailureHotspotsDto;
    
    }
    return null;
  }

  /// Get deliverability simulation job
  ///
  /// Get simulation job status and progress counters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<Response> getDeliverabilitySimulationJobWithHttpInfo(String testId, String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/{jobId}'
      .replaceAll('{testId}', testId)
      .replaceAll('{jobId}', jobId);

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

  /// Get deliverability simulation job
  ///
  /// Get simulation job status and progress counters.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<DeliverabilitySimulationJobDto?> getDeliverabilitySimulationJob(String testId, String jobId,) async {
    final response = await getDeliverabilitySimulationJobWithHttpInfo(testId, jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Get deliverability simulation job events
  ///
  /// Get paged simulation events including send successes and failures.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<Response> getDeliverabilitySimulationJobEventsWithHttpInfo(String testId, String jobId, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/{jobId}/events'
      .replaceAll('{testId}', testId)
      .replaceAll('{jobId}', jobId);

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

  /// Get deliverability simulation job events
  ///
  /// Get paged simulation events including send successes and failures.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<DeliverabilitySimulationJobEventPageDto?> getDeliverabilitySimulationJobEvents(String testId, String jobId, { int? page, int? size, String? sort, }) async {
    final response = await getDeliverabilitySimulationJobEventsWithHttpInfo(testId, jobId,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobEventPageDto',) as DeliverabilitySimulationJobEventPageDto;
    
    }
    return null;
  }

  /// Get deliverability/load test
  ///
  /// Get deliverability test configuration and latest progress counters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> getDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}'
      .replaceAll('{testId}', testId);

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

  /// Get deliverability/load test
  ///
  /// Get deliverability test configuration and latest progress counters.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityTestDto?> getDeliverabilityTest(String testId,) async {
    final response = await getDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Get deliverability/load test entity results
  ///
  /// Get paged per-entity expectation results with optional matched/unmatched filtering.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [bool] matched:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<Response> getDeliverabilityTestResultsWithHttpInfo(String testId, { bool? matched, int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/results'
      .replaceAll('{testId}', testId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (matched != null) {
      queryParams.addAll(_queryParams('', 'matched', matched));
    }
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

  /// Get deliverability/load test entity results
  ///
  /// Get paged per-entity expectation results with optional matched/unmatched filtering.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [bool] matched:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<DeliverabilityEntityResultPageDto?> getDeliverabilityTestResults(String testId, { bool? matched, int? page, int? size, String? sort, }) async {
    final response = await getDeliverabilityTestResultsWithHttpInfo(testId,  matched: matched, page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityEntityResultPageDto',) as DeliverabilityEntityResultPageDto;
    
    }
    return null;
  }

  /// List deliverability/load tests
  ///
  /// List deliverability tests for the authenticated account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page index
  ///
  /// * [int] size:
  ///   Page size
  ///
  /// * [String] sort:
  ///   Sort direction
  Future<Response> getDeliverabilityTestsWithHttpInfo({ int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability';

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

  /// List deliverability/load tests
  ///
  /// List deliverability tests for the authenticated account.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Page index
  ///
  /// * [int] size:
  ///   Page size
  ///
  /// * [String] sort:
  ///   Sort direction
  Future<DeliverabilityTestPageDto?> getDeliverabilityTests({ int? page, int? size, String? sort, }) async {
    final response = await getDeliverabilityTestsWithHttpInfo( page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestPageDto',) as DeliverabilityTestPageDto;
    
    }
    return null;
  }

  /// Get latest deliverability simulation job
  ///
  /// Get the most recent simulation job for a deliverability test.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> getLatestDeliverabilitySimulationJobWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/latest'
      .replaceAll('{testId}', testId);

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

  /// Get latest deliverability simulation job
  ///
  /// Get the most recent simulation job for a deliverability test.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilitySimulationJobDto?> getLatestDeliverabilitySimulationJob(String testId,) async {
    final response = await getLatestDeliverabilitySimulationJobWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Pause deliverability simulation job
  ///
  /// Pause a running simulation job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<Response> pauseDeliverabilitySimulationJobWithHttpInfo(String testId, String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/{jobId}/pause'
      .replaceAll('{testId}', testId)
      .replaceAll('{jobId}', jobId);

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

  /// Pause deliverability simulation job
  ///
  /// Pause a running simulation job.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<DeliverabilitySimulationJobDto?> pauseDeliverabilitySimulationJob(String testId, String jobId,) async {
    final response = await pauseDeliverabilitySimulationJobWithHttpInfo(testId, jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Pause deliverability/load test
  ///
  /// Pause a RUNNING or SCHEDULED deliverability test.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> pauseDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/pause'
      .replaceAll('{testId}', testId);

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

  /// Pause deliverability/load test
  ///
  /// Pause a RUNNING or SCHEDULED deliverability test.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityTestDto?> pauseDeliverabilityTest(String testId,) async {
    final response = await pauseDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Poll deliverability/load test status
  ///
  /// Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> pollDeliverabilityTestStatusWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/status'
      .replaceAll('{testId}', testId);

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

  /// Poll deliverability/load test status
  ///
  /// Poll test progress. Evaluation is throttled with a 5-second cache window to protect backing data stores.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityPollStatusResultDto?> pollDeliverabilityTestStatus(String testId,) async {
    final response = await pollDeliverabilityTestStatusWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityPollStatusResultDto',) as DeliverabilityPollStatusResultDto;
    
    }
    return null;
  }

  /// Resume deliverability simulation job
  ///
  /// Resume a paused simulation job.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<Response> resumeDeliverabilitySimulationJobWithHttpInfo(String testId, String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/simulation-jobs/{jobId}/resume'
      .replaceAll('{testId}', testId)
      .replaceAll('{jobId}', jobId);

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

  /// Resume deliverability simulation job
  ///
  /// Resume a paused simulation job.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [String] jobId (required):
  Future<DeliverabilitySimulationJobDto?> resumeDeliverabilitySimulationJob(String testId, String jobId,) async {
    final response = await resumeDeliverabilitySimulationJobWithHttpInfo(testId, jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilitySimulationJobDto',) as DeliverabilitySimulationJobDto;
    
    }
    return null;
  }

  /// Start or resume deliverability/load test
  ///
  /// Start a CREATED test or resume a PAUSED/SCHEDULED test.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> startDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/start'
      .replaceAll('{testId}', testId);

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

  /// Start or resume deliverability/load test
  ///
  /// Start a CREATED test or resume a PAUSED/SCHEDULED test.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityTestDto?> startDeliverabilityTest(String testId,) async {
    final response = await startDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Stop deliverability/load test
  ///
  /// Stop a deliverability test and mark it terminal.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<Response> stopDeliverabilityTestWithHttpInfo(String testId,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}/stop'
      .replaceAll('{testId}', testId);

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

  /// Stop deliverability/load test
  ///
  /// Stop a deliverability test and mark it terminal.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  Future<DeliverabilityTestDto?> stopDeliverabilityTest(String testId,) async {
    final response = await stopDeliverabilityTestWithHttpInfo(testId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }

  /// Update deliverability/load test
  ///
  /// Update metadata, timeout, and expectations for a non-running non-terminal test.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [UpdateDeliverabilityTestOptions] updateDeliverabilityTestOptions (required):
  Future<Response> updateDeliverabilityTestWithHttpInfo(String testId, UpdateDeliverabilityTestOptions updateDeliverabilityTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/test/deliverability/{testId}'
      .replaceAll('{testId}', testId);

    // ignore: prefer_final_locals
    Object? postBody = updateDeliverabilityTestOptions;

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

  /// Update deliverability/load test
  ///
  /// Update metadata, timeout, and expectations for a non-running non-terminal test.
  ///
  /// Parameters:
  ///
  /// * [String] testId (required):
  ///
  /// * [UpdateDeliverabilityTestOptions] updateDeliverabilityTestOptions (required):
  Future<DeliverabilityTestDto?> updateDeliverabilityTest(String testId, UpdateDeliverabilityTestOptions updateDeliverabilityTestOptions,) async {
    final response = await updateDeliverabilityTestWithHttpInfo(testId, updateDeliverabilityTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliverabilityTestDto',) as DeliverabilityTestDto;
    
    }
    return null;
  }
}
