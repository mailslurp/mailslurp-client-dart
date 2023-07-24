//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AliasControllerApi {
  AliasControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  ///
  /// Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateAliasOptions] createAliasOptions (required):
  Future<Response> createAliasWithHttpInfo(CreateAliasOptions createAliasOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases';

    // ignore: prefer_final_locals
    Object? postBody = createAliasOptions;

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

  /// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  ///
  /// Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  ///
  /// Parameters:
  ///
  /// * [CreateAliasOptions] createAliasOptions (required):
  Future<AliasDto?> createAlias(CreateAliasOptions createAliasOptions,) async {
    final response = await createAliasWithHttpInfo(createAliasOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AliasDto',) as AliasDto;
    
    }
    return null;
  }

  /// Delete an email alias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  Future<Response> deleteAliasWithHttpInfo(String aliasId,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}'
      .replaceAll('{aliasId}', aliasId);

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

  /// Delete an email alias
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  Future<void> deleteAlias(String aliasId,) async {
    final response = await deleteAliasWithHttpInfo(aliasId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get an email alias
  ///
  /// Get an email alias by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  Future<Response> getAliasWithHttpInfo(String aliasId,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}'
      .replaceAll('{aliasId}', aliasId);

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

  /// Get an email alias
  ///
  /// Get an email alias by ID
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  Future<AliasDto?> getAlias(String aliasId,) async {
    final response = await getAliasWithHttpInfo(aliasId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AliasDto',) as AliasDto;
    
    }
    return null;
  }

  /// Get emails for an alias
  ///
  /// Get paginated emails for an alias by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [int] page:
  ///   Optional page index alias email list pagination
  ///
  /// * [int] size:
  ///   Optional page size alias email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<Response> getAliasEmailsWithHttpInfo(String aliasId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}/emails'
      .replaceAll('{aliasId}', aliasId);

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

  /// Get emails for an alias
  ///
  /// Get paginated emails for an alias by ID
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [int] page:
  ///   Optional page index alias email list pagination
  ///
  /// * [int] size:
  ///   Optional page size alias email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<PageEmailProjection?> getAliasEmails(String aliasId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAliasEmailsWithHttpInfo(aliasId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
    
    }
    return null;
  }

  /// Get threads created for an alias
  ///
  /// Returns threads created for an email alias in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [int] page:
  ///   Optional page index in thread list pagination
  ///
  /// * [int] size:
  ///   Optional page size in thread list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<Response> getAliasThreadsWithHttpInfo(String aliasId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}/threads'
      .replaceAll('{aliasId}', aliasId);

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

  /// Get threads created for an alias
  ///
  /// Returns threads created for an email alias in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [int] page:
  ///   Optional page index in thread list pagination
  ///
  /// * [int] size:
  ///   Optional page size in thread list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<PageThreadProjection?> getAliasThreads(String aliasId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAliasThreadsWithHttpInfo(aliasId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageThreadProjection',) as PageThreadProjection;
    
    }
    return null;
  }

  /// Get all email aliases you have created
  ///
  /// Get all email aliases in paginated form
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in alias list pagination
  ///
  /// * [int] size:
  ///   Optional page size in alias list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAliasesWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases';

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

  /// Get all email aliases you have created
  ///
  /// Get all email aliases in paginated form
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in alias list pagination
  ///
  /// * [int] size:
  ///   Optional page size in alias list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageAlias?> getAliases({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAliasesWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAlias',) as PageAlias;
    
    }
    return null;
  }

  /// Reply to an email
  ///
  /// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   ID of the alias that email belongs to
  ///
  /// * [String] emailId (required):
  ///   ID of the email that should be replied to
  ///
  /// * [ReplyToAliasEmailOptions] replyToAliasEmailOptions (required):
  Future<Response> replyToAliasEmailWithHttpInfo(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}/emails/{emailId}'
      .replaceAll('{aliasId}', aliasId)
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = replyToAliasEmailOptions;

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

  /// Reply to an email
  ///
  /// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   ID of the alias that email belongs to
  ///
  /// * [String] emailId (required):
  ///   ID of the email that should be replied to
  ///
  /// * [ReplyToAliasEmailOptions] replyToAliasEmailOptions (required):
  Future<SentEmailDto?> replyToAliasEmail(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions,) async {
    final response = await replyToAliasEmailWithHttpInfo(aliasId, emailId, replyToAliasEmailOptions,);
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

  /// Send an email from an alias inbox
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> sendAliasEmailWithHttpInfo(String aliasId, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}/emails'
      .replaceAll('{aliasId}', aliasId);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

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

  /// Send an email from an alias inbox
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<SentEmailDto?> sendAliasEmail(String aliasId, SendEmailOptions sendEmailOptions,) async {
    final response = await sendAliasEmailWithHttpInfo(aliasId, sendEmailOptions,);
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

  /// Update an email alias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [UpdateAliasOptions] updateAliasOptions (required):
  Future<Response> updateAliasWithHttpInfo(String aliasId, UpdateAliasOptions updateAliasOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/aliases/{aliasId}'
      .replaceAll('{aliasId}', aliasId);

    // ignore: prefer_final_locals
    Object? postBody = updateAliasOptions;

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

  /// Update an email alias
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///
  /// * [UpdateAliasOptions] updateAliasOptions (required):
  Future<AliasDto?> updateAlias(String aliasId, UpdateAliasOptions updateAliasOptions,) async {
    final response = await updateAliasWithHttpInfo(aliasId, updateAliasOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AliasDto',) as AliasDto;
    
    }
    return null;
  }
}
