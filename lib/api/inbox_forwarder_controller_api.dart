//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxForwarderControllerApi {
  InboxForwarderControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox forwarder
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  ///   createInboxForwarderOptions
  ///
  /// * [String] inboxId:
  ///   Inbox id to attach forwarder to
  Future<Response> createNewInboxForwarderWithHttpInfo(CreateInboxForwarderOptions createInboxForwarderOptions, { String inboxId }) async {
    // Verify required params are set.
    if (createInboxForwarderOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createInboxForwarderOptions');
    }

    final path = r'/forwarders';

    Object postBody = createInboxForwarderOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }

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

  /// Create an inbox forwarder
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [CreateInboxForwarderOptions] createInboxForwarderOptions (required):
  ///   createInboxForwarderOptions
  ///
  /// * [String] inboxId:
  ///   Inbox id to attach forwarder to
  Future<InboxForwarderDto> createNewInboxForwarder(CreateInboxForwarderOptions createInboxForwarderOptions, { String inboxId }) async {
    final response = await createNewInboxForwarderWithHttpInfo(createInboxForwarderOptions,  inboxId: inboxId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderDto',) as InboxForwarderDto;
        }
    return Future<InboxForwarderDto>.value(null);
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
  Future<Response> deleteInboxForwarderWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/forwarders/{id}'
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

  /// Delete an inbox forwarder
  ///
  /// Delete inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<void> deleteInboxForwarder(String id) async {
    final response = await deleteInboxForwarderWithHttpInfo(id);
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
  Future<Response> deleteInboxForwardersWithHttpInfo({ String inboxId }) async {
    // Verify required params are set.

    final path = r'/forwarders';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
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
  Future<void> deleteInboxForwarders({ String inboxId }) async {
    final response = await deleteInboxForwardersWithHttpInfo( inboxId: inboxId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an inbox forwarder
  ///
  /// Get inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<Response> getInboxForwarderWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/forwarders/{id}'
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

  /// Get an inbox forwarder
  ///
  /// Get inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox forwarder
  Future<InboxForwarderDto> getInboxForwarder(String id) async {
    final response = await getInboxForwarderWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderDto',) as InboxForwarderDto;
        }
    return Future<InboxForwarderDto>.value(null);
  }

  /// List inbox forwarders
  ///
  /// List all forwarders attached to an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get forwarders from
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxForwardersWithHttpInfo({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/forwarders';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (searchFilter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'searchFilter', searchFilter));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
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

  /// List inbox forwarders
  ///
  /// List all forwarders attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get forwarders from
  ///
  /// * [int] page:
  ///   Optional page index in inbox forwarder list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [int] size:
  ///   Optional page size in inbox forwarder list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxForwarderDto> getInboxForwarders({ DateTime before, String inboxId, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await getInboxForwardersWithHttpInfo( before: before, inboxId: inboxId, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxForwarderDto',) as PageInboxForwarderDto;
        }
    return Future<PageInboxForwarderDto>.value(null);
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
  ///   inboxForwarderTestOptions
  Future<Response> testInboxForwarderWithHttpInfo(String id, InboxForwarderTestOptions inboxForwarderTestOptions) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (inboxForwarderTestOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxForwarderTestOptions');
    }

    final path = r'/forwarders/{id}/test'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = inboxForwarderTestOptions;

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
  ///   inboxForwarderTestOptions
  Future<InboxForwarderTestResult> testInboxForwarder(String id, InboxForwarderTestOptions inboxForwarderTestOptions) async {
    final response = await testInboxForwarderWithHttpInfo(id, inboxForwarderTestOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
        }
    return Future<InboxForwarderTestResult>.value(null);
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
  ///   inboxForwarderTestOptions
  Future<Response> testInboxForwardersForInboxWithHttpInfo(String inboxId, InboxForwarderTestOptions inboxForwarderTestOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (inboxForwarderTestOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxForwarderTestOptions');
    }

    final path = r'/forwarders';

    Object postBody = inboxForwarderTestOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
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
  ///   inboxForwarderTestOptions
  Future<InboxForwarderTestResult> testInboxForwardersForInbox(String inboxId, InboxForwarderTestOptions inboxForwarderTestOptions) async {
    final response = await testInboxForwardersForInboxWithHttpInfo(inboxId, inboxForwarderTestOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
        }
    return Future<InboxForwarderTestResult>.value(null);
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
  ///   testNewInboxForwarderOptions
  Future<Response> testNewInboxForwarderWithHttpInfo(TestNewInboxForwarderOptions testNewInboxForwarderOptions) async {
    // Verify required params are set.
    if (testNewInboxForwarderOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: testNewInboxForwarderOptions');
    }

    final path = r'/forwarders';

    Object postBody = testNewInboxForwarderOptions;

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
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Test new inbox forwarder
  ///
  /// Test new inbox forwarder
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxForwarderOptions] testNewInboxForwarderOptions (required):
  ///   testNewInboxForwarderOptions
  Future<InboxForwarderTestResult> testNewInboxForwarder(TestNewInboxForwarderOptions testNewInboxForwarderOptions) async {
    final response = await testNewInboxForwarderWithHttpInfo(testNewInboxForwarderOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxForwarderTestResult',) as InboxForwarderTestResult;
        }
    return Future<InboxForwarderTestResult>.value(null);
  }
}
