//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WebhookControllerApi {
  WebhookControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  Future<Response> createAccountWebhookWithHttpInfo(CreateWebhookOptions createWebhookOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks';

    // ignore: prefer_final_locals
    Object? postBody = createWebhookOptions;

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

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified of account level events such as bounce and bounce recipient.
  ///
  /// Parameters:
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<WebhookDto?> createAccountWebhook(CreateWebhookOptions createWebhookOptions,) async {
    final response = await createAccountWebhookWithHttpInfo(createWebhookOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
    
    }
    return null;
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
  Future<Response> createWebhookWithHttpInfo(String inboxId, CreateWebhookOptions createWebhookOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/webhooks'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = createWebhookOptions;

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

  /// Attach a WebHook URL to an inbox
  ///
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<WebhookDto?> createWebhook(String inboxId, CreateWebhookOptions createWebhookOptions,) async {
    final response = await createWebhookWithHttpInfo(inboxId, createWebhookOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
    
    }
    return null;
  }

  /// Attach a WebHook URL to a phone number
  ///
  /// Get notified whenever a phone number receives an SMS via a WebHook URL.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<Response> createWebhookForPhoneNumberWithHttpInfo(String phoneNumberId, CreateWebhookOptions createWebhookOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneNumberId}/webhooks'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = createWebhookOptions;

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

  /// Attach a WebHook URL to a phone number
  ///
  /// Get notified whenever a phone number receives an SMS via a WebHook URL.
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [CreateWebhookOptions] createWebhookOptions (required):
  Future<WebhookDto?> createWebhookForPhoneNumber(String phoneNumberId, CreateWebhookOptions createWebhookOptions,) async {
    final response = await createWebhookForPhoneNumberWithHttpInfo(phoneNumberId, createWebhookOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
    
    }
    return null;
  }

  /// Delete all webhooks
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   before
  Future<Response> deleteAllWebhooksWithHttpInfo({ DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
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

  /// Delete all webhooks
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   before
  Future<void> deleteAllWebhooks({ DateTime? before, }) async {
    final response = await deleteAllWebhooksWithHttpInfo( before: before, );
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
  Future<Response> deleteWebhookWithHttpInfo(String inboxId, String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/webhooks/{webhookId}'
      .replaceAll('{inboxId}', inboxId)
      .replaceAll('{webhookId}', webhookId);

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

  /// Delete and disable a Webhook for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [String] webhookId (required):
  Future<void> deleteWebhook(String inboxId, String webhookId,) async {
    final response = await deleteWebhookWithHttpInfo(inboxId, webhookId,);
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
  Future<Response> deleteWebhookByIdWithHttpInfo(String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}'
      .replaceAll('{webhookId}', webhookId);

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

  /// Delete a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<void> deleteWebhookById(String webhookId,) async {
    final response = await deleteWebhookByIdWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// List account webhooks Paginated
  ///
  /// List account webhooks in paginated form. Allows for page index, page size, and sort direction.
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
  /// * [String] eventType:
  ///   Optional event type
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllAccountWebhooksWithHttpInfo({ int? page, int? size, String? sort, String? eventType, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/account/paginated';

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
    if (eventType != null) {
      queryParams.addAll(_queryParams('', 'eventType', eventType));
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

  /// List account webhooks Paginated
  ///
  /// List account webhooks in paginated form. Allows for page index, page size, and sort direction.
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
  /// * [String] eventType:
  ///   Optional event type
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageWebhookProjection?> getAllAccountWebhooks({ int? page, int? size, String? sort, String? eventType, DateTime? since, DateTime? before, }) async {
    final response = await getAllAccountWebhooksWithHttpInfo( page: page, size: size, sort: sort, eventType: eventType, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
    
    }
    return null;
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
  Future<Response> getAllWebhookResultsWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? unseenOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/results';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (unseenOnly != null) {
      queryParams.addAll(_queryParams('', 'unseenOnly', unseenOnly));
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
  Future<PageWebhookResult?> getAllWebhookResults({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? unseenOnly, }) async {
    final response = await getAllWebhookResultsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookResult',) as PageWebhookResult;
    
    }
    return null;
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
  /// * [String] inboxId:
  ///   Filter by inboxId
  ///
  /// * [String] phoneId:
  ///   Filter by phoneId
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllWebhooksWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, String? inboxId, String? phoneId, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/paginated';

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
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
  /// * [String] inboxId:
  ///   Filter by inboxId
  ///
  /// * [String] phoneId:
  ///   Filter by phoneId
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageWebhookProjection?> getAllWebhooks({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, String? inboxId, String? phoneId, DateTime? before, }) async {
    final response = await getAllWebhooksWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, inboxId: inboxId, phoneId: phoneId, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
    
    }
    return null;
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
  Future<Response> getInboxWebhooksPaginatedWithHttpInfo(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/webhooks/paginated'
      .replaceAll('{inboxId}', inboxId);

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
  Future<PageWebhookProjection?> getInboxWebhooksPaginated(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getInboxWebhooksPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
    
    }
    return null;
  }

  /// Get JSON Schema definition for webhook payload by event
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] event (required):
  Future<Response> getJsonSchemaForWebhookEventWithHttpInfo(String event,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/schema';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'event', event));

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

  /// Get JSON Schema definition for webhook payload by event
  ///
  /// Parameters:
  ///
  /// * [String] event (required):
  Future<JSONSchemaDto?> getJsonSchemaForWebhookEvent(String event,) async {
    final response = await getJsonSchemaForWebhookEventWithHttpInfo(event,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JSONSchemaDto',) as JSONSchemaDto;
    
    }
    return null;
  }

  /// Get JSON Schema definition for webhook payload
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getJsonSchemaForWebhookPayloadWithHttpInfo(String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}/schema'
      .replaceAll('{webhookId}', webhookId);

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

  /// Get JSON Schema definition for webhook payload
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<JSONSchemaDto?> getJsonSchemaForWebhookPayload(String webhookId,) async {
    final response = await getJsonSchemaForWebhookPayloadWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JSONSchemaDto',) as JSONSchemaDto;
    
    }
    return null;
  }

  /// Get paginated webhooks for a phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneId (required):
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
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getPhoneNumberWebhooksPaginatedWithHttpInfo(String phoneId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/phone/numbers/{phoneId}/webhooks/paginated'
      .replaceAll('{phoneId}', phoneId);

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

  /// Get paginated webhooks for a phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneId (required):
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
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageWebhookProjection?> getPhoneNumberWebhooksPaginated(String phoneId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getPhoneNumberWebhooksPaginatedWithHttpInfo(phoneId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookProjection',) as PageWebhookProjection;
    
    }
    return null;
  }

  /// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] eventName:
  Future<Response> getTestWebhookPayloadWithHttpInfo({ String? eventName, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (eventName != null) {
      queryParams.addAll(_queryParams('', 'eventName', eventName));
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

  /// Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
  ///
  /// Parameters:
  ///
  /// * [String] eventName:
  Future<AbstractWebhookPayload?> getTestWebhookPayload({ String? eventName, }) async {
    final response = await getTestWebhookPayloadWithHttpInfo( eventName: eventName, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AbstractWebhookPayload',) as AbstractWebhookPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for bounce
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadBounceWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/email-bounce-payload';

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

  /// Get webhook test payload for bounce
  Future<WebhookBouncePayload?> getTestWebhookPayloadBounce() async {
    final response = await getTestWebhookPayloadBounceWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookBouncePayload',) as WebhookBouncePayload;
    
    }
    return null;
  }

  /// Get webhook test payload for bounce recipient
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadBounceRecipientWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/email-bounce-recipient-payload';

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

  /// Get webhook test payload for bounce recipient
  Future<WebhookBounceRecipientPayload?> getTestWebhookPayloadBounceRecipient() async {
    final response = await getTestWebhookPayloadBounceRecipientWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookBounceRecipientPayload',) as WebhookBounceRecipientPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for delivery status event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadDeliveryStatusWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/delivery-status-payload';

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

  /// Get webhook test payload for delivery status event
  Future<WebhookDeliveryStatusPayload?> getTestWebhookPayloadDeliveryStatus() async {
    final response = await getTestWebhookPayloadDeliveryStatusWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDeliveryStatusPayload',) as WebhookDeliveryStatusPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for email opened event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadEmailOpenedWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/email-opened-payload';

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

  /// Get webhook test payload for email opened event
  Future<WebhookEmailOpenedPayload?> getTestWebhookPayloadEmailOpened() async {
    final response = await getTestWebhookPayloadEmailOpenedWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookEmailOpenedPayload',) as WebhookEmailOpenedPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for email opened event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadEmailReadWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/email-read-payload';

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

  /// Get webhook test payload for email opened event
  Future<WebhookEmailReadPayload?> getTestWebhookPayloadEmailRead() async {
    final response = await getTestWebhookPayloadEmailReadWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookEmailReadPayload',) as WebhookEmailReadPayload;
    
    }
    return null;
  }

  /// Get example payload for webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getTestWebhookPayloadForWebhookWithHttpInfo(String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}/example'
      .replaceAll('{webhookId}', webhookId);

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

  /// Get example payload for webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<AbstractWebhookPayload?> getTestWebhookPayloadForWebhook(String webhookId,) async {
    final response = await getTestWebhookPayloadForWebhookWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AbstractWebhookPayload',) as AbstractWebhookPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for new attachment event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewAttachmentWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/new-attachment-payload';

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

  /// Get webhook test payload for new attachment event
  Future<WebhookNewAttachmentPayload?> getTestWebhookPayloadNewAttachment() async {
    final response = await getTestWebhookPayloadNewAttachmentWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewAttachmentPayload',) as WebhookNewAttachmentPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for new contact event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewContactWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/new-contact-payload';

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

  /// Get webhook test payload for new contact event
  Future<WebhookNewContactPayload?> getTestWebhookPayloadNewContact() async {
    final response = await getTestWebhookPayloadNewContactWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewContactPayload',) as WebhookNewContactPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for new email event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewEmailWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/new-email-payload';

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

  /// Get webhook test payload for new email event
  Future<WebhookNewEmailPayload?> getTestWebhookPayloadNewEmail() async {
    final response = await getTestWebhookPayloadNewEmailWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewEmailPayload',) as WebhookNewEmailPayload;
    
    }
    return null;
  }

  /// Get webhook test payload for new sms event
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTestWebhookPayloadNewSmsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/test/new-sms-payload';

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

  /// Get webhook test payload for new sms event
  Future<WebhookNewSmsPayload?> getTestWebhookPayloadNewSms() async {
    final response = await getTestWebhookPayloadNewSmsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookNewSmsPayload',) as WebhookNewSmsPayload;
    
    }
    return null;
  }

  /// Get a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> getWebhookWithHttpInfo(String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}'
      .replaceAll('{webhookId}', webhookId);

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

  /// Get a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<WebhookDto?> getWebhook(String webhookId,) async {
    final response = await getWebhookWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
    
    }
    return null;
  }

  /// Get a webhook result for a webhook
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<Response> getWebhookResultWithHttpInfo(String webhookResultId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/results/{webhookResultId}'
      .replaceAll('{webhookResultId}', webhookResultId);

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

  /// Get a webhook result for a webhook
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<WebhookResultDto?> getWebhookResult(String webhookResultId,) async {
    final response = await getWebhookResultWithHttpInfo(webhookResultId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookResultDto',) as WebhookResultDto;
    
    }
    return null;
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
  Future<Response> getWebhookResultsWithHttpInfo(String webhookId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? unseenOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}/results'
      .replaceAll('{webhookId}', webhookId);

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
    if (searchFilter != null) {
      queryParams.addAll(_queryParams('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (unseenOnly != null) {
      queryParams.addAll(_queryParams('', 'unseenOnly', unseenOnly));
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
  Future<PageWebhookResult?> getWebhookResults(String webhookId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, bool? unseenOnly, }) async {
    final response = await getWebhookResultsWithHttpInfo(webhookId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, unseenOnly: unseenOnly, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageWebhookResult',) as PageWebhookResult;
    
    }
    return null;
  }

  /// Get count of unseen webhook results with error status
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getWebhookResultsUnseenErrorCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/results/unseen-count';

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

  /// Get count of unseen webhook results with error status
  Future<UnseenErrorCountDto?> getWebhookResultsUnseenErrorCount() async {
    final response = await getWebhookResultsUnseenErrorCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnseenErrorCountDto',) as UnseenErrorCountDto;
    
    }
    return null;
  }

  /// Get all webhooks for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> getWebhooksWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/webhooks'
      .replaceAll('{inboxId}', inboxId);

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

  /// Get all webhooks for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<List<WebhookDto>?> getWebhooks(String inboxId,) async {
    final response = await getWebhooksWithHttpInfo(inboxId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<WebhookDto>') as List)
        .cast<WebhookDto>()
        .toList();

    }
    return null;
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
  Future<Response> redriveWebhookResultWithHttpInfo(String webhookResultId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/results/{webhookResultId}/redrive'
      .replaceAll('{webhookResultId}', webhookResultId);

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

  /// Get a webhook result and try to resend the original webhook payload
  ///
  /// Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
  ///
  /// Parameters:
  ///
  /// * [String] webhookResultId (required):
  ///   Webhook Result ID
  Future<WebhookRedriveResult?> redriveWebhookResult(String webhookResultId,) async {
    final response = await redriveWebhookResultWithHttpInfo(webhookResultId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookRedriveResult',) as WebhookRedriveResult;
    
    }
    return null;
  }

  /// Send webhook test data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<Response> sendTestDataWithHttpInfo(String webhookId,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}/test'
      .replaceAll('{webhookId}', webhookId);

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

  /// Send webhook test data
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  Future<WebhookTestResult?> sendTestData(String webhookId,) async {
    final response = await sendTestDataWithHttpInfo(webhookId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookTestResult',) as WebhookTestResult;
    
    }
    return null;
  }

  /// Update a webhook request headers
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///
  /// * [WebhookHeaders] webhookHeaders (required):
  Future<Response> updateWebhookHeadersWithHttpInfo(String webhookId, WebhookHeaders webhookHeaders,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/{webhookId}/headers'
      .replaceAll('{webhookId}', webhookId);

    // ignore: prefer_final_locals
    Object? postBody = webhookHeaders;

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

  /// Update a webhook request headers
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///
  /// * [WebhookHeaders] webhookHeaders (required):
  Future<WebhookDto?> updateWebhookHeaders(String webhookId, WebhookHeaders webhookHeaders,) async {
    final response = await updateWebhookHeadersWithHttpInfo(webhookId, webhookHeaders,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WebhookDto',) as WebhookDto;
    
    }
    return null;
  }

  /// Verify a webhook payload signature
  ///
  /// Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyWebhookSignatureOptions] verifyWebhookSignatureOptions (required):
  Future<Response> verifyWebhookSignatureWithHttpInfo(VerifyWebhookSignatureOptions verifyWebhookSignatureOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/webhooks/verify';

    // ignore: prefer_final_locals
    Object? postBody = verifyWebhookSignatureOptions;

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

  /// Verify a webhook payload signature
  ///
  /// Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.
  ///
  /// Parameters:
  ///
  /// * [VerifyWebhookSignatureOptions] verifyWebhookSignatureOptions (required):
  Future<VerifyWebhookSignatureResults?> verifyWebhookSignature(VerifyWebhookSignatureOptions verifyWebhookSignatureOptions,) async {
    final response = await verifyWebhookSignatureWithHttpInfo(verifyWebhookSignatureOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyWebhookSignatureResults',) as VerifyWebhookSignatureResults;
    
    }
    return null;
  }
}
