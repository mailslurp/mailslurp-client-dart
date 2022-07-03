//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxRulesetControllerApi {
  InboxRulesetControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox ruleset
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox id to attach ruleset to
  ///
  /// * [CreateInboxRulesetOptions] createInboxRulesetOptions (required):
  Future<Response> createNewInboxRulesetWithHttpInfo(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (createInboxRulesetOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createInboxRulesetOptions');
    }

    final path = r'/rulesets';

    Object postBody = createInboxRulesetOptions;

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create an inbox ruleset
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Inbox id to attach ruleset to
  ///
  /// * [CreateInboxRulesetOptions] createInboxRulesetOptions (required):
  Future<InboxRulesetDto> createNewInboxRuleset(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions) async {
    final response = await createNewInboxRulesetWithHttpInfo(inboxId, createInboxRulesetOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetDto',) as InboxRulesetDto;
        }
    return Future<InboxRulesetDto>.value(null);
  }

  /// Delete an inbox ruleset
  ///
  /// Delete inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  Future<Response> deleteInboxRulesetWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/rulesets/{id}'
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

  /// Delete an inbox ruleset
  ///
  /// Delete inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  Future<void> deleteInboxRuleset(String id) async {
    final response = await deleteInboxRulesetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inbox rulesets
  ///
  /// Delete inbox rulesets. Accepts optional inboxId filter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach ruleset to
  Future<Response> deleteInboxRulesetsWithHttpInfo({ String inboxId }) async {
    // Verify required params are set.

    final path = r'/rulesets';

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

  /// Delete inbox rulesets
  ///
  /// Delete inbox rulesets. Accepts optional inboxId filter.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach ruleset to
  Future<void> deleteInboxRulesets({ String inboxId }) async {
    final response = await deleteInboxRulesetsWithHttpInfo( inboxId: inboxId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an inbox ruleset
  ///
  /// Get inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  Future<Response> getInboxRulesetWithHttpInfo(String id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/rulesets/{id}'
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

  /// Get an inbox ruleset
  ///
  /// Get inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  Future<InboxRulesetDto> getInboxRuleset(String id) async {
    final response = await getInboxRulesetWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetDto',) as InboxRulesetDto;
        }
    return Future<InboxRulesetDto>.value(null);
  }

  /// List inbox rulesets
  ///
  /// List all rulesets attached to an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get rulesets from
  ///
  /// * [int] page:
  ///   Optional page index in inbox ruleset list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox ruleset list pagination
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
  Future<Response> getInboxRulesetsWithHttpInfo({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/rulesets';

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

  /// List inbox rulesets
  ///
  /// List all rulesets attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get rulesets from
  ///
  /// * [int] page:
  ///   Optional page index in inbox ruleset list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox ruleset list pagination
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
  Future<PageInboxRulesetDto> getInboxRulesets({ String inboxId, int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getInboxRulesetsWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxRulesetDto',) as PageInboxRulesetDto;
        }
    return Future<PageInboxRulesetDto>.value(null);
  }

  /// Test an inbox ruleset
  ///
  /// Test an inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  ///
  /// * [InboxRulesetTestOptions] inboxRulesetTestOptions (required):
  Future<Response> testInboxRulesetWithHttpInfo(String id, InboxRulesetTestOptions inboxRulesetTestOptions) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }
    if (inboxRulesetTestOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxRulesetTestOptions');
    }

    final path = r'/rulesets/{id}/test'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody = inboxRulesetTestOptions;

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

  /// Test an inbox ruleset
  ///
  /// Test an inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of inbox ruleset
  ///
  /// * [InboxRulesetTestOptions] inboxRulesetTestOptions (required):
  Future<InboxRulesetTestResult> testInboxRuleset(String id, InboxRulesetTestOptions inboxRulesetTestOptions) async {
    final response = await testInboxRulesetWithHttpInfo(id, inboxRulesetTestOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
        }
    return Future<InboxRulesetTestResult>.value(null);
  }

  /// Test inbox rulesets for inbox
  ///
  /// Test inbox rulesets for inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox
  ///
  /// * [InboxRulesetTestOptions] inboxRulesetTestOptions (required):
  Future<Response> testInboxRulesetsForInboxWithHttpInfo(String inboxId, InboxRulesetTestOptions inboxRulesetTestOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (inboxRulesetTestOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxRulesetTestOptions');
    }

    final path = r'/rulesets';

    Object postBody = inboxRulesetTestOptions;

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

  /// Test inbox rulesets for inbox
  ///
  /// Test inbox rulesets for inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox
  ///
  /// * [InboxRulesetTestOptions] inboxRulesetTestOptions (required):
  Future<InboxRulesetTestResult> testInboxRulesetsForInbox(String inboxId, InboxRulesetTestOptions inboxRulesetTestOptions) async {
    final response = await testInboxRulesetsForInboxWithHttpInfo(inboxId, inboxRulesetTestOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
        }
    return Future<InboxRulesetTestResult>.value(null);
  }

  /// Test new inbox ruleset
  ///
  /// Test new inbox ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxRulesetOptions] testNewInboxRulesetOptions (required):
  Future<Response> testNewInboxRulesetWithHttpInfo(TestNewInboxRulesetOptions testNewInboxRulesetOptions) async {
    // Verify required params are set.
    if (testNewInboxRulesetOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: testNewInboxRulesetOptions');
    }

    final path = r'/rulesets';

    Object postBody = testNewInboxRulesetOptions;

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

  /// Test new inbox ruleset
  ///
  /// Test new inbox ruleset
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxRulesetOptions] testNewInboxRulesetOptions (required):
  Future<InboxRulesetTestResult> testNewInboxRuleset(TestNewInboxRulesetOptions testNewInboxRulesetOptions) async {
    final response = await testNewInboxRulesetWithHttpInfo(testNewInboxRulesetOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
        }
    return Future<InboxRulesetTestResult>.value(null);
  }
}
