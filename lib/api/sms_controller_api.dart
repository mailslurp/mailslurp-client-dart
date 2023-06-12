//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SmsControllerApi {
  SmsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> deleteSmsMessageWithHttpInfo(String smsId) async {
    // Verify required params are set.
    if (smsId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: smsId');
    }

    final path = r'/sms/{smsId}'
      .replaceAll('{' + 'smsId' + '}', smsId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete SMS message.
  ///
  /// Delete an SMS message
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<void> deleteSmsMessage(String smsId) async {
    final response = await deleteSmsMessageWithHttpInfo(smsId);
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
  Future<Response> deleteSmsMessagesWithHttpInfo({ String phoneNumberId }) async {
    // Verify required params are set.

    final path = r'/sms';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumberId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'phoneNumberId', phoneNumberId));
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete all SMS messages
  ///
  /// Delete all SMS messages or all messages for a given phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId:
  Future<void> deleteSmsMessages({ String phoneNumberId }) async {
    final response = await deleteSmsMessagesWithHttpInfo( phoneNumberId: phoneNumberId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> getSmsMessageWithHttpInfo(String smsId) async {
    // Verify required params are set.
    if (smsId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: smsId');
    }

    final path = r'/sms/{smsId}'
      .replaceAll('{' + 'smsId' + '}', smsId.toString());

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

  /// Get SMS content including body. Expects SMS to exist by ID. For SMS that may not have arrived yet use the WaitForController.
  ///
  /// Returns a SMS summary object with content.
  ///
  /// Parameters:
  ///
  /// * [String] smsId (required):
  Future<SmsDto> getSmsMessage(String smsId) async {
    final response = await getSmsMessageWithHttpInfo(smsId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SmsDto',) as SmsDto;
        }
    return Future<SmsDto>.value(null);
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
  Future<Response> getSmsMessagesPaginatedWithHttpInfo({ String phoneNumber, int page, int size, String sort, bool unreadOnly, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sms';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (phoneNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'phoneNumber', phoneNumber));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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
  Future<PageSmsProjection> getSmsMessagesPaginated({ String phoneNumber, int page, int size, String sort, bool unreadOnly, DateTime since, DateTime before }) async {
    final response = await getSmsMessagesPaginatedWithHttpInfo( phoneNumber: phoneNumber, page: page, size: size, sort: sort, unreadOnly: unreadOnly, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSmsProjection',) as PageSmsProjection;
        }
    return Future<PageSmsProjection>.value(null);
  }

  /// Get unread SMS count
  ///
  /// Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUnreadSmsCountWithHttpInfo() async {
    final path = r'/sms/unreadCount';

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

  /// Get unread SMS count
  ///
  /// Get number of SMS unread. Unread means has not been viewed in dashboard or returned in an email API response
  Future<UnreadCount> getUnreadSmsCount() async {
    final response = await getUnreadSmsCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnreadCount',) as UnreadCount;
        }
    return Future<UnreadCount>.value(null);
  }
}
