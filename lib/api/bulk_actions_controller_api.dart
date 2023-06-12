//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BulkActionsControllerApi {
  BulkActionsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Bulk create Inboxes (email addresses)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] count (required):
  ///   Number of inboxes to be created in bulk
  Future<Response> bulkCreateInboxesWithHttpInfo(int count) async {
    // Verify required params are set.
    if (count == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: count');
    }

    final path = r'/bulk/inboxes';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'count', count));

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Bulk create Inboxes (email addresses)
  ///
  /// Parameters:
  ///
  /// * [int] count (required):
  ///   Number of inboxes to be created in bulk
  Future<List<InboxDto>> bulkCreateInboxes(int count) async {
    final response = await bulkCreateInboxesWithHttpInfo(count);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<InboxDto>') as List)
        .cast<InboxDto>()
        .toList(growable: false);
    }
    return Future<List<InboxDto>>.value(null);
  }

  /// Bulk Delete Inboxes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> bulkDeleteInboxesWithHttpInfo(List<String> requestBody) async {
    // Verify required params are set.
    if (requestBody == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: requestBody');
    }

    final path = r'/bulk/inboxes';

    Object postBody = requestBody;

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Bulk Delete Inboxes
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<void> bulkDeleteInboxes(List<String> requestBody) async {
    final response = await bulkDeleteInboxesWithHttpInfo(requestBody);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Bulk Send Emails
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BulkSendEmailOptions] bulkSendEmailOptions (required):
  Future<Response> bulkSendEmailsWithHttpInfo(BulkSendEmailOptions bulkSendEmailOptions) async {
    // Verify required params are set.
    if (bulkSendEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: bulkSendEmailOptions');
    }

    final path = r'/bulk/send';

    Object postBody = bulkSendEmailOptions;

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

  /// Bulk Send Emails
  ///
  /// Parameters:
  ///
  /// * [BulkSendEmailOptions] bulkSendEmailOptions (required):
  Future<void> bulkSendEmails(BulkSendEmailOptions bulkSendEmailOptions) async {
    final response = await bulkSendEmailsWithHttpInfo(bulkSendEmailOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
