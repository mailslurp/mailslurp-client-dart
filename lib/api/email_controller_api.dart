part of mailslurp.api;



class EmailControllerApi {
  final ApiClient apiClient;

  EmailControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete all emails with HTTP info returned
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  Future deleteAllEmailsWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/emails".replaceAll("{format}","json");

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

  /// Delete all emails
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  Future deleteAllEmails() async {
    Response response = await deleteAllEmailsWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Delete an email with HTTP info returned
  ///
  /// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  Future deleteEmailWithHttpInfo(String emailId) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Delete an email
  ///
  /// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  Future deleteEmail(String emailId) async {
    Response response = await deleteEmailWithHttpInfo(emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get email attachment bytes with HTTP info returned
  ///
  /// Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  Future<Response> downloadAttachmentWithHttpInfo(String attachmentId, String emailId, { String apiKey }) async {
    Object postBody;

    // verify required params are set
    if(attachmentId == null) {
     throw ApiException(400, "Missing required param: attachmentId");
    }
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/attachments/{attachmentId}".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "emailId" + "}", emailId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(apiKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "apiKey", apiKey));
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

  /// Get email attachment bytes
  ///
  /// Returns the specified attachment for a given email as a byte stream (file download). You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  Future<String> downloadAttachment(String attachmentId, String emailId, { String apiKey }) async {
    Response response = await downloadAttachmentWithHttpInfo(attachmentId, emailId,  apiKey: apiKey );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

  /// Forward email with HTTP info returned
  ///
  /// Forward an existing email to new recipients.
  Future forwardEmailWithHttpInfo(String emailId, ForwardEmailOptions forwardEmailOptions) async {
    Object postBody = forwardEmailOptions;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }
    if(forwardEmailOptions == null) {
     throw ApiException(400, "Missing required param: forwardEmailOptions");
    }

    // create path and map variables
    String path = "/emails/{emailId}/forward".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Forward email
  ///
  /// Forward an existing email to new recipients.
  Future forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions) async {
    Response response = await forwardEmailWithHttpInfo(emailId, forwardEmailOptions);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Get email attachment metadata with HTTP info returned
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  Future<Response> getAttachmentMetaDataWithHttpInfo(String attachmentId, String emailId) async {
    Object postBody;

    // verify required params are set
    if(attachmentId == null) {
     throw ApiException(400, "Missing required param: attachmentId");
    }
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/attachments/{attachmentId}/metadata".replaceAll("{format}","json").replaceAll("{" + "attachmentId" + "}", attachmentId.toString()).replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Get email attachment metadata
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  Future<AttachmentMetaData> getAttachmentMetaData(String attachmentId, String emailId) async {
    Response response = await getAttachmentMetaDataWithHttpInfo(attachmentId, emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AttachmentMetaData') as AttachmentMetaData;
    } else {
      return null;
    }
  }

  /// Get all email attachment metadata with HTTP info returned
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  Future<Response> getAttachmentsWithHttpInfo(String emailId) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/attachments".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Get all email attachment metadata
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  Future<List<AttachmentMetaData>> getAttachments(String emailId) async {
    Response response = await getAttachmentsWithHttpInfo(emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AttachmentMetaData>') as List).map((item) => item as AttachmentMetaData).toList();
    } else {
      return null;
    }
  }

  /// Get email content with HTTP info returned
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  Future<Response> getEmailWithHttpInfo(String emailId, { bool decode }) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(decode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "decode", decode));
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

  /// Get email content
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  Future<Email> getEmail(String emailId, { bool decode }) async {
    Response response = await getEmailWithHttpInfo(emailId,  decode: decode );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
    } else {
      return null;
    }
  }

  /// Get email content as HTML with HTTP info returned
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: &#x60;?apiKey&#x3D;xxx&#x60;
  Future<Response> getEmailHTMLWithHttpInfo(String emailId, { bool decode }) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/html".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(decode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "decode", decode));
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

  /// Get email content as HTML
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: &#x60;?apiKey&#x3D;xxx&#x60;
  Future<String> getEmailHTML(String emailId, { bool decode }) async {
    Response response = await getEmailHTMLWithHttpInfo(emailId,  decode: decode );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

  /// Get all emails with HTTP info returned
  ///
  /// By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  Future<Response> getEmailsPaginatedWithHttpInfo({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/emails".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "inboxId", inboxId));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(size != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "size", size));
    }
    if(sort != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sort", sort));
    }
    if(unreadOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "unreadOnly", unreadOnly));
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

  /// Get all emails
  ///
  /// By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  Future<PageEmailProjection> getEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    Response response = await getEmailsPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly );
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailProjection') as PageEmailProjection;
    } else {
      return null;
    }
  }

  /// Get raw email string with HTTP info returned
  ///
  /// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  Future<Response> getRawEmailContentsWithHttpInfo(String emailId) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/raw".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Get raw email string
  ///
  /// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  Future<String> getRawEmailContents(String emailId) async {
    Response response = await getRawEmailContentsWithHttpInfo(emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
    } else {
      return null;
    }
  }

  /// Get raw email in JSON with HTTP info returned
  ///
  /// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  Future<Response> getRawEmailJsonWithHttpInfo(String emailId) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/raw/json".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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

  /// Get raw email in JSON
  ///
  /// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  Future<RawEmailJson> getRawEmailJson(String emailId) async {
    Response response = await getRawEmailJsonWithHttpInfo(emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RawEmailJson') as RawEmailJson;
    } else {
      return null;
    }
  }

  /// Get unread email count with HTTP info returned
  ///
  /// Get number of emails unread
  Future<Response> getUnreadEmailCountWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/emails/unreadCount".replaceAll("{format}","json");

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

  /// Get unread email count
  ///
  /// Get number of emails unread
  Future<UnreadCount> getUnreadEmailCount() async {
    Response response = await getUnreadEmailCountWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UnreadCount') as UnreadCount;
    } else {
      return null;
    }
  }

  /// Validate email with HTTP info returned
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  Future<Response> validateEmailWithHttpInfo(String emailId) async {
    Object postBody;

    // verify required params are set
    if(emailId == null) {
     throw ApiException(400, "Missing required param: emailId");
    }

    // create path and map variables
    String path = "/emails/{emailId}/validate".replaceAll("{format}","json").replaceAll("{" + "emailId" + "}", emailId.toString());

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             nullableContentType,
                                             authNames);
    return response;
  }

  /// Validate email
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  Future<ValidationDto> validateEmail(String emailId) async {
    Response response = await validateEmailWithHttpInfo(emailId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ValidationDto') as ValidationDto;
    } else {
      return null;
    }
  }

}
