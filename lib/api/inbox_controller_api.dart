part of mailslurp.api;



class InboxControllerApi {
  final ApiClient apiClient;

  InboxControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create an Inbox (email address) with HTTP info returned
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  Future<Response> createInboxWithHttpInfo({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String name, List<String> tags, bool useDomainPool }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(allowTeamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "allowTeamAccess", allowTeamAccess));
    }
    if(description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "description", description));
    }
    if(emailAddress != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "emailAddress", emailAddress));
    }
    if(expiresAt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresAt", expiresAt));
    }
    if(expiresIn != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "expiresIn", expiresIn));
    }
    if(favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "favourite", favourite));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(tags != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "tags", tags));
    }
    if(useDomainPool != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "useDomainPool", useDomainPool));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create an Inbox (email address)
  ///
  /// Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
  Future<Inbox> createInbox({ bool allowTeamAccess, String description, String emailAddress, DateTime expiresAt, int expiresIn, bool favourite, String name, List<String> tags, bool useDomainPool }) async {
    Response response = await createInboxWithHttpInfo( allowTeamAccess: allowTeamAccess, description: description, emailAddress: emailAddress, expiresAt: expiresAt, expiresIn: expiresIn, favourite: favourite, name: name, tags: tags, useDomainPool: useDomainPool );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Create an inbox with additional options with HTTP info returned
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  Future<Response> createInboxWithOptionsWithHttpInfo(CreateInboxDto createInboxDto) async {
    Object postBody = createInboxDto;

    // verify required params are set
    if(createInboxDto == null) {
     throw ApiException(400, "Missing required param: createInboxDto");
    }

    // create path and map variables
    String path = "/inboxes/withOptions".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Create an inbox with additional options
  ///
  /// Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
  Future<Inbox> createInboxWithOptions(CreateInboxDto createInboxDto) async {
    Response response = await createInboxWithOptionsWithHttpInfo(createInboxDto);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Delete all inboxes with HTTP info returned
  ///
  /// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  Future deleteAllInboxesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Delete all inboxes
  ///
  /// Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
  Future deleteAllInboxes() async {
    Response response = await deleteAllInboxesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete inbox with HTTP info returned
  ///
  /// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  Future deleteInboxWithHttpInfo(String inboxId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Delete inbox
  ///
  /// Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
  Future deleteInbox(String inboxId) async {
    Response response = await deleteInboxWithHttpInfo(inboxId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// List All Inboxes Paginated with HTTP info returned
  ///
  /// List inboxes in paginated form. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative &#x60;getInboxes&#x60; method returns a full list of inboxes but is limited to 100 results. Results do not include team access inboxes by default. Use organization method to list team inboxes or set &#x60;teamAccess&#x60; to true.
  Future<Response> getAllInboxesWithHttpInfo({ bool favourite, int page, String search, int size, String sort, String tag, bool teamAccess }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes/paginated".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(favourite != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "favourite", favourite));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(search != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "search", search));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(tag != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "tag", tag));
    }
    if(teamAccess != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "teamAccess", teamAccess));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List All Inboxes Paginated
  ///
  /// List inboxes in paginated form. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative &#x60;getInboxes&#x60; method returns a full list of inboxes but is limited to 100 results. Results do not include team access inboxes by default. Use organization method to list team inboxes or set &#x60;teamAccess&#x60; to true.
  Future<PageInboxProjection> getAllInboxes({ bool favourite, int page, String search, int size, String sort, String tag, bool teamAccess }) async {
    Response response = await getAllInboxesWithHttpInfo( favourite: favourite, page: page, search: search, size: size, sort: sort, tag: tag, teamAccess: teamAccess );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageInboxProjection') as PageInboxProjection;
    } else {
      return null;
    }
  }

  /// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead. with HTTP info returned
  ///
  /// List emails that an inbox has received. Only emails that are sent to the inbox&#39;s email address will appear in the inbox. It may take several seconds for any email you send to an inbox&#39;s email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the &#x60;minCount&#x60; parameter. The server will retry the inbox database until the &#x60;minCount&#x60; is satisfied or the &#x60;retryTimeout&#x60; is reached
  Future<Response> getEmailsWithHttpInfo(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, int size, String sort }) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/emails".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    if(minCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "minCount", minCount));
    }
    if(retryTimeout != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "retryTimeout", retryTimeout));
    }
    if(since != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "since", since));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
  ///
  /// List emails that an inbox has received. Only emails that are sent to the inbox&#39;s email address will appear in the inbox. It may take several seconds for any email you send to an inbox&#39;s email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the &#x60;minCount&#x60; parameter. The server will retry the inbox database until the &#x60;minCount&#x60; is satisfied or the &#x60;retryTimeout&#x60; is reached
  Future<List<EmailPreview>> getEmails(String inboxId, { int limit, int minCount, int retryTimeout, DateTime since, int size, String sort }) async {
    Response response = await getEmailsWithHttpInfo(inboxId,  limit: limit, minCount: minCount, retryTimeout: retryTimeout, since: since, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<EmailPreview>') as List).map((item) => item as EmailPreview).toList();
    } else {
      return null;
    }
  }

  /// Get Inbox with HTTP info returned
  ///
  /// Returns an inbox&#39;s properties, including its email address and ID.
  Future<Response> getInboxWithHttpInfo(String inboxId) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get Inbox
  ///
  /// Returns an inbox&#39;s properties, including its email address and ID.
  Future<Inbox> getInbox(String inboxId) async {
    Response response = await getInboxWithHttpInfo(inboxId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Get inbox emails paginated with HTTP info returned
  ///
  /// Get a paginated list of emails in an inbox. Does not hold connections open.
  Future<Response> getInboxEmailsPaginatedWithHttpInfo(String inboxId, { int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/emails/paginated".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get inbox emails paginated
  ///
  /// Get a paginated list of emails in an inbox. Does not hold connections open.
  Future<PageEmailPreview> getInboxEmailsPaginated(String inboxId, { int page, int size, String sort }) async {
    Response response = await getInboxEmailsPaginatedWithHttpInfo(inboxId,  page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailPreview') as PageEmailPreview;
    } else {
      return null;
    }
  }

  /// Get Inbox Sent Emails with HTTP info returned
  ///
  /// Returns an inbox&#39;s sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  Future<Response> getInboxSentEmailsWithHttpInfo(String inboxId, { int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/sent".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get Inbox Sent Emails
  ///
  /// Returns an inbox&#39;s sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
  Future<PageSentEmailProjection> getInboxSentEmails(String inboxId, { int page, int size, String sort }) async {
    Response response = await getInboxSentEmailsWithHttpInfo(inboxId,  page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageSentEmailProjection') as PageSentEmailProjection;
    } else {
      return null;
    }
  }

  /// Get inbox tags with HTTP info returned
  ///
  /// Get all inbox tags
  Future<Response> getInboxTagsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes/tags".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Get inbox tags
  ///
  /// Get all inbox tags
  Future<List<String>> getInboxTags() async {
    Response response = await getInboxTagsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }

  /// List Inboxes / Email Addresses with HTTP info returned
  ///
  /// List the inboxes you have created. Note use of the more advanced &#x60;getAllEmails&#x60; is recommended. You can provide a limit and sort parameter.
  Future<Response> getInboxesWithHttpInfo({ int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Inboxes / Email Addresses
  ///
  /// List the inboxes you have created. Note use of the more advanced &#x60;getAllEmails&#x60; is recommended. You can provide a limit and sort parameter.
  Future<List<Inbox>> getInboxes({ int size, String sort }) async {
    Response response = await getInboxesWithHttpInfo( size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Inbox>') as List).map((item) => item as Inbox).toList();
    } else {
      return null;
    }
  }

  /// List Organization Inboxes Paginated with HTTP info returned
  ///
  /// List organization inboxes in paginated form. These are inboxes created with &#x60;allowTeamAccess&#x60; flag enabled. Organization inboxes are &#x60;readOnly&#x60; for non-admin users. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  Future<Response> getOrganizationInboxesWithHttpInfo({ int page, int size, String sort }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/inboxes/organization".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }

    List<String> contentTypes = [];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// List Organization Inboxes Paginated
  ///
  /// List organization inboxes in paginated form. These are inboxes created with &#x60;allowTeamAccess&#x60; flag enabled. Organization inboxes are &#x60;readOnly&#x60; for non-admin users. The results are available on the &#x60;content&#x60; property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
  Future<PageOrganizationInboxProjection> getOrganizationInboxes({ int page, int size, String sort }) async {
    Response response = await getOrganizationInboxesWithHttpInfo( page: page, size: size, sort: sort );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageOrganizationInboxProjection') as PageOrganizationInboxProjection;
    } else {
      return null;
    }
  }

  /// Send Email with HTTP info returned
  ///
  /// Send an email from an inbox&#39;s email address.  The request body should contain the &#x60;SendEmailOptions&#x60; that include recipients, attachments, body etc. See &#x60;SendEmailOptions&#x60; for all available properties. Note the &#x60;inboxId&#x60; refers to the inbox&#39;s id not the inbox&#39;s email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method &#x60;sendEmailAndConfirm&#x60;.
  Future sendEmailWithHttpInfo(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    Object postBody = sendEmailOptions;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Send Email
  ///
  /// Send an email from an inbox&#39;s email address.  The request body should contain the &#x60;SendEmailOptions&#x60; that include recipients, attachments, body etc. See &#x60;SendEmailOptions&#x60; for all available properties. Note the &#x60;inboxId&#x60; refers to the inbox&#39;s id not the inbox&#39;s email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method &#x60;sendEmailAndConfirm&#x60;.
  Future sendEmail(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    Response response = await sendEmailWithHttpInfo(inboxId,  sendEmailOptions: sendEmailOptions );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Send email and return sent confirmation with HTTP info returned
  ///
  /// Sister method for standard &#x60;sendEmail&#x60; method with the benefit of returning a &#x60;SentEmail&#x60; entity confirming the successful sending of the email with link the the sent object created for it.
  Future<Response> sendEmailAndConfirmWithHttpInfo(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    Object postBody = sendEmailOptions;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/confirm".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Send email and return sent confirmation
  ///
  /// Sister method for standard &#x60;sendEmail&#x60; method with the benefit of returning a &#x60;SentEmail&#x60; entity confirming the successful sending of the email with link the the sent object created for it.
  Future<SentEmailDto> sendEmailAndConfirm(String inboxId, { SendEmailOptions sendEmailOptions }) async {
    Response response = await sendEmailAndConfirmWithHttpInfo(inboxId,  sendEmailOptions: sendEmailOptions );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'SentEmailDto') as SentEmailDto;
    } else {
      return null;
    }
  }

  /// Set inbox favourited state with HTTP info returned
  ///
  /// Set and return new favourite state for an inbox
  Future<Response> setInboxFavouritedWithHttpInfo(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async {
    Object postBody = setInboxFavouritedOptions;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }
    if(setInboxFavouritedOptions == null) {
     throw ApiException(400, "Missing required param: setInboxFavouritedOptions");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}/favourite".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Set inbox favourited state
  ///
  /// Set and return new favourite state for an inbox
  Future<Inbox> setInboxFavourited(String inboxId, SetInboxFavouritedOptions setInboxFavouritedOptions) async {
    Response response = await setInboxFavouritedWithHttpInfo(inboxId, setInboxFavouritedOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

  /// Update Inbox with HTTP info returned
  ///
  /// Update editable fields on an inbox
  Future<Response> updateInboxWithHttpInfo(String inboxId, UpdateInboxOptions updateInboxOptions) async {
    Object postBody = updateInboxOptions;

    // verify required params are set
    if(inboxId == null) {
     throw ApiException(400, "Missing required param: inboxId");
    }
    if(updateInboxOptions == null) {
     throw ApiException(400, "Missing required param: updateInboxOptions");
    }

    // create path and map variables
    String path = "/inboxes/{inboxId}".replaceAll("{format}","json").replaceAll("{" + "inboxId" + "}", inboxId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    List<String> authNames = ["API_KEY"];

    if(nullableContentType != null && nullableContentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Update Inbox
  ///
  /// Update editable fields on an inbox
  Future<Inbox> updateInbox(String inboxId, UpdateInboxOptions updateInboxOptions) async {
    Response response = await updateInboxWithHttpInfo(inboxId, updateInboxOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Inbox') as Inbox;
    } else {
      return null;
    }
  }

}
