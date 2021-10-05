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
  /// * [bool] allowTeamAccess:
  ///   DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] favourite:
  ///   Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  ///
  /// * [String] inboxType:
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are best for testing while SMTP inboxes are more reliable for public inbound email consumption. When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  Future<Response> createInboxWithHttpInfo({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    // Verify required params are set.

    final path = r'/inboxes';

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

  /// Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///   DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] favourite:
  ///   Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  ///
  /// * [String] inboxType:
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are best for testing while SMTP inboxes are more reliable for public inbound email consumption. When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mx.mailslurp.com`.
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  Future<Inbox> createInbox({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String inboxType, String name, List<String> tags, bool useDomainPool }) async {
    final response = await createInboxWithHttpInfo( allowTeamAccess: allowTeamAccess, description: description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, inboxType: inboxType, name: name, tags: tags, useDomainPool: useDomainPool );
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
  ///   createInboxRulesetOptions
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
  ///   createInboxRulesetOptions
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
  Future<Inbox> createInboxWithDefaults() async {
    final response = await createInboxWithDefaultsWithHttpInfo();
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

  /// Create an inbox with options. Extended options for inbox creation.
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  ///   createInboxDto
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
  ///   createInboxDto
  Future<Inbox> createInboxWithOptions(CreateInboxDto createInboxDto) async {
    final response = await createInboxWithOptionsWithHttpInfo(createInboxDto);
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
  ///   inboxId
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
  ///   inboxId
  Future<void> deleteInbox(String inboxId) async {
    final response = await deleteInboxWithHttpInfo(inboxId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   DEPRECATED. Optionally filter by team access.
  Future<Response> getAllInboxesWithHttpInfo({ DateTime before, bool favourite, int page, String search, DateTime since, int size, String sort, String tag, bool teamAccess }) async {
    // Verify required params are set.

    final path = r'/inboxes/paginated';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'search', search));
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
    if (tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'tag', tag));
    }
    if (teamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'teamAccess', teamAccess));
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
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   DEPRECATED. Optionally filter by team access.
  Future<PageInboxProjection> getAllInboxes({ DateTime before, bool favourite, int page, String search, DateTime since, int size, String sort, String tag, bool teamAccess }) async {
    final response = await getAllInboxesWithHttpInfo( before: before, favourite: favourite, page: page, search: search, since: since, size: size, sort: sort, tag: tag, teamAccess: teamAccess );
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
  /// * [DateTime] before:
  ///   Exclude emails received after this ISO 8601 date time
  ///
  /// * [int] delayTimeout:
  ///   delayTimeout
  ///
  /// * [int] limit:
  ///   Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  ///
  /// * [int] minCount:
  ///   Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  ///
  /// * [int] retryTimeout:
  ///   Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  ///
  /// * [DateTime] since:
  ///   Exclude emails received before this ISO 8601 date time
  ///
  /// * [int] size:
  ///   Alias for limit. Assessed first before assessing any passed limit.
  ///
  /// * [String] sort:
  ///   Sort the results by received date and direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   unreadOnly
  Future<Response> getEmailsWithHttpInfo(String inboxId, { DateTime before, int delayTimeout, int limit, int minCount, int retryTimeout, DateTime since, int size, String sort, bool unreadOnly }) async {
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

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (delayTimeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'delayTimeout', delayTimeout));
    }
    if (limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'limit', limit));
    }
    if (minCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'minCount', minCount));
    }
    if (retryTimeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'retryTimeout', retryTimeout));
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
    if (unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'unreadOnly', unreadOnly));
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
  /// * [DateTime] before:
  ///   Exclude emails received after this ISO 8601 date time
  ///
  /// * [int] delayTimeout:
  ///   delayTimeout
  ///
  /// * [int] limit:
  ///   Limit the result set, ordered by received date time sort direction. Maximum 100. For more listing options see the email controller
  ///
  /// * [int] minCount:
  ///   Minimum acceptable email count. Will cause request to hang (and retry) until minCount is satisfied or retryTimeout is reached.
  ///
  /// * [int] retryTimeout:
  ///   Maximum milliseconds to spend retrying inbox database until minCount emails are returned
  ///
  /// * [DateTime] since:
  ///   Exclude emails received before this ISO 8601 date time
  ///
  /// * [int] size:
  ///   Alias for limit. Assessed first before assessing any passed limit.
  ///
  /// * [String] sort:
  ///   Sort the results by received date and direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   unreadOnly
  Future<List<EmailPreview>> getEmails(String inboxId, { DateTime before, int delayTimeout, int limit, int minCount, int retryTimeout, DateTime since, int size, String sort, bool unreadOnly }) async {
    final response = await getEmailsWithHttpInfo(inboxId,  before: before, delayTimeout: delayTimeout, limit: limit, minCount: minCount, retryTimeout: retryTimeout, since: since, size: size, sort: sort, unreadOnly: unreadOnly );
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

  /// Get Inbox. Returns properties of an inbox.
  ///
  /// Returns an inbox's properties, including its email address and ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
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
  ///   inboxId
  Future<Inbox> getInbox(String inboxId) async {
    final response = await getInboxWithHttpInfo(inboxId);
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
  /// * [DateTime] before:
  ///   Optional filter by received before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox emails list pagination
  ///
  /// * [DateTime] since:
  ///   Optional filter by received after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox emails list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxEmailsPaginatedWithHttpInfo(String inboxId, { DateTime before, int page, DateTime since, int size, String sort }) async {
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

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
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

  /// Get inbox emails paginated
  ///
  /// Get a paginated list of emails in an inbox. Does not hold connections open.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  ///
  /// * [DateTime] before:
  ///   Optional filter by received before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox emails list pagination
  ///
  /// * [DateTime] since:
  ///   Optional filter by received after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox emails list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { DateTime before, int page, DateTime since, int size, String sort }) async {
    final response = await getInboxEmailsPaginatedWithHttpInfo(inboxId,  before: before, page: page, since: since, size: size, sort: sort );
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

  /// Get Inbox Sent Emails
  ///
  /// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional sent email search
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxSentEmailsWithHttpInfo(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
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

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// Get Inbox Sent Emails
  ///
  /// Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by sent before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional sent email search
  ///
  /// * [DateTime] since:
  ///   Optional filter by sent after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await getInboxSentEmailsWithHttpInfo(inboxId,  before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
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
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxesWithHttpInfo({ DateTime before, DateTime since, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/inboxes';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// List Inboxes and email addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended and allows paginated access using a limit and sort parameter.
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<List<Inbox>> getInboxes({ DateTime before, DateTime since, int size, String sort }) async {
    final response = await getInboxesWithHttpInfo( before: before, since: since, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'List<Inbox>') as List)
        .cast<Inbox>()
        .toList(growable: false);
    }
    return Future<List<Inbox>>.value(null);
  }

  /// List Organization Inboxes Paginated
  ///
  /// List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getOrganizationInboxesWithHttpInfo({ DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
    // Verify required params are set.

    final path = r'/inboxes/organization';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// List Organization Inboxes Paginated
  ///
  /// List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageOrganizationInboxProjection> getOrganizationInboxes({ DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await getOrganizationInboxesWithHttpInfo( before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
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
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox ruleset list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox ruleset list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> listInboxRulesetsWithHttpInfo(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
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

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// List inbox rulesets
  ///
  /// List all rulesets attached to an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox ruleset list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox ruleset list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageInboxRulesetDto> listInboxRulesets(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await listInboxRulesetsWithHttpInfo(inboxId,  before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
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
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox tracking pixel list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox tracking pixel list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> listInboxTrackingPixelsWithHttpInfo(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
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

    if (before != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'before', before));
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

  /// List inbox tracking pixels
  ///
  /// List all tracking pixels sent from an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  ///
  /// * [int] page:
  ///   Optional page index in inbox tracking pixel list pagination
  ///
  /// * [String] searchFilter:
  ///   Optional search filter
  ///
  /// * [DateTime] since:
  ///   Optional filter by created after given date time
  ///
  /// * [int] size:
  ///   Optional page size in inbox tracking pixel list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageTrackingPixelProjection> listInboxTrackingPixels(String inboxId, { DateTime before, int page, String searchFilter, DateTime since, int size, String sort }) async {
    final response = await listInboxTrackingPixelsWithHttpInfo(inboxId,  before: before, page: page, searchFilter: searchFilter, since: since, size: size, sort: sort );
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
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email
  Future<Response> sendEmailWithHttpInfo(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
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
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email
  Future<void> sendEmail(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    final response = await sendEmailWithHttpInfo(inboxId,  sendEmailOptions: sendEmailOptions );
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
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email
  Future<Response> sendEmailAndConfirmWithHttpInfo(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    // Verify required params are set.
    if (inboxId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: inboxId');
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
  /// * [SendEmailOptions] sendEmailOptions:
  ///   Options for the email
  Future<SentEmailDto> sendEmailAndConfirm(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    final response = await sendEmailAndConfirmWithHttpInfo(inboxId,  sendEmailOptions: sendEmailOptions );
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
  ///   inboxId
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
  ///   inboxId
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
  ///   inboxId
  ///
  /// * [SetInboxFavouritedOptions] setInboxFavouritedOptions (required):
  ///   setInboxFavouritedOptions
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
  ///   inboxId
  ///
  /// * [SetInboxFavouritedOptions] setInboxFavouritedOptions (required):
  ///   setInboxFavouritedOptions
  Future<Inbox> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async {
    final response = await setInboxFavouritedWithHttpInfo(inboxId, setInboxFavouritedOptions);
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

  /// Update Inbox. Change name and description. Email address is not editable.
  ///
  /// Update editable fields on an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   inboxId
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  ///   updateInboxOptions
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
  ///   inboxId
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  ///   updateInboxOptions
  Future<Inbox> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async {
    final response = await updateInboxWithHttpInfo(inboxId, updateInboxOptions);
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
}
