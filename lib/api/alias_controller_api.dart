//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AliasControllerApi {
  AliasControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  ///   createAliasOptions
  Future<Response> createAliasWithHttpInfo(CreateAliasOptions createAliasOptions) async {
    // Verify required params are set.
    if (createAliasOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createAliasOptions');
    }

    final path = r'/aliases';

    Object postBody = createAliasOptions;

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

  /// Create an email alias. Must be verified by clicking link inside verification email that will be sent to the address. Once verified the alias will be active.
  ///
  /// Email aliases use a MailSlurp randomly generated email address (or a custom domain inbox that you provide) to mask or proxy a real email address. Emails sent to the alias address will be forwarded to the hidden email address it was created for. If you want to send a reply use the threadId attached
  ///
  /// Parameters:
  ///
  /// * [CreateAliasOptions] createAliasOptions (required):
  ///   createAliasOptions
  Future<AliasDto> createAlias(CreateAliasOptions createAliasOptions) async {
    final response = await createAliasWithHttpInfo(createAliasOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AliasDto',) as AliasDto;
        }
    return Future<AliasDto>.value(null);
  }

  /// Delete an email alias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  Future<Response> deleteAliasWithHttpInfo(String aliasId) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }

    final path = r'/aliases/{aliasId}'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

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

  /// Delete an email alias
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  Future<void> deleteAlias(String aliasId) async {
    final response = await deleteAliasWithHttpInfo(aliasId);
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
  ///   aliasId
  Future<Response> getAliasWithHttpInfo(String aliasId) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }

    final path = r'/aliases/{aliasId}'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

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

  /// Get an email alias
  ///
  /// Get an email alias by ID
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  Future<AliasDto> getAlias(String aliasId) async {
    final response = await getAliasWithHttpInfo(aliasId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AliasDto',) as AliasDto;
        }
    return Future<AliasDto>.value(null);
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
  ///   aliasId
  ///
  /// * [int] page:
  ///   Optional page index alias email list pagination
  ///
  /// * [int] size:
  ///   Optional page size alias email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAliasEmailsWithHttpInfo(String aliasId, { int page, int size, String sort }) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }

    final path = r'/aliases/{aliasId}/emails'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

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

  /// Get emails for an alias
  ///
  /// Get paginated emails for an alias by ID
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [int] page:
  ///   Optional page index alias email list pagination
  ///
  /// * [int] size:
  ///   Optional page size alias email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageEmailProjection> getAliasEmails(String aliasId, { int page, int size, String sort }) async {
    final response = await getAliasEmailsWithHttpInfo(aliasId,  page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
        }
    return Future<PageEmailProjection>.value(null);
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
  ///   aliasId
  ///
  /// * [int] page:
  ///   Optional page index in thread list pagination
  ///
  /// * [int] size:
  ///   Optional page size in thread list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getAliasThreadsWithHttpInfo(String aliasId, { int page, int size, String sort }) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }

    final path = r'/aliases/{aliasId}/threads'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

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

  /// Get threads created for an alias
  ///
  /// Returns threads created for an email alias in paginated form
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [int] page:
  ///   Optional page index in thread list pagination
  ///
  /// * [int] size:
  ///   Optional page size in thread list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageThreadProjection> getAliasThreads(String aliasId, { int page, int size, String sort }) async {
    final response = await getAliasThreadsWithHttpInfo(aliasId,  page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageThreadProjection',) as PageThreadProjection;
        }
    return Future<PageThreadProjection>.value(null);
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
  Future<Response> getAliasesWithHttpInfo({ int page, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/aliases';

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
  Future<PageAlias> getAliases({ int page, int size, String sort }) async {
    final response = await getAliasesWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAlias',) as PageAlias;
        }
    return Future<PageAlias>.value(null);
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
  ///   replyToAliasEmailOptions
  Future<Response> replyToAliasEmailWithHttpInfo(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }
    if (replyToAliasEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: replyToAliasEmailOptions');
    }

    final path = r'/aliases/{aliasId}/emails/{emailId}'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString())
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody = replyToAliasEmailOptions;

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
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
  ///   replyToAliasEmailOptions
  Future<SentEmailDto> replyToAliasEmail(String aliasId, String emailId, ReplyToAliasEmailOptions replyToAliasEmailOptions) async {
    final response = await replyToAliasEmailWithHttpInfo(aliasId, emailId, replyToAliasEmailOptions);
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

  /// Send an email from an alias inbox
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email to be sent
  Future<Response> sendAliasEmailWithHttpInfo(String aliasId, { SendEmailOptions sendEmailOptions }) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }

    final path = r'/aliases/{aliasId}/emails'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

    Object postBody = sendEmailOptions;

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

  /// Send an email from an alias inbox
  ///
  /// Send an email from an alias. Replies to the email will be forwarded to the alias masked email address
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email to be sent
  Future<SentEmailDto> sendAliasEmail(String aliasId, { SendEmailOptions sendEmailOptions }) async {
    final response = await sendAliasEmailWithHttpInfo(aliasId,  sendEmailOptions: sendEmailOptions );
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

  /// Update an email alias
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [UpdateAliasOptions] updateAliasOptions (required):
  ///   updateAliasOptions
  Future<Response> updateAliasWithHttpInfo(String aliasId, UpdateAliasOptions updateAliasOptions) async {
    // Verify required params are set.
    if (aliasId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: aliasId');
    }
    if (updateAliasOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: updateAliasOptions');
    }

    final path = r'/aliases/{aliasId}'
      .replaceAll('{' + 'aliasId' + '}', aliasId.toString());

    Object postBody = updateAliasOptions;

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
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Update an email alias
  ///
  /// Parameters:
  ///
  /// * [String] aliasId (required):
  ///   aliasId
  ///
  /// * [UpdateAliasOptions] updateAliasOptions (required):
  ///   updateAliasOptions
  Future<void> updateAlias(String aliasId, UpdateAliasOptions updateAliasOptions) async {
    final response = await updateAliasWithHttpInfo(aliasId, updateAliasOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
