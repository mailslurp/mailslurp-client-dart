//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BulkActionsControllerApi {
  BulkActionsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Bulk create Inboxes (email addresses)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] count (required):
  ///   Number of inboxes to be created in bulk
  Future<Response> bulkCreateInboxesWithHttpInfo(int count,) async {
    // ignore: prefer_const_declarations
    final path = r'/bulk/inboxes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'count', count));

    const contentTypes = <String>[];


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

  /// Bulk create Inboxes (email addresses)
  ///
  /// Parameters:
  ///
  /// * [int] count (required):
  ///   Number of inboxes to be created in bulk
  Future<List<InboxDto>?> bulkCreateInboxes(int count,) async {
    final response = await bulkCreateInboxesWithHttpInfo(count,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InboxDto>') as List)
        .cast<InboxDto>()
        .toList();

    }
    return null;
  }

  /// Bulk Delete Inboxes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<Response> bulkDeleteInboxesWithHttpInfo(List<String> requestBody,) async {
    // ignore: prefer_const_declarations
    final path = r'/bulk/inboxes';

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Bulk Delete Inboxes
  ///
  /// Parameters:
  ///
  /// * [List<String>] requestBody (required):
  Future<void> bulkDeleteInboxes(List<String> requestBody,) async {
    final response = await bulkDeleteInboxesWithHttpInfo(requestBody,);
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
  Future<Response> bulkSendEmailsWithHttpInfo(BulkSendEmailOptions bulkSendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/bulk/send';

    // ignore: prefer_final_locals
    Object? postBody = bulkSendEmailOptions;

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

  /// Bulk Send Emails
  ///
  /// Parameters:
  ///
  /// * [BulkSendEmailOptions] bulkSendEmailOptions (required):
  Future<void> bulkSendEmails(BulkSendEmailOptions bulkSendEmailOptions,) async {
    final response = await bulkSendEmailsWithHttpInfo(bulkSendEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
