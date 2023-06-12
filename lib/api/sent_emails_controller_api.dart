//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SentEmailsControllerApi {
  SentEmailsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete all sent email receipts
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllSentEmailsWithHttpInfo() async {
    final path = r'/sent';

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

  /// Delete all sent email receipts
  Future<void> deleteAllSentEmails() async {
    final response = await deleteAllSentEmailsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete sent email receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> deleteSentEmailWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/sent/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Delete sent email receipt
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> deleteSentEmail(String id) async {
    final response = await deleteSentEmailWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all sent email tracking pixels in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in sent email tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email tracking pixel list pagination
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
  Future<Response> getAllSentTrackingPixelsWithHttpInfo({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent/tracking-pixels';

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

  /// Get all sent email tracking pixels in paginated form
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in sent email tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email tracking pixel list pagination
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
  Future<PageTrackingPixelProjection> getAllSentTrackingPixels({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getAllSentTrackingPixelsWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageTrackingPixelProjection',) as PageTrackingPixelProjection;
        }
    return Future<PageTrackingPixelProjection>.value(null);
  }

  /// Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
  ///
  /// Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getRawSentEmailContentsWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/sent/{emailId}/raw'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get raw sent email string. Returns unparsed raw SMTP message with headers and body.
  ///
  /// Returns a raw, unparsed, and unprocessed sent email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawSentEmailJson endpoint
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<String> getRawSentEmailContents(String emailId) async {
    final response = await getRawSentEmailContentsWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
        }
    return Future<String>.value(null);
  }

  /// Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
  ///
  /// Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getRawSentEmailJsonWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/sent/{emailId}/raw/json'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get raw sent email in JSON. Unparsed SMTP message in JSON wrapper format.
  ///
  /// Returns a raw, unparsed, and unprocessed sent email wrapped in a JSON response object for easier handling when compared with the getRawSentEmail text/plain response
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<RawEmailJson> getRawSentEmailJson(String emailId) async {
    final response = await getRawSentEmailJsonWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawEmailJson',) as RawEmailJson;
        }
    return Future<RawEmailJson>.value(null);
  }

  /// Get a sent email delivery status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] deliveryId (required):
  Future<Response> getSentDeliveryStatusWithHttpInfo(String deliveryId) async {
    // Verify required params are set.
    if (deliveryId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: deliveryId');
    }

    final path = r'/sent/delivery-status/{deliveryId}'
      .replaceAll('{' + 'deliveryId' + '}', deliveryId.toString());

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

  /// Get a sent email delivery status
  ///
  /// Parameters:
  ///
  /// * [String] deliveryId (required):
  Future<DeliveryStatusDto> getSentDeliveryStatus(String deliveryId) async {
    final response = await getSentDeliveryStatusWithHttpInfo(deliveryId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliveryStatusDto',) as DeliveryStatusDto;
        }
    return Future<DeliveryStatusDto>.value(null);
  }

  /// Get all sent email delivery statuses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getSentDeliveryStatusesWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent/delivery-status';

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

  /// Get all sent email delivery statuses
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageDeliveryStatus> getSentDeliveryStatuses({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getSentDeliveryStatusesWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDeliveryStatus',) as PageDeliveryStatus;
        }
    return Future<PageDeliveryStatus>.value(null);
  }

  /// Get all sent email delivery statuses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sentId (required):
  ///   ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getSentDeliveryStatusesBySentIdWithHttpInfo(String sentId, { int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (sentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sentId');
    }

    final path = r'/sent/{sentId}/delivery-status'
      .replaceAll('{' + 'sentId' + '}', sentId.toString());

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

  /// Get all sent email delivery statuses
  ///
  /// Parameters:
  ///
  /// * [String] sentId (required):
  ///   ID of the sent email that you want to get the delivery status of. Sent email object is returned when sending an email
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageDeliveryStatus> getSentDeliveryStatusesBySentId(String sentId, { int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getSentDeliveryStatusesBySentIdWithHttpInfo(sentId,  page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDeliveryStatus',) as PageDeliveryStatus;
        }
    return Future<PageDeliveryStatus>.value(null);
  }

  /// Get sent email receipt
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSentEmailWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/sent/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get sent email receipt
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<SentEmailDto> getSentEmail(String id) async {
    final response = await getSentEmailWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentEmailDto',) as SentEmailDto;
        }
    return Future<SentEmailDto>.value(null);
  }

  /// Get sent email HTML content
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSentEmailHTMLContentWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/sent/{id}/html'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get sent email HTML content
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<String> getSentEmailHTMLContent(String id) async {
    final response = await getSentEmailHTMLContentWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
        }
    return Future<String>.value(null);
  }

  /// Get sent email URL for viewing in browser or downloading
  ///
  /// Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getSentEmailPreviewURLsWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/sent/{id}/urls'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get sent email URL for viewing in browser or downloading
  ///
  /// Get a list of URLs for sent email content as text/html or raw SMTP message for viewing the message in a browser.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<EmailPreviewUrls> getSentEmailPreviewURLs(String id) async {
    final response = await getSentEmailPreviewURLsWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailPreviewUrls',) as EmailPreviewUrls;
        }
    return Future<EmailPreviewUrls>.value(null);
  }

  /// Get all tracking pixels for a sent email in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] page:
  ///   Optional page index in sent email tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email tracking pixel list pagination
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
  Future<Response> getSentEmailTrackingPixelsWithHttpInfo(String id, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/sent/{id}/tracking-pixels'
      .replaceAll('{' + 'id' + '}', id.toString());

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

  /// Get all tracking pixels for a sent email in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] page:
  ///   Optional page index in sent email tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email tracking pixel list pagination
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
  Future<PageTrackingPixelProjection> getSentEmailTrackingPixels(String id, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getSentEmailTrackingPixelsWithHttpInfo(id,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageTrackingPixelProjection',) as PageTrackingPixelProjection;
        }
    return Future<PageTrackingPixelProjection>.value(null);
  }

  /// Get all sent emails in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inboxId to filter sender of sent emails by
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
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
  Future<Response> getSentEmailsWithHttpInfo({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
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

  /// Get all sent emails in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inboxId to filter sender of sent emails by
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
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
  Future<PageSentEmailProjection> getSentEmails({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getSentEmailsWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentEmailProjection',) as PageSentEmailProjection;
        }
    return Future<PageSentEmailProjection>.value(null);
  }

  /// Get results of email sent with queues in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getSentEmailsWithQueueResultsWithHttpInfo({ int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent/queue-results';

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

  /// Get results of email sent with queues in paginated form
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageSentEmailWithQueueProjection> getSentEmailsWithQueueResults({ int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getSentEmailsWithQueueResultsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentEmailWithQueueProjection',) as PageSentEmailWithQueueProjection;
        }
    return Future<PageSentEmailWithQueueProjection>.value(null);
  }

  /// Get all sent organization emails in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inboxId to filter sender of sent emails by
  ///
  /// * [int] page:
  ///   Optional page index in sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email list pagination
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
  Future<Response> getSentOrganizationEmailsWithHttpInfo({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent/organization';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
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

  /// Get all sent organization emails in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inboxId to filter sender of sent emails by
  ///
  /// * [int] page:
  ///   Optional page index in sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in sent email list pagination
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
  Future<PageSentEmailProjection> getSentOrganizationEmails({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getSentOrganizationEmailsWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentEmailProjection',) as PageSentEmailProjection;
        }
    return Future<PageSentEmailProjection>.value(null);
  }

  /// Wait for delivery statuses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sentId:
  ///   Optional sent email ID filter
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  ///
  /// * [int] index:
  ///   Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> waitForDeliveryStatusesWithHttpInfo({ String sentId, String inboxId, int timeout, int index, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/sent/delivery-status/wait-for';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sentId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sentId', sentId));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (timeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeout', timeout));
    }
    if (index != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'index', index));
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

  /// Wait for delivery statuses
  ///
  /// Parameters:
  ///
  /// * [String] sentId:
  ///   Optional sent email ID filter
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  ///
  /// * [int] timeout:
  ///   Optional timeout milliseconds
  ///
  /// * [int] index:
  ///   Zero based index of the delivery status to wait for. If 1 delivery status already and you want to wait for the 2nd pass index=1
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<DeliveryStatusDto> waitForDeliveryStatuses({ String sentId, String inboxId, int timeout, int index, DateTime since, DateTime before }) async {
    final response = await waitForDeliveryStatusesWithHttpInfo( sentId: sentId, inboxId: inboxId, timeout: timeout, index: index, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeliveryStatusDto',) as DeliveryStatusDto;
        }
    return Future<DeliveryStatusDto>.value(null);
  }
}
