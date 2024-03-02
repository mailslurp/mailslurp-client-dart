//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MissedEmailControllerApi {
  MissedEmailControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all MissedEmails in paginated format
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<Response> getAllMissedEmailsWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-emails';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get all MissedEmails in paginated format
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<PageMissedEmailProjection?> getAllMissedEmails({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, String? inboxId, }) async {
    final response = await getAllMissedEmailsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageMissedEmailProjection',) as PageMissedEmailProjection;
    
    }
    return null;
  }

  /// Get all unknown missed emails in paginated format
  ///
  /// Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<Response> getAllUnknownMissedEmailsWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-emails/unknown';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get all unknown missed emails in paginated format
  ///
  /// Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<PageUnknownMissedEmailProjection?> getAllUnknownMissedEmails({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, String? inboxId, }) async {
    final response = await getAllUnknownMissedEmailsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageUnknownMissedEmailProjection',) as PageUnknownMissedEmailProjection;
    
    }
    return null;
  }

  /// Get MissedEmail
  ///
  /// List emails that were missed due to plan limits.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] missedEmailId (required):
  Future<Response> getMissedEmailWithHttpInfo(String missedEmailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-emails/{missedEmailId}'
      .replaceAll('{missedEmailId}', missedEmailId);

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

  /// Get MissedEmail
  ///
  /// List emails that were missed due to plan limits.
  ///
  /// Parameters:
  ///
  /// * [String] missedEmailId (required):
  Future<MissedEmailDto?> getMissedEmail(String missedEmailId,) async {
    final response = await getMissedEmailWithHttpInfo(missedEmailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissedEmailDto',) as MissedEmailDto;
    
    }
    return null;
  }

  /// Restore missed emails
  ///
  /// If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> restoreMissedEmailsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/missed-emails/restore';

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

  /// Restore missed emails
  ///
  /// If emails were missed due to a plan limit they are saved as missed emails. If support team enables the canRestore flag these emails can be reload into your account using this method.
  Future<void> restoreMissedEmails() async {
    final response = await restoreMissedEmailsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Wait for Nth missed email
  ///
  /// Wait for 0 based index missed email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] index (required):
  ///   Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> waitForNthMissedEmailWithHttpInfo(int index, { String? inboxId, int? timeout, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-emails/waitForNthMissedEmail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
    }
      queryParams.addAll(_queryParams('', 'index', index));
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

  /// Wait for Nth missed email
  ///
  /// Wait for 0 based index missed email
  ///
  /// Parameters:
  ///
  /// * [int] index (required):
  ///   Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<MissedEmailDto?> waitForNthMissedEmail(int index, { String? inboxId, int? timeout, DateTime? since, DateTime? before, }) async {
    final response = await waitForNthMissedEmailWithHttpInfo(index,  inboxId: inboxId, timeout: timeout, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissedEmailDto',) as MissedEmailDto;
    
    }
    return null;
  }
}
