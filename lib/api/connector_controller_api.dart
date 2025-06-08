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
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID to associate with the connector
  Future<Response> createConnectorWithHttpInfo(CreateConnectorOptions createConnectorOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors';

    // ignore: prefer_final_locals
    Object? postBody = createConnectorOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Create an inbox connector
  ///
  /// Sync emails between external mailboxes and MailSlurp inboxes
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorOptions] createConnectorOptions (required):
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID to associate with the connector
  Future<ConnectorDto?> createConnector(CreateConnectorOptions createConnectorOptions, { String? inboxId, }) async {
    final response = await createConnectorWithHttpInfo(createConnectorOptions,  inboxId: inboxId, );
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

  /// Create an inbox connector sync settings
  ///
  /// Configure automatic pull or emails from external inboxes using an interval or schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSyncSettingsOptions] createConnectorSyncSettingsOptions (required):
  Future<Response> createConnectorSyncSettingsWithHttpInfo(String id, CreateConnectorSyncSettingsOptions createConnectorSyncSettingsOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/sync-settings'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createConnectorSyncSettingsOptions;

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

  /// Create an inbox connector sync settings
  ///
  /// Configure automatic pull or emails from external inboxes using an interval or schedule
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSyncSettingsOptions] createConnectorSyncSettingsOptions (required):
  Future<ConnectorSyncSettingsDto?> createConnectorSyncSettings(String id, CreateConnectorSyncSettingsOptions createConnectorSyncSettingsOptions,) async {
    final response = await createConnectorSyncSettingsWithHttpInfo(id, createConnectorSyncSettingsOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSyncSettingsDto',) as ConnectorSyncSettingsDto;
    
    }
    return null;
  }

  /// Create an inbox connector with options
  ///
  /// Sync emails between external mailboxes and MailSlurp inboxes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorWithOptions] createConnectorWithOptions (required):
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID to associate with the connector
  Future<Response> createConnectorWithOptionsWithHttpInfo(CreateConnectorWithOptions createConnectorWithOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/withOptions';

    // ignore: prefer_final_locals
    Object? postBody = createConnectorWithOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Create an inbox connector with options
  ///
  /// Sync emails between external mailboxes and MailSlurp inboxes
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorWithOptions] createConnectorWithOptions (required):
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID to associate with the connector
  Future<ConnectorDto?> createConnectorWithOptions(CreateConnectorWithOptions createConnectorWithOptions, { String? inboxId, }) async {
    final response = await createConnectorWithOptionsWithHttpInfo(createConnectorWithOptions,  inboxId: inboxId, );
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

  /// Create an inbox connector sync settings
  ///
  /// Configure automatic pull or emails from external inboxes using an interval or schedule
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteConnectorSyncSettingsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/sync-settings'
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

  /// Create an inbox connector sync settings
  ///
  /// Configure automatic pull or emails from external inboxes using an interval or schedule
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteConnectorSyncSettings(String id,) async {
    final response = await deleteConnectorSyncSettingsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all inbox connector events
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Optional connector ID
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
  ///
  /// * [String] eventType:
  ///   Filter by event type
  Future<Response> getAllConnectorEventsWithHttpInfo({ String? id, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? eventType, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('', 'id', id));
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
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
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

  /// Get all inbox connector events
  ///
  /// Parameters:
  ///
  /// * [String] id:
  ///   Optional connector ID
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
  ///
  /// * [String] eventType:
  ///   Filter by event type
  Future<PageConnectorEvents?> getAllConnectorEvents({ String? id, int? page, int? size, String? sort, DateTime? since, DateTime? before, String? eventType, }) async {
    final response = await getAllConnectorEventsWithHttpInfo( id: id, page: page, size: size, sort: sort, since: since, before: before, eventType: eventType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageConnectorEvents',) as PageConnectorEvents;
    
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

  /// Get connector by email address
  ///
  /// Find an inbox connector by email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address to search for connector by
  Future<Response> getConnectorByEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/by-email-address';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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

  /// Get connector by email address
  ///
  /// Find an inbox connector by email address
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address to search for connector by
  Future<OptionalConnectorDto?> getConnectorByEmailAddress(String emailAddress,) async {
    final response = await getConnectorByEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorDto',) as OptionalConnectorDto;
    
    }
    return null;
  }

  /// Get connector by inbox ID
  ///
  /// Find an inbox connector by inbox ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox ID to search for connector by
  Future<Response> getConnectorByInboxIdWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/by-inbox-id';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Get connector by inbox ID
  ///
  /// Find an inbox connector by inbox ID
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox ID to search for connector by
  Future<OptionalConnectorDto?> getConnectorByInboxId(String inboxId,) async {
    final response = await getConnectorByInboxIdWithHttpInfo(inboxId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorDto',) as OptionalConnectorDto;
    
    }
    return null;
  }

  /// Get connector by name
  ///
  /// Find an inbox connector by name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name to search for connector by
  Future<Response> getConnectorByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/by-name';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Get connector by name
  ///
  /// Find an inbox connector by name
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  ///   Name to search for connector by
  Future<OptionalConnectorDto?> getConnectorByName(String name,) async {
    final response = await getConnectorByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorDto',) as OptionalConnectorDto;
    
    }
    return null;
  }

  /// Get an inbox connector event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorEventWithHttpInfo(String id,) async {
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

  /// Get an inbox connector event
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ConnectorEventDto?> getConnectorEvent(String id,) async {
    final response = await getConnectorEventWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorEventDto',) as ConnectorEventDto;
    
    }
    return null;
  }

  /// Get an inbox connector events
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
  ///
  /// * [String] eventType:
  ///   Filter by event type
  Future<Response> getConnectorEventsWithHttpInfo(String id, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? eventType, }) async {
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
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
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

  /// Get an inbox connector events
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
  ///
  /// * [String] eventType:
  ///   Filter by event type
  Future<PageConnectorEvents?> getConnectorEvents(String id, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? eventType, }) async {
    final response = await getConnectorEventsWithHttpInfo(id,  page: page, size: size, sort: sort, since: since, before: before, eventType: eventType, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageConnectorEvents',) as PageConnectorEvents;
    
    }
    return null;
  }

  /// Get an inbox connector IMAP connection
  ///
  /// Get IMAP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorImapConnectionWithHttpInfo(String id,) async {
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an inbox connector IMAP connection
  ///
  /// Get IMAP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<OptionalConnectorImapConnectionDto?> getConnectorImapConnection(String id,) async {
    final response = await getConnectorImapConnectionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorImapConnectionDto',) as OptionalConnectorImapConnectionDto;
    
    }
    return null;
  }

  /// Get SMTP and IMAP connection settings for common mail providers
  ///
  /// Get common mail provider SMTP and IMAP connection settings
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getConnectorProviderSettingsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/provider-settings';

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

  /// Get SMTP and IMAP connection settings for common mail providers
  ///
  /// Get common mail provider SMTP and IMAP connection settings
  Future<ConnectorProviderSettingsDto?> getConnectorProviderSettings() async {
    final response = await getConnectorProviderSettingsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorProviderSettingsDto',) as ConnectorProviderSettingsDto;
    
    }
    return null;
  }

  /// Get an inbox connector SMTP connection
  ///
  /// Get SMTP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorSmtpConnectionWithHttpInfo(String id,) async {
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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an inbox connector SMTP connection
  ///
  /// Get SMTP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<OptionalConnectorSmtpConnectionDto?> getConnectorSmtpConnection(String id,) async {
    final response = await getConnectorSmtpConnectionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorSmtpConnectionDto',) as OptionalConnectorSmtpConnectionDto;
    
    }
    return null;
  }

  /// Get an inbox connector sync settings
  ///
  /// Get sync settings for connection with external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getConnectorSyncSettingsWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/sync-settings'
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

  /// Get an inbox connector sync settings
  ///
  /// Get sync settings for connection with external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<OptionalConnectorSyncSettingsDto?> getConnectorSyncSettings(String id,) async {
    final response = await getConnectorSyncSettingsWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OptionalConnectorSyncSettingsDto',) as OptionalConnectorSyncSettingsDto;
    
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

  /// Send from an inbox connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [bool] useFallback:
  Future<Response> sendEmailFromConnectorWithHttpInfo(String id, SendEmailOptions sendEmailOptions, { bool? useFallback, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/send'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (useFallback != null) {
      queryParams.addAll(_queryParams('', 'useFallback', useFallback));
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

  /// Send from an inbox connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [bool] useFallback:
  Future<SentEmailDto?> sendEmailFromConnector(String id, SendEmailOptions sendEmailOptions, { bool? useFallback, }) async {
    final response = await sendEmailFromConnectorWithHttpInfo(id, sendEmailOptions,  useFallback: useFallback, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentEmailDto',) as SentEmailDto;
    
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
  ///
  /// * [DateTime] since:
  ///   Date to request emails since
  ///
  /// * [String] folder:
  ///   Which folder to sync emails with
  ///
  /// * [bool] logging:
  ///   Enable or disable logging for the sync operation
  Future<Response> syncConnectorWithHttpInfo(String id, { DateTime? since, String? folder, bool? logging, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/sync'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (folder != null) {
      queryParams.addAll(_queryParams('', 'folder', folder));
    }
    if (logging != null) {
      queryParams.addAll(_queryParams('', 'logging', logging));
    }

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
  ///
  /// * [DateTime] since:
  ///   Date to request emails since
  ///
  /// * [String] folder:
  ///   Which folder to sync emails with
  ///
  /// * [bool] logging:
  ///   Enable or disable logging for the sync operation
  Future<ConnectorSyncRequestResult?> syncConnector(String id, { DateTime? since, String? folder, bool? logging, }) async {
    final response = await syncConnectorWithHttpInfo(id,  since: since, folder: folder, logging: logging, );
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

  /// Test an inbox connector IMAP connection
  ///
  /// Test the IMAP connection for a connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions:
  Future<Response> testConnectorImapConnectionWithHttpInfo(String id, { CreateConnectorImapConnectionOptions? createConnectorImapConnectionOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/imap/test'
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

  /// Test an inbox connector IMAP connection
  ///
  /// Test the IMAP connection for a connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions:
  Future<ConnectorImapConnectionTestResult?> testConnectorImapConnection(String id, { CreateConnectorImapConnectionOptions? createConnectorImapConnectionOptions, }) async {
    final response = await testConnectorImapConnectionWithHttpInfo(id,  createConnectorImapConnectionOptions: createConnectorImapConnectionOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorImapConnectionTestResult',) as ConnectorImapConnectionTestResult;
    
    }
    return null;
  }

  /// Test an inbox connector IMAP connection options
  ///
  /// Test the IMAP connection options for a connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<Response> testConnectorImapConnectionOptionsWithHttpInfo(CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/connections/imap/test';

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

  /// Test an inbox connector IMAP connection options
  ///
  /// Test the IMAP connection options for a connector
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<ConnectorImapConnectionTestResult?> testConnectorImapConnectionOptions(CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
    final response = await testConnectorImapConnectionOptionsWithHttpInfo(createConnectorImapConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorImapConnectionTestResult',) as ConnectorImapConnectionTestResult;
    
    }
    return null;
  }

  /// Test an inbox connector SMTP connection
  ///
  /// Test the SMTP connection for a connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions:
  Future<Response> testConnectorSmtpConnectionWithHttpInfo(String id, { CreateConnectorSmtpConnectionOptions? createConnectorSmtpConnectionOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/{id}/smtp/test'
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

  /// Test an inbox connector SMTP connection
  ///
  /// Test the SMTP connection for a connector
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions:
  Future<ConnectorSmtpConnectionTestResult?> testConnectorSmtpConnection(String id, { CreateConnectorSmtpConnectionOptions? createConnectorSmtpConnectionOptions, }) async {
    final response = await testConnectorSmtpConnectionWithHttpInfo(id,  createConnectorSmtpConnectionOptions: createConnectorSmtpConnectionOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSmtpConnectionTestResult',) as ConnectorSmtpConnectionTestResult;
    
    }
    return null;
  }

  /// Test an inbox connector SMTP connection options
  ///
  /// Test the SMTP connection options for a connector
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<Response> testConnectorSmtpConnectionOptionsWithHttpInfo(CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/connectors/connections/smtp/test';

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

  /// Test an inbox connector SMTP connection options
  ///
  /// Test the SMTP connection options for a connector
  ///
  /// Parameters:
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<ConnectorSmtpConnectionTestResult?> testConnectorSmtpConnectionOptions(CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
    final response = await testConnectorSmtpConnectionOptionsWithHttpInfo(createConnectorSmtpConnectionOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConnectorSmtpConnectionTestResult',) as ConnectorSmtpConnectionTestResult;
    
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

  /// Update an inbox connector IMAP connection
  ///
  /// Update IMAP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<Response> updateConnectorImapConnectionWithHttpInfo(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
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
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an inbox connector IMAP connection
  ///
  /// Update IMAP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorImapConnectionOptions] createConnectorImapConnectionOptions (required):
  Future<ConnectorImapConnectionDto?> updateConnectorImapConnection(String id, CreateConnectorImapConnectionOptions createConnectorImapConnectionOptions,) async {
    final response = await updateConnectorImapConnectionWithHttpInfo(id, createConnectorImapConnectionOptions,);
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

  /// Update an inbox connector SMTP connection
  ///
  /// Update SMTP connection for external inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<Response> updateConnectorSmtpConnectionWithHttpInfo(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
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
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an inbox connector SMTP connection
  ///
  /// Update SMTP connection for external inbox
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [CreateConnectorSmtpConnectionOptions] createConnectorSmtpConnectionOptions (required):
  Future<ConnectorSmtpConnectionDto?> updateConnectorSmtpConnection(String id, CreateConnectorSmtpConnectionOptions createConnectorSmtpConnectionOptions,) async {
    final response = await updateConnectorSmtpConnectionWithHttpInfo(id, createConnectorSmtpConnectionOptions,);
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
}
