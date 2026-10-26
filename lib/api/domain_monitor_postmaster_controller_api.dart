//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DomainMonitorPostmasterControllerApi {
  DomainMonitorPostmasterControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create Postmaster OAuth connection URL
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreatePostmasterConnectionOptions] createPostmasterConnectionOptions (required):
  Future<Response> createDomainMonitorPostmasterConnectionWithHttpInfo(CreatePostmasterConnectionOptions createPostmasterConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/connect';

    // ignore: prefer_final_locals
    Object? postBody = createPostmasterConnectionOptions;

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

  /// Create Postmaster OAuth connection URL
  ///
  /// Parameters:
  ///
  /// * [CreatePostmasterConnectionOptions] createPostmasterConnectionOptions (required):
  Future<CreatePostmasterConnectionResult?> createDomainMonitorPostmasterConnection(CreatePostmasterConnectionOptions createPostmasterConnectionOptions,) async {
    final response = await createDomainMonitorPostmasterConnectionWithHttpInfo(createPostmasterConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreatePostmasterConnectionResult',) as CreatePostmasterConnectionResult;
    
    }
    return null;
  }

  /// Disconnect Postmaster OAuth
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteDomainMonitorPostmasterConnectionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/connection';

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

  /// Disconnect Postmaster OAuth
  Future<void> deleteDomainMonitorPostmasterConnection() async {
    final response = await deleteDomainMonitorPostmasterConnectionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Exchange Postmaster OAuth authorization code
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ExchangePostmasterCodeOptions] exchangePostmasterCodeOptions (required):
  Future<Response> exchangeDomainMonitorPostmasterCodeWithHttpInfo(ExchangePostmasterCodeOptions exchangePostmasterCodeOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/oauth-exchange';

    // ignore: prefer_final_locals
    Object? postBody = exchangePostmasterCodeOptions;

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

  /// Exchange Postmaster OAuth authorization code
  ///
  /// Parameters:
  ///
  /// * [ExchangePostmasterCodeOptions] exchangePostmasterCodeOptions (required):
  Future<PostmasterConnectionDto?> exchangeDomainMonitorPostmasterCode(ExchangePostmasterCodeOptions exchangePostmasterCodeOptions,) async {
    final response = await exchangeDomainMonitorPostmasterCodeWithHttpInfo(exchangePostmasterCodeOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostmasterConnectionDto',) as PostmasterConnectionDto;
    
    }
    return null;
  }

  /// Get Postmaster connection status
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainMonitorPostmasterConnectionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/connection';

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

  /// Get Postmaster connection status
  Future<PostmasterConnectionStatusDto?> getDomainMonitorPostmasterConnection() async {
    final response = await getDomainMonitorPostmasterConnectionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostmasterConnectionStatusDto',) as PostmasterConnectionStatusDto;
    
    }
    return null;
  }

  /// List local Postmaster domain snapshots
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDomainMonitorPostmasterDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/domains';

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

  /// List local Postmaster domain snapshots
  Future<List<PostmasterDomainDto>?> getDomainMonitorPostmasterDomains() async {
    final response = await getDomainMonitorPostmasterDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PostmasterDomainDto>') as List)
        .cast<PostmasterDomainDto>()
        .toList();

    }
    return null;
  }

  /// Get local Postmaster traffic stats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> getDomainMonitorPostmasterTrafficStatsWithHttpInfo(String domain, { DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/domains/{domain}/traffic-stats'
      .replaceAll('{domain}', domain);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
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

  /// Get local Postmaster traffic stats
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<PostmasterTrafficStatsListDto?> getDomainMonitorPostmasterTrafficStats(String domain, { DateTime? startDate, DateTime? endDate, }) async {
    final response = await getDomainMonitorPostmasterTrafficStatsWithHttpInfo(domain,  startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostmasterTrafficStatsListDto',) as PostmasterTrafficStatsListDto;
    
    }
    return null;
  }

  /// Sync Postmaster domains
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> syncDomainMonitorPostmasterDomainsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/domains/sync';

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

  /// Sync Postmaster domains
  Future<List<PostmasterDomainDto>?> syncDomainMonitorPostmasterDomains() async {
    final response = await syncDomainMonitorPostmasterDomainsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<PostmasterDomainDto>') as List)
        .cast<PostmasterDomainDto>()
        .toList();

    }
    return null;
  }

  /// Sync Postmaster traffic stats
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<Response> syncDomainMonitorPostmasterTrafficStatsWithHttpInfo(String domain, { DateTime? startDate, DateTime? endDate, }) async {
    // ignore: prefer_const_declarations
    final path = r'/domain-monitor/postmaster/domains/{domain}/traffic-stats/sync'
      .replaceAll('{domain}', domain);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (startDate != null) {
      queryParams.addAll(_queryParams('', 'startDate', startDate));
    }
    if (endDate != null) {
      queryParams.addAll(_queryParams('', 'endDate', endDate));
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

  /// Sync Postmaster traffic stats
  ///
  /// Parameters:
  ///
  /// * [String] domain (required):
  ///
  /// * [DateTime] startDate:
  ///
  /// * [DateTime] endDate:
  Future<PostmasterTrafficStatsListDto?> syncDomainMonitorPostmasterTrafficStats(String domain, { DateTime? startDate, DateTime? endDate, }) async {
    final response = await syncDomainMonitorPostmasterTrafficStatsWithHttpInfo(domain,  startDate: startDate, endDate: endDate, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PostmasterTrafficStatsListDto',) as PostmasterTrafficStatsListDto;
    
    }
    return null;
  }
}
