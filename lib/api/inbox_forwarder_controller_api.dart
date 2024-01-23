//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxForwarderControllerApi {
  InboxForwarderControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox forwarder
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox id to attach forwarder to
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  Future<Response> createNewInboxForwarderWithHttpInfo(String inboxId, CreateInboxForwarderOptions createInboxForwarderOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders';

    // ignore: prefer_final_locals
    Object? postBody = createInboxForwarderOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Create an inbox forwarder
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox id to attach forwarder to
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  Future<InboxForwarderDto?> createNewInboxForwarder(String inboxId, CreateInboxForwarderOptions createInboxForwarderOptions,) async {
    final response = await createNewInboxForwarderWithHttpInfo(inboxId, createInboxForwarderOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderDto',) as InboxForwarderDto;
    
    }
    return null;
  }

  /// Delete an inbox forwarder
  ///
  /// Delete inbox forwarder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<Response> deleteInboxForwarderWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}'
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

  /// Delete an inbox forwarder
  ///
  /// Delete inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<void> deleteInboxForwarder(String id,) async {
    final response = await deleteInboxForwarderWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inbox forwarders
  ///
  /// Delete inbox forwarders. Accepts optional inboxId filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach forwarder to
  Future<Response> deleteInboxForwardersWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders';

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

  /// Delete inbox forwarders
  ///
  /// Delete inbox forwarders. Accepts optional inboxId filter.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach forwarder to
  Future<void> deleteInboxForwarders({ String? inboxId, }) async {
    final response = await deleteInboxForwardersWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all inbox forwarder events
  ///
  /// Get all inbox forwarder events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllInboxForwarderEventsWithHttpInfo({ int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/events';

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

  /// Get all inbox forwarder events
  ///
  /// Get all inbox forwarder events
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxForwarderEvents?> getAllInboxForwarderEvents({ int? page, int? size, String? sort, }) async {
    final response = await getAllInboxForwarderEventsWithHttpInfo( page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxForwarderEvents',) as PageInboxForwarderEvents;
    
    }
    return null;
  }

  /// Get a forwarder event
  ///
  /// Get forwarder event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///   ID of inbox forwarder event
  Future<Response> getForwarderEventWithHttpInfo(String eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/events/{eventId}'
      .replaceAll('{eventId}', eventId);

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

  /// Get a forwarder event
  ///
  /// Get forwarder event
  ///
  /// Parameters:
  ///
  /// * [String] eventId (required):
  ///   ID of inbox forwarder event
  Future<InboxForwarderEventDto?> getForwarderEvent(String eventId,) async {
    final response = await getForwarderEventWithHttpInfo(eventId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderEventDto',) as InboxForwarderEventDto;
    
    }
    return null;
  }

  /// Get an inbox forwarder
  ///
  /// Get inbox forwarder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<Response> getInboxForwarderWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}'
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

  /// Get an inbox forwarder
  ///
  /// Get inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<InboxForwarderDto?> getInboxForwarder(String id,) async {
    final response = await getInboxForwarderWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderDto',) as InboxForwarderDto;
    
    }
    return null;
  }

  /// Get an inbox forwarder event
  ///
  /// Get inbox forwarder event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [String] eventId (required):
  ///   ID of inbox forwarder event
  Future<Response> getInboxForwarderEventWithHttpInfo(String id, String eventId,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}/events/{eventId}'
      .replaceAll('{id}', id)
      .replaceAll('{eventId}', eventId);

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

  /// Get an inbox forwarder event
  ///
  /// Get inbox forwarder event
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [String] eventId (required):
  ///   ID of inbox forwarder event
  Future<InboxForwarderEventDto?> getInboxForwarderEvent(String id, String eventId,) async {
    final response = await getInboxForwarderEventWithHttpInfo(id, eventId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderEventDto',) as InboxForwarderEventDto;
    
    }
    return null;
  }

  /// Get an inbox forwarder event list
  ///
  /// Get inbox forwarder events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxForwarderEventsWithHttpInfo(String id, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}/events'
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

  /// Get an inbox forwarder event list
  ///
  /// Get inbox forwarder events
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder event list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder event list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxForwarderEvents?> getInboxForwarderEvents(String id, { int? page, int? size, String? sort, }) async {
    final response = await getInboxForwarderEventsWithHttpInfo(id,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxForwarderEvents',) as PageInboxForwarderEvents;
    
    }
    return null;
  }

  /// List inbox forwarders
  ///
  /// List all forwarders attached to an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get forwarders from
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getInboxForwardersWithHttpInfo({ String? inboxId, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
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

  /// List inbox forwarders
  ///
  /// List all forwarders attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get forwarders from
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageInboxForwarderDto?> getInboxForwarders({ String? inboxId, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getInboxForwardersWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxForwarderDto',) as PageInboxForwarderDto;
    
    }
    return null;
  }

  /// Test an inbox forwarder
  ///
  /// Test an inbox forwarder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [InboxForwarderTestOptions] inboxForwarderTestOptions (required):
  Future<Response> testInboxForwarderWithHttpInfo(String id, InboxForwarderTestOptions inboxForwarderTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}/test'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = inboxForwarderTestOptions;

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

  /// Test an inbox forwarder
  ///
  /// Test an inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [InboxForwarderTestOptions] inboxForwarderTestOptions (required):
  Future<InboxForwarderTestResult?> testInboxForwarder(String id, InboxForwarderTestOptions inboxForwarderTestOptions,) async {
    final response = await testInboxForwarderWithHttpInfo(id, inboxForwarderTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
    
    }
    return null;
  }

  /// Test inbox forwarders for inbox
  ///
  /// Test inbox forwarders for inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox
  ///
  /// * [InboxForwarderTestOptions] inboxForwarderTestOptions (required):
  Future<Response> testInboxForwardersForInboxWithHttpInfo(String inboxId, InboxForwarderTestOptions inboxForwarderTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders';

    // ignore: prefer_final_locals
    Object? postBody = inboxForwarderTestOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Test inbox forwarders for inbox
  ///
  /// Test inbox forwarders for inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox
  ///
  /// * [InboxForwarderTestOptions] inboxForwarderTestOptions (required):
  Future<InboxForwarderTestResult?> testInboxForwardersForInbox(String inboxId, InboxForwarderTestOptions inboxForwarderTestOptions,) async {
    final response = await testInboxForwardersForInboxWithHttpInfo(inboxId, inboxForwarderTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
    
    }
    return null;
  }

  /// Test new inbox forwarder
  ///
  /// Test new inbox forwarder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxForwarderOptions] testNewInboxForwarderOptions (required):
  Future<Response> testNewInboxForwarderWithHttpInfo(TestNewInboxForwarderOptions testNewInboxForwarderOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders';

    // ignore: prefer_final_locals
    Object? postBody = testNewInboxForwarderOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Test new inbox forwarder
  ///
  /// Test new inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxForwarderOptions] testNewInboxForwarderOptions (required):
  Future<InboxForwarderTestResult?> testNewInboxForwarder(TestNewInboxForwarderOptions testNewInboxForwarderOptions,) async {
    final response = await testNewInboxForwarderWithHttpInfo(testNewInboxForwarderOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
    
    }
    return null;
  }

  /// Update an inbox forwarder
  ///
  /// Update inbox forwarder
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  Future<Response> updateInboxForwarderWithHttpInfo(String id, CreateInboxForwarderOptions createInboxForwarderOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/forwarders/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createInboxForwarderOptions;

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

  /// Update an inbox forwarder
  ///
  /// Update inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  Future<InboxForwarderDto?> updateInboxForwarder(String id, CreateInboxForwarderOptions createInboxForwarderOptions,) async {
    final response = await updateInboxForwarderWithHttpInfo(id, createInboxForwarderOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderDto',) as InboxForwarderDto;
    
    }
    return null;
  }
}
