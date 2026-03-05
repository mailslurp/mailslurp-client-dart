//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MissedSmsControllerApi {
  MissedSmsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get all missed SMS messages in paginated format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumber:
  ///   Optional receiving phone number to filter missed SMS for
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
  /// * [DateTime] since:
  ///   Optional filter missed SMS after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter missed SMS before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<Response> getAllMissedSmsMessagesWithHttpInfo({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-sms';

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

  /// Get all missed SMS messages in paginated format
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumber:
  ///   Optional receiving phone number to filter missed SMS for
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
  /// * [DateTime] since:
  ///   Optional filter missed SMS after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter missed SMS before given date time
  ///
  /// * [String] search:
  ///   Optional search filter
  Future<PageMissedSmsProjection?> getAllMissedSmsMessages({ String? phoneNumber, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    final response = await getAllMissedSmsMessagesWithHttpInfo( phoneNumber: phoneNumber, page: page, size: size, sort: sort, since: since, before: before, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageMissedSmsProjection',) as PageMissedSmsProjection;
    
    }
    return null;
  }

  /// Get missed SMS count
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getMissedSmsCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/missed-sms/count';

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

  /// Get missed SMS count
  Future<CountDto?> getMissedSmsCount() async {
    final response = await getMissedSmsCountWithHttpInfo();
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

  /// Get missed SMS content
  ///
  /// Returns a missed SMS with full content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] missedSmsId (required):
  Future<Response> getMissedSmsMessageWithHttpInfo(String missedSmsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/missed-sms/{missedSmsId}'
      .replaceAll('{missedSmsId}', missedSmsId);

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

  /// Get missed SMS content
  ///
  /// Returns a missed SMS with full content.
  ///
  /// Parameters:
  ///
  /// * [String] missedSmsId (required):
  Future<MissedSmsDto?> getMissedSmsMessage(String missedSmsId,) async {
    final response = await getMissedSmsMessageWithHttpInfo(missedSmsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MissedSmsDto',) as MissedSmsDto;
    
    }
    return null;
  }
}
