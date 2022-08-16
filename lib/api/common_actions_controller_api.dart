//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CommonActionsControllerApi {
  CommonActionsControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create new random inbox
  ///
  /// Returns an Inbox with an `id` and an `emailAddress`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///
  /// * [bool] useDomainPool:
  ///
  /// * [DateTime] expiresAt:
  ///
  /// * [int] expiresIn:
  ///
  /// * [String] emailAddress:
  ///
  /// * [String] inboxType:
  ///
  /// * [String] description:
  ///
  /// * [String] name:
  ///
  /// * [List<String>] tags:
  ///
  /// * [bool] favourite:
  ///
  /// * [bool] virtualInbox:
  Future<Response> createNewEmailAddressWithHttpInfo({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox }) async {
    // Verify required params are set.

    final path = r'/newEmailAddress';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'allowTeamAccess', allowTeamAccess));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'useDomainPool', useDomainPool));
    }
    if (expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresIn', expiresIn));
    }
    if (emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));
    }
    if (inboxType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxType', inboxType));
    }
    if (description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'description', description));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tags', tags));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (virtualInbox != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'virtualInbox', virtualInbox));
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create new random inbox
  ///
  /// Returns an Inbox with an `id` and an `emailAddress`
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///
  /// * [bool] useDomainPool:
  ///
  /// * [DateTime] expiresAt:
  ///
  /// * [int] expiresIn:
  ///
  /// * [String] emailAddress:
  ///
  /// * [String] inboxType:
  ///
  /// * [String] description:
  ///
  /// * [String] name:
  ///
  /// * [List<String>] tags:
  ///
  /// * [bool] favourite:
  ///
  /// * [bool] virtualInbox:
  Future<InboxDto> createNewEmailAddress({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox }) async {
    final response = await createNewEmailAddressWithHttpInfo( allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, description: description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxDto',) as InboxDto;
        }
    return Future<InboxDto>.value(null);
  }

  /// Create new random inbox
  ///
  /// Returns an Inbox with an `id` and an `emailAddress`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///
  /// * [bool] useDomainPool:
  ///
  /// * [DateTime] expiresAt:
  ///
  /// * [int] expiresIn:
  ///
  /// * [String] emailAddress:
  ///
  /// * [String] inboxType:
  ///
  /// * [String] description:
  ///
  /// * [String] name:
  ///
  /// * [List<String>] tags:
  ///
  /// * [bool] favourite:
  ///
  /// * [bool] virtualInbox:
  Future<Response> createRandomInboxWithHttpInfo({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox }) async {
    // Verify required params are set.

    final path = r'/createInbox';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'allowTeamAccess', allowTeamAccess));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'useDomainPool', useDomainPool));
    }
    if (expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresIn', expiresIn));
    }
    if (emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));
    }
    if (inboxType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxType', inboxType));
    }
    if (description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'description', description));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tags', tags));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (virtualInbox != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'virtualInbox', virtualInbox));
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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create new random inbox
  ///
  /// Returns an Inbox with an `id` and an `emailAddress`
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///
  /// * [bool] useDomainPool:
  ///
  /// * [DateTime] expiresAt:
  ///
  /// * [int] expiresIn:
  ///
  /// * [String] emailAddress:
  ///
  /// * [String] inboxType:
  ///
  /// * [String] description:
  ///
  /// * [String] name:
  ///
  /// * [List<String>] tags:
  ///
  /// * [bool] favourite:
  ///
  /// * [bool] virtualInbox:
  Future<InboxDto> createRandomInbox({ bool allowTeamAccess, bool useDomainPool, DateTime expiresAt, int expiresIn, String emailAddress, String inboxType, String description, String name, List<String> tags, bool favourite, bool virtualInbox }) async {
    final response = await createRandomInboxWithHttpInfo( allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, description: description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxDto',) as InboxDto;
        }
    return Future<InboxDto>.value(null);
  }

  /// Delete inbox email address by inbox id
  ///
  /// Deletes inbox email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> deleteEmailAddressWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/deleteEmailAddress';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));

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

  /// Delete inbox email address by inbox id
  ///
  /// Deletes inbox email address
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteEmailAddress(String inboxId) async {
    final response = await deleteEmailAddressWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all emails in an inbox
  ///
  /// Deletes all emails
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> emptyInboxWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/emptyInbox';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));

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

  /// Delete all emails in an inbox
  ///
  /// Deletes all emails
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> emptyInbox(String inboxId) async {
    final response = await emptyInboxWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send an email
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SimpleSendEmailOptions] simpleSendEmailOptions (required):
  Future<Response> sendEmailSimpleWithHttpInfo(SimpleSendEmailOptions simpleSendEmailOptions) async {
    // Verify required params are set.
    if (simpleSendEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: simpleSendEmailOptions');
    }

    final path = r'/sendEmail';

    Object postBody = simpleSendEmailOptions;

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

  /// Send an email
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from.
  ///
  /// Parameters:
  ///
  /// * [SimpleSendEmailOptions] simpleSendEmailOptions (required):
  Future<void> sendEmailSimple(SimpleSendEmailOptions simpleSendEmailOptions) async {
    final response = await sendEmailSimpleWithHttpInfo(simpleSendEmailOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
