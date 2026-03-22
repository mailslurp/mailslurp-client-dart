//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ApiAuditLogControllerApi {
  ApiAuditLogControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /audit-logs/{eventId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<Response> getAuditLogByEventIdWithHttpInfo(String eventId, { DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/audit-logs/{eventId}'
      .replaceAll('{eventId}', eventId);

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

  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<AuditLogEventDto?> getAuditLogByEventId(String eventId, { DateTime? since, DateTime? before, }) async {
    final response = await getAuditLogByEventIdWithHttpInfo(eventId,  since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLogEventDto',) as AuditLogEventDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /audit-logs' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] action:
  ///
  /// * [String] userId:
  ///
  /// * [String] actorUserId:
  ///
  /// * [String] targetUserId:
  ///
  /// * [String] resourceType:
  ///
  /// * [String] resourceId:
  ///
  /// * [String] outcome:
  ///
  /// * [String] requestId:
  ///
  /// * [String] ipAddress:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] cursor:
  Future<Response> getAuditLogsWithHttpInfo({ DateTime? since, DateTime? before, String? action, String? userId, String? actorUserId, String? targetUserId, String? resourceType, String? resourceId, String? outcome, String? requestId, String? ipAddress, int? pageSize, String? cursor, }) async {
    // ignore: prefer_const_declarations
    final path = r'/audit-logs';

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
    if (action != null) {
      queryParams.addAll(_queryParams('', 'action', action));
    }
    if (userId != null) {
      queryParams.addAll(_queryParams('', 'userId', userId));
    }
    if (actorUserId != null) {
      queryParams.addAll(_queryParams('', 'actorUserId', actorUserId));
    }
    if (targetUserId != null) {
      queryParams.addAll(_queryParams('', 'targetUserId', targetUserId));
    }
    if (resourceType != null) {
      queryParams.addAll(_queryParams('', 'resourceType', resourceType));
    }
    if (resourceId != null) {
      queryParams.addAll(_queryParams('', 'resourceId', resourceId));
    }
    if (outcome != null) {
      queryParams.addAll(_queryParams('', 'outcome', outcome));
    }
    if (requestId != null) {
      queryParams.addAll(_queryParams('', 'requestId', requestId));
    }
    if (ipAddress != null) {
      queryParams.addAll(_queryParams('', 'ipAddress', ipAddress));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
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

  /// Parameters:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] action:
  ///
  /// * [String] userId:
  ///
  /// * [String] actorUserId:
  ///
  /// * [String] targetUserId:
  ///
  /// * [String] resourceType:
  ///
  /// * [String] resourceId:
  ///
  /// * [String] outcome:
  ///
  /// * [String] requestId:
  ///
  /// * [String] ipAddress:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] cursor:
  Future<AuditLogPageDto?> getAuditLogs({ DateTime? since, DateTime? before, String? action, String? userId, String? actorUserId, String? targetUserId, String? resourceType, String? resourceId, String? outcome, String? requestId, String? ipAddress, int? pageSize, String? cursor, }) async {
    final response = await getAuditLogsWithHttpInfo( since: since, before: before, action: action, userId: userId, actorUserId: actorUserId, targetUserId: targetUserId, resourceType: resourceType, resourceId: resourceId, outcome: outcome, requestId: requestId, ipAddress: ipAddress, pageSize: pageSize, cursor: cursor, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLogPageDto',) as AuditLogPageDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /audit-logs/search' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AuditLogSearchOptions] auditLogSearchOptions (required):
  Future<Response> searchAuditLogsWithHttpInfo(AuditLogSearchOptions auditLogSearchOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/audit-logs/search';

    // ignore: prefer_final_locals
    Object? postBody = auditLogSearchOptions;

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

  /// Parameters:
  ///
  /// * [AuditLogSearchOptions] auditLogSearchOptions (required):
  Future<AuditLogPageDto?> searchAuditLogs(AuditLogSearchOptions auditLogSearchOptions,) async {
    final response = await searchAuditLogsWithHttpInfo(auditLogSearchOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AuditLogPageDto',) as AuditLogPageDto;
    
    }
    return null;
  }
}
