//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CommonActionsControllerApi {
  CommonActionsControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

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
  ///
  /// * [bool] useShortAddress:
  ///
  /// * [String] domainName:
  ///
  /// * [String] domainId:
  ///
  /// * [String] prefix:
  Future<Response> createNewEmailAddressWithHttpInfo({ bool? allowTeamAccess, bool? useDomainPool, DateTime? expiresAt, int? expiresIn, String? emailAddress, String? inboxType, String? description, String? name, List<String>? tags, bool? favourite, bool? virtualInbox, bool? useShortAddress, String? domainName, String? domainId, String? prefix, }) async {
    // ignore: prefer_const_declarations
    final path = r'/newEmailAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_queryParams('', 'allowTeamAccess', allowTeamAccess));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_queryParams('', 'useDomainPool', useDomainPool));
    }
    if (expiresAt != null) {
      queryParams.addAll(_queryParams('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_queryParams('', 'expiresIn', expiresIn));
    }
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (inboxType != null) {
      queryParams.addAll(_queryParams('', 'inboxType', inboxType));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('multi', 'tags', tags));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (virtualInbox != null) {
      queryParams.addAll(_queryParams('', 'virtualInbox', virtualInbox));
    }
    if (useShortAddress != null) {
      queryParams.addAll(_queryParams('', 'useShortAddress', useShortAddress));
    }
    if (domainName != null) {
      queryParams.addAll(_queryParams('', 'domainName', domainName));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
    }
    if (prefix != null) {
      queryParams.addAll(_queryParams('', 'prefix', prefix));
    }

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
  ///
  /// * [bool] useShortAddress:
  ///
  /// * [String] domainName:
  ///
  /// * [String] domainId:
  ///
  /// * [String] prefix:
  Future<InboxDto?> createNewEmailAddress({ bool? allowTeamAccess, bool? useDomainPool, DateTime? expiresAt, int? expiresIn, String? emailAddress, String? inboxType, String? description, String? name, List<String>? tags, bool? favourite, bool? virtualInbox, bool? useShortAddress, String? domainName, String? domainId, String? prefix, }) async {
    final response = await createNewEmailAddressWithHttpInfo( allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, description: description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox, useShortAddress: useShortAddress, domainName: domainName, domainId: domainId, prefix: prefix, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxDto',) as InboxDto;
    
    }
    return null;
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
  ///
  /// * [bool] useShortAddress:
  ///
  /// * [String] domainName:
  ///
  /// * [String] domainId:
  ///
  /// * [String] prefix:
  Future<Response> createRandomInboxWithHttpInfo({ bool? allowTeamAccess, bool? useDomainPool, DateTime? expiresAt, int? expiresIn, String? emailAddress, String? inboxType, String? description, String? name, List<String>? tags, bool? favourite, bool? virtualInbox, bool? useShortAddress, String? domainName, String? domainId, String? prefix, }) async {
    // ignore: prefer_const_declarations
    final path = r'/createInbox';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (allowTeamAccess != null) {
      queryParams.addAll(_queryParams('', 'allowTeamAccess', allowTeamAccess));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_queryParams('', 'useDomainPool', useDomainPool));
    }
    if (expiresAt != null) {
      queryParams.addAll(_queryParams('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_queryParams('', 'expiresIn', expiresIn));
    }
    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (inboxType != null) {
      queryParams.addAll(_queryParams('', 'inboxType', inboxType));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('multi', 'tags', tags));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (virtualInbox != null) {
      queryParams.addAll(_queryParams('', 'virtualInbox', virtualInbox));
    }
    if (useShortAddress != null) {
      queryParams.addAll(_queryParams('', 'useShortAddress', useShortAddress));
    }
    if (domainName != null) {
      queryParams.addAll(_queryParams('', 'domainName', domainName));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
    }
    if (prefix != null) {
      queryParams.addAll(_queryParams('', 'prefix', prefix));
    }

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
  ///
  /// * [bool] useShortAddress:
  ///
  /// * [String] domainName:
  ///
  /// * [String] domainId:
  ///
  /// * [String] prefix:
  Future<InboxDto?> createRandomInbox({ bool? allowTeamAccess, bool? useDomainPool, DateTime? expiresAt, int? expiresIn, String? emailAddress, String? inboxType, String? description, String? name, List<String>? tags, bool? favourite, bool? virtualInbox, bool? useShortAddress, String? domainName, String? domainId, String? prefix, }) async {
    final response = await createRandomInboxWithHttpInfo( allowTeamAccess: allowTeamAccess, useDomainPool: useDomainPool, expiresAt: expiresAt, expiresIn: expiresIn, emailAddress: emailAddress, inboxType: inboxType, description: description, name: name, tags: tags, favourite: favourite, virtualInbox: virtualInbox, useShortAddress: useShortAddress, domainName: domainName, domainId: domainId, prefix: prefix, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxDto',) as InboxDto;
    
    }
    return null;
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
  Future<Response> deleteEmailAddressWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/deleteEmailAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Delete inbox email address by inbox id
  ///
  /// Deletes inbox email address
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteEmailAddress(String inboxId,) async {
    final response = await deleteEmailAddressWithHttpInfo(inboxId,);
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
  Future<Response> emptyInboxWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emptyInbox';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Delete all emails in an inbox
  ///
  /// Deletes all emails
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> emptyInbox(String inboxId,) async {
    final response = await emptyInboxWithHttpInfo(inboxId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send an email using query parameters
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] to (required):
  ///   Email address to send to
  ///
  /// * [String] senderId:
  ///   ID of inbox to send from. If null an inbox will be created for sending
  ///
  /// * [String] body:
  ///   Body of the email message. Supports HTML
  ///
  /// * [String] subject:
  ///   Subject line of the email
  Future<Response> sendEmailQueryWithHttpInfo(String to, { String? senderId, String? body, String? subject, }) async {
    // ignore: prefer_const_declarations
    final path = r'/sendEmailQuery';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (senderId != null) {
      queryParams.addAll(_queryParams('', 'senderId', senderId));
    }
      queryParams.addAll(_queryParams('', 'to', to));
    if (body != null) {
      queryParams.addAll(_queryParams('', 'body', body));
    }
    if (subject != null) {
      queryParams.addAll(_queryParams('', 'subject', subject));
    }

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

  /// Send an email using query parameters
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from. Ensure your parameters are URL encoded.
  ///
  /// Parameters:
  ///
  /// * [String] to (required):
  ///   Email address to send to
  ///
  /// * [String] senderId:
  ///   ID of inbox to send from. If null an inbox will be created for sending
  ///
  /// * [String] body:
  ///   Body of the email message. Supports HTML
  ///
  /// * [String] subject:
  ///   Subject line of the email
  Future<void> sendEmailQuery(String to, { String? senderId, String? body, String? subject, }) async {
    final response = await sendEmailQueryWithHttpInfo(to,  senderId: senderId, body: body, subject: subject, );
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
  Future<Response> sendEmailSimpleWithHttpInfo(SimpleSendEmailOptions simpleSendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/sendEmail';

    // ignore: prefer_final_locals
    Object? postBody = simpleSendEmailOptions;

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

  /// Send an email
  ///
  /// If no senderId or inboxId provided a random email address will be used to send from.
  ///
  /// Parameters:
  ///
  /// * [SimpleSendEmailOptions] simpleSendEmailOptions (required):
  Future<void> sendEmailSimple(SimpleSendEmailOptions simpleSendEmailOptions,) async {
    final response = await sendEmailSimpleWithHttpInfo(simpleSendEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
