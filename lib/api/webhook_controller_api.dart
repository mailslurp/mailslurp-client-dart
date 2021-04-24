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
  /// Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [CreateWebhookOptions] webhookOptions (required):
  ///   webhookOptions
  Future<Response> createWebhookWithHttpInfo(String inboxId, CreateWebhookOptions webhookOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (webhookOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: webhookOptions');
    }

    final path = r'/inboxes/{inboxId}/webhooks'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = webhookOptions;

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
  ///   inboxId
  ///
  /// * [CreateWebhookOptions] webhookOptions (required):
  ///   webhookOptions
  Future<WebhookDto> createWebhook(String inboxId, CreateWebhookOptions webhookOptions) async {
    final response = await createWebhookWithHttpInfo(inboxId, webhookOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookDto') as WebhookDto;
        }
    return Future<WebhookDto>.value(null);
  }

  /// Delete and disable a Webhook for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [String] webhookId (required):
  ///   webhookId
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
  ///   inboxId
  ///
  /// * [String] webhookId (required):
  ///   webhookId
  Future<void> deleteWebhook(String inboxId, String webhookId) async {
    final response = await deleteWebhookWithHttpInfo(inboxId, webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
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
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAllWebhooksWithHttpInfo({ int page, int size, String sort }) async {
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
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageWebhookProjection> getAllWebhooks({ int page, int size, String sort }) async {
    final response = await getAllWebhooksWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageWebhookProjection') as PageWebhookProjection;
        }
    return Future<PageWebhookProjection>.value(null);
  }

  /// Get a webhook for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///   webhookId
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

  /// Get a webhook for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///   webhookId
  Future<WebhookDto> getWebhook(String webhookId) async {
    final response = await getWebhookWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookDto') as WebhookDto;
        }
    return Future<WebhookDto>.value(null);
  }

  /// Get all Webhooks for an Inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
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

  /// Get all Webhooks for an Inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  Future<List<WebhookDto>> getWebhooks(String inboxId) async {
    final response = await getWebhooksWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<WebhookDto>') as List)
        .cast<WebhookDto>()
        .toList(growable: false);
    }
    return Future<List<WebhookDto>>.value(null);
  }

  /// Send webhook test data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] webhookId (required):
  ///   webhookId
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
  ///   webhookId
  Future<WebhookTestResult> sendTestData(String webhookId) async {
    final response = await sendTestDataWithHttpInfo(webhookId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'WebhookTestResult') as WebhookTestResult;
        }
    return Future<WebhookTestResult>.value(null);
  }
}
