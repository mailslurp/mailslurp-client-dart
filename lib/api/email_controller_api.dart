//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailControllerApi {
  EmailControllerApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete all emails in all inboxes.
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllEmailsWithHttpInfo() async {
    final path = r'/emails';

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

  /// Delete all emails in all inboxes.
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  Future<void> deleteAllEmails() async {
    final response = await deleteAllEmailsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Delete an email
  ///
  /// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to delete
  Future<Response> deleteEmailWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Delete an email
  ///
  /// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to delete
  Future<void> deleteEmail(String emailId) async {
    final response = await deleteEmailWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] apiKey:
  ///   Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  Future<Response> downloadAttachmentWithHttpInfo(String attachmentId, String emailId, { String apiKey }) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/attachments/{attachmentId}'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString())
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (apiKey != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'apiKey', apiKey));
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

  /// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] apiKey:
  ///   Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  Future<String> downloadAttachment(String attachmentId, String emailId, { String apiKey }) async {
    final response = await downloadAttachmentWithHttpInfo(attachmentId, emailId,  apiKey: apiKey );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
        }
    return Future<String>.value(null);
  }

  /// Get email attachment as base64 encoded string alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> downloadAttachmentBase64WithHttpInfo(String attachmentId, String emailId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/attachments/{attachmentId}/base64'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString())
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get email attachment as base64 encoded string alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<DownloadAttachmentDto> downloadAttachmentBase64(String attachmentId, String emailId) async {
    final response = await downloadAttachmentBase64WithHttpInfo(attachmentId, emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'DownloadAttachmentDto') as DownloadAttachmentDto;
        }
    return Future<DownloadAttachmentDto>.value(null);
  }

  /// Forward email to recipients
  ///
  /// Forward an existing email to new recipients.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [ForwardEmailOptions] forwardEmailOptions (required):
  ///   forwardEmailOptions
  Future<Response> forwardEmailWithHttpInfo(String emailId, ForwardEmailOptions forwardEmailOptions) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }
    if (forwardEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: forwardEmailOptions');
    }

    final path = r'/emails/{emailId}/forward'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody = forwardEmailOptions;

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

  /// Forward email to recipients
  ///
  /// Forward an existing email to new recipients.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [ForwardEmailOptions] forwardEmailOptions (required):
  ///   forwardEmailOptions
  Future<void> forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions) async {
    final response = await forwardEmailWithHttpInfo(emailId, forwardEmailOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
  }

  /// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getAttachmentMetaDataWithHttpInfo(String attachmentId, String emailId) async {
    // Verify required params are set.
    if (attachmentId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: attachmentId');
    }
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/attachments/{attachmentId}/metadata'
      .replaceAll('{' + 'attachmentId' + '}', attachmentId.toString())
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  ///
  /// Parameters:
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<AttachmentMetaData> getAttachmentMetaData(String attachmentId, String emailId) async {
    final response = await getAttachmentMetaDataWithHttpInfo(attachmentId, emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'AttachmentMetaData') as AttachmentMetaData;
        }
    return Future<AttachmentMetaData>.value(null);
  }

  /// Get all email attachment metadata. Metadata includes name and attachment size.
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getAttachmentsWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/attachments'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get all email attachment metadata. Metadata includes name and attachment size.
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<List<AttachmentMetaData>> getAttachments(String emailId) async {
    final response = await getAttachmentsWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<AttachmentMetaData>') as List)
        .cast<AttachmentMetaData>()
        .toList(growable: false);
    }
    return Future<List<AttachmentMetaData>>.value(null);
  }

  /// Get email content
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   emailId
  ///
  /// * [bool] decode:
  ///   Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing
  Future<Response> getEmailWithHttpInfo(String emailId, { bool decode }) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'decode', decode));
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

  /// Get email content
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   emailId
  ///
  /// * [bool] decode:
  ///   Decode email body quoted-printable encoding to plain text. SMTP servers often encode text using quoted-printable format (for instance `=D7`). This can be a pain for testing
  Future<Email> getEmail(String emailId, { bool decode }) async {
    final response = await getEmailWithHttpInfo(emailId,  decode: decode );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
        }
    return Future<Email>.value(null);
  }

  /// Get email content regex pattern match results. Runs regex against email body and returns match groups.
  ///
  /// Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [ContentMatchOptions] contentMatchOptions (required):
  ///   contentMatchOptions
  Future<Response> getEmailContentMatchWithHttpInfo(String emailId, ContentMatchOptions contentMatchOptions) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }
    if (contentMatchOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: contentMatchOptions');
    }

    final path = r'/emails/{emailId}/contentMatch'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody = contentMatchOptions;

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

  /// Get email content regex pattern match results. Runs regex against email body and returns match groups.
  ///
  /// Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [ContentMatchOptions] contentMatchOptions (required):
  ///   contentMatchOptions
  Future<EmailContentMatchResult> getEmailContentMatch(String emailId, ContentMatchOptions contentMatchOptions) async {
    final response = await getEmailContentMatchWithHttpInfo(emailId, contentMatchOptions);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EmailContentMatchResult') as EmailContentMatchResult;
        }
    return Future<EmailContentMatchResult>.value(null);
  }

  /// Get email content as HTML. For displaying emails in browser context.
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   emailId
  ///
  /// * [bool] decode:
  ///   decode
  Future<Response> getEmailHTMLWithHttpInfo(String emailId, { bool decode }) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/html'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'decode', decode));
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

  /// Get email content as HTML. For displaying emails in browser context.
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   emailId
  ///
  /// * [bool] decode:
  ///   decode
  Future<String> getEmailHTML(String emailId, { bool decode }) async {
    final response = await getEmailHTMLWithHttpInfo(emailId,  decode: decode );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
        }
    return Future<String>.value(null);
  }

  /// Parse and return text from an email, stripping HTML and decoding encoded characters
  ///
  /// Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to perform HTML query on
  ///
  /// * [String] htmlSelector:
  ///   HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
  Future<Response> getEmailHTMLQueryWithHttpInfo(String emailId, { String htmlSelector }) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/htmlQuery'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (htmlSelector != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'htmlSelector', htmlSelector));
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

  /// Parse and return text from an email, stripping HTML and decoding encoded characters
  ///
  /// Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to perform HTML query on
  ///
  /// * [String] htmlSelector:
  ///   HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
  Future<EmailTextLinesResult> getEmailHTMLQuery(String emailId, { String htmlSelector }) async {
    final response = await getEmailHTMLQueryWithHttpInfo(emailId,  htmlSelector: htmlSelector );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EmailTextLinesResult') as EmailTextLinesResult;
        }
    return Future<EmailTextLinesResult>.value(null);
  }

  /// Parse and return text from an email, stripping HTML and decoding encoded characters
  ///
  /// Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to fetch text for
  ///
  /// * [bool] decodeHtmlEntities:
  ///   Decode HTML entities
  ///
  /// * [String] lineSeparator:
  ///   Line separator character
  Future<Response> getEmailTextLinesWithHttpInfo(String emailId, { bool decodeHtmlEntities, String lineSeparator }) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/textLines'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decodeHtmlEntities != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'decodeHtmlEntities', decodeHtmlEntities));
    }
    if (lineSeparator != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'lineSeparator', lineSeparator));
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

  /// Parse and return text from an email, stripping HTML and decoding encoded characters
  ///
  /// Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to fetch text for
  ///
  /// * [bool] decodeHtmlEntities:
  ///   Decode HTML entities
  ///
  /// * [String] lineSeparator:
  ///   Line separator character
  Future<EmailTextLinesResult> getEmailTextLines(String emailId, { bool decodeHtmlEntities, String lineSeparator }) async {
    final response = await getEmailTextLinesWithHttpInfo(emailId,  decodeHtmlEntities: decodeHtmlEntities, lineSeparator: lineSeparator );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'EmailTextLinesResult') as EmailTextLinesResult;
        }
    return Future<EmailTextLinesResult>.value(null);
  }

  /// Get all emails in all inboxes. Email API list all.
  ///
  /// By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxId:
  ///   Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  ///
  /// * [int] page:
  ///   Optional page index in email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  Future<Response> getEmailsPaginatedWithHttpInfo({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    // Verify required params are set.

    final path = r'/emails';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
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

  /// Get all emails in all inboxes. Email API list all.
  ///
  /// By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxId:
  ///   Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  ///
  /// * [int] page:
  ///   Optional page index in email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  Future<PageEmailProjection> getEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    final response = await getEmailsPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailProjection') as PageEmailProjection;
        }
    return Future<PageEmailProjection>.value(null);
  }

  /// Get latest email in all inboxes. Most recently received.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxIds:
  ///   Optional set of inboxes to filter by. Only get the latest email from these inbox IDs
  Future<Response> getLatestEmailWithHttpInfo({ List<String> inboxIds }) async {
    // Verify required params are set.

    final path = r'/emails/latest';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'inboxIds', inboxIds));
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

  /// Get latest email in all inboxes. Most recently received.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxIds:
  ///   Optional set of inboxes to filter by. Only get the latest email from these inbox IDs
  Future<Email> getLatestEmail({ List<String> inboxIds }) async {
    final response = await getLatestEmailWithHttpInfo( inboxIds: inboxIds );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
        }
    return Future<Email>.value(null);
  }

  /// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   ID of the inbox you want to get the latest email from
  Future<Response> getLatestEmailInInboxWithHttpInfo({ String inboxId }) async {
    // Verify required params are set.

    final path = r'/emails/latestIn';

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

  /// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   ID of the inbox you want to get the latest email from
  Future<Email> getLatestEmailInInbox({ String inboxId }) async {
    final response = await getLatestEmailInInboxWithHttpInfo( inboxId: inboxId );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Email') as Email;
        }
    return Future<Email>.value(null);
  }

  /// Get all organization emails. List team or shared test email accounts
  ///
  /// By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxId:
  ///   Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  ///
  /// * [int] page:
  ///   Optional page index in email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  Future<Response> getOrganizationEmailsPaginatedWithHttpInfo({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    // Verify required params are set.

    final path = r'/emails/organization';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('multi', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page', page));
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

  /// Get all organization emails. List team or shared test email accounts
  ///
  /// By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxId:
  ///   Optional inbox ids to filter by. Can be repeated. By default will use all inboxes belonging to your account.
  ///
  /// * [int] page:
  ///   Optional page index in email list pagination
  ///
  /// * [int] size:
  ///   Optional page size in email list pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [bool] unreadOnly:
  ///   Optional filter for unread emails only. All emails are considered unread until they are viewed in the dashboard or requested directly
  Future<PageEmailProjection> getOrganizationEmailsPaginated({ List<String> inboxId, int page, int size, String sort, bool unreadOnly }) async {
    final response = await getOrganizationEmailsPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'PageEmailProjection') as PageEmailProjection;
        }
    return Future<PageEmailProjection>.value(null);
  }

  /// Get raw email string. Returns unparsed raw SMTP message with headers and body.
  ///
  /// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getRawEmailContentsWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/raw'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get raw email string. Returns unparsed raw SMTP message with headers and body.
  ///
  /// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<String> getRawEmailContents(String emailId) async {
    final response = await getRawEmailContentsWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'String') as String;
        }
    return Future<String>.value(null);
  }

  /// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
  ///
  /// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getRawEmailJsonWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/raw/json'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
  ///
  /// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<RawEmailJson> getRawEmailJson(String emailId) async {
    final response = await getRawEmailJsonWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'RawEmailJson') as RawEmailJson;
        }
    return Future<RawEmailJson>.value(null);
  }

  /// Get unread email count
  ///
  /// Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUnreadEmailCountWithHttpInfo() async {
    final path = r'/emails/unreadCount';

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

  /// Get unread email count
  ///
  /// Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
  Future<UnreadCount> getUnreadEmailCount() async {
    final response = await getUnreadEmailCountWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'UnreadCount') as UnreadCount;
        }
    return Future<UnreadCount>.value(null);
  }

  /// Reply to an email
  ///
  /// Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of the email that should be replied to
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  ///   replyToEmailOptions
  Future<Response> replyToEmailWithHttpInfo(String emailId, ReplyToEmailOptions replyToEmailOptions) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }
    if (replyToEmailOptions == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: replyToEmailOptions');
    }

    final path = r'/emails/{emailId}'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

    Object postBody = replyToEmailOptions;

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
  /// * [String] emailId (required):
  ///   ID of the email that should be replied to
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  ///   replyToEmailOptions
  Future<SentEmailDto> replyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions) async {
    final response = await replyToEmailWithHttpInfo(emailId, replyToEmailOptions);
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

  /// Validate email HTML contents
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> validateEmailWithHttpInfo(String emailId) async {
    // Verify required params are set.
    if (emailId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: emailId');
    }

    final path = r'/emails/{emailId}/validate'
      .replaceAll('{' + 'emailId' + '}', emailId.toString());

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

  /// Validate email HTML contents
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<ValidationDto> validateEmail(String emailId) async {
    final response = await validateEmailWithHttpInfo(emailId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'ValidationDto') as ValidationDto;
        }
    return Future<ValidationDto>.value(null);
  }
}
