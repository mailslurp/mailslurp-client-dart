//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RulesetControllerApi {
  RulesetControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create a ruleset
  ///
  /// Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateRulesetOptions] createRulesetOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox id to attach ruleset to
  ///
  /// * [String] phoneId:
  ///   Phone id to attach ruleset to
  Future<Response> createNewRulesetWithHttpInfo(CreateRulesetOptions createRulesetOptions, { String? inboxId, String? phoneId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets';

    // ignore: prefer_final_locals
    Object? postBody = createRulesetOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
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

  /// Create a ruleset
  ///
  /// Create a new inbox or phone number rule for forwarding, blocking, and allowing emails or SMS when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [CreateRulesetOptions] createRulesetOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox id to attach ruleset to
  ///
  /// * [String] phoneId:
  ///   Phone id to attach ruleset to
  Future<RulesetDto?> createNewRuleset(CreateRulesetOptions createRulesetOptions, { String? inboxId, String? phoneId, }) async {
    final response = await createNewRulesetWithHttpInfo(createRulesetOptions,  inboxId: inboxId, phoneId: phoneId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RulesetDto',) as RulesetDto;
    
    }
    return null;
  }

  /// Delete a ruleset
  ///
  /// Delete ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  Future<Response> deleteRulesetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets/{id}'
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

  /// Delete a ruleset
  ///
  /// Delete ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  Future<void> deleteRuleset(String id,) async {
    final response = await deleteRulesetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete rulesets
  ///
  /// Delete rulesets. Accepts optional inboxId or phoneId filters.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach ruleset to
  ///
  /// * [String] phoneId:
  Future<Response> deleteRulesetsWithHttpInfo({ String? inboxId, String? phoneId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
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

  /// Delete rulesets
  ///
  /// Delete rulesets. Accepts optional inboxId or phoneId filters.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to attach ruleset to
  ///
  /// * [String] phoneId:
  Future<void> deleteRulesets({ String? inboxId, String? phoneId, }) async {
    final response = await deleteRulesetsWithHttpInfo( inboxId: inboxId, phoneId: phoneId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a ruleset
  ///
  /// Get ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  Future<Response> getRulesetWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets/{id}'
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

  /// Get a ruleset
  ///
  /// Get ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  Future<RulesetDto?> getRuleset(String id,) async {
    final response = await getRulesetWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RulesetDto',) as RulesetDto;
    
    }
    return null;
  }

  /// List rulesets block and allow lists
  ///
  /// List all rulesets attached to an inbox or phone or account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get rulesets from
  ///
  /// * [String] phoneId:
  ///   Optional phone id to get rulesets from
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
  Future<Response> getRulesetsWithHttpInfo({ String? inboxId, String? phoneId, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
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

  /// List rulesets block and allow lists
  ///
  /// List all rulesets attached to an inbox or phone or account
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox id to get rulesets from
  ///
  /// * [String] phoneId:
  ///   Optional phone id to get rulesets from
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
  Future<PageRulesetDto?> getRulesets({ String? inboxId, String? phoneId, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getRulesetsWithHttpInfo( inboxId: inboxId, phoneId: phoneId, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageRulesetDto',) as PageRulesetDto;
    
    }
    return null;
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
  /// * [RulesetTestOptions] rulesetTestOptions (required):
  Future<Response> testInboxRulesetsForInboxWithHttpInfo(String inboxId, RulesetTestOptions rulesetTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets';

    // ignore: prefer_final_locals
    Object? postBody = rulesetTestOptions;

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

  /// Test inbox rulesets for inbox
  ///
  /// Test inbox rulesets for inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox
  ///
  /// * [RulesetTestOptions] rulesetTestOptions (required):
  Future<InboxRulesetTestResult?> testInboxRulesetsForInbox(String inboxId, RulesetTestOptions rulesetTestOptions,) async {
    final response = await testInboxRulesetsForInboxWithHttpInfo(inboxId, rulesetTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
    
    }
    return null;
  }

  /// Test new ruleset
  ///
  /// Test new ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxRulesetOptions] testNewInboxRulesetOptions (required):
  Future<Response> testNewRulesetWithHttpInfo(TestNewInboxRulesetOptions testNewInboxRulesetOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets';

    // ignore: prefer_final_locals
    Object? postBody = testNewInboxRulesetOptions;

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

  /// Test new ruleset
  ///
  /// Test new ruleset
  ///
  /// Parameters:
  ///
  /// * [TestNewInboxRulesetOptions] testNewInboxRulesetOptions (required):
  Future<InboxRulesetTestResult?> testNewRuleset(TestNewInboxRulesetOptions testNewInboxRulesetOptions,) async {
    final response = await testNewRulesetWithHttpInfo(testNewInboxRulesetOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
    
    }
    return null;
  }

  /// Test a ruleset
  ///
  /// Test an inbox or phone ruleset
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  ///
  /// * [RulesetTestOptions] rulesetTestOptions (required):
  Future<Response> testRulesetWithHttpInfo(String id, RulesetTestOptions rulesetTestOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets/{id}/test'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = rulesetTestOptions;

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

  /// Test a ruleset
  ///
  /// Test an inbox or phone ruleset
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   ID of ruleset
  ///
  /// * [RulesetTestOptions] rulesetTestOptions (required):
  Future<InboxRulesetTestResult?> testRuleset(String id, RulesetTestOptions rulesetTestOptions,) async {
    final response = await testRulesetWithHttpInfo(id, rulesetTestOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetTestResult',) as InboxRulesetTestResult;
    
    }
    return null;
  }

  /// Test receiving with rulesets
  ///
  /// Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestRulesetReceivingOptions] testRulesetReceivingOptions (required):
  Future<Response> testRulesetReceivingWithHttpInfo(TestRulesetReceivingOptions testRulesetReceivingOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets/test-receiving';

    // ignore: prefer_final_locals
    Object? postBody = testRulesetReceivingOptions;

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

  /// Test receiving with rulesets
  ///
  /// Test whether inbound emails from an email address would be blocked or allowed by inbox rulesets or test if phone number can receive SMS
  ///
  /// Parameters:
  ///
  /// * [TestRulesetReceivingOptions] testRulesetReceivingOptions (required):
  Future<TestRulesetReceivingResult?> testRulesetReceiving(TestRulesetReceivingOptions testRulesetReceivingOptions,) async {
    final response = await testRulesetReceivingWithHttpInfo(testRulesetReceivingOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TestRulesetReceivingResult',) as TestRulesetReceivingResult;
    
    }
    return null;
  }

  /// Test sending with rulesets
  ///
  /// Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [TestInboxRulesetSendingOptions] testInboxRulesetSendingOptions (required):
  Future<Response> testRulesetSendingWithHttpInfo(TestInboxRulesetSendingOptions testInboxRulesetSendingOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/rulesets/test-sending';

    // ignore: prefer_final_locals
    Object? postBody = testInboxRulesetSendingOptions;

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

  /// Test sending with rulesets
  ///
  /// Test whether outbound emails to an email address would be blocked or allowed by inbox rulesets or whether a phone number can send SMS
  ///
  /// Parameters:
  ///
  /// * [TestInboxRulesetSendingOptions] testInboxRulesetSendingOptions (required):
  Future<TestRulesetSendingResult?> testRulesetSending(TestInboxRulesetSendingOptions testInboxRulesetSendingOptions,) async {
    final response = await testRulesetSendingWithHttpInfo(testInboxRulesetSendingOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TestRulesetSendingResult',) as TestRulesetSendingResult;
    
    }
    return null;
  }
}
