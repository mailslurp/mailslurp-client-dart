//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExportControllerApi {
  ExportControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Export inboxes link callable via browser
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exportType (required):
  ///
  /// * [String] apiKey (required):
  ///
  /// * [String] outputFormat (required):
  ///
  /// * [String] filter:
  ///
  /// * [String] listSeparatorToken:
  ///
  /// * [bool] excludePreviouslyExported:
  ///
  /// * [DateTime] createdEarliestTime:
  ///
  /// * [DateTime] createdOldestTime:
  Future<Response> exportEntitiesWithHttpInfo(String exportType, String apiKey, String outputFormat, { String? filter, String? listSeparatorToken, bool? excludePreviouslyExported, DateTime? createdEarliestTime, DateTime? createdOldestTime, }) async {
    // ignore: prefer_const_declarations
    final path = r'/export';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'exportType', exportType));
      queryParams.addAll(_queryParams('', 'apiKey', apiKey));
      queryParams.addAll(_queryParams('', 'outputFormat', outputFormat));
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
    }
    if (listSeparatorToken != null) {
      queryParams.addAll(_queryParams('', 'listSeparatorToken', listSeparatorToken));
    }
    if (excludePreviouslyExported != null) {
      queryParams.addAll(_queryParams('', 'excludePreviouslyExported', excludePreviouslyExported));
    }
    if (createdEarliestTime != null) {
      queryParams.addAll(_queryParams('', 'createdEarliestTime', createdEarliestTime));
    }
    if (createdOldestTime != null) {
      queryParams.addAll(_queryParams('', 'createdOldestTime', createdOldestTime));
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

  /// Export inboxes link callable via browser
  ///
  /// Parameters:
  ///
  /// * [String] exportType (required):
  ///
  /// * [String] apiKey (required):
  ///
  /// * [String] outputFormat (required):
  ///
  /// * [String] filter:
  ///
  /// * [String] listSeparatorToken:
  ///
  /// * [bool] excludePreviouslyExported:
  ///
  /// * [DateTime] createdEarliestTime:
  ///
  /// * [DateTime] createdOldestTime:
  Future<String?> exportEntities(String exportType, String apiKey, String outputFormat, { String? filter, String? listSeparatorToken, bool? excludePreviouslyExported, DateTime? createdEarliestTime, DateTime? createdOldestTime, }) async {
    final response = await exportEntitiesWithHttpInfo(exportType, apiKey, outputFormat,  filter: filter, listSeparatorToken: listSeparatorToken, excludePreviouslyExported: excludePreviouslyExported, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get export link
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] exportType (required):
  ///
  /// * [ExportOptions] exportOptions (required):
  ///
  /// * [String] apiKey:
  Future<Response> getExportLinkWithHttpInfo(String exportType, ExportOptions exportOptions, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/export';

    // ignore: prefer_final_locals
    Object? postBody = exportOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'exportType', exportType));
    if (apiKey != null) {
      queryParams.addAll(_queryParams('', 'apiKey', apiKey));
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

  /// Get export link
  ///
  /// Parameters:
  ///
  /// * [String] exportType (required):
  ///
  /// * [ExportOptions] exportOptions (required):
  ///
  /// * [String] apiKey:
  Future<ExportLink?> getExportLink(String exportType, ExportOptions exportOptions, { String? apiKey, }) async {
    final response = await getExportLinkWithHttpInfo(exportType, exportOptions,  apiKey: apiKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportLink',) as ExportLink;
    
    }
    return null;
  }
}
