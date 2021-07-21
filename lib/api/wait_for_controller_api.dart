//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WaitForControllerApi {
  WaitForControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Wait for an email to match the provided filter conditions such as subject contains keyword.
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WaitForConditions] waitForConditions:
  ///   Conditions to apply to emails that you are waiting for
  Future<Response> waitForWithHttpInfo({ WaitForConditions waitForConditions }) async {
    // Verify required params are set.

    final path = r'/waitFor';

    Object postBody = waitForConditions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Wait for an email to match the provided filter conditions such as subject contains keyword.
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  ///
  /// Parameters:
  ///
  /// * [WaitForConditions] waitForConditions:
  ///   Conditions to apply to emails that you are waiting for
  Future<List<EmailPreview>> waitFor({ WaitForConditions waitForConditions }) async {
    final response = await waitForWithHttpInfo( waitForConditions: waitForConditions );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList(growable: false);
    }
    return Future<List<EmailPreview>>.value(null);
  }

  /// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] count:
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Response> waitForEmailCountWithHttpInfo({ int count, String inboxId, int timeout, bool unreadOnly }) async {
    // Verify required params are set.

    final path = r'/waitForEmailCount';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'count', count));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
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

  /// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  ///
  /// Parameters:
  ///
  /// * [int] count:
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<List<EmailPreview>> waitForEmailCount({ int count, String inboxId, int timeout, bool unreadOnly }) async {
    final response = await waitForEmailCountWithHttpInfo( count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList(growable: false);
    }
    return Future<List<EmailPreview>>.value(null);
  }

  /// Fetch inbox's latest email or if empty wait for an email to arrive
  ///
  /// Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only.
  Future<Response> waitForLatestEmailWithHttpInfo({ String inboxId, int timeout, bool unreadOnly }) async {
    // Verify required params are set.

    final path = r'/waitForLatestEmail';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
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

  /// Fetch inbox's latest email or if empty wait for an email to arrive
  ///
  /// Will return either the last received email or wait for an email to arrive and return that. If you need to wait for an email for a non-empty inbox set `unreadOnly=true` or see the other receive methods such as `waitForNthEmail` or `waitForEmailCount`.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only.
  Future<Email> waitForLatestEmail({ String inboxId, int timeout, bool unreadOnly }) async {
    final response = await waitForLatestEmailWithHttpInfo( inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
        }
    return Future<Email>.value(null);
  }

  /// Wait or return list of emails that match simple matching patterns
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MatchOptions] matchOptions (required):
  ///   matchOptions
  ///
  /// * [int] count:
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Response> waitForMatchingEmailWithHttpInfo(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async {
    // Verify required params are set.
    if (matchOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: matchOptions');
    }

    final path = r'/waitForMatchingEmails';

    Object postBody = matchOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (count != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'count', count));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
    }

    final contentTypes = <String>['application/json'];
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Wait or return list of emails that match simple matching patterns
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Parameters:
  ///
  /// * [MatchOptions] matchOptions (required):
  ///   matchOptions
  ///
  /// * [int] count:
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<List<EmailPreview>> waitForMatchingEmail(MatchOptions matchOptions, { int count, String inboxId, int timeout, bool unreadOnly }) async {
    final response = await waitForMatchingEmailWithHttpInfo(matchOptions,  count: count, inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList(growable: false);
    }
    return Future<List<EmailPreview>>.value(null);
  }

  /// Wait for or return the first email that matches provided MatchOptions array
  ///
  /// Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MatchOptions] matchOptions (required):
  ///   matchOptions
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are matching an email for
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Response> waitForMatchingFirstEmailWithHttpInfo(MatchOptions matchOptions, { String inboxId, int timeout, bool unreadOnly }) async {
    // Verify required params are set.
    if (matchOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: matchOptions');
    }

    final path = r'/waitForMatchingFirstEmail';

    Object postBody = matchOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
    }

    final contentTypes = <String>['application/json'];
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Wait for or return the first email that matches provided MatchOptions array
  ///
  /// Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Parameters:
  ///
  /// * [MatchOptions] matchOptions (required):
  ///   matchOptions
  ///
  /// * [String] inboxId:
  ///   Id of the inbox we are matching an email for
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Email> waitForMatchingFirstEmail(MatchOptions matchOptions, { String inboxId, int timeout, bool unreadOnly }) async {
    final response = await waitForMatchingFirstEmailWithHttpInfo(matchOptions,  inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
        }
    return Future<Email>.value(null);
  }

  /// Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
  ///
  /// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Id of the inbox you are fetching emails from
  ///
  /// * [int] index:
  ///   Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait for the nth email if not already present
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Response> waitForNthEmailWithHttpInfo({ String inboxId, int index, int timeout, bool unreadOnly }) async {
    // Verify required params are set.

    final path = r'/waitForNthEmail';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (index != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'index', index));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
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

  /// Wait for or fetch the email with a given index in the inbox specified. If index doesn't exist waits for it to exist or timeout to occur.
  ///
  /// If nth email is already present in inbox then return it. If not hold the connection open until timeout expires or the nth email is received and returned.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Id of the inbox you are fetching emails from
  ///
  /// * [int] index:
  ///   Zero based index of the email to wait for. If an inbox has 1 email already and you want to wait for the 2nd email pass index=1
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait for the nth email if not already present
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Email> waitForNthEmail({ String inboxId, int index, int timeout, bool unreadOnly }) async {
    final response = await waitForNthEmailWithHttpInfo( inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
        }
    return Future<Email>.value(null);
  }
}
