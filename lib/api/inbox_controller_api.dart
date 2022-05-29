//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxControllerApi {
  InboxControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  ///
  /// * [bool] favourite:
  ///   Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] allowTeamAccess:
  ///   DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] inboxType:
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  ///
  /// * [bool] virtualInbox:
  ///   Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  Future<Response> createInboxWithHttpInfo({ String emailAddress, List<String> tags, String name, String description, bool useDomainPool, bool favourite, DateTime expiresAt, int expiresIn, bool allowTeamAccess, String inboxType, bool virtualInbox }) async {
    // Verify required params are set.

    final path = r'/inboxes';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));
    }
    if (tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'tags', tags));
    }
    if (name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'description', description));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'useDomainPool', useDomainPool));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'expiresIn', expiresIn));
    }
    if (allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'allowTeamAccess', allowTeamAccess));
    }
    if (inboxType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxType', inboxType));
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

  /// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  ///
  /// * [bool] favourite:
  ///   Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] allowTeamAccess:
  ///   DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] inboxType:
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  ///
  /// * [bool] virtualInbox:
  ///   Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  Future<InboxDto> createInbox({ String emailAddress, List<String> tags, String name, String description, bool useDomainPool, bool favourite, DateTime expiresAt, int expiresIn, bool allowTeamAccess, String inboxType, bool virtualInbox }) async {
    final response = await createInboxWithHttpInfo( emailAddress: emailAddress, tags: tags, name: name, description: description, useDomainPool: useDomainPool, favourite: favourite, expiresAt: expiresAt, expiresIn: expiresIn, allowTeamAccess: allowTeamAccess, inboxType: inboxType, virtualInbox: virtualInbox );
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

  /// Create an inbox ruleset
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [CreateInboxRulesetOptions] createInboxRulesetOptions (required):
  Future<Response> createInboxRulesetWithHttpInfo(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (createInboxRulesetOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createInboxRulesetOptions');
    }

    final path = r'/inboxes/{inboxId}/rulesets'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = createInboxRulesetOptions;

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

  /// Create an inbox ruleset
  ///
  /// Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [CreateInboxRulesetOptions] createInboxRulesetOptions (required):
  Future<InboxRulesetDto> createInboxRuleset(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions) async {
    final response = await createInboxRulesetWithHttpInfo(inboxId, createInboxRulesetOptions);
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

  /// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createInboxWithDefaultsWithHttpInfo() async {
    final path = r'/inboxes/withDefaults';

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  Future<InboxDto> createInboxWithDefaults() async {
    final response = await createInboxWithDefaultsWithHttpInfo();
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

  /// Create an inbox with options. Extended options for inbox creation.
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<Response> createInboxWithOptionsWithHttpInfo(CreateInboxDto createInboxDto) async {
    // Verify required params are set.
    if (createInboxDto == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: createInboxDto');
    }

    final path = r'/inboxes/withOptions';

    Object postBody = createInboxDto;

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

  /// Create an inbox with options. Extended options for inbox creation.
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<InboxDto> createInboxWithOptions(CreateInboxDto createInboxDto) async {
    final response = await createInboxWithOptionsWithHttpInfo(createInboxDto);
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

  /// Delete all emails in a given inboxes.
  ///
  /// Deletes all emails in an inbox. Be careful as emails cannot be recovered
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> deleteAllInboxEmailsWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/deleteAllInboxEmails'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Delete all emails in a given inboxes.
  ///
  /// Deletes all emails in an inbox. Be careful as emails cannot be recovered
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteAllInboxEmails(String inboxId) async {
    final response = await deleteAllInboxEmailsWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete all inboxes
  ///
  /// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllInboxesWithHttpInfo() async {
    final path = r'/inboxes';

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

  /// Delete all inboxes
  ///
  /// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  Future<void> deleteAllInboxes() async {
    final response = await deleteAllInboxesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inbox
  ///
  /// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> deleteInboxWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Delete inbox
  ///
  /// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteInbox(String inboxId) async {
    final response = await deleteInboxWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Does inbox exist
  ///
  /// Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address
  Future<Response> doesInboxExistWithHttpInfo(String emailAddress) async {
    // Verify required params are set.
    if (emailAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailAddress');
    }

    final path = r'/inboxes/exists';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));

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

  /// Does inbox exist
  ///
  /// Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address
  Future<InboxExistsDto> doesInboxExist(String emailAddress) async {
    final response = await doesInboxExistWithHttpInfo(emailAddress);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxExistsDto',) as InboxExistsDto;
        }
    return Future<InboxExistsDto>.value(null);
  }

  /// Remove expired inboxes
  ///
  /// Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional expired at before flag to flush expired inboxes that have expired before the given time
  Future<Response> flushExpiredWithHttpInfo({ DateTime before }) async {
    // Verify required params are set.

    final path = r'/inboxes/expired';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Remove expired inboxes
  ///
  /// Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional expired at before flag to flush expired inboxes that have expired before the given time
  Future<FlushExpiredInboxesResult> flushExpired({ DateTime before }) async {
    final response = await flushExpiredWithHttpInfo( before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlushExpiredInboxesResult',) as FlushExpiredInboxesResult;
        }
    return Future<FlushExpiredInboxesResult>.value(null);
  }

  /// List All Inboxes Paginated
  ///
  /// List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   DEPRECATED. Optionally filter by team access.
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> getAllInboxesWithHttpInfo({ int page, int size, String sort, bool favourite, String search, String tag, bool teamAccess, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/inboxes/paginated';

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
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'search', search));
    }
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tag', tag));
    }
    if (teamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'teamAccess', teamAccess));
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

  /// List All Inboxes Paginated
  ///
  /// List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   DEPRECATED. Optionally filter by team access.
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<PageInboxProjection> getAllInboxes({ int page, int size, String sort, bool favourite, String search, String tag, bool teamAccess, DateTime since, DateTime before }) async {
    final response = await getAllInboxesWithHttpInfo( page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, teamAccess: teamAccess, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxProjection',) as PageInboxProjection;
        }
    return Future<PageInboxProjection>.value(null);
  }

  /// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  ///
  /// List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  ///
  /// * [int] size:
  ///   Alias for limit. Assessed first before assessing any passed limit.
  ///
  /// * [int] limit:
  ///   Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  ///
  /// * [String] sort:
  ///   Sort the results by received date and direction ASC or DESC
  ///
  /// * [int] retryTimeout:
  ///   Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  ///
  /// * [int] delayTimeout:
  ///
  /// * [int] minCount:
  ///   Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  ///
  /// * [bool] unreadOnly:
  ///
  /// * [DateTime] before:
  ///   Exclude emails received after this ISO 8601 date time
  ///
  /// * [DateTime] since:
  ///   Exclude emails received before this ISO 8601 date time
  Future<Response> getEmailsWithHttpInfo(String inboxId, { int size, int limit, String sort, int retryTimeout, int delayTimeout, int minCount, bool unreadOnly, DateTime before, DateTime since }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/emails'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'size', size));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'sort', sort));
    }
    if (retryTimeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'retryTimeout', retryTimeout));
    }
    if (delayTimeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'delayTimeout', delayTimeout));
    }
    if (minCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'minCount', minCount));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
    }
    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'since', since));
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

  /// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  ///
  /// List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  ///
  /// * [int] size:
  ///   Alias for limit. Assessed first before assessing any passed limit.
  ///
  /// * [int] limit:
  ///   Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  ///
  /// * [String] sort:
  ///   Sort the results by received date and direction ASC or DESC
  ///
  /// * [int] retryTimeout:
  ///   Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  ///
  /// * [int] delayTimeout:
  ///
  /// * [int] minCount:
  ///   Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  ///
  /// * [bool] unreadOnly:
  ///
  /// * [DateTime] before:
  ///   Exclude emails received after this ISO 8601 date time
  ///
  /// * [DateTime] since:
  ///   Exclude emails received before this ISO 8601 date time
  Future<List<EmailPreview>> getEmails(String inboxId, { int size, int limit, String sort, int retryTimeout, int delayTimeout, int minCount, bool unreadOnly, DateTime before, DateTime since }) async {
    final response = await getEmailsWithHttpInfo(inboxId,  size: size, limit: limit, sort: sort, retryTimeout: retryTimeout, delayTimeout: delayTimeout, minCount: minCount, unreadOnly: unreadOnly, before: before, since: since );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList(growable: false);
    }
    return Future<List<EmailPreview>>.value(null);
  }

  /// Get IMAP and SMTP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> getImapSmtpAccessWithHttpInfo({ String inboxId }) async {
    // Verify required params are set.

    final path = r'/inboxes/imap-smtp-access';

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
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Get IMAP and SMTP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<ImapSmtpAccessDetails> getImapSmtpAccess({ String inboxId }) async {
    final response = await getImapSmtpAccessWithHttpInfo( inboxId: inboxId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapSmtpAccessDetails',) as ImapSmtpAccessDetails;
        }
    return Future<ImapSmtpAccessDetails>.value(null);
  }

  /// Get Inbox. Returns properties of an inbox.
  ///
  /// Returns an inbox's properties, including its email address and ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> getInboxWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get Inbox. Returns properties of an inbox.
  ///
  /// Returns an inbox's properties, including its email address and ID.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<InboxDto> getInbox(String inboxId) async {
    final response = await getInboxWithHttpInfo(inboxId);
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

  /// Search for an inbox with the provided email address
  ///
  /// Get a inbox result by email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<Response> getInboxByEmailAddressWithHttpInfo(String emailAddress) async {
    // Verify required params are set.
    if (emailAddress == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailAddress');
    }

    final path = r'/inboxes/byEmailAddress';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'emailAddress', emailAddress));

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

  /// Search for an inbox with the provided email address
  ///
  /// Get a inbox result by email address
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<InboxByEmailAddressResult> getInboxByEmailAddress(String emailAddress) async {
    final response = await getInboxByEmailAddressWithHttpInfo(emailAddress);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxByEmailAddressResult',) as InboxByEmailAddressResult;
        }
    return Future<InboxByEmailAddressResult>.value(null);
  }

  /// Get total inbox count
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxCountWithHttpInfo() async {
    final path = r'/inboxes/count';

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

  /// Get total inbox count
  Future<CountDto> getInboxCount() async {
    final response = await getInboxCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
        }
    return Future<CountDto>.value(null);
  }

  /// Get email count in inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  Future<Response> getInboxEmailCountWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/emails/count'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get email count in inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  Future<CountDto> getInboxEmailCount(String inboxId) async {
    final response = await getInboxEmailCountWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
        }
    return Future<CountDto>.value(null);
  }

  /// Get inbox emails paginated
  ///
  /// Get a paginated list of emails in an inbox. Does not hold connections open.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  ///
  /// * [int] page:
  ///   Optional page index in inbox emails list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox emails list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by received before given date time
  Future<Response> getInboxEmailsPaginatedWithHttpInfo(String inboxId, { int page, int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/emails/paginated'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get inbox emails paginated
  ///
  /// Get a paginated list of emails in an inbox. Does not hold connections open.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  ///
  /// * [int] page:
  ///   Optional page index in inbox emails list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox emails list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by received before given date time
  Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { int page, int size, String sort, DateTime since, DateTime before }) async {
    final response = await getInboxEmailsPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailPreview',) as PageEmailPreview;
        }
    return Future<PageEmailPreview>.value(null);
  }

  /// Get all inbox IDs
  ///
  /// Get list of inbox IDs
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxIdsWithHttpInfo() async {
    final path = r'/inboxes/ids';

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

  /// Get all inbox IDs
  ///
  /// Get list of inbox IDs
  Future<InboxIdsResult> getInboxIds() async {
    final response = await getInboxIdsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxIdsResult',) as InboxIdsResult;
        }
    return Future<InboxIdsResult>.value(null);
  }

  /// Get Inbox Sent Emails
  ///
  /// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  ///   Optional sent email search
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<Response> getInboxSentEmailsWithHttpInfo(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/sent'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Get Inbox Sent Emails
  ///
  /// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  ///   Optional sent email search
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getInboxSentEmailsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
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

  /// Get inbox tags
  ///
  /// Get all inbox tags
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxTagsWithHttpInfo() async {
    final path = r'/inboxes/tags';

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

  /// Get inbox tags
  ///
  /// Get all inbox tags
  Future<List<String>> getInboxTags() async {
    final response = await getInboxTagsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }

  /// List Inboxes and email addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///   Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> getInboxesWithHttpInfo({ int size, String sort, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/inboxes';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// List Inboxes and email addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///   Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<List<InboxDto>> getInboxes({ int size, String sort, DateTime since, DateTime before }) async {
    final response = await getInboxesWithHttpInfo( size: size, sort: sort, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<InboxDto>') as List)
        .cast<InboxDto>()
        .toList(growable: false);
    }
    return Future<List<InboxDto>>.value(null);
  }

  /// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  ///
  /// Get the newest email in an inbox or wait for one to arrive
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to get the latest email from
  ///
  /// * [int] timeoutMillis (required):
  ///   Timeout milliseconds to wait for latest email
  Future<Response> getLatestEmailInInboxWithHttpInfo(String inboxId, int timeoutMillis) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (timeoutMillis == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: timeoutMillis');
    }

    final path = r'/inboxes/getLatestEmail';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_convertParametersForCollectionFormat('', 'inboxId', inboxId));
      queryParams.addAll(_convertParametersForCollectionFormat('', 'timeoutMillis', timeoutMillis));

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

  /// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  ///
  /// Get the newest email in an inbox or wait for one to arrive
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to get the latest email from
  ///
  /// * [int] timeoutMillis (required):
  ///   Timeout milliseconds to wait for latest email
  Future<Email> getLatestEmailInInbox(String inboxId, int timeoutMillis) async {
    final response = await getLatestEmailInInboxWithHttpInfo(inboxId, timeoutMillis);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
        }
    return Future<Email>.value(null);
  }

  /// List Organization Inboxes Paginated
  ///
  /// List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> getOrganizationInboxesWithHttpInfo({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.

    final path = r'/inboxes/organization';

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

  /// List Organization Inboxes Paginated
  ///
  /// List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<PageOrganizationInboxProjection> getOrganizationInboxes({ int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await getOrganizationInboxesWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageOrganizationInboxProjection',) as PageOrganizationInboxProjection;
        }
    return Future<PageOrganizationInboxProjection>.value(null);
  }

  /// List inbox rulesets
  ///
  /// List all rulesets attached to an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> listInboxRulesetsWithHttpInfo(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/rulesets'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// List inbox rulesets
  ///
  /// List all rulesets attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
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
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<PageInboxRulesetDto> listInboxRulesets(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await listInboxRulesetsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
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

  /// List inbox tracking pixels
  ///
  /// List all tracking pixels sent from an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in inbox tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox tracking pixel list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> listInboxTrackingPixelsWithHttpInfo(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/tracking-pixels'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// List inbox tracking pixels
  ///
  /// List all tracking pixels sent from an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in inbox tracking pixel list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox tracking pixel list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<PageTrackingPixelProjection> listInboxTrackingPixels(String inboxId, { int page, int size, String sort, String searchFilter, DateTime since, DateTime before }) async {
    final response = await listInboxTrackingPixelsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before );
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

  /// Send Email
  ///
  /// Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> sendEmailWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (sendEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sendEmailOptions');
    }

    final path = r'/inboxes/{inboxId}'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Send Email
  ///
  /// Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<void> sendEmail(String inboxId, SendEmailOptions sendEmailOptions) async {
    final response = await sendEmailWithHttpInfo(inboxId, sendEmailOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send email and return sent confirmation
  ///
  /// Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> sendEmailAndConfirmWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (sendEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sendEmailOptions');
    }

    final path = r'/inboxes/{inboxId}/confirm'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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

  /// Send email and return sent confirmation
  ///
  /// Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<SentEmailDto> sendEmailAndConfirm(String inboxId, SendEmailOptions sendEmailOptions) async {
    final response = await sendEmailAndConfirmWithHttpInfo(inboxId, sendEmailOptions);
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

  /// Send email using an SMTP mail envelope and message body and return sent confirmation
  ///
  /// Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendSMTPEnvelopeOptions] sendSMTPEnvelopeOptions (required):
  Future<Response> sendSmtpEnvelopeWithHttpInfo(String inboxId, SendSMTPEnvelopeOptions sendSMTPEnvelopeOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (sendSMTPEnvelopeOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: sendSMTPEnvelopeOptions');
    }

    final path = r'/inboxes/{inboxId}/smtp-envelope'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = sendSMTPEnvelopeOptions;

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

  /// Send email using an SMTP mail envelope and message body and return sent confirmation
  ///
  /// Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendSMTPEnvelopeOptions] sendSMTPEnvelopeOptions (required):
  Future<SentEmailDto> sendSmtpEnvelope(String inboxId, SendSMTPEnvelopeOptions sendSMTPEnvelopeOptions) async {
    final response = await sendSmtpEnvelopeWithHttpInfo(inboxId, sendSMTPEnvelopeOptions);
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

  /// Send a test email to inbox
  ///
  /// Send an inbox a test email to test email receiving is working
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> sendTestEmailWithHttpInfo(String inboxId) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }

    final path = r'/inboxes/{inboxId}/send-test-email'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

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
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Send a test email to inbox
  ///
  /// Send an inbox a test email to test email receiving is working
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> sendTestEmail(String inboxId) async {
    final response = await sendTestEmailWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set inbox favourited state
  ///
  /// Set and return new favourite state for an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to set favourite state
  ///
  /// * [SetInboxFavouritedOptions] setInboxFavouritedOptions (required):
  Future<Response> setInboxFavouritedWithHttpInfo(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (setInboxFavouritedOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: setInboxFavouritedOptions');
    }

    final path = r'/inboxes/{inboxId}/favourite'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = setInboxFavouritedOptions;

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

  /// Set inbox favourited state
  ///
  /// Set and return new favourite state for an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to set favourite state
  ///
  /// * [SetInboxFavouritedOptions] setInboxFavouritedOptions (required):
  Future<InboxDto> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async {
    final response = await setInboxFavouritedWithHttpInfo(inboxId, setInboxFavouritedOptions);
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

  /// Update Inbox. Change name and description. Email address is not editable.
  ///
  /// Update editable fields on an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  Future<Response> updateInboxWithHttpInfo(String inboxId, UpdateInboxOptions updateInboxOptions) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
    }
    if (updateInboxOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: updateInboxOptions');
    }

    final path = r'/inboxes/{inboxId}'
      .replaceAll('{' + 'inboxId' + '}', inboxId.toString());

    Object postBody = updateInboxOptions;

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

  /// Update Inbox. Change name and description. Email address is not editable.
  ///
  /// Update editable fields on an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  Future<InboxDto> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async {
    final response = await updateInboxWithHttpInfo(inboxId, updateInboxOptions);
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
}
