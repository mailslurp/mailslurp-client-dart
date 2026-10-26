//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserControllerApi {
  UserControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox retention policy for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxRetentionPolicyOptions] createInboxRetentionPolicyOptions (required):
  Future<Response> createInboxRetentionPolicyWithHttpInfo(CreateInboxRetentionPolicyOptions createInboxRetentionPolicyOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies';

    // ignore: prefer_final_locals
    Object? postBody = createInboxRetentionPolicyOptions;

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

  /// Create an inbox retention policy for your account
  ///
  /// Parameters:
  ///
  /// * [CreateInboxRetentionPolicyOptions] createInboxRetentionPolicyOptions (required):
  Future<InboxRetentionPolicyDto?> createInboxRetentionPolicy(CreateInboxRetentionPolicyOptions createInboxRetentionPolicyOptions,) async {
    final response = await createInboxRetentionPolicyWithHttpInfo(createInboxRetentionPolicyOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyDto',) as InboxRetentionPolicyDto;
    
    }
    return null;
  }

  /// Start an asynchronous inbox retention policy run for your account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createInboxRetentionPolicyRunWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/account/run';

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

  /// Start an asynchronous inbox retention policy run for your account
  Future<InboxRetentionPolicyRunDto?> createInboxRetentionPolicyRun() async {
    final response = await createInboxRetentionPolicyRunWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyRunDto',) as InboxRetentionPolicyRunDto;
    
    }
    return null;
  }

  /// Create inbox retention policy for your global account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxRetentionPolicyForAccountOptions] createInboxRetentionPolicyForAccountOptions (required):
  Future<Response> createOrUpdateInboxRetentionPolicyForAccountWithHttpInfo(CreateInboxRetentionPolicyForAccountOptions createInboxRetentionPolicyForAccountOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/account';

    // ignore: prefer_final_locals
    Object? postBody = createInboxRetentionPolicyForAccountOptions;

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

  /// Create inbox retention policy for your global account
  ///
  /// Parameters:
  ///
  /// * [CreateInboxRetentionPolicyForAccountOptions] createInboxRetentionPolicyForAccountOptions (required):
  Future<InboxRetentionPolicyDto?> createOrUpdateInboxRetentionPolicyForAccount(CreateInboxRetentionPolicyForAccountOptions createInboxRetentionPolicyForAccountOptions,) async {
    final response = await createOrUpdateInboxRetentionPolicyForAccountWithHttpInfo(createInboxRetentionPolicyForAccountOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyDto',) as InboxRetentionPolicyDto;
    
    }
    return null;
  }

  /// Delete an inbox retention policy for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> deleteInboxRetentionPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/{policyId}'
      .replaceAll('{policyId}', policyId);

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

  /// Delete an inbox retention policy for your account
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<EmptyResponseDto?> deleteInboxRetentionPolicy(String policyId,) async {
    final response = await deleteInboxRetentionPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmptyResponseDto',) as EmptyResponseDto;
    
    }
    return null;
  }

  /// Delete inbox retention policy for your global account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteInboxRetentionPolicyForAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/account';

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

  /// Delete inbox retention policy for your global account
  Future<EmptyResponseDto?> deleteInboxRetentionPolicyForAccount() async {
    final response = await deleteInboxRetentionPolicyForAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmptyResponseDto',) as EmptyResponseDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /user/automations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] filter:
  ///   Optional automation type filter
  Future<Response> getEntityAutomationsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? phoneId, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/automations';

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
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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

  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] filter:
  ///   Optional automation type filter
  Future<PageEntityAutomationItems?> getEntityAutomations({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? phoneId, String? filter, }) async {
    final response = await getEntityAutomationsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, phoneId: phoneId, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityAutomationItems',) as PageEntityAutomationItems;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /user/events' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] emailId:
  ///   Optional email ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] smsId:
  ///   Optional SMS ID
  ///
  /// * [String] attachmentId:
  ///   Optional attachment ID
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<Response> getEntityEventsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? emailId, String? phoneId, String? smsId, String? attachmentId, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/events';

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
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (emailId != null) {
      queryParams.addAll(_queryParams('', 'emailId', emailId));
    }
    if (phoneId != null) {
      queryParams.addAll(_queryParams('', 'phoneId', phoneId));
    }
    if (smsId != null) {
      queryParams.addAll(_queryParams('', 'smsId', smsId));
    }
    if (attachmentId != null) {
      queryParams.addAll(_queryParams('', 'attachmentId', attachmentId));
    }
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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

  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] inboxId:
  ///   Optional inbox ID
  ///
  /// * [String] emailId:
  ///   Optional email ID
  ///
  /// * [String] phoneId:
  ///   Optional phone ID
  ///
  /// * [String] smsId:
  ///   Optional SMS ID
  ///
  /// * [String] attachmentId:
  ///   Optional attachment ID
  ///
  /// * [String] filter:
  ///   Optional type filter
  Future<PageEntityEventItems?> getEntityEvents({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? inboxId, String? emailId, String? phoneId, String? smsId, String? attachmentId, String? filter, }) async {
    final response = await getEntityEventsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, inboxId: inboxId, emailId: emailId, phoneId: phoneId, smsId: smsId, attachmentId: attachmentId, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityEventItems',) as PageEntityEventItems;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /user/favorites' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] filter:
  ///   Optional type filter
  Future<Response> getEntityFavoritesWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? filter, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/favorites';

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
    if (filter != null) {
      queryParams.addAll(_queryParams('', 'filter', filter));
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

  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
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
  /// * [String] filter:
  ///   Optional type filter
  Future<PageEntityFavouriteItems?> getEntityFavorites({ int? page, int? size, String? sort, DateTime? since, DateTime? before, String? filter, }) async {
    final response = await getEntityFavoritesWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, filter: filter, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEntityFavouriteItems',) as PageEntityFavouriteItems;
    
    }
    return null;
  }

  /// Get an inbox retention policy for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<Response> getInboxRetentionPolicyWithHttpInfo(String policyId,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/{policyId}'
      .replaceAll('{policyId}', policyId);

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

  /// Get an inbox retention policy for your account
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  Future<InboxRetentionPolicyDto?> getInboxRetentionPolicy(String policyId,) async {
    final response = await getInboxRetentionPolicyWithHttpInfo(policyId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyDto',) as InboxRetentionPolicyDto;
    
    }
    return null;
  }

  /// Get inbox retention policy for your global account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxRetentionPolicyForAccountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/account';

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

  /// Get inbox retention policy for your global account
  Future<InboxRetentionPolicyOptionalDto?> getInboxRetentionPolicyForAccount() async {
    final response = await getInboxRetentionPolicyForAccountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyOptionalDto',) as InboxRetentionPolicyOptionalDto;
    
    }
    return null;
  }

  /// Get a previously submitted inbox retention policy run for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<Response> getInboxRetentionPolicyRunWithHttpInfo(String runId,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/runs/{runId}'
      .replaceAll('{runId}', runId);

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

  /// Get a previously submitted inbox retention policy run for your account
  ///
  /// Parameters:
  ///
  /// * [String] runId (required):
  Future<InboxRetentionPolicyRunDto?> getInboxRetentionPolicyRun(String runId,) async {
    final response = await getInboxRetentionPolicyRunWithHttpInfo(runId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyRunDto',) as InboxRetentionPolicyRunDto;
    
    }
    return null;
  }

  /// List recent inbox retention policy runs for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxRetentionPolicyRunsWithHttpInfo({ int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/runs';

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

  /// List recent inbox retention policy runs for your account
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index
  ///
  /// * [int] size:
  ///   Optional page size
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxRetentionPolicyRunProjection?> getInboxRetentionPolicyRuns({ int? page, int? size, String? sort, }) async {
    final response = await getInboxRetentionPolicyRunsWithHttpInfo( page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxRetentionPolicyRunProjection',) as PageInboxRetentionPolicyRunProjection;
    
    }
    return null;
  }

  /// Utility function to extract properties from JSON objects in language where this is cumbersome.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] property (required):
  ///   JSON property name or dot separated path selector such as `a.b.c`
  ///
  /// * [JsonNode] jsonNode (required):
  Future<Response> getJsonPropertyAsStringWithHttpInfo(String property, JsonNode jsonNode,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/json/pluck';

    // ignore: prefer_final_locals
    Object? postBody = jsonNode;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'property', property));

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

  /// Utility function to extract properties from JSON objects in language where this is cumbersome.
  ///
  /// Parameters:
  ///
  /// * [String] property (required):
  ///   JSON property name or dot separated path selector such as `a.b.c`
  ///
  /// * [JsonNode] jsonNode (required):
  Future<String?> getJsonPropertyAsString(String property, JsonNode jsonNode,) async {
    final response = await getJsonPropertyAsStringWithHttpInfo(property, jsonNode,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'String',) as String;
    
    }
    return null;
  }

  /// Get account information for your user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUserInfoWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/info';

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

  /// Get account information for your user
  Future<UserInfoDto?> getUserInfo() async {
    final response = await getUserInfoWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserInfoDto',) as UserInfoDto;
    
    }
    return null;
  }

  /// Get retained storage usage insights for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum number of inboxes and domains to return
  Future<Response> getUserStorageInsightsWithHttpInfo({ int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/user/storage/insights';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
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

  /// Get retained storage usage insights for your account
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum number of inboxes and domains to return
  Future<UserStorageInsightsDto?> getUserStorageInsights({ int? limit, }) async {
    final response = await getUserStorageInsightsWithHttpInfo( limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserStorageInsightsDto',) as UserStorageInsightsDto;
    
    }
    return null;
  }

  /// List inbox retention policies for your account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listInboxRetentionPoliciesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies';

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

  /// List inbox retention policies for your account
  Future<InboxRetentionPoliciesDto?> listInboxRetentionPolicies() async {
    final response = await listInboxRetentionPoliciesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPoliciesDto',) as InboxRetentionPoliciesDto;
    
    }
    return null;
  }

  /// Update an inbox retention policy for your account
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///
  /// * [UpdateInboxRetentionPolicyOptions] updateInboxRetentionPolicyOptions (required):
  Future<Response> updateInboxRetentionPolicyWithHttpInfo(String policyId, UpdateInboxRetentionPolicyOptions updateInboxRetentionPolicyOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/user/inbox-retention-policies/{policyId}'
      .replaceAll('{policyId}', policyId);

    // ignore: prefer_final_locals
    Object? postBody = updateInboxRetentionPolicyOptions;

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

  /// Update an inbox retention policy for your account
  ///
  /// Parameters:
  ///
  /// * [String] policyId (required):
  ///
  /// * [UpdateInboxRetentionPolicyOptions] updateInboxRetentionPolicyOptions (required):
  Future<InboxRetentionPolicyDto?> updateInboxRetentionPolicy(String policyId, UpdateInboxRetentionPolicyOptions updateInboxRetentionPolicyOptions,) async {
    final response = await updateInboxRetentionPolicyWithHttpInfo(policyId, updateInboxRetentionPolicyOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRetentionPolicyDto',) as InboxRetentionPolicyDto;
    
    }
    return null;
  }
}
