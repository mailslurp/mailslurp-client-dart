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

  /// Get all SMS messages in all phone numbers in paginated form. .
  ///
  /// By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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
  /// * [bool] unreadOnly:
  ///   Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  Future<Response> getSmsMessagesPaginatedWithHttpInfo({ String? phoneNumber, int? page, int? size, String? sort, bool? unreadOnly, DateTime? since, DateTime? before, }) async {
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
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
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

  /// Get all SMS messages in all phone numbers in paginated form. .
  ///
  /// By default returns all SMS messages across all phone numbers sorted by ascending created at date. Responses are paginated. You can restrict results to a list of phone number IDs. You can also filter out read messages
  ///
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
  /// * [bool] unreadOnly:
  ///   Optional filter for unread SMS only. All SMS are considered unread until they are viewed in the dashboard or requested directly
  ///
  /// * [DateTime] since:
  ///   Optional filter SMSs received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter SMSs received before given date time
  Future<PageSmsProjection?> getSmsMessagesPaginated({ String? phoneNumber, int? page, int? size, String? sort, bool? unreadOnly, DateTime? since, DateTime? before, }) async {
    final response = await getSmsMessagesPaginatedWithHttpInfo( phoneNumber: phoneNumber, page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before, );
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
}
