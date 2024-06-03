//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InboxControllerApi {
  InboxControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Cancel a scheduled email job
  ///
  /// Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<Response> cancelScheduledJobWithHttpInfo(String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/scheduled-jobs/{jobId}'
      .replaceAll('{jobId}', jobId);

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

  /// Cancel a scheduled email job
  ///
  /// Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<ScheduledJobDto?> cancelScheduledJob(String jobId,) async {
    final response = await cancelScheduledJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledJobDto',) as ScheduledJobDto;
    
    }
    return null;
  }

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
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mxslurp.click`.
  ///
  /// * [bool] virtualInbox:
  ///   Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  ///
  /// * [bool] useShortAddress:
  ///   Use a shorter email address under 31 characters
  ///
  /// * [String] domainId:
  ///   ID of custom domain to use for email address.
  ///
  /// * [String] domainName:
  ///   FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox.
  ///
  /// * [String] prefix:
  ///   Prefix to add before the email address for easier labelling or identification.
  Future<Response> createInboxWithHttpInfo({ String? emailAddress, List<String>? tags, String? name, String? description, bool? useDomainPool, bool? favourite, DateTime? expiresAt, int? expiresIn, bool? allowTeamAccess, String? inboxType, bool? virtualInbox, bool? useShortAddress, String? domainId, String? domainName, String? prefix, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (emailAddress != null) {
      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    }
    if (tags != null) {
      queryParams.addAll(_queryParams('multi', 'tags', tags));
    }
    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (description != null) {
      queryParams.addAll(_queryParams('', 'description', description));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_queryParams('', 'useDomainPool', useDomainPool));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (expiresAt != null) {
      queryParams.addAll(_queryParams('', 'expiresAt', expiresAt));
    }
    if (expiresIn != null) {
      queryParams.addAll(_queryParams('', 'expiresIn', expiresIn));
    }
    if (allowTeamAccess != null) {
      queryParams.addAll(_queryParams('', 'allowTeamAccess', allowTeamAccess));
    }
    if (inboxType != null) {
      queryParams.addAll(_queryParams('', 'inboxType', inboxType));
    }
    if (virtualInbox != null) {
      queryParams.addAll(_queryParams('', 'virtualInbox', virtualInbox));
    }
    if (useShortAddress != null) {
      queryParams.addAll(_queryParams('', 'useShortAddress', useShortAddress));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
    }
    if (domainName != null) {
      queryParams.addAll(_queryParams('', 'domainName', domainName));
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
  ///   HTTP (default) or SMTP inbox type. HTTP inboxes are default and best solution for most cases. SMTP inboxes are more reliable for public inbound email consumption (but do not support sending emails). When using custom domains the domain type must match the inbox type. HTTP inboxes are processed by AWS SES while SMTP inboxes use a custom mail server running at `mxslurp.click`.
  ///
  /// * [bool] virtualInbox:
  ///   Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  ///
  /// * [bool] useShortAddress:
  ///   Use a shorter email address under 31 characters
  ///
  /// * [String] domainId:
  ///   ID of custom domain to use for email address.
  ///
  /// * [String] domainName:
  ///   FQDN domain name for the domain you have verified. Will be appended with a randomly assigned recipient name. Use the `emailAddress` option instead to specify the full custom inbox.
  ///
  /// * [String] prefix:
  ///   Prefix to add before the email address for easier labelling or identification.
  Future<InboxDto?> createInbox({ String? emailAddress, List<String>? tags, String? name, String? description, bool? useDomainPool, bool? favourite, DateTime? expiresAt, int? expiresIn, bool? allowTeamAccess, String? inboxType, bool? virtualInbox, bool? useShortAddress, String? domainId, String? domainName, String? prefix, }) async {
    final response = await createInboxWithHttpInfo( emailAddress: emailAddress, tags: tags, name: name, description: description, useDomainPool: useDomainPool, favourite: favourite, expiresAt: expiresAt, expiresIn: expiresIn, allowTeamAccess: allowTeamAccess, inboxType: inboxType, virtualInbox: virtualInbox, useShortAddress: useShortAddress, domainId: domainId, domainName: domainName, prefix: prefix, );
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
  Future<Response> createInboxRulesetWithHttpInfo(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/rulesets'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = createInboxRulesetOptions;

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
  Future<InboxRulesetDto?> createInboxRuleset(String inboxId, CreateInboxRulesetOptions createInboxRulesetOptions,) async {
    final response = await createInboxRulesetWithHttpInfo(inboxId, createInboxRulesetOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxRulesetDto',) as InboxRulesetDto;
    
    }
    return null;
  }

  /// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> createInboxWithDefaultsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/withDefaults';

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

  /// Create an inbox with default options. Uses MailSlurp domain pool address and is private.
  Future<InboxDto?> createInboxWithDefaults() async {
    final response = await createInboxWithDefaultsWithHttpInfo();
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

  /// Create an inbox with options. Extended options for inbox creation.
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<Response> createInboxWithOptionsWithHttpInfo(CreateInboxDto createInboxDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/withOptions';

    // ignore: prefer_final_locals
    Object? postBody = createInboxDto;

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

  /// Create an inbox with options. Extended options for inbox creation.
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<InboxDto?> createInboxWithOptions(CreateInboxDto createInboxDto,) async {
    final response = await createInboxWithOptionsWithHttpInfo(createInboxDto,);
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

  /// Delete all emails in a given inboxes.
  ///
  /// Deletes all emails in an inbox. Be careful as emails cannot be recovered
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> deleteAllInboxEmailsWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/deleteAllInboxEmails'
      .replaceAll('{inboxId}', inboxId);

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

  /// Delete all emails in a given inboxes.
  ///
  /// Deletes all emails in an inbox. Be careful as emails cannot be recovered
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteAllInboxEmails(String inboxId,) async {
    final response = await deleteAllInboxEmailsWithHttpInfo(inboxId,);
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
    // ignore: prefer_const_declarations
    final path = r'/inboxes';

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

  /// Delete all inboxes
  ///
  /// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  Future<void> deleteAllInboxes() async {
    final response = await deleteAllInboxesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inboxes by description
  ///
  /// Permanently delete all inboxes by description
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] description (required):
  Future<Response> deleteAllInboxesByDescriptionWithHttpInfo(String description,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/by-description';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'description', description));

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

  /// Delete inboxes by description
  ///
  /// Permanently delete all inboxes by description
  ///
  /// Parameters:
  ///
  /// * [String] description (required):
  Future<void> deleteAllInboxesByDescription(String description,) async {
    final response = await deleteAllInboxesByDescriptionWithHttpInfo(description,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inboxes by name
  ///
  /// Permanently delete all inboxes by name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> deleteAllInboxesByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/by-name';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Delete inboxes by name
  ///
  /// Permanently delete all inboxes by name
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<void> deleteAllInboxesByName(String name,) async {
    final response = await deleteAllInboxesByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete inboxes by tag
  ///
  /// Permanently delete all inboxes by tag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] tag (required):
  Future<Response> deleteAllInboxesByTagWithHttpInfo(String tag,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/by-tag';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'tag', tag));

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

  /// Delete inboxes by tag
  ///
  /// Permanently delete all inboxes by tag
  ///
  /// Parameters:
  ///
  /// * [String] tag (required):
  Future<void> deleteAllInboxesByTag(String tag,) async {
    final response = await deleteAllInboxesByTagWithHttpInfo(tag,);
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
  Future<Response> deleteInboxWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}'
      .replaceAll('{inboxId}', inboxId);

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

  /// Delete inbox
  ///
  /// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> deleteInbox(String inboxId,) async {
    final response = await deleteInboxWithHttpInfo(inboxId,);
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
  ///
  /// * [bool] allowCatchAll:
  Future<Response> doesInboxExistWithHttpInfo(String emailAddress, { bool? allowCatchAll, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/exists';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    if (allowCatchAll != null) {
      queryParams.addAll(_queryParams('', 'allowCatchAll', allowCatchAll));
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

  /// Does inbox exist
  ///
  /// Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///   Email address
  ///
  /// * [bool] allowCatchAll:
  Future<InboxExistsDto?> doesInboxExist(String emailAddress, { bool? allowCatchAll, }) async {
    final response = await doesInboxExistWithHttpInfo(emailAddress,  allowCatchAll: allowCatchAll, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxExistsDto',) as InboxExistsDto;
    
    }
    return null;
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
  Future<Response> flushExpiredWithHttpInfo({ DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/expired';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
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

  /// Remove expired inboxes
  ///
  /// Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
  ///
  /// Parameters:
  ///
  /// * [DateTime] before:
  ///   Optional expired at before flag to flush expired inboxes that have expired before the given time
  Future<FlushExpiredInboxesResult?> flushExpired({ DateTime? before, }) async {
    final response = await flushExpiredWithHttpInfo( before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlushExpiredInboxesResult',) as FlushExpiredInboxesResult;
    
    }
    return null;
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
  ///
  /// * [String] inboxType:
  ///   Optional filter by inbox type
  ///
  /// * [String] inboxFunction:
  ///   Optional filter by inbox function
  ///
  /// * [String] domainId:
  ///   Optional domain ID filter
  Future<Response> getAllInboxesWithHttpInfo({ int? page, int? size, String? sort, bool? favourite, String? search, String? tag, bool? teamAccess, DateTime? since, DateTime? before, String? inboxType, String? inboxFunction, String? domainId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/paginated';

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
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (teamAccess != null) {
      queryParams.addAll(_queryParams('', 'teamAccess', teamAccess));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxType != null) {
      queryParams.addAll(_queryParams('', 'inboxType', inboxType));
    }
    if (inboxFunction != null) {
      queryParams.addAll(_queryParams('', 'inboxFunction', inboxFunction));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
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
  ///
  /// * [String] inboxType:
  ///   Optional filter by inbox type
  ///
  /// * [String] inboxFunction:
  ///   Optional filter by inbox function
  ///
  /// * [String] domainId:
  ///   Optional domain ID filter
  Future<PageInboxProjection?> getAllInboxes({ int? page, int? size, String? sort, bool? favourite, String? search, String? tag, bool? teamAccess, DateTime? since, DateTime? before, String? inboxType, String? inboxFunction, String? domainId, }) async {
    final response = await getAllInboxesWithHttpInfo( page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, teamAccess: teamAccess, since: since, before: before, inboxType: inboxType, inboxFunction: inboxFunction, domainId: domainId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxProjection',) as PageInboxProjection;
    
    }
    return null;
  }

  /// List All Inboxes Offset Paginated
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
  ///
  /// * [String] inboxType:
  ///   Optional filter by inbox type
  ///
  /// * [String] inboxFunction:
  ///   Optional filter by inbox function
  ///
  /// * [String] domainId:
  ///   Optional domain ID filter
  Future<Response> getAllInboxesOffsetPaginatedWithHttpInfo({ int? page, int? size, String? sort, bool? favourite, String? search, String? tag, bool? teamAccess, DateTime? since, DateTime? before, String? inboxType, String? inboxFunction, String? domainId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/offset-paginated';

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
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (tag != null) {
      queryParams.addAll(_queryParams('', 'tag', tag));
    }
    if (teamAccess != null) {
      queryParams.addAll(_queryParams('', 'teamAccess', teamAccess));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (inboxType != null) {
      queryParams.addAll(_queryParams('', 'inboxType', inboxType));
    }
    if (inboxFunction != null) {
      queryParams.addAll(_queryParams('', 'inboxFunction', inboxFunction));
    }
    if (domainId != null) {
      queryParams.addAll(_queryParams('', 'domainId', domainId));
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

  /// List All Inboxes Offset Paginated
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
  ///
  /// * [String] inboxType:
  ///   Optional filter by inbox type
  ///
  /// * [String] inboxFunction:
  ///   Optional filter by inbox function
  ///
  /// * [String] domainId:
  ///   Optional domain ID filter
  Future<PageInboxProjection?> getAllInboxesOffsetPaginated({ int? page, int? size, String? sort, bool? favourite, String? search, String? tag, bool? teamAccess, DateTime? since, DateTime? before, String? inboxType, String? inboxFunction, String? domainId, }) async {
    final response = await getAllInboxesOffsetPaginatedWithHttpInfo( page: page, size: size, sort: sort, favourite: favourite, search: search, tag: tag, teamAccess: teamAccess, since: since, before: before, inboxType: inboxType, inboxFunction: inboxFunction, domainId: domainId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxProjection',) as PageInboxProjection;
    
    }
    return null;
  }

  /// Get all scheduled email sending jobs for account
  ///
  /// Schedule sending of emails using scheduled jobs. These can be inbox or account level.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in scheduled job list pagination
  ///
  /// * [int] size:
  ///   Optional page size in scheduled job list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getAllScheduledJobsWithHttpInfo({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/scheduled-jobs';

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

  /// Get all scheduled email sending jobs for account
  ///
  /// Schedule sending of emails using scheduled jobs. These can be inbox or account level.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///   Optional page index in scheduled job list pagination
  ///
  /// * [int] size:
  ///   Optional page size in scheduled job list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageScheduledJobs?> getAllScheduledJobs({ int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getAllScheduledJobsWithHttpInfo( page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageScheduledJobs',) as PageScheduledJobs;
    
    }
    return null;
  }

  /// Get all email delivery statuses for an inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getDeliveryStatusesByInboxIdWithHttpInfo(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/delivery-status'
      .replaceAll('{inboxId}', inboxId);

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

  /// Get all email delivery statuses for an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in delivery status list pagination
  ///
  /// * [int] size:
  ///   Optional page size in delivery status list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageDeliveryStatus?> getDeliveryStatusesByInboxId(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getDeliveryStatusesByInboxIdWithHttpInfo(inboxId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageDeliveryStatus',) as PageDeliveryStatus;
    
    }
    return null;
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
  Future<Response> getEmailsWithHttpInfo(String inboxId, { int? size, int? limit, String? sort, int? retryTimeout, int? delayTimeout, int? minCount, bool? unreadOnly, DateTime? before, DateTime? since, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/emails'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (retryTimeout != null) {
      queryParams.addAll(_queryParams('', 'retryTimeout', retryTimeout));
    }
    if (delayTimeout != null) {
      queryParams.addAll(_queryParams('', 'delayTimeout', delayTimeout));
    }
    if (minCount != null) {
      queryParams.addAll(_queryParams('', 'minCount', minCount));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
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
  Future<List<EmailPreview>?> getEmails(String inboxId, { int? size, int? limit, String? sort, int? retryTimeout, int? delayTimeout, int? minCount, bool? unreadOnly, DateTime? before, DateTime? since, }) async {
    final response = await getEmailsWithHttpInfo(inboxId,  size: size, limit: limit, sort: sort, retryTimeout: retryTimeout, delayTimeout: delayTimeout, minCount: minCount, unreadOnly: unreadOnly, before: before, since: since, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<EmailPreview>') as List)
        .cast<EmailPreview>()
        .toList();

    }
    return null;
  }

  /// Get IMAP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> getImapAccessWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/imap-access';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get IMAP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<ImapAccessDetails?> getImapAccess({ String? inboxId, }) async {
    final response = await getImapAccessWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapAccessDetails',) as ImapAccessDetails;
    
    }
    return null;
  }

  /// Get IMAP and SMTP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> getImapSmtpAccessWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/imap-smtp-access';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get IMAP and SMTP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<ImapSmtpAccessDetails?> getImapSmtpAccess({ String? inboxId, }) async {
    final response = await getImapSmtpAccessWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapSmtpAccessDetails',) as ImapSmtpAccessDetails;
    
    }
    return null;
  }

  /// Get IMAP and SMTP access details in .env format
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> getImapSmtpAccessEnvWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/imap-smtp-access/env';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get IMAP and SMTP access details in .env format
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<String?> getImapSmtpAccessEnv({ String? inboxId, }) async {
    final response = await getImapSmtpAccessEnvWithHttpInfo( inboxId: inboxId, );
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

  /// Get IMAP and SMTP server hosts
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getImapSmtpAccessServersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/imap-smtp-access/servers';

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

  /// Get IMAP and SMTP server hosts
  Future<ImapSmtpAccessServers?> getImapSmtpAccessServers() async {
    final response = await getImapSmtpAccessServersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ImapSmtpAccessServers',) as ImapSmtpAccessServers;
    
    }
    return null;
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
  Future<Response> getInboxWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}'
      .replaceAll('{inboxId}', inboxId);

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

  /// Get Inbox. Returns properties of an inbox.
  ///
  /// Returns an inbox's properties, including its email address and ID.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<InboxDto?> getInbox(String inboxId,) async {
    final response = await getInboxWithHttpInfo(inboxId,);
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

  /// Search for an inbox with the provided email address
  ///
  /// Get a inbox result by email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<Response> getInboxByEmailAddressWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/byEmailAddress';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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

  /// Search for an inbox with the provided email address
  ///
  /// Get a inbox result by email address
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<InboxByEmailAddressResult?> getInboxByEmailAddress(String emailAddress,) async {
    final response = await getInboxByEmailAddressWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxByEmailAddressResult',) as InboxByEmailAddressResult;
    
    }
    return null;
  }

  /// Search for an inbox with the given name
  ///
  /// Get a inbox result by name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<Response> getInboxByNameWithHttpInfo(String name,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/byName';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'name', name));

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

  /// Search for an inbox with the given name
  ///
  /// Get a inbox result by name
  ///
  /// Parameters:
  ///
  /// * [String] name (required):
  Future<InboxByNameResult?> getInboxByName(String name,) async {
    final response = await getInboxByNameWithHttpInfo(name,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxByNameResult',) as InboxByNameResult;
    
    }
    return null;
  }

  /// Get total inbox count
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxCountWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/count';

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

  /// Get total inbox count
  Future<CountDto?> getInboxCount() async {
    final response = await getInboxCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
    
    }
    return null;
  }

  /// Get email count in inbox
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  Future<Response> getInboxEmailCountWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/emails/count'
      .replaceAll('{inboxId}', inboxId);

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

  /// Get email count in inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   Id of inbox that emails belongs to
  Future<CountDto?> getInboxEmailCount(String inboxId,) async {
    final response = await getInboxEmailCountWithHttpInfo(inboxId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CountDto',) as CountDto;
    
    }
    return null;
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
  Future<Response> getInboxEmailsPaginatedWithHttpInfo(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/emails/paginated'
      .replaceAll('{inboxId}', inboxId);

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
  Future<PageEmailPreview?> getInboxEmailsPaginated(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getInboxEmailsPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailPreview',) as PageEmailPreview;
    
    }
    return null;
  }

  /// Get all inbox IDs
  ///
  /// Get list of inbox IDs
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxIdsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/ids';

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

  /// Get all inbox IDs
  ///
  /// Get list of inbox IDs
  Future<InboxIdsResult?> getInboxIds() async {
    final response = await getInboxIdsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InboxIdsResult',) as InboxIdsResult;
    
    }
    return null;
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
  Future<Response> getInboxSentEmailsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/sent'
      .replaceAll('{inboxId}', inboxId);

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
  Future<PageSentEmailProjection?> getInboxSentEmails(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getInboxSentEmailsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentEmailProjection',) as PageSentEmailProjection;
    
    }
    return null;
  }

  /// Get inbox tags
  ///
  /// Get all inbox tags
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getInboxTagsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/tags';

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

  /// Get inbox tags
  ///
  /// Get all inbox tags
  Future<List<String>?> getInboxTags() async {
    final response = await getInboxTagsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<String>') as List)
        .cast<String>()
        .toList();

    }
    return null;
  }

  /// List Inboxes and email addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.
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
  /// * [bool] excludeCatchAllInboxes:
  ///   Optional exclude catch all inboxes
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<Response> getInboxesWithHttpInfo({ int? size, String? sort, DateTime? since, bool? excludeCatchAllInboxes, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (excludeCatchAllInboxes != null) {
      queryParams.addAll(_queryParams('', 'excludeCatchAllInboxes', excludeCatchAllInboxes));
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

  /// List Inboxes and email addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.
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
  /// * [bool] excludeCatchAllInboxes:
  ///   Optional exclude catch all inboxes
  ///
  /// * [DateTime] before:
  ///   Optional filter by created before given date time
  Future<List<InboxDto>?> getInboxes({ int? size, String? sort, DateTime? since, bool? excludeCatchAllInboxes, DateTime? before, }) async {
    final response = await getInboxesWithHttpInfo( size: size, sort: sort, since: since, excludeCatchAllInboxes: excludeCatchAllInboxes, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<InboxDto>') as List)
        .cast<InboxDto>()
        .toList();

    }
    return null;
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
  Future<Response> getLatestEmailInInboxWithHttpInfo(String inboxId, int timeoutMillis,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/getLatestEmail';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
      queryParams.addAll(_queryParams('', 'timeoutMillis', timeoutMillis));

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
  Future<Email?> getLatestEmailInInbox(String inboxId, int timeoutMillis,) async {
    final response = await getLatestEmailInInboxWithHttpInfo(inboxId, timeoutMillis,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Email',) as Email;
    
    }
    return null;
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
  Future<Response> getOrganizationInboxesWithHttpInfo({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/organization';

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
  Future<PageOrganizationInboxProjection?> getOrganizationInboxes({ int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getOrganizationInboxesWithHttpInfo( page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageOrganizationInboxProjection',) as PageOrganizationInboxProjection;
    
    }
    return null;
  }

  /// Get a scheduled email job
  ///
  /// Get a scheduled email job details.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<Response> getScheduledJobWithHttpInfo(String jobId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/scheduled-jobs/{jobId}'
      .replaceAll('{jobId}', jobId);

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

  /// Get a scheduled email job
  ///
  /// Get a scheduled email job details.
  ///
  /// Parameters:
  ///
  /// * [String] jobId (required):
  Future<ScheduledJobDto?> getScheduledJob(String jobId,) async {
    final response = await getScheduledJobWithHttpInfo(jobId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledJobDto',) as ScheduledJobDto;
    
    }
    return null;
  }

  /// Get all scheduled email sending jobs for the inbox
  ///
  /// Schedule sending of emails using scheduled jobs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in scheduled job list pagination
  ///
  /// * [int] size:
  ///   Optional page size in scheduled job list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<Response> getScheduledJobsByInboxIdWithHttpInfo(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/scheduled-jobs'
      .replaceAll('{inboxId}', inboxId);

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

  /// Get all scheduled email sending jobs for the inbox
  ///
  /// Schedule sending of emails using scheduled jobs.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///   Optional page index in scheduled job list pagination
  ///
  /// * [int] size:
  ///   Optional page size in scheduled job list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [DateTime] since:
  ///   Filter by created at after the given timestamp
  ///
  /// * [DateTime] before:
  ///   Filter by created at before the given timestamp
  Future<PageScheduledJobs?> getScheduledJobsByInboxId(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, }) async {
    final response = await getScheduledJobsByInboxIdWithHttpInfo(inboxId,  page: page, size: size, sort: sort, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageScheduledJobs',) as PageScheduledJobs;
    
    }
    return null;
  }

  /// Get SMTP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> getSmtpAccessWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/smtp-access';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
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

  /// Get SMTP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<SmtpAccessDetails?> getSmtpAccess({ String? inboxId, }) async {
    final response = await getSmtpAccessWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SmtpAccessDetails',) as SmtpAccessDetails;
    
    }
    return null;
  }

  /// Is email address available
  ///
  /// Returns whether an email address is available
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<Response> isEmailAddressAvailableWithHttpInfo(String emailAddress,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/available';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));

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

  /// Is email address available
  ///
  /// Returns whether an email address is available
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  Future<EmailAvailableResult?> isEmailAddressAvailable(String emailAddress,) async {
    final response = await isEmailAddressAvailableWithHttpInfo(emailAddress,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailAvailableResult',) as EmailAvailableResult;
    
    }
    return null;
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
  Future<Response> listInboxRulesetsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/rulesets'
      .replaceAll('{inboxId}', inboxId);

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
  Future<PageInboxRulesetDto?> listInboxRulesets(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await listInboxRulesetsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxRulesetDto',) as PageInboxRulesetDto;
    
    }
    return null;
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
  Future<Response> listInboxTrackingPixelsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/tracking-pixels'
      .replaceAll('{inboxId}', inboxId);

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
  Future<PageTrackingPixelProjection?> listInboxTrackingPixels(String inboxId, { int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await listInboxTrackingPixelsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageTrackingPixelProjection',) as PageTrackingPixelProjection;
    
    }
    return null;
  }

  /// Search all inboxes and return matching inboxes
  ///
  /// Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchInboxesOptions] searchInboxesOptions (required):
  Future<Response> searchInboxesWithHttpInfo(SearchInboxesOptions searchInboxesOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/search';

    // ignore: prefer_final_locals
    Object? postBody = searchInboxesOptions;

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

  /// Search all inboxes and return matching inboxes
  ///
  /// Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
  ///
  /// Parameters:
  ///
  /// * [SearchInboxesOptions] searchInboxesOptions (required):
  Future<PageInboxProjection?> searchInboxes(SearchInboxesOptions searchInboxesOptions,) async {
    final response = await searchInboxesWithHttpInfo(searchInboxesOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageInboxProjection',) as PageInboxProjection;
    
    }
    return null;
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
  Future<Response> sendEmailWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}'
      .replaceAll('{inboxId}', inboxId);

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
  Future<void> sendEmail(String inboxId, SendEmailOptions sendEmailOptions,) async {
    final response = await sendEmailWithHttpInfo(inboxId, sendEmailOptions,);
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
  Future<Response> sendEmailAndConfirmWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/confirm'
      .replaceAll('{inboxId}', inboxId);

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
  Future<SentEmailDto?> sendEmailAndConfirm(String inboxId, SendEmailOptions sendEmailOptions,) async {
    final response = await sendEmailAndConfirmWithHttpInfo(inboxId, sendEmailOptions,);
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

  /// Send email with queue
  ///
  /// Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [bool] validateBeforeEnqueue (required):
  ///   Validate before adding to queue
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> sendEmailWithQueueWithHttpInfo(String inboxId, bool validateBeforeEnqueue, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/with-queue'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'validateBeforeEnqueue', validateBeforeEnqueue));

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

  /// Send email with queue
  ///
  /// Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [bool] validateBeforeEnqueue (required):
  ///   Validate before adding to queue
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<void> sendEmailWithQueue(String inboxId, bool validateBeforeEnqueue, SendEmailOptions sendEmailOptions,) async {
    final response = await sendEmailWithQueueWithHttpInfo(inboxId, validateBeforeEnqueue, sendEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> sendSmtpEnvelopeWithHttpInfo(String inboxId, SendSMTPEnvelopeOptions sendSMTPEnvelopeOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/smtp-envelope'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = sendSMTPEnvelopeOptions;

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
  Future<SentEmailDto?> sendSmtpEnvelope(String inboxId, SendSMTPEnvelopeOptions sendSMTPEnvelopeOptions,) async {
    final response = await sendSmtpEnvelopeWithHttpInfo(inboxId, sendSMTPEnvelopeOptions,);
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

  /// Send a test email to inbox
  ///
  /// Send an inbox a test email to test email receiving is working
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<Response> sendTestEmailWithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/send-test-email'
      .replaceAll('{inboxId}', inboxId);

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

  /// Send a test email to inbox
  ///
  /// Send an inbox a test email to test email receiving is working
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  Future<void> sendTestEmail(String inboxId,) async {
    final response = await sendTestEmailWithHttpInfo(inboxId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Send email with with delay or schedule
  ///
  /// Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [DateTime] sendAtTimestamp:
  ///   Sending timestamp
  ///
  /// * [int] sendAtNowPlusSeconds:
  ///   Send after n seconds
  ///
  /// * [bool] validateBeforeEnqueue:
  ///   Validate before adding to queue
  Future<Response> sendWithScheduleWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions, { DateTime? sendAtTimestamp, int? sendAtNowPlusSeconds, bool? validateBeforeEnqueue, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/with-schedule'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sendAtTimestamp != null) {
      queryParams.addAll(_queryParams('', 'sendAtTimestamp', sendAtTimestamp));
    }
    if (sendAtNowPlusSeconds != null) {
      queryParams.addAll(_queryParams('', 'sendAtNowPlusSeconds', sendAtNowPlusSeconds));
    }
    if (validateBeforeEnqueue != null) {
      queryParams.addAll(_queryParams('', 'validateBeforeEnqueue', validateBeforeEnqueue));
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

  /// Send email with with delay or schedule
  ///
  /// Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [DateTime] sendAtTimestamp:
  ///   Sending timestamp
  ///
  /// * [int] sendAtNowPlusSeconds:
  ///   Send after n seconds
  ///
  /// * [bool] validateBeforeEnqueue:
  ///   Validate before adding to queue
  Future<ScheduledJobDto?> sendWithSchedule(String inboxId, SendEmailOptions sendEmailOptions, { DateTime? sendAtTimestamp, int? sendAtNowPlusSeconds, bool? validateBeforeEnqueue, }) async {
    final response = await sendWithScheduleWithHttpInfo(inboxId, sendEmailOptions,  sendAtTimestamp: sendAtTimestamp, sendAtNowPlusSeconds: sendAtNowPlusSeconds, validateBeforeEnqueue: validateBeforeEnqueue, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScheduledJobDto',) as ScheduledJobDto;
    
    }
    return null;
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
  Future<Response> setInboxFavouritedWithHttpInfo(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}/favourite'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = setInboxFavouritedOptions;

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
  Future<InboxDto?> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions,) async {
    final response = await setInboxFavouritedWithHttpInfo(inboxId, setInboxFavouritedOptions,);
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

  /// Update IMAP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateImapAccessOptions] updateImapAccessOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> updateImapAccessWithHttpInfo(UpdateImapAccessOptions updateImapAccessOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/imap-access';

    // ignore: prefer_final_locals
    Object? postBody = updateImapAccessOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// Update IMAP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [UpdateImapAccessOptions] updateImapAccessOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<void> updateImapAccess(UpdateImapAccessOptions updateImapAccessOptions, { String? inboxId, }) async {
    final response = await updateImapAccessWithHttpInfo(updateImapAccessOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> updateInboxWithHttpInfo(String inboxId, UpdateInboxOptions updateInboxOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/{inboxId}'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = updateInboxOptions;

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

  /// Update Inbox. Change name and description. Email address is not editable.
  ///
  /// Update editable fields on an inbox
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  Future<InboxDto?> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions,) async {
    final response = await updateInboxWithHttpInfo(inboxId, updateInboxOptions,);
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

  /// Update SMTP access usernames and passwords
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateSmtpAccessOptions] updateSmtpAccessOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<Response> updateSmtpAccessWithHttpInfo(UpdateSmtpAccessOptions updateSmtpAccessOptions, { String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/inboxes/smtp-access';

    // ignore: prefer_final_locals
    Object? postBody = updateSmtpAccessOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

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

  /// Update SMTP access usernames and passwords
  ///
  /// Parameters:
  ///
  /// * [UpdateSmtpAccessOptions] updateSmtpAccessOptions (required):
  ///
  /// * [String] inboxId:
  ///   Inbox ID
  Future<void> updateSmtpAccess(UpdateSmtpAccessOptions updateSmtpAccessOptions, { String? inboxId, }) async {
    final response = await updateSmtpAccessWithHttpInfo(updateSmtpAccessOptions,  inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
