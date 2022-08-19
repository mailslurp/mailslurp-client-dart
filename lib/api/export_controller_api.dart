//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ExportControllerApi {
  ExportControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> exportEntitiesWithHttpInfo(String exportType, String apiKey, String outputFormat, { String filter, String listSeparatorToken, bool excludePreviouslyExported, DateTime createdEarliestTime, DateTime createdOldestTime }) async {
    // Verify required params are set.
    if (exportType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exportType');
    }
    if (apiKey == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: apiKey');
    }
    if (outputFormat == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: outputFormat');
    }

    final path = r'/export';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'exportType', exportType));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'apiKey', apiKey));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'outputFormat', outputFormat));
    if (filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'filter', filter));
    }
    if (listSeparatorToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'listSeparatorToken', listSeparatorToken));
    }
    if (excludePreviouslyExported != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'excludePreviouslyExported', excludePreviouslyExported));
    }
    if (createdEarliestTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'createdEarliestTime', createdEarliestTime));
    }
    if (createdOldestTime != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'createdOldestTime', createdOldestTime));
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
  Future<List<String>> exportEntities(String exportType, String apiKey, String outputFormat, { String filter, String listSeparatorToken, bool excludePreviouslyExported, DateTime createdEarliestTime, DateTime createdOldestTime }) async {
    final response = await exportEntitiesWithHttpInfo(exportType, apiKey, outputFormat,  filter: filter, listSeparatorToken: listSeparatorToken, excludePreviouslyExported: excludePreviouslyExported, createdEarliestTime: createdEarliestTime, createdOldestTime: createdOldestTime );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
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
  Future<Response> getExportLinkWithHttpInfo(String exportType, ExportOptions exportOptions, { String apiKey }) async {
    // Verify required params are set.
    if (exportType == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exportType');
    }
    if (exportOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: exportOptions');
    }

    final path = r'/export';

    Object postBody = exportOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'exportType', exportType));
    if (apiKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'apiKey', apiKey));
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

  /// Get export link
  ///
  /// Parameters:
  ///
  /// * [String] exportType (required):
  ///
  /// * [ExportOptions] exportOptions (required):
  ///
  /// * [String] apiKey:
  Future<ExportLink> getExportLink(String exportType, ExportOptions exportOptions, { String apiKey }) async {
    final response = await getExportLinkWithHttpInfo(exportType, exportOptions,  apiKey: apiKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportLink',) as ExportLink;
        }
    return Future<ExportLink>.value(null);
  }
}
