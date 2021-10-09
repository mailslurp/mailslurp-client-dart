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
  ///   allowTeamAccess
  ///
  /// * [String] description:
  ///   description
  ///
  /// * [String] emailAddress:
  ///   emailAddress
  ///
  /// * [DateTime] expiresAt:
  ///   expiresAt
  ///
  /// * [int] expiresIn:
  ///   expiresIn
  ///
  /// * [bool] favourite:
  ///   favourite
  ///
  /// * [String] inboxType:
  ///   inboxType
  ///
  /// * [String] name:
  ///   name
  ///
  /// * [List<String>] tags:
  ///   tags
  ///
  /// * [bool] useDomainPool:
  ///   useDomainPool
  Future<Response> createNewEmailAddressWithHttpInfo({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    // Verify required params are set.

    final path = r'/createInbox';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'allowTeamAccess', allowTeamAccess));
    }
    if (description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'description', description));
    }
    if (emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));
    }
    if (expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresIn', expiresIn));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (inboxType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxType', inboxType));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tags', tags));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'useDomainPool', useDomainPool));
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
  ///   allowTeamAccess
  ///
  /// * [String] description:
  ///   description
  ///
  /// * [String] emailAddress:
  ///   emailAddress
  ///
  /// * [DateTime] expiresAt:
  ///   expiresAt
  ///
  /// * [int] expiresIn:
  ///   expiresIn
  ///
  /// * [bool] favourite:
  ///   favourite
  ///
  /// * [String] inboxType:
  ///   inboxType
  ///
  /// * [String] name:
  ///   name
  ///
  /// * [List<String>] tags:
  ///   tags
  ///
  /// * [bool] useDomainPool:
  ///   useDomainPool
  Future<Inbox> createNewEmailAddress({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    final response = await createNewEmailAddressWithHttpInfo( allowTeamAccess: allowTeamAccess, description: description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, inboxType: inboxType, name: name, tags: tags, useDomainPool: useDomainPool );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Inbox',) as Inbox;
        }
    return Future<Inbox>.value(null);
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
  ///   allowTeamAccess
  ///
  /// * [String] description:
  ///   description
  ///
  /// * [String] emailAddress:
  ///   emailAddress
  ///
  /// * [DateTime] expiresAt:
  ///   expiresAt
  ///
  /// * [int] expiresIn:
  ///   expiresIn
  ///
  /// * [bool] favourite:
  ///   favourite
  ///
  /// * [String] inboxType:
  ///   inboxType
  ///
  /// * [String] name:
  ///   name
  ///
  /// * [List<String>] tags:
  ///   tags
  ///
  /// * [bool] useDomainPool:
  ///   useDomainPool
  Future<Response> createNewEmailAddress1WithHttpInfo({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    // Verify required params are set.

    final path = r'/newEmailAddress';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'allowTeamAccess', allowTeamAccess));
    }
    if (description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'description', description));
    }
    if (emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));
    }
    if (expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresIn', expiresIn));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (inboxType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxType', inboxType));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tags', tags));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'useDomainPool', useDomainPool));
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
  ///   allowTeamAccess
  ///
  /// * [String] description:
  ///   description
  ///
  /// * [String] emailAddress:
  ///   emailAddress
  ///
  /// * [DateTime] expiresAt:
  ///   expiresAt
  ///
  /// * [int] expiresIn:
  ///   expiresIn
  ///
  /// * [bool] favourite:
  ///   favourite
  ///
  /// * [String] inboxType:
  ///   inboxType
  ///
  /// * [String] name:
  ///   name
  ///
  /// * [List<String>] tags:
  ///   tags
  ///
  /// * [bool] useDomainPool:
  ///   useDomainPool
  Future<Inbox> createNewEmailAddress1({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    final response = await createNewEmailAddress1WithHttpInfo( allowTeamAccess: allowTeamAccess, description: description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, inboxType: inboxType, name: name, tags: tags, useDomainPool: useDomainPool );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Inbox',) as Inbox;
        }
    return Future<Inbox>.value(null);
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
  ///   inboxId
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
  ///   inboxId
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
  /// * [SimpleSendEmailOptions] emailOptions (required):
  ///   emailOptions
  Future<Response> sendEmailSimpleWithHttpInfo(SimpleSendEmailOptions emailOptions) async {
    // Verify required params are set.
    if (emailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailOptions');
    }

    final path = r'/sendEmail';

    Object postBody = emailOptions;

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
  /// * [SimpleSendEmailOptions] emailOptions (required):
  ///   emailOptions
  Future<void> sendEmailSimple(SimpleSendEmailOptions emailOptions) async {
    final response = await sendEmailSimpleWithHttpInfo(emailOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
