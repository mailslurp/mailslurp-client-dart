//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CampaignProbeControllerApi {
  CampaignProbeControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create campaign probe
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateCampaignProbeOptions] createCampaignProbeOptions (required):
  Future<Response> createCampaignProbeWithHttpInfo(CreateCampaignProbeOptions createCampaignProbeOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes';

    // ignore: prefer_final_locals
    Object? postBody = createCampaignProbeOptions;

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

  /// Create campaign probe
  ///
  /// Parameters:
  ///
  /// * [CreateCampaignProbeOptions] createCampaignProbeOptions (required):
  Future<CampaignProbeDto?> createCampaignProbe(CreateCampaignProbeOptions createCampaignProbeOptions,) async {
    final response = await createCampaignProbeWithHttpInfo(createCampaignProbeOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeDto',) as CampaignProbeDto;
    
    }
    return null;
  }

  /// Delete campaign probe
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  Future<Response> deleteCampaignProbeWithHttpInfo(String probeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}'
      .replaceAll('{probeId}', probeId);

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

  /// Delete campaign probe
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  Future<void> deleteCampaignProbe(String probeId,) async {
    final response = await deleteCampaignProbeWithHttpInfo(probeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get campaign probe
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  Future<Response> getCampaignProbeWithHttpInfo(String probeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}'
      .replaceAll('{probeId}', probeId);

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

  /// Get campaign probe
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  Future<CampaignProbeDto?> getCampaignProbe(String probeId,) async {
    final response = await getCampaignProbeWithHttpInfo(probeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeDto',) as CampaignProbeDto;
    
    }
    return null;
  }

  /// Get campaign probe insights
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<Response> getCampaignProbeInsightsWithHttpInfo(String probeId, { DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}/insights'
      .replaceAll('{probeId}', probeId);

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

  /// Get campaign probe insights
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<CampaignProbeInsightsDto?> getCampaignProbeInsights(String probeId, { DateTime? since, DateTime? before, }) async {
    final response = await getCampaignProbeInsightsWithHttpInfo(probeId,  since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeInsightsDto',) as CampaignProbeInsightsDto;
    
    }
    return null;
  }

  /// List campaign probe runs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<Response> getCampaignProbeRunsWithHttpInfo(String probeId, { DateTime? since, DateTime? before, String? status, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}/runs'
      .replaceAll('{probeId}', probeId);

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

  /// List campaign probe runs
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] status:
  ///
  /// * [int] limit:
  Future<List<CampaignProbeRunDto>?> getCampaignProbeRuns(String probeId, { DateTime? since, DateTime? before, String? status, int? limit, }) async {
    final response = await getCampaignProbeRunsWithHttpInfo(probeId,  since: since, before: before, status: status, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CampaignProbeRunDto>') as List)
        .cast<CampaignProbeRunDto>()
        .toList();

    }
    return null;
  }

  /// Get campaign probe trend series
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  Future<Response> getCampaignProbeSeriesWithHttpInfo(String probeId, { DateTime? since, DateTime? before, String? bucket, }) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}/series'
      .replaceAll('{probeId}', probeId);

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

  /// Get campaign probe trend series
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] bucket:
  Future<CampaignProbeSeriesDto?> getCampaignProbeSeries(String probeId, { DateTime? since, DateTime? before, String? bucket, }) async {
    final response = await getCampaignProbeSeriesWithHttpInfo(probeId,  since: since, before: before, bucket: bucket, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeSeriesDto',) as CampaignProbeSeriesDto;
    
    }
    return null;
  }

  /// List campaign probes
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCampaignProbesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes';

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

  /// List campaign probes
  Future<List<CampaignProbeDto>?> getCampaignProbes() async {
    final response = await getCampaignProbesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<CampaignProbeDto>') as List)
        .cast<CampaignProbeDto>()
        .toList();

    }
    return null;
  }

  /// Run campaign probe now
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [CreateCampaignProbeRunOptions] createCampaignProbeRunOptions (required):
  Future<Response> runCampaignProbeNowWithHttpInfo(String probeId, CreateCampaignProbeRunOptions createCampaignProbeRunOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}/run-now'
      .replaceAll('{probeId}', probeId);

    // ignore: prefer_final_locals
    Object? postBody = createCampaignProbeRunOptions;

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

  /// Run campaign probe now
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [CreateCampaignProbeRunOptions] createCampaignProbeRunOptions (required):
  Future<CampaignProbeRunNowResult?> runCampaignProbeNow(String probeId, CreateCampaignProbeRunOptions createCampaignProbeRunOptions,) async {
    final response = await runCampaignProbeNowWithHttpInfo(probeId, createCampaignProbeRunOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeRunNowResult',) as CampaignProbeRunNowResult;
    
    }
    return null;
  }

  /// Run due campaign probes for user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] maxRuns:
  Future<Response> runDueCampaignProbesWithHttpInfo({ int? maxRuns, }) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/run-due';

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

  /// Run due campaign probes for user
  ///
  /// Parameters:
  ///
  /// * [int] maxRuns:
  Future<CampaignProbeRunDueResult?> runDueCampaignProbes({ int? maxRuns, }) async {
    final response = await runDueCampaignProbesWithHttpInfo( maxRuns: maxRuns, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeRunDueResult',) as CampaignProbeRunDueResult;
    
    }
    return null;
  }

  /// Update campaign probe
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [UpdateCampaignProbeOptions] updateCampaignProbeOptions (required):
  Future<Response> updateCampaignProbeWithHttpInfo(String probeId, UpdateCampaignProbeOptions updateCampaignProbeOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/campaign-probe/probes/{probeId}'
      .replaceAll('{probeId}', probeId);

    // ignore: prefer_final_locals
    Object? postBody = updateCampaignProbeOptions;

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

  /// Update campaign probe
  ///
  /// Parameters:
  ///
  /// * [String] probeId (required):
  ///
  /// * [UpdateCampaignProbeOptions] updateCampaignProbeOptions (required):
  Future<CampaignProbeDto?> updateCampaignProbe(String probeId, UpdateCampaignProbeOptions updateCampaignProbeOptions,) async {
    final response = await updateCampaignProbeWithHttpInfo(probeId, updateCampaignProbeOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CampaignProbeDto',) as CampaignProbeDto;
    
    }
    return null;
  }
}
