//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ImapControllerApi {
  ImapControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Fetch message in an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] seqNum (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to search
  Future<Response> imapServerFetchWithHttpInfo(int seqNum, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/imap/server/fetch';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
      queryParams.addAll(_queryParams('', 'seqNum', seqNum));

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

  /// Fetch message in an inbox
  ///
  /// Parameters:
  ///
  /// * [int] seqNum (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to search
  Future<ImapServerFetchResult?> imapServerFetch(int seqNum, { String? inboxId, }) async {
    final response = await imapServerFetchWithHttpInfo(seqNum,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapServerFetchResult',) as ImapServerFetchResult;
    
    }
    return null;
  }

  /// List messages in an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImapServerListOptions] imapServerListOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to list
  Future<Response> imapServerListWithHttpInfo(ImapServerListOptions imapServerListOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/imap/server/list';

    // ignore: prefer_final_locals
    Object? postBody = imapServerListOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// List messages in an inbox
  ///
  /// Parameters:
  ///
  /// * [ImapServerListOptions] imapServerListOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to list
  Future<ImapServerListResult?> imapServerList(ImapServerListOptions imapServerListOptions, { String? inboxId, }) async {
    final response = await imapServerListWithHttpInfo(imapServerListOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapServerListResult',) as ImapServerListResult;
    
    }
    return null;
  }

  /// Search messages in an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImapServerSearchOptions] imapServerSearchOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to search
  Future<Response> imapServerSearchWithHttpInfo(ImapServerSearchOptions imapServerSearchOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/imap/server/search';

    // ignore: prefer_final_locals
    Object? postBody = imapServerSearchOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// Search messages in an inbox
  ///
  /// Parameters:
  ///
  /// * [ImapServerSearchOptions] imapServerSearchOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to search
  Future<ImapServerSearchResult?> imapServerSearch(ImapServerSearchOptions imapServerSearchOptions, { String? inboxId, }) async {
    final response = await imapServerSearchWithHttpInfo(imapServerSearchOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapServerSearchResult',) as ImapServerSearchResult;
    
    }
    return null;
  }

  /// Get status for mailbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImapServerStatusOptions] imapServerStatusOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to list
  Future<Response> imapServerStatusWithHttpInfo(ImapServerStatusOptions imapServerStatusOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/imap/server/status';

    // ignore: prefer_final_locals
    Object? postBody = imapServerStatusOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// Get status for mailbox
  ///
  /// Parameters:
  ///
  /// * [ImapServerStatusOptions] imapServerStatusOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID to list
  Future<ImapServerStatusResult?> imapServerStatus(ImapServerStatusOptions imapServerStatusOptions, { String? inboxId, }) async {
    final response = await imapServerStatusWithHttpInfo(imapServerStatusOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapServerStatusResult',) as ImapServerStatusResult;
    
    }
    return null;
  }

  /// Update message flags
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ImapUpdateFlagsOptions] imapUpdateFlagsOptions (required):
  ///
  /// * [String] inboxId:
  Future<Response> imapServerUpdateFlagsWithHttpInfo(ImapUpdateFlagsOptions imapUpdateFlagsOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/imap/server/update-flags';

    // ignore: prefer_final_locals
    Object? postBody = imapUpdateFlagsOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// Update message flags
  ///
  /// Parameters:
  ///
  /// * [ImapUpdateFlagsOptions] imapUpdateFlagsOptions (required):
  ///
  /// * [String] inboxId:
  Future<void> imapServerUpdateFlags(ImapUpdateFlagsOptions imapUpdateFlagsOptions, { String? inboxId, }) async {
    final response = await imapServerUpdateFlagsWithHttpInfo(imapUpdateFlagsOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
