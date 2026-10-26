//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiInboxPlacementTestControllerApi {
  ApiInboxPlacementTestControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Confirm an inbox placement test email has been sent
  ///
  /// Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> confirmInboxPlacementTestSentWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}/confirm-sent'
      .replaceAll('{id}', id);

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

  /// Confirm an inbox placement test email has been sent
  ///
  /// Reconcile any messages that arrived after seed reservation, commit allowance, and move a prepared dashboard test into its active lifecycle. This operation is idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InboxPlacementTestRunDto?> confirmInboxPlacementTestSent(String id,) async {
    final response = await confirmInboxPlacementTestSentWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementTestRunDto',) as InboxPlacementTestRunDto;
    
    }
    return null;
  }

  /// Create a new direct-send inbox placement test
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxPlacementTestOptions] createInboxPlacementTestOptions (required):
  Future<Response> createInboxPlacementTestWithHttpInfo(CreateInboxPlacementTestOptions createInboxPlacementTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests';

    // ignore: prefer_final_locals
    Object? postBody = createInboxPlacementTestOptions;

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

  /// Create a new direct-send inbox placement test
  ///
  /// Parameters:
  ///
  /// * [CreateInboxPlacementTestOptions] createInboxPlacementTestOptions (required):
  Future<InboxPlacementTestRunDto?> createInboxPlacementTest(CreateInboxPlacementTestOptions createInboxPlacementTestOptions,) async {
    final response = await createInboxPlacementTestWithHttpInfo(createInboxPlacementTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementTestRunDto',) as InboxPlacementTestRunDto;
    
    }
    return null;
  }

  /// Download inbox placement seed addresses as an email-platform CSV
  ///
  /// Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] provider:
  Future<Response> exportInboxPlacementSeedListWithHttpInfo(String id, { String? provider, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}/seed-list.csv'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (provider != null) {
      queryParams.addAll(_queryParams('', 'provider', provider));
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

  /// Download inbox placement seed addresses as an email-platform CSV
  ///
  /// Export the current run's seed addresses with headers recognized by the selected email platform. Downloading a prepared seed list does not confirm the send or consume allowance.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] provider:
  Future<void> exportInboxPlacementSeedList(String id, { String? provider, }) async {
    final response = await exportInboxPlacementSeedListWithHttpInfo(id,  provider: provider, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Export inbox placement test results as CSV
  ///
  /// Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> exportInboxPlacementTestResultsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}/results/export'
      .replaceAll('{id}', id);

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

  /// Export inbox placement test results as CSV
  ///
  /// Export one row per placement target, including run-level delivery totals, 0-10 placement scores, and target placement outcome fields.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> exportInboxPlacementTestResults(String id,) async {
    final response = await exportInboxPlacementTestResultsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get inbox placement analytics breakdowns
  ///
  /// Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] fromEmail:
  ///
  /// * [int] limit:
  Future<Response> getInboxPlacementAnalyticsBreakdownWithHttpInfo({ DateTime? since, DateTime? before, String? senderDomain, String? fromEmail, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/analytics/breakdown';

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
    if (senderDomain != null) {
      queryParams.addAll(_queryParams('', 'senderDomain', senderDomain));
    }
    if (fromEmail != null) {
      queryParams.addAll(_queryParams('', 'fromEmail', fromEmail));
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

  /// Get inbox placement analytics breakdowns
  ///
  /// Return aggregated folder, provider, sender-domain, and from-email breakdowns for inbox placement runs in a time range.
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] fromEmail:
  ///
  /// * [int] limit:
  Future<InboxPlacementAnalyticsBreakdownDto?> getInboxPlacementAnalyticsBreakdown({ DateTime? since, DateTime? before, String? senderDomain, String? fromEmail, int? limit, }) async {
    final response = await getInboxPlacementAnalyticsBreakdownWithHttpInfo( since: since, before: before, senderDomain: senderDomain, fromEmail: fromEmail, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementAnalyticsBreakdownDto',) as InboxPlacementAnalyticsBreakdownDto;
    
    }
    return null;
  }

  /// Get inbox placement analytics time series
  ///
  /// Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  ///
  /// * [String] groupBy:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] fromEmail:
  ///
  /// * [int] runLimit:
  ///
  /// * [int] groupLimit:
  Future<Response> getInboxPlacementAnalyticsSeriesWithHttpInfo({ DateTime? since, DateTime? before, String? bucket, String? groupBy, String? senderDomain, String? fromEmail, int? runLimit, int? groupLimit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/analytics/series';

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
    if (groupBy != null) {
      queryParams.addAll(_queryParams('', 'groupBy', groupBy));
    }
    if (senderDomain != null) {
      queryParams.addAll(_queryParams('', 'senderDomain', senderDomain));
    }
    if (fromEmail != null) {
      queryParams.addAll(_queryParams('', 'fromEmail', fromEmail));
    }
    if (runLimit != null) {
      queryParams.addAll(_queryParams('', 'runLimit', runLimit));
    }
    if (groupLimit != null) {
      queryParams.addAll(_queryParams('', 'groupLimit', groupLimit));
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

  /// Get inbox placement analytics time series
  ///
  /// Return chart-ready inbox placement metrics over time, with optional sender/domain filters and grouped comparisons for sender domains or from-email addresses.
  ///
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  ///
  /// * [String] groupBy:
  ///
  /// * [String] senderDomain:
  ///
  /// * [String] fromEmail:
  ///
  /// * [int] runLimit:
  ///
  /// * [int] groupLimit:
  Future<InboxPlacementAnalyticsSeriesDto?> getInboxPlacementAnalyticsSeries({ DateTime? since, DateTime? before, String? bucket, String? groupBy, String? senderDomain, String? fromEmail, int? runLimit, int? groupLimit, }) async {
    final response = await getInboxPlacementAnalyticsSeriesWithHttpInfo( since: since, before: before, bucket: bucket, groupBy: groupBy, senderDomain: senderDomain, fromEmail: fromEmail, runLimit: runLimit, groupLimit: groupLimit, );
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

  /// Get a public inbox placement share
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<Response> getInboxPlacementPublicShareWithHttpInfo(String shareToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/share/{shareToken}'
      .replaceAll('{shareToken}', shareToken);

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

  /// Get a public inbox placement share
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<InboxPlacementPublicShareDto?> getInboxPlacementPublicShare(String shareToken,) async {
    final response = await getInboxPlacementPublicShareWithHttpInfo(shareToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementPublicShareDto',) as InboxPlacementPublicShareDto;
    
    }
    return null;
  }

  /// Get public inbox placement share analysis
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<Response> getInboxPlacementPublicShareAnalysisWithHttpInfo(String shareToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/share/{shareToken}/analysis'
      .replaceAll('{shareToken}', shareToken);

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

  /// Get public inbox placement share analysis
  ///
  /// Parameters:
  ///
  /// * [String] shareToken (required):
  Future<InboxPlacementAnalysisBundleDto?> getInboxPlacementPublicShareAnalysis(String shareToken,) async {
    final response = await getInboxPlacementPublicShareAnalysisWithHttpInfo(shareToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementAnalysisBundleDto',) as InboxPlacementAnalysisBundleDto;
    
    }
    return null;
  }

  /// Get inbox placement test run
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getInboxPlacementTestWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}'
      .replaceAll('{id}', id);

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

  /// Get inbox placement test run
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InboxPlacementTestRunDto?> getInboxPlacementTest(String id,) async {
    final response = await getInboxPlacementTestWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementTestRunDto',) as InboxPlacementTestRunDto;
    
    }
    return null;
  }

  /// Get inbox placement run analysis
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getInboxPlacementTestAnalysisWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}/analysis'
      .replaceAll('{id}', id);

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

  /// Get inbox placement run analysis
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InboxPlacementAnalysisBundleDto?> getInboxPlacementTestAnalysis(String id,) async {
    final response = await getInboxPlacementTestAnalysisWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementAnalysisBundleDto',) as InboxPlacementAnalysisBundleDto;
    
    }
    return null;
  }

  /// Get inbox placement test results
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getInboxPlacementTestResultsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/{id}/results'
      .replaceAll('{id}', id);

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

  /// Get inbox placement test results
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<InboxPlacementTestResultsDto?> getInboxPlacementTestResults(String id,) async {
    final response = await getInboxPlacementTestResultsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementTestResultsDto',) as InboxPlacementTestResultsDto;
    
    }
    return null;
  }

  /// List inbox placement test runs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<Response> getInboxPlacementTestsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests';

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

  /// List inbox placement test runs
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  Future<List<InboxPlacementTestRunDto>?> getInboxPlacementTests({ int? limit, }) async {
    final response = await getInboxPlacementTestsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InboxPlacementTestRunDto>') as List)
        .cast<InboxPlacementTestRunDto>()
        .toList();

    }
    return null;
  }

  /// Prepare a direct-send inbox placement test without consuming allowance
  ///
  /// Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxPlacementTestOptions] createInboxPlacementTestOptions (required):
  Future<Response> prepareInboxPlacementTestWithHttpInfo(CreateInboxPlacementTestOptions createInboxPlacementTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inbox-placement-tests/prepare';

    // ignore: prefer_final_locals
    Object? postBody = createInboxPlacementTestOptions;

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

  /// Prepare a direct-send inbox placement test without consuming allowance
  ///
  /// Reserve seed addresses for the dashboard create flow. The run remains staged and allowance is not committed until send confirmation. Reuses a recent active preparation when possible.
  ///
  /// Parameters:
  ///
  /// * [CreateInboxPlacementTestOptions] createInboxPlacementTestOptions (required):
  Future<InboxPlacementTestRunDto?> prepareInboxPlacementTest(CreateInboxPlacementTestOptions createInboxPlacementTestOptions,) async {
    final response = await prepareInboxPlacementTestWithHttpInfo(createInboxPlacementTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxPlacementTestRunDto',) as InboxPlacementTestRunDto;
    
    }
    return null;
  }
}
