//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxReplierControllerApi {
  InboxReplierControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox replier
  ///
  /// Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxReplierOptions] createInboxReplierOptions (required):
  Future<Response> createNewInboxReplierWithHttpInfo(CreateInboxReplierOptions createInboxReplierOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers';

    // ignore: prefer_final_locals
    Object? postBody = createInboxReplierOptions;

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

  /// Create an inbox replier
  ///
  /// Create a new inbox rule for reply toing, blocking, and allowing emails when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [CreateInboxReplierOptions] createInboxReplierOptions (required):
  Future<InboxReplierDto?> createNewInboxReplier(CreateInboxReplierOptions createInboxReplierOptions,) async {
    final response = await createNewInboxReplierWithHttpInfo(createInboxReplierOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxReplierDto',) as InboxReplierDto;
    
    }
    return null;
  }

  /// Delete an inbox replier
  ///
  /// Delete inbox replier
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  Future<Response> deleteInboxReplierWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers/{id}'
      .replaceAll('{id}', id);

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

  /// Delete an inbox replier
  ///
  /// Delete inbox replier
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  Future<void> deleteInboxReplier(String id,) async {
    final response = await deleteInboxReplierWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inbox repliers
  ///
  /// Delete inbox repliers. Accepts optional inboxId filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach replier to
  Future<Response> deleteInboxRepliersWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Delete inbox repliers
  ///
  /// Delete inbox repliers. Accepts optional inboxId filter.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach replier to
  Future<void> deleteInboxRepliers({ String? inboxId, }) async {
    final response = await deleteInboxRepliersWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an inbox replier
  ///
  /// Get inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  Future<Response> getInboxReplierWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers/{id}'
      .replaceAll('{id}', id);

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

  /// Get an inbox replier
  ///
  /// Get inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  Future<InboxReplierDto?> getInboxReplier(String id,) async {
    final response = await getInboxReplierWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxReplierDto',) as InboxReplierDto;
    
    }
    return null;
  }

  /// Get an inbox replier event list
  ///
  /// Get inbox ruleset events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  ///
  /// * [int] page:
  ///   Optional page index in inbox replier event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox replier event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxReplierEventsWithHttpInfo(String id, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers/{id}/events'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Get an inbox replier event list
  ///
  /// Get inbox ruleset events
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  ///
  /// * [int] page:
  ///   Optional page index in inbox replier event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox replier event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxReplierEvents?> getInboxReplierEvents(String id, { int? page, int? size, String? sort, }) async {
    final response = await getInboxReplierEventsWithHttpInfo(id,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxReplierEvents',) as PageInboxReplierEvents;
    
    }
    return null;
  }

  /// List inbox repliers
  ///
  /// List all repliers attached to an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get repliers from
  ///
  /// * [int] page:
  ///   Optional page index in inbox replier list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox replier list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getInboxRepliersWithHttpInfo({ String? inboxId, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// List inbox repliers
  ///
  /// List all repliers attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get repliers from
  ///
  /// * [int] page:
  ///   Optional page index in inbox replier list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox replier list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageInboxReplierDto?> getInboxRepliers({ String? inboxId, int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getInboxRepliersWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxReplierDto',) as PageInboxReplierDto;
    
    }
    return null;
  }

  /// Update an inbox replier
  ///
  /// Update inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  ///
  /// * [UpdateInboxReplierOptions] updateInboxReplierOptions (required):
  Future<Response> updateInboxReplierWithHttpInfo(String id, UpdateInboxReplierOptions updateInboxReplierOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/repliers/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateInboxReplierOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Update an inbox replier
  ///
  /// Update inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox replier
  ///
  /// * [UpdateInboxReplierOptions] updateInboxReplierOptions (required):
  Future<InboxReplierDto?> updateInboxReplier(String id, UpdateInboxReplierOptions updateInboxReplierOptions,) async {
    final response = await updateInboxReplierWithHttpInfo(id, updateInboxReplierOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxReplierDto',) as InboxReplierDto;
    
    }
    return null;
  }
}
