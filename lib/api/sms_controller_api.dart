//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SmsControllerApi {
  SmsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete sent SMS message.
  ///
  /// Delete a sent SMS message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sentSmsId (required):
  Future<Response> deleteSentSmsMessageWithHttpInfo(String sentSmsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/sent/{sentSmsId}'
      .replaceAll('{sentSmsId}', sentSmsId);

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

  /// Delete sent SMS message.
  ///
  /// Delete a sent SMS message
  ///
  /// Parameters:
  ///
  /// * [String] sentSmsId (required):
  Future<void> deleteSentSmsMessage(String sentSmsId,) async {
    final response = await deleteSentSmsMessageWithHttpInfo(sentSmsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all sent SMS messages
  ///
  /// Delete all sent SMS messages or all messages for a given phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId:
  Future<Response> deleteSentSmsMessagesWithHttpInfo({ String? phoneNumberId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/sent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumberId != null) {
      queryParams.addAll(_queryParams('', 'phoneNumberId', phoneNumberId));
    }

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

  /// Delete all sent SMS messages
  ///
  /// Delete all sent SMS messages or all messages for a given phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId:
  Future<void> deleteSentSmsMessages({ String? phoneNumberId, }) async {
    final response = await deleteSentSmsMessagesWithHttpInfo( phoneNumberId: phoneNumberId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete SMS message.
  ///
  /// Delete an SMS message
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<Response> deleteSmsMessageWithHttpInfo(String smsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/{smsId}'
      .replaceAll('{smsId}', smsId);

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

  /// Delete SMS message.
  ///
  /// Delete an SMS message
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<void> deleteSmsMessage(String smsId,) async {
    final response = await deleteSmsMessageWithHttpInfo(smsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all SMS messages
  ///
  /// Delete all SMS messages or all messages for a given phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId:
  Future<Response> deleteSmsMessagesWithHttpInfo({ String? phoneNumberId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sms';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumberId != null) {
      queryParams.addAll(_queryParams('', 'phoneNumberId', phoneNumberId));
    }

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

  /// Delete all SMS messages
  ///
  /// Delete all SMS messages or all messages for a given phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId:
  Future<void> deleteSmsMessages({ String? phoneNumberId, }) async {
    final response = await deleteSmsMessagesWithHttpInfo( phoneNumberId: phoneNumberId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /sms' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] phoneNumber:
  ///   Optional receiving phone number to filter SMS messages for
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [List<String>] include:
  ///   Optional list of IDs to include in result
  Future<Response> getAllSmsMessagesWithHttpInfo({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, bool? favourite, List<String>? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sms';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumber != null) {
      queryParams.addAll(_queryParams('', 'phoneNumber', phoneNumber));
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
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('multi', 'include', include));
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
  /// * [String] phoneNumber:
  ///   Optional receiving phone number to filter SMS messages for
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [List<String>] include:
  ///   Optional list of IDs to include in result
  Future<PageSmsProjection?> getAllSmsMessages({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, bool? favourite, List<String>? include, }) async {
    final response = await getAllSmsMessagesWithHttpInfo( phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search, favourite: favourite, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSmsProjection',) as PageSmsProjection;
    
    }
    return null;
  }

  /// Get reply for an SMS message
  ///
  /// Get reply for an SMS message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<Response> getReplyForSmsMessageWithHttpInfo(String smsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/{smsId}/reply'
      .replaceAll('{smsId}', smsId);

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

  /// Get reply for an SMS message
  ///
  /// Get reply for an SMS message.
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<ReplyForSms?> getReplyForSmsMessage(String smsId,) async {
    final response = await getReplyForSmsMessageWithHttpInfo(smsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReplyForSms',) as ReplyForSms;
    
    }
    return null;
  }

  /// Get sent SMS count
  ///
  /// Get number of sent SMS
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSentSmsCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sms/sent/count';

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

  /// Get sent SMS count
  ///
  /// Get number of sent SMS
  Future<CountDto?> getSentSmsCount() async {
    final response = await getSentSmsCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
    
    }
    return null;
  }

  /// Get sent SMS content including body. Expects sent SMS to exist by ID.
  ///
  /// Returns an SMS summary object with content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sentSmsId (required):
  Future<Response> getSentSmsMessageWithHttpInfo(String sentSmsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/sent/{sentSmsId}'
      .replaceAll('{sentSmsId}', sentSmsId);

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

  /// Get sent SMS content including body. Expects sent SMS to exist by ID.
  ///
  /// Returns an SMS summary object with content.
  ///
  /// Parameters:
  ///
  /// * [String] sentSmsId (required):
  Future<SentSmsDto?> getSentSmsMessage(String sentSmsId,) async {
    final response = await getSentSmsMessageWithHttpInfo(sentSmsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Get all SMS messages in all phone numbers in paginated form. .
  ///
  /// By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumber:
  ///   Optional phone number to filter sent SMS messages for
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<Response> getSentSmsMessagesPaginatedWithHttpInfo({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/sent';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumber != null) {
      queryParams.addAll(_queryParams('', 'phoneNumber', phoneNumber));
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
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// Get all SMS messages in all phone numbers in paginated form. .
  ///
  /// By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumber:
  ///   Optional phone number to filter sent SMS messages for
  ///
  /// * [int] page:
  ///   Optional page index in SMS list pagination
  ///
  /// * [int] size:
  ///   Optional page size in SMS list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<PageSentSmsProjection?> getSentSmsMessagesPaginated({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    final response = await getSentSmsMessagesPaginatedWithHttpInfo( phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentSmsProjection',) as PageSentSmsProjection;
    
    }
    return null;
  }

  /// Get SMS count
  ///
  /// Get number of SMS
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSmsCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sms/count';

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

  /// Get SMS count
  ///
  /// Get number of SMS
  Future<CountDto?> getSmsCount() async {
    final response = await getSmsCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
    
    }
    return null;
  }

  /// Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
  ///
  /// Returns a SMS summary object with content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<Response> getSmsMessageWithHttpInfo(String smsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/{smsId}'
      .replaceAll('{smsId}', smsId);

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

  /// Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
  ///
  /// Returns a SMS summary object with content.
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<SmsDto?> getSmsMessage(String smsId,) async {
    final response = await getSmsMessageWithHttpInfo(smsId,);
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

  /// Get unread SMS count
  ///
  /// Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUnreadSmsCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/sms/unreadCount';

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

  /// Get unread SMS count
  ///
  /// Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
  Future<UnreadCount?> getUnreadSmsCount() async {
    final response = await getUnreadSmsCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnreadCount',) as UnreadCount;
    
    }
    return null;
  }

  /// Send a reply to a received SMS message. Replies are sent from the receiving number.
  ///
  /// Reply to an SMS message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  ///
  /// * [SmsReplyOptions] smsReplyOptions (required):
  Future<Response> replyToSmsMessageWithHttpInfo(String smsId, SmsReplyOptions smsReplyOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/{smsId}/reply'
      .replaceAll('{smsId}', smsId);

    // ignore: prefer_final_locals
    Object? postBody = smsReplyOptions;

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

  /// Send a reply to a received SMS message. Replies are sent from the receiving number.
  ///
  /// Reply to an SMS message.
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  ///
  /// * [SmsReplyOptions] smsReplyOptions (required):
  Future<SentSmsDto?> replyToSmsMessage(String smsId, SmsReplyOptions smsReplyOptions,) async {
    final response = await replyToSmsMessageWithHttpInfo(smsId, smsReplyOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /sms/send' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  ///
  /// * [String] fromPhoneNumber:
  ///   Phone number to send from in E.164 format
  ///
  /// * [String] fromPhoneId:
  ///   Phone number ID to send from in UUID form
  Future<Response> sendSmsWithHttpInfo(SmsSendOptions smsSendOptions, { String? fromPhoneNumber, String? fromPhoneId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/send';

    // ignore: prefer_final_locals
    Object? postBody = smsSendOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fromPhoneNumber != null) {
      queryParams.addAll(_queryParams('', 'fromPhoneNumber', fromPhoneNumber));
    }
    if (fromPhoneId != null) {
      queryParams.addAll(_queryParams('', 'fromPhoneId', fromPhoneId));
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

  /// Parameters:
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  ///
  /// * [String] fromPhoneNumber:
  ///   Phone number to send from in E.164 format
  ///
  /// * [String] fromPhoneId:
  ///   Phone number ID to send from in UUID form
  Future<SentSmsDto?> sendSms(SmsSendOptions smsSendOptions, { String? fromPhoneNumber, String? fromPhoneId, }) async {
    final response = await sendSmsWithHttpInfo(smsSendOptions,  fromPhoneNumber: fromPhoneNumber, fromPhoneId: fromPhoneId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /sms/{smsId}/favourite' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] smsId (required):
  ///   ID of SMS to set favourite state
  ///
  /// * [bool] favourited (required):
  Future<Response> setSmsFavouritedWithHttpInfo(String smsId, bool favourited,) async {
    // ignore: prefer_const_declarations
    final path = r'/sms/{smsId}/favourite'
      .replaceAll('{smsId}', smsId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'favourited', favourited));

    const contentTypes = <String>[];


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

  /// Parameters:
  ///
  /// * [String] smsId (required):
  ///   ID of SMS to set favourite state
  ///
  /// * [bool] favourited (required):
  Future<SmsDto?> setSmsFavourited(String smsId, bool favourited,) async {
    final response = await setSmsFavouritedWithHttpInfo(smsId, favourited,);
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
}
