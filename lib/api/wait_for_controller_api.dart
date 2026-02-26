//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WaitForControllerApi {
  WaitForControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Wait for an email to match the provided filter conditions such as subject contains keyword.
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WaitForConditions] waitForConditions (required):
  Future<Response> waitForWithHttpInfo(WaitForConditions waitForConditions,) async {
    // ignore: prefer_const_declarations
    final path = r'/waitFor';

    // ignore: prefer_final_locals
    Object? postBody = waitForConditions;

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

  /// Wait for an email to match the provided filter conditions such as subject contains keyword.
  ///
  /// Generic waitFor method that will wait until an inbox meets given conditions or return immediately if already met
  ///
  /// Parameters:
  ///
  /// * [WaitForConditions] waitForConditions (required):
  Future<List<EmailPreview>?> waitFor(WaitForConditions waitForConditions,) async {
    final response = await waitForWithHttpInfo(waitForConditions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList();

    }
    return null;
  }

  /// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] count (required):
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Response> waitForEmailCountWithHttpInfo(String inboxId, int count, { int? timeout, bool? unreadOnly, DateTime? before, DateTime? since, String? sort, int? delay, }) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForEmailCount';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
      queryParams.addAll(_queryParams('', 'count', count));
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (delay != null) {
      queryParams.addAll(_queryParams('', 'delay', delay));
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

  /// Wait for and return count number of emails. Hold connection until inbox count matches expected or timeout occurs
  ///
  /// If inbox contains count or more emails at time of request then return count worth of emails. If not wait until the count is reached and return those or return an error if timeout is exceeded.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] count (required):
  ///   Number of emails to wait for. Must be greater that 1
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<List<EmailPreview>?> waitForEmailCount(String inboxId, int count, { int? timeout, bool? unreadOnly, DateTime? before, DateTime? since, String? sort, int? delay, }) async {
    final response = await waitForEmailCountWithHttpInfo(inboxId, count,  timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList();

    }
    return null;
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
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were before after the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Response> waitForLatestEmailWithHttpInfo({ String? inboxId, int? timeout, bool? unreadOnly, DateTime? before, DateTime? since, String? sort, int? delay, }) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForLatestEmail';

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
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (delay != null) {
      queryParams.addAll(_queryParams('', 'delay', delay));
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
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were before after the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Email?> waitForLatestEmail({ String? inboxId, int? timeout, bool? unreadOnly, DateTime? before, DateTime? since, String? sort, int? delay, }) async {
    final response = await waitForLatestEmailWithHttpInfo( inboxId: inboxId, timeout: timeout, unreadOnly: unreadOnly, before: before, since: since, sort: sort, delay: delay, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
    
    }
    return null;
  }

  /// Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
  ///
  /// Wait until a phone number meets given conditions or return immediately if already met
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WaitForSingleSmsOptions] waitForSingleSmsOptions (required):
  Future<Response> waitForLatestSmsWithHttpInfo(WaitForSingleSmsOptions waitForSingleSmsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForLatestSms';

    // ignore: prefer_final_locals
    Object? postBody = waitForSingleSmsOptions;

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

  /// Wait for the latest SMS message to match the provided filter conditions such as body contains keyword.
  ///
  /// Wait until a phone number meets given conditions or return immediately if already met
  ///
  /// Parameters:
  ///
  /// * [WaitForSingleSmsOptions] waitForSingleSmsOptions (required):
  Future<SmsDto?> waitForLatestSms(WaitForSingleSmsOptions waitForSingleSmsOptions,) async {
    final response = await waitForLatestSmsWithHttpInfo(waitForSingleSmsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SmsDto',) as SmsDto;
    
    }
    return null;
  }

  /// Wait or return list of emails that match simple matching patterns
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] count (required):
  ///   Number of emails to wait for. Must be greater or equal to 1
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<Response> waitForMatchingEmailsWithHttpInfo(String inboxId, int count, MatchOptions matchOptions, { DateTime? before, DateTime? since, String? sort, int? delay, int? timeout, bool? unreadOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForMatchingEmails';

    // ignore: prefer_final_locals
    Object? postBody = matchOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
      queryParams.addAll(_queryParams('', 'count', count));
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (delay != null) {
      queryParams.addAll(_queryParams('', 'delay', delay));
    }
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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

  /// Wait or return list of emails that match simple matching patterns
  ///
  /// Perform a search of emails in an inbox with the given patterns. If results match expected count then return or else retry the search until results are found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are fetching emails from
  ///
  /// * [int] count (required):
  ///   Number of emails to wait for. Must be greater or equal to 1
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  Future<List<EmailPreview>?> waitForMatchingEmails(String inboxId, int count, MatchOptions matchOptions, { DateTime? before, DateTime? since, String? sort, int? delay, int? timeout, bool? unreadOnly, }) async {
    final response = await waitForMatchingEmailsWithHttpInfo(inboxId, count, matchOptions,  before: before, since: since, sort: sort, delay: delay, timeout: timeout, unreadOnly: unreadOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList();

    }
    return null;
  }

  /// Wait for or return the first email that matches provided MatchOptions array
  ///
  /// Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are matching an email for
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Response> waitForMatchingFirstEmailWithHttpInfo(String inboxId, MatchOptions matchOptions, { int? timeout, bool? unreadOnly, DateTime? since, DateTime? before, String? sort, int? delay, }) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForMatchingFirstEmail';

    // ignore: prefer_final_locals
    Object? postBody = matchOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (delay != null) {
      queryParams.addAll(_queryParams('', 'delay', delay));
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

  /// Wait for or return the first email that matches provided MatchOptions array
  ///
  /// Perform a search of emails in an inbox with the given patterns. If a result if found then return or else retry the search until a result is found or timeout is reached. Match options allow simple CONTAINS or EQUALS filtering on SUBJECT, TO, BCC, CC, and FROM. See the `MatchOptions` object for options. An example payload is `{ matches: [{field: 'SUBJECT',should:'CONTAIN',value:'needle'}] }`. You can use an array of matches and they will be applied sequentially to filter out emails. If you want to perform matches and extractions of content using Regex patterns see the EmailController `getEmailContentMatch` method.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of the inbox we are matching an email for
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [int] timeout:
  ///   Max milliseconds to wait
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread only
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Email?> waitForMatchingFirstEmail(String inboxId, MatchOptions matchOptions, { int? timeout, bool? unreadOnly, DateTime? since, DateTime? before, String? sort, int? delay, }) async {
    final response = await waitForMatchingFirstEmailWithHttpInfo(inboxId, matchOptions,  timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
    
    }
    return null;
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
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Response> waitForNthEmailWithHttpInfo({ String? inboxId, int? index, int? timeout, bool? unreadOnly, DateTime? since, DateTime? before, String? sort, int? delay, }) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForNthEmail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (index != null) {
      queryParams.addAll(_queryParams('', 'index', index));
    }
    if (timeout != null) {
      queryParams.addAll(_queryParams('', 'timeout', timeout));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (delay != null) {
      queryParams.addAll(_queryParams('', 'delay', delay));
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
  ///
  /// * [DateTime] since:
  ///   Filter for emails that were received after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter for emails that were received before the given timestamp
  ///
  /// * [String] sort:
  ///   Sort direction
  ///
  /// * [int] delay:
  ///   Max milliseconds delay between calls
  Future<Email?> waitForNthEmail({ String? inboxId, int? index, int? timeout, bool? unreadOnly, DateTime? since, DateTime? before, String? sort, int? delay, }) async {
    final response = await waitForNthEmailWithHttpInfo( inboxId: inboxId, index: index, timeout: timeout, unreadOnly: unreadOnly, since: since, before: before, sort: sort, delay: delay, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
    
    }
    return null;
  }

  /// Wait for an SMS message to match the provided filter conditions such as body contains keyword.
  ///
  /// Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [WaitForSmsConditions] waitForSmsConditions (required):
  Future<Response> waitForSmsWithHttpInfo(WaitForSmsConditions waitForSmsConditions,) async {
    // ignore: prefer_const_declarations
    final path = r'/waitForSms';

    // ignore: prefer_final_locals
    Object? postBody = waitForSmsConditions;

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

  /// Wait for an SMS message to match the provided filter conditions such as body contains keyword.
  ///
  /// Generic waitFor method that will wait until a phone number meets given conditions or return immediately if already met
  ///
  /// Parameters:
  ///
  /// * [WaitForSmsConditions] waitForSmsConditions (required):
  Future<List<SmsPreview>?> waitForSms(WaitForSmsConditions waitForSmsConditions,) async {
    final response = await waitForSmsWithHttpInfo(waitForSmsConditions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SmsPreview>') as List)
        .cast<SmsPreview>()
        .toList();

    }
    return null;
  }
}
