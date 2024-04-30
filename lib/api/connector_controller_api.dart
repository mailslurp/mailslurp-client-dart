//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConnectorControllerApi {
  ConnectorControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox connector
  ///
  /// Sync emails between external mailboxes and MailSlurp inboxes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorOptions] createConnectorOptions (required):
  Future<Response> createConnectorWithHttpInfo(CreateConnectorOptions createConnectorOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors';

    // ignore: prefer_final_locals
    Object? postBody = createConnectorOptions;

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

  /// Create an inbox connector
  ///
  /// Sync emails between external mailboxes and MailSlurp inboxes
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorOptions] createConnectorOptions (required):
  Future<ConnectorDto?> createConnector(CreateConnectorOptions createConnectorOptions,) async {
    final response = await createConnectorWithHttpInfo(createConnectorOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorDto',) as ConnectorDto;
    
    }
    return null;
  }

  /// Create an inbox connector IMAP connection
  ///
  /// Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<Response> createConnectorImapConnectionWithHttpInfo(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/imap'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createConnectorImapConnectionOptions;

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

  /// Create an inbox connector IMAP connection
  ///
  /// Allows the reading of emails in an external mailbox and syncing to a MailSlurp inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<ConnectorImapConnectionDto?> createConnectorImapConnection(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
    final response = await createConnectorImapConnectionWithHttpInfo(id, createConnectorImapConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorImapConnectionDto',) as ConnectorImapConnectionDto;
    
    }
    return null;
  }

  /// Create an inbox connector SMTP connection
  ///
  /// Allows sending via connector and email is routed to connected inbox and sent via SMTP
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<Response> createConnectorSmtpConnectionWithHttpInfo(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/smtp'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createConnectorSmtpConnectionOptions;

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

  /// Create an inbox connector SMTP connection
  ///
  /// Allows sending via connector and email is routed to connected inbox and sent via SMTP
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<ConnectorSmtpConnectionDto?> createConnectorSmtpConnection(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
    final response = await createConnectorSmtpConnectionWithHttpInfo(id, createConnectorSmtpConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSmtpConnectionDto',) as ConnectorSmtpConnectionDto;
    
    }
    return null;
  }

  /// Delete all inbox connectors
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllConnectorWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/connectors';

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

  /// Delete all inbox connectors
  Future<void> deleteAllConnector() async {
    final response = await deleteAllConnectorWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an inbox connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteConnectorWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}'
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

  /// Delete an inbox connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteConnector(String id,) async {
    final response = await deleteConnectorWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an inbox connector IMAP connection
  ///
  /// Delete IMAP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteConnectorImapConnectionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/imap'
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

  /// Delete an inbox connector IMAP connection
  ///
  /// Delete IMAP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteConnectorImapConnection(String id,) async {
    final response = await deleteConnectorImapConnectionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an inbox connector SMTP connection
  ///
  /// Delete SMTP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteConnectorSmtpConnectionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/smtp'
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

  /// Delete an inbox connector SMTP connection
  ///
  /// Delete SMTP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteConnectorSmtpConnection(String id,) async {
    final response = await deleteConnectorSmtpConnectionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all inbox connector sync events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllConnectorSyncEventsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/events';

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

  /// Get all inbox connector sync events
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageConnectorSyncEvents?> getAllConnectorSyncEvents({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAllConnectorSyncEventsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageConnectorSyncEvents',) as PageConnectorSyncEvents;
    
    }
    return null;
  }

  /// Get an inbox connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}'
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

  /// Get an inbox connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ConnectorDto?> getConnector(String id,) async {
    final response = await getConnectorWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorDto',) as ConnectorDto;
    
    }
    return null;
  }

  /// Get an inbox connector sync event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorSyncEventWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/events/{id}'
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

  /// Get an inbox connector sync event
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ConnectorSyncEventDto?> getConnectorSyncEvent(String id,) async {
    final response = await getConnectorSyncEventWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSyncEventDto',) as ConnectorSyncEventDto;
    
    }
    return null;
  }

  /// Get an inbox connector sync events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getConnectorSyncEventsWithHttpInfo(String id, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/events'
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

  /// Get an inbox connector sync events
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageConnectorSyncEvents?> getConnectorSyncEvents(String id, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getConnectorSyncEventsWithHttpInfo(id,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageConnectorSyncEvents',) as PageConnectorSyncEvents;
    
    }
    return null;
  }

  /// Get inbox connectors
  ///
  /// List inbox connectors that sync external emails to MailSlurp inboxes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getConnectorsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors';

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

  /// Get inbox connectors
  ///
  /// List inbox connectors that sync external emails to MailSlurp inboxes
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in connector list pagination
  ///
  /// * [int] size:
  ///   Optional page size in connector list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageConnector?> getConnectors({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getConnectorsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageConnector',) as PageConnector;
    
    }
    return null;
  }

  /// Sync an inbox connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> syncConnectorWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/sync'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Sync an inbox connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ConnectorSyncRequestResult?> syncConnector(String id,) async {
    final response = await syncConnectorWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSyncRequestResult',) as ConnectorSyncRequestResult;
    
    }
    return null;
  }

  /// Update an inbox connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorOptions] createConnectorOptions (required):
  Future<Response> updateConnectorWithHttpInfo(String id, CreateConnectorOptions createConnectorOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createConnectorOptions;

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

  /// Update an inbox connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorOptions] createConnectorOptions (required):
  Future<ConnectorDto?> updateConnector(String id, CreateConnectorOptions createConnectorOptions,) async {
    final response = await updateConnectorWithHttpInfo(id, createConnectorOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorDto',) as ConnectorDto;
    
    }
    return null;
  }
}
