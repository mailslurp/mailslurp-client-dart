//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MissedEmailControllerApi {
  MissedEmailControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all MissedEmails in paginated format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllMissedEmailsWithHttpInfo({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/missed-emails';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all MissedEmails in paginated format
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageMissedEmailProjection> getAllMissedEmails({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await getAllMissedEmailsWithHttpInfo( before: before, inboxId: inboxId, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageMissedEmailProjection',) as PageMissedEmailProjection;
        }
    return Future<PageMissedEmailProjection>.value(null);
  }

  /// Get all unknown missed emails in paginated format
  ///
  /// Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllUnknownMissedEmailsWithHttpInfo({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/missed-emails/unknown';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get all unknown missed emails in paginated format
  ///
  /// Unknown missed emails are emails that were sent to MailSlurp but could not be assigned to an existing inbox.
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageUnknownMissedEmailProjection> getAllUnknownMissedEmails({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await getAllUnknownMissedEmailsWithHttpInfo( before: before, inboxId: inboxId, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageUnknownMissedEmailProjection',) as PageUnknownMissedEmailProjection;
        }
    return Future<PageUnknownMissedEmailProjection>.value(null);
  }

  /// Get MissedEmail
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] missedEmailId (required):
  ///   missedEmailId
  Future<Response> getMissedEmailWithHttpInfo(String missedEmailId) async {
    // Verify required params are set.
    if (missedEmailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: missedEmailId');
    }

    final path = r'/missed-emails/{missedEmailId}'
      .replaceAll('{' + 'missedEmailId' + '}', missedEmailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get MissedEmail
  ///
  /// Parameters:
  ///
  /// * [String] missedEmailId (required):
  ///   missedEmailId
  Future<MissedEmail> getMissedEmail(String missedEmailId) async {
    final response = await getMissedEmailWithHttpInfo(missedEmailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissedEmail',) as MissedEmail;
        }
    return Future<MissedEmail>.value(null);
  }

  /// Wait for Nth missed email
  ///
  /// Wait for 0 based index missed email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] index:
  ///   Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  Future<Response> waitForNthMissedEmailWithHttpInfo({ DateTime before, String inboxId, int index, DateTime since, int timeout }) async {
    // Verify required params are set.

    final path = r'/missed-emails/waitForNthMissedEmail';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (index != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'index', index));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['API_KEY'];

    if (
      nullableContentType != null &&
      nullableContentType.toLowerCase().startsWith('multipart/form-data')
    ) {
      bool hasFields = false;
      final mp = MultipartRequest(null, null);
      if (hasFields) {
        postBody = mp;
      }
    } else {
    }

    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Wait for Nth missed email
  ///
  /// Wait for 0 based index missed email
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] index:
  ///   Zero based index of the email to wait for. If 1 missed email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  Future<MissedEmail> waitForNthMissedEmail({ DateTime before, String inboxId, int index, DateTime since, int timeout }) async {
    final response = await waitForNthMissedEmailWithHttpInfo( before: before, inboxId: inboxId, index: index, since: since, timeout: timeout );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissedEmail',) as MissedEmail;
        }
    return Future<MissedEmail>.value(null);
  }
}
