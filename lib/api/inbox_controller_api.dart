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

  /// Create an inbox email address. An inbox has a real email address and can send and receive emails.
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///   Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] favourite:
  ///   Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.
  Future<Response> createInboxWithHttpInfo({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String name, List<String> tags, bool useDomainPool }) async {
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

  /// Create an inbox email address. An inbox has a real email address and can send and receive emails.
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  ///
  /// Parameters:
  ///
  /// * [bool] allowTeamAccess:
  ///   Grant team access to this inbox and the emails that belong to it for team members of your organization.
  ///
  /// * [String] description:
  ///   Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  ///
  /// * [String] emailAddress:
  ///   A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  ///
  /// * [DateTime] expiresAt:
  ///   Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  ///
  /// * [int] expiresIn:
  ///   Number of milliseconds that inbox should exist for
  ///
  /// * [bool] favourite:
  ///   Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
  ///
  /// * [String] name:
  ///   Optional name of the inbox. Displayed in the dashboard for easier search
  ///
  /// * [List<String>] tags:
  ///   Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  ///
  /// * [bool] useDomainPool:
  ///   Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.
  Future<Inbox> createInbox({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String name, List<String> tags, bool useDomainPool }) async {
    final response = await createInboxWithHttpInfo( allowTeamAccess: allowTeamAccess, description: description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, name: name, tags: tags, useDomainPool: useDomainPool );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
        }
    return Future<Inbox>.value(null);
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// List All Inboxes Paginated
  ///
  /// List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results. Results do not include team access inboxes by default. Use organization method to list team inboxes or set `teamAccess` to true.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   Optionally filter by team access. Defaults to false so organization inboxes are not included
  Future<Response> getAllInboxesWithHttpInfo({ bool favourite, int page, String search, int size, String sort, String tag, bool teamAccess }) async {
    // Verify required params are set.

    final path = r'/inboxes/paginated';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'favourite', favourite));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
    }
    if (search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'search', search));
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
  /// List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results. Results do not include team access inboxes by default. Use organization method to list team inboxes or set `teamAccess` to true.
  ///
  /// Parameters:
  ///
  /// * [bool] favourite:
  ///   Optionally filter results for favourites only
  ///
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [String] search:
  ///   Optionally filter by search words partial matching ID, tags, name, and email address
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] tag:
  ///   Optionally filter by tags. Will return inboxes that include given tags
  ///
  /// * [bool] teamAccess:
  ///   Optionally filter by team access. Defaults to false so organization inboxes are not included
  Future<PageInboxProjection> getAllInboxes({ bool favourite, int page, String search, int size, String sort, String tag, bool teamAccess }) async {
    final response = await getAllInboxesWithHttpInfo( favourite: favourite, page: page, search: search, size: size, sort: sort, tag: tag, teamAccess: teamAccess );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageInboxProjection') as PageInboxProjection;
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
  Future<Response> getEmailsWithHttpInfo(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, int size, String sort }) async {
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
  Future<List<EmailPreview>> getEmails(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, int size, String sort }) async {
    final response = await getEmailsWithHttpInfo(inboxId,  limit: limit, minCount: minCount, retryTimeout: retryTimeout, since: since, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<EmailPreview>') as List)
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
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
  /// * [int] page:
  ///   Optional page index in inbox emails list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox emails list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxEmailsPaginatedWithHttpInfo(String inboxId, { int page, int size, String sort }) async {
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
  Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { int page, int size, String sort }) async {
    final response = await getInboxEmailsPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailPreview') as PageEmailPreview;
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
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getInboxSentEmailsWithHttpInfo(String inboxId, { int page, int size, String sort }) async {
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
  /// * [int] page:
  ///   Optional page index in inbox sent email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox sent email list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { int page, int size, String sort }) async {
    final response = await getInboxSentEmailsWithHttpInfo(inboxId,  page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageSentEmailProjection') as PageSentEmailProjection;
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List)
        .cast<String>()
        .toList(growable: false);
    }
    return Future<List<String>>.value(null);
  }

  /// List Inboxes and email eddresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended. You can provide a limit and sort parameter.
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
  Future<Response> getInboxesWithHttpInfo({ int size, String sort }) async {
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

  /// List Inboxes and email eddresses
  ///
  /// List the inboxes you have created. Note use of the more advanced `getAllEmails` is recommended. You can provide a limit and sort parameter.
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///   Optional result size limit. Note an automatic limit of 100 results is applied. See the paginated `getAllEmails` for larger queries.
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<List<Inbox>> getInboxes({ int size, String sort }) async {
    final response = await getInboxesWithHttpInfo( size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Inbox>') as List)
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
  /// * [int] page:
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getOrganizationInboxesWithHttpInfo({ int page, int size, String sort }) async {
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
  ///   Optional page index in inbox list pagination
  ///
  /// * [int] size:
  ///   Optional page size in inbox list pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageOrganizationInboxProjection> getOrganizationInboxes({ int page, int size, String sort }) async {
    final response = await getOrganizationInboxesWithHttpInfo( page: page, size: size, sort: sort );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageOrganizationInboxProjection') as PageOrganizationInboxProjection;
        }
    return Future<PageOrganizationInboxProjection>.value(null);
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SentEmailDto') as SentEmailDto;
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
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
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
        }
    return Future<Inbox>.value(null);
  }
}
