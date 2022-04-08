//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WebhookControllerApi {
  WebhookControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified of account level events such as bounce and bounce recipient.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<Response> createAccountWebhookWithHttpInfo(CreateWebhookOptions createWebhookOptions) async {
    // Verify required params are set.
    if (createWebhookOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createWebhookOptions');
    }

    final path = r'/webhooks';

    Object postBody = createWebhookOptions;

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

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified of account level events such as bounce and bounce recipient.
  ///
  /// Parameters:
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<WebhookDto> createAccountWebhook(CreateWebhookOptions createWebhookOptions) async {
    final response = await createAccountWebhookWithHttpInfo(createWebhookOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
        }
    return Future<WebhookDto>.value(null);
  }

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<Response> createWebhookWithHttpInfo(String inboxId, CreateWebhookOptions createWebhookOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (createWebhookOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createWebhookOptions');
    }

    final path = r'/inboxes/{inboxId}/webhooks'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = createWebhookOptions;

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

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions createWebhookOptions) async {
    final response = await createWebhookWithHttpInfo(inboxId, createWebhookOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
        }
    return Future<WebhookDto>.value(null);
  }

  /// Delete all webhooks
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllWebhooksWithHttpInfo() async {
    final path = r'/webhooks';

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete all webhooks
  Future<void> deleteAllWebhooks() async {
    final response = await deleteAllWebhooksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete and disable a Webhook for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [String] webhookId (required):
  Future<Response> deleteWebhookWithHttpInfo(String inboxId, String webhookId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/inboxes/{inboxId}/webhooks/{webhookId}'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString())
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete and disable a Webhook for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [String] webhookId (required):
  Future<void> deleteWebhook(String inboxId, String webhookId) async {
    final response = await deleteWebhookWithHttpInfo(inboxId, webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> deleteWebhookByIdWithHttpInfo(String webhookId) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Delete a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<void> deleteWebhookById(String webhookId) async {
    final response = await deleteWebhookByIdWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get results for all webhooks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] unseenOnly:
  ///   Filter for unseen exceptions only
  Future<Response> getAllWebhookResultsWithHttpInfo({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async {
    // Verify required params are set.

    final path = r'/webhooks/results';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (unseenOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unseenOnly', unseenOnly));
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

  /// Get results for all webhooks
  ///
  /// Parameters:
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] unseenOnly:
  ///   Filter for unseen exceptions only
  Future<PageWebhookResult> getAllWebhookResults({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async {
    final response = await getAllWebhookResultsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookResult',) as PageWebhookResult;
        }
    return Future<PageWebhookResult>.value(null);
  }

  /// List Webhooks Paginated
  ///
  /// List webhooks in paginated form. Allows for page index, page size, and sort direction.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
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
  Future<Response> getAllWebhooksWithHttpInfo({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/webhooks/paginated';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// List Webhooks Paginated
  ///
  /// List webhooks in paginated form. Allows for page index, page size, and sort direction.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size for paginated result list.
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
  Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getAllWebhooksWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
        }
    return Future<PageWebhookProjection>.value(null);
  }

  /// Get paginated webhooks for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getInboxWebhooksPaginatedWithHttpInfo(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/webhooks/paginated'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// Get paginated webhooks for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageWebhookProjection> getInboxWebhooksPaginated(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getInboxWebhooksPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
        }
    return Future<PageWebhookProjection>.value(null);
  }

  /// Get JSON Schema definition for webhook payload
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getJsonSchemaForWebhookPayloadWithHttpInfo(String webhookId) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}/schema'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get JSON Schema definition for webhook payload
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<JSONSchemaDto> getJsonSchemaForWebhookPayload(String webhookId) async {
    final response = await getJsonSchemaForWebhookPayloadWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JSONSchemaDto',) as JSONSchemaDto;
        }
    return Future<JSONSchemaDto>.value(null);
  }

  /// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventName:
  Future<Response> getTestWebhookPayloadWithHttpInfo({ String eventName }) async {
    // Verify required params are set.

    final path = r'/webhooks/test';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'eventName', eventName));
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

  /// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
  ///
  /// Parameters:
  ///
  /// * [String] eventName:
  Future<AbstractWebhookPayload> getTestWebhookPayload({ String eventName }) async {
    final response = await getTestWebhookPayloadWithHttpInfo( eventName: eventName );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AbstractWebhookPayload',) as AbstractWebhookPayload;
        }
    return Future<AbstractWebhookPayload>.value(null);
  }

  /// Get webhook test payload for bounce
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadBounceWithHttpInfo() async {
    final path = r'/webhooks/test/email-bounce-payload';

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

  /// Get webhook test payload for bounce
  Future<WebhookBouncePayload> getTestWebhookPayloadBounce() async {
    final response = await getTestWebhookPayloadBounceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookBouncePayload',) as WebhookBouncePayload;
        }
    return Future<WebhookBouncePayload>.value(null);
  }

  /// Get webhook test payload for bounce recipient
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadBounceRecipientWithHttpInfo() async {
    final path = r'/webhooks/test/email-bounce-recipient-payload';

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

  /// Get webhook test payload for bounce recipient
  Future<WebhookBounceRecipientPayload> getTestWebhookPayloadBounceRecipient() async {
    final response = await getTestWebhookPayloadBounceRecipientWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookBounceRecipientPayload',) as WebhookBounceRecipientPayload;
        }
    return Future<WebhookBounceRecipientPayload>.value(null);
  }

  /// Get webhook test payload for email opened event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadEmailOpenedWithHttpInfo() async {
    final path = r'/webhooks/test/email-opened-payload';

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

  /// Get webhook test payload for email opened event
  Future<WebhookEmailOpenedPayload> getTestWebhookPayloadEmailOpened() async {
    final response = await getTestWebhookPayloadEmailOpenedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookEmailOpenedPayload',) as WebhookEmailOpenedPayload;
        }
    return Future<WebhookEmailOpenedPayload>.value(null);
  }

  /// Get webhook test payload for email opened event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadEmailReadWithHttpInfo() async {
    final path = r'/webhooks/test/email-read-payload';

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

  /// Get webhook test payload for email opened event
  Future<WebhookEmailReadPayload> getTestWebhookPayloadEmailRead() async {
    final response = await getTestWebhookPayloadEmailReadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookEmailReadPayload',) as WebhookEmailReadPayload;
        }
    return Future<WebhookEmailReadPayload>.value(null);
  }

  /// Get example payload for webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getTestWebhookPayloadForWebhookWithHttpInfo(String webhookId) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}/example'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get example payload for webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<AbstractWebhookPayload> getTestWebhookPayloadForWebhook(String webhookId) async {
    final response = await getTestWebhookPayloadForWebhookWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AbstractWebhookPayload',) as AbstractWebhookPayload;
        }
    return Future<AbstractWebhookPayload>.value(null);
  }

  /// Get webhook test payload for new attachment event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewAttachmentWithHttpInfo() async {
    final path = r'/webhooks/test/new-attachment-payload';

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

  /// Get webhook test payload for new attachment event
  Future<WebhookNewAttachmentPayload> getTestWebhookPayloadNewAttachment() async {
    final response = await getTestWebhookPayloadNewAttachmentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewAttachmentPayload',) as WebhookNewAttachmentPayload;
        }
    return Future<WebhookNewAttachmentPayload>.value(null);
  }

  /// Get webhook test payload for new contact event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewContactWithHttpInfo() async {
    final path = r'/webhooks/test/new-contact-payload';

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

  /// Get webhook test payload for new contact event
  Future<WebhookNewContactPayload> getTestWebhookPayloadNewContact() async {
    final response = await getTestWebhookPayloadNewContactWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewContactPayload',) as WebhookNewContactPayload;
        }
    return Future<WebhookNewContactPayload>.value(null);
  }

  /// Get webhook test payload for new email event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewEmailWithHttpInfo() async {
    final path = r'/webhooks/test/new-email-payload';

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

  /// Get webhook test payload for new email event
  Future<WebhookNewEmailPayload> getTestWebhookPayloadNewEmail() async {
    final response = await getTestWebhookPayloadNewEmailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewEmailPayload',) as WebhookNewEmailPayload;
        }
    return Future<WebhookNewEmailPayload>.value(null);
  }

  /// Get a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getWebhookWithHttpInfo(String webhookId) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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

  /// Get a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<WebhookDto> getWebhook(String webhookId) async {
    final response = await getWebhookWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
        }
    return Future<WebhookDto>.value(null);
  }

  /// Get a webhook result for a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<Response> getWebhookResultWithHttpInfo(String webhookResultId) async {
    // Verify required params are set.
    if (webhookResultId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookResultId');
    }

    final path = r'/webhooks/results/{webhookResultId}'
      .replaceAll('{' + 'webhookResultId' + '}', webhookResultId.toString());

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

  /// Get a webhook result for a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<WebhookResultDto> getWebhookResult(String webhookResultId) async {
    final response = await getWebhookResultWithHttpInfo(webhookResultId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookResultDto',) as WebhookResultDto;
        }
    return Future<WebhookResultDto>.value(null);
  }

  /// Get a webhook results for a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///   ID of webhook to get results for
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] unseenOnly:
  ///   Filter for unseen exceptions only
  Future<Response> getWebhookResultsWithHttpInfo(String webhookId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}/results'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (unseenOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unseenOnly', unseenOnly));
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

  /// Get a webhook results for a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///   ID of webhook to get results for
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
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [bool] unseenOnly:
  ///   Filter for unseen exceptions only
  Future<PageWebhookResult> getWebhookResults(String webhookId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before, bool unseenOnly }) async {
    final response = await getWebhookResultsWithHttpInfo(webhookId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookResult',) as PageWebhookResult;
        }
    return Future<PageWebhookResult>.value(null);
  }

  /// Get count of unseen webhook results with error status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> getWebhookResultsUnseenErrorCountWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/webhooks/results/unseen-count'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get count of unseen webhook results with error status
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<UnseenErrorCountDto> getWebhookResultsUnseenErrorCount(String inboxId) async {
    final response = await getWebhookResultsUnseenErrorCountWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnseenErrorCountDto',) as UnseenErrorCountDto;
        }
    return Future<UnseenErrorCountDto>.value(null);
  }

  /// Get all webhooks for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> getWebhooksWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/webhooks'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get all webhooks for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<List<WebhookDto>> getWebhooks(String inboxId) async {
    final response = await getWebhooksWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<WebhookDto>') as List)
        .cast<WebhookDto>()
        .toList(growable: false);
    }
    return Future<List<WebhookDto>>.value(null);
  }

  /// Get a webhook result and try to resend the original webhook payload
  ///
  /// Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<Response> redriveWebhookResultWithHttpInfo(String webhookResultId) async {
    // Verify required params are set.
    if (webhookResultId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookResultId');
    }

    final path = r'/webhooks/results/{webhookResultId}/redrive'
      .replaceAll('{' + 'webhookResultId' + '}', webhookResultId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get a webhook result and try to resend the original webhook payload
  ///
  /// Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<WebhookRedriveResult> redriveWebhookResult(String webhookResultId) async {
    final response = await redriveWebhookResultWithHttpInfo(webhookResultId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookRedriveResult',) as WebhookRedriveResult;
        }
    return Future<WebhookRedriveResult>.value(null);
  }

  /// Send webhook test data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> sendTestDataWithHttpInfo(String webhookId) async {
    // Verify required params are set.
    if (webhookId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookId');
    }

    final path = r'/webhooks/{webhookId}/test'
      .replaceAll('{' + 'webhookId' + '}', webhookId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Send webhook test data
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<WebhookTestResult> sendTestData(String webhookId) async {
    final response = await sendTestDataWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookTestResult',) as WebhookTestResult;
        }
    return Future<WebhookTestResult>.value(null);
  }
}
