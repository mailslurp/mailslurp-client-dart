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
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllMissedEmailsWithHttpInfo({ int page, String searchFilter, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/missed-emails';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
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
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageMissedEmailProjection> getAllMissedEmails({ int page, String searchFilter, int size, String sort }) async {
    final response = await getAllMissedEmailsWithHttpInfo( page: page, searchFilter: searchFilter, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageMissedEmailProjection') as PageMissedEmailProjection;
        }
    return Future<PageMissedEmailProjection>.value(null);
  }

  /// Get MissedEmail
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] missedEmailId (required):
  ///   MissedEmailId
  Future<Response> getMissedEmailWithHttpInfo(String missedEmailId) async {
    // Verify required params are set.
    if (missedEmailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: missedEmailId');
    }

    final path = r'/missed-emails/{MissedEmailId}'
      .replaceAll('{' + 'MissedEmailId' + '}', missedEmailId.toString());

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
  ///   MissedEmailId
  Future<MissedEmail> getMissedEmail(String missedEmailId) async {
    final response = await getMissedEmailWithHttpInfo(missedEmailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'MissedEmail') as MissedEmail;
        }
    return Future<MissedEmail>.value(null);
  }
}
