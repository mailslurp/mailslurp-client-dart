//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class EmailControllerApi {
  EmailControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Set IMAP flags associated with a message. Only supports '\\Seen' flag.
  ///
  /// Apply RFC3501 section-2.3.2 IMAP flag operations on an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [ImapFlagOperationOptions] imapFlagOperationOptions (required):
  Future<Response> applyImapFlagOperationWithHttpInfo(String emailId, ImapFlagOperationOptions imapFlagOperationOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/imap-flag-operation'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = imapFlagOperationOptions;

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

  /// Set IMAP flags associated with a message. Only supports '\\Seen' flag.
  ///
  /// Apply RFC3501 section-2.3.2 IMAP flag operations on an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [ImapFlagOperationOptions] imapFlagOperationOptions (required):
  Future<EmailPreview?> applyImapFlagOperation(String emailId, ImapFlagOperationOptions imapFlagOperationOptions,) async {
    final response = await applyImapFlagOperationWithHttpInfo(emailId, imapFlagOperationOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailPreview',) as EmailPreview;
    
    }
    return null;
  }

  /// Check if email can be sent and options are valid.
  ///
  /// Can user send email to given recipient or is the recipient blocked
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> canSendWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/can-send';

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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

  /// Check if email can be sent and options are valid.
  ///
  /// Can user send email to given recipient or is the recipient blocked
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to send the email from
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<CanSendEmailResults?> canSend(String inboxId, SendEmailOptions sendEmailOptions,) async {
    final response = await canSendWithHttpInfo(inboxId, sendEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CanSendEmailResults',) as CanSendEmailResults;
    
    }
    return null;
  }

  /// Detect broken links, spelling, and images in email content
  ///
  /// Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Response> checkEmailBodyWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/check-email-body'
      .replaceAll('{emailId}', emailId);

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

  /// Detect broken links, spelling, and images in email content
  ///
  /// Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<CheckEmailBodyResults?> checkEmailBody(String emailId,) async {
    final response = await checkEmailBodyWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckEmailBodyResults',) as CheckEmailBodyResults;
    
    }
    return null;
  }

  /// Show which mail clients support the HTML and CSS features used in an email body.
  ///
  /// Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Response> checkEmailBodyFeatureSupportWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/check-email-body-feature-support'
      .replaceAll('{emailId}', emailId);

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

  /// Show which mail clients support the HTML and CSS features used in an email body.
  ///
  /// Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<CheckEmailBodyFeatureSupportResults?> checkEmailBodyFeatureSupport(String emailId,) async {
    final response = await checkEmailBodyFeatureSupportWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckEmailBodyFeatureSupportResults',) as CheckEmailBodyFeatureSupportResults;
    
    }
    return null;
  }

  /// Show which email programs and devices support the features used in an email body.
  ///
  /// Evaluate the features used in an email body and return a report of email client support across different platforms and versions.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CheckEmailClientSupportOptions] checkEmailClientSupportOptions (required):
  Future<Response> checkEmailClientSupportWithHttpInfo(CheckEmailClientSupportOptions checkEmailClientSupportOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/check-email-client-support';

    // ignore: prefer_final_locals
    Object? postBody = checkEmailClientSupportOptions;

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

  /// Show which email programs and devices support the features used in an email body.
  ///
  /// Evaluate the features used in an email body and return a report of email client support across different platforms and versions.
  ///
  /// Parameters:
  ///
  /// * [CheckEmailClientSupportOptions] checkEmailClientSupportOptions (required):
  Future<CheckEmailClientSupportResults?> checkEmailClientSupport(CheckEmailClientSupportOptions checkEmailClientSupportOptions,) async {
    final response = await checkEmailClientSupportWithHttpInfo(checkEmailClientSupportOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CheckEmailClientSupportResults',) as CheckEmailClientSupportResults;
    
    }
    return null;
  }

  /// Delete all emails in all inboxes.
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteAllEmailsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/emails';

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

  /// Delete all emails in all inboxes.
  ///
  /// Deletes all emails in your account. Be careful as emails cannot be recovered
  Future<void> deleteAllEmails() async {
    final response = await deleteAllEmailsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  Future<Response> deleteEmailWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}'
      .replaceAll('{emailId}', emailId);

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

  /// Delete an email
  ///
  /// Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to delete
  Future<void> deleteEmail(String emailId,) async {
    final response = await deleteEmailWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
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
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] apiKey:
  ///   Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  Future<Response> downloadAttachmentWithHttpInfo(String emailId, String attachmentId, { String? apiKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/attachments/{attachmentId}'
      .replaceAll('{emailId}', emailId)
      .replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (apiKey != null) {
      queryParams.addAll(_queryParams('', 'apiKey', apiKey));
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

  /// Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
  ///
  /// Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  ///
  /// * [String] apiKey:
  ///   Can pass apiKey in url for this request if you wish to download the file in a browser. Content type will be set to original content type of the attachment file. This is so that browsers can download the file correctly.
  Future<String?> downloadAttachment(String emailId, String attachmentId, { String? apiKey, }) async {
    final response = await downloadAttachmentWithHttpInfo(emailId, attachmentId,  apiKey: apiKey, );
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

  /// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> downloadAttachmentBase64WithHttpInfo(String emailId, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/attachments/{attachmentId}/base64'
      .replaceAll('{emailId}', emailId)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
  ///
  /// Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<DownloadAttachmentDto?> downloadAttachmentBase64(String emailId, String attachmentId,) async {
    final response = await downloadAttachmentBase64WithHttpInfo(emailId, attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DownloadAttachmentDto',) as DownloadAttachmentDto;
    
    }
    return null;
  }

  /// Get email body as string. Returned as `plain/text` with content type header.
  ///
  /// Returns the specified email body for a given email as a string
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> downloadBodyWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/body'
      .replaceAll('{emailId}', emailId);

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

  /// Get email body as string. Returned as `plain/text` with content type header.
  ///
  /// Returns the specified email body for a given email as a string
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<String?> downloadBody(String emailId,) async {
    final response = await downloadBodyWithHttpInfo(emailId,);
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

  /// Get email body in bytes. Returned as `octet-stream` with content type header.
  ///
  /// Returns the specified email body for a given email as a stream / array of bytes.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> downloadBodyBytesWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/body-bytes'
      .replaceAll('{emailId}', emailId);

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

  /// Get email body in bytes. Returned as `octet-stream` with content type header.
  ///
  /// Returns the specified email body for a given email as a stream / array of bytes.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<String?> downloadBodyBytes(String emailId,) async {
    final response = await downloadBodyBytesWithHttpInfo(emailId,);
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

  /// Forward email to recipients
  ///
  /// Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [ForwardEmailOptions] forwardEmailOptions (required):
  Future<Response> forwardEmailWithHttpInfo(String emailId, ForwardEmailOptions forwardEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/forward'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = forwardEmailOptions;

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

  /// Forward email to recipients
  ///
  /// Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [ForwardEmailOptions] forwardEmailOptions (required):
  Future<SentEmailDto?> forwardEmail(String emailId, ForwardEmailOptions forwardEmailOptions,) async {
    final response = await forwardEmailWithHttpInfo(emailId, forwardEmailOptions,);
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

  /// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<Response> getAttachmentMetaDataWithHttpInfo(String emailId, String attachmentId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/attachments/{attachmentId}/metadata'
      .replaceAll('{emailId}', emailId)
      .replaceAll('{attachmentId}', attachmentId);

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

  /// Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
  ///
  /// Returns the metadata such as name and content-type for a given attachment and email.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  ///
  /// * [String] attachmentId (required):
  ///   ID of attachment
  Future<AttachmentMetaData?> getAttachmentMetaData(String emailId, String attachmentId,) async {
    final response = await getAttachmentMetaDataWithHttpInfo(emailId, attachmentId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AttachmentMetaData',) as AttachmentMetaData;
    
    }
    return null;
  }

  /// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Response> getEmailWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}'
      .replaceAll('{emailId}', emailId);

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

  /// Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  ///
  /// Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Email?> getEmail(String emailId,) async {
    final response = await getEmailWithHttpInfo(emailId,);
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

  /// Get all email attachment metadata. Metadata includes name and size of attachments.
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> getEmailAttachmentsWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/attachments'
      .replaceAll('{emailId}', emailId);

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

  /// Get all email attachment metadata. Metadata includes name and size of attachments.
  ///
  /// Returns an array of attachment metadata such as name and content-type for a given email if present.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<List<AttachmentMetaData>?> getEmailAttachments(String emailId,) async {
    final response = await getEmailAttachmentsWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<AttachmentMetaData>') as List)
        .cast<AttachmentMetaData>()
        .toList();

    }
    return null;
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
  Future<Response> getEmailContentMatchWithHttpInfo(String emailId, ContentMatchOptions contentMatchOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/contentMatch'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = contentMatchOptions;

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
  Future<EmailContentMatchResult?> getEmailContentMatch(String emailId, ContentMatchOptions contentMatchOptions,) async {
    final response = await getEmailContentMatchWithHttpInfo(emailId, contentMatchOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailContentMatchResult',) as EmailContentMatchResult;
    
    }
    return null;
  }

  /// Get email content part by content type
  ///
  /// Get email body content parts from a multipart email message for a given content type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [String] contentType (required):
  ///   Content type
  ///
  /// * [bool] strict:
  ///   Strict content type match
  ///
  /// * [int] index:
  ///   Index of content type part if multiple
  Future<Response> getEmailContentPartWithHttpInfo(String emailId, String contentType, { bool? strict, int? index, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/contentPart'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'contentType', contentType));
    if (strict != null) {
      queryParams.addAll(_queryParams('', 'strict', strict));
    }
    if (index != null) {
      queryParams.addAll(_queryParams('', 'index', index));
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

  /// Get email content part by content type
  ///
  /// Get email body content parts from a multipart email message for a given content type
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [String] contentType (required):
  ///   Content type
  ///
  /// * [bool] strict:
  ///   Strict content type match
  ///
  /// * [int] index:
  ///   Index of content type part if multiple
  Future<EmailContentPartResult?> getEmailContentPart(String emailId, String contentType, { bool? strict, int? index, }) async {
    final response = await getEmailContentPartWithHttpInfo(emailId, contentType,  strict: strict, index: index, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailContentPartResult',) as EmailContentPartResult;
    
    }
    return null;
  }

  /// Get email content part by content type raw response
  ///
  /// Get email body content parts from a multipart email message for a given content type and return as response
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [String] contentType (required):
  ///   Content type
  ///
  /// * [bool] strict:
  ///   Strict content type match
  ///
  /// * [int] index:
  ///   Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message.
  Future<Response> getEmailContentPartContentWithHttpInfo(String emailId, String contentType, { bool? strict, int? index, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/contentPart/raw'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'contentType', contentType));
    if (strict != null) {
      queryParams.addAll(_queryParams('', 'strict', strict));
    }
    if (index != null) {
      queryParams.addAll(_queryParams('', 'index', index));
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

  /// Get email content part by content type raw response
  ///
  /// Get email body content parts from a multipart email message for a given content type and return as response
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to match against
  ///
  /// * [String] contentType (required):
  ///   Content type
  ///
  /// * [bool] strict:
  ///   Strict content type match
  ///
  /// * [int] index:
  ///   Index of content type part if multiple. Starts from 0 and applies to the result list after selecting for your content type. Content type parts are sorted by order found in original MIME message.
  Future<String?> getEmailContentPartContent(String emailId, String contentType, { bool? strict, int? index, }) async {
    final response = await getEmailContentPartContentWithHttpInfo(emailId, contentType,  strict: strict, index: index, );
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

  /// Get email count
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  Future<Response> getEmailCountWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/emails/count';

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

  /// Get email count
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  Future<CountDto?> getEmailCount({ String? inboxId, }) async {
    final response = await getEmailCountWithHttpInfo( inboxId: inboxId, );
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

  /// Get email content as HTML. For displaying emails in browser context.
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] replaceCidImages:
  Future<Response> getEmailHTMLWithHttpInfo(String emailId, { bool? replaceCidImages, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/html'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (replaceCidImages != null) {
      queryParams.addAll(_queryParams('', 'replaceCidImages', replaceCidImages));
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

  /// Get email content as HTML. For displaying emails in browser context.
  ///
  /// Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] replaceCidImages:
  Future<String?> getEmailHTML(String emailId, { bool? replaceCidImages, }) async {
    final response = await getEmailHTMLWithHttpInfo(emailId,  replaceCidImages: replaceCidImages, );
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

  /// Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
  ///
  /// Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] replaceCidImages:
  Future<Response> getEmailHTMLJsonWithHttpInfo(String emailId, { bool? replaceCidImages, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/html/json'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (replaceCidImages != null) {
      queryParams.addAll(_queryParams('', 'replaceCidImages', replaceCidImages));
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

  /// Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
  ///
  /// Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] replaceCidImages:
  Future<EmailHtmlDto?> getEmailHTMLJson(String emailId, { bool? replaceCidImages, }) async {
    final response = await getEmailHTMLJsonWithHttpInfo(emailId,  replaceCidImages: replaceCidImages, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailHtmlDto',) as EmailHtmlDto;
    
    }
    return null;
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
  /// * [String] htmlSelector (required):
  ///   HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
  Future<Response> getEmailHTMLQueryWithHttpInfo(String emailId, String htmlSelector,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/htmlQuery'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'htmlSelector', htmlSelector));

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

  /// Parse and return text from an email, stripping HTML and decoding encoded characters
  ///
  /// Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to perform HTML query on
  ///
  /// * [String] htmlSelector (required):
  ///   HTML selector to search for. Uses JQuery/JSoup/CSS style selector like '.my-div' to match content. See https://jsoup.org/apidocs/org/jsoup/select/Selector.html for more information.
  Future<EmailTextLinesResult?> getEmailHTMLQuery(String emailId, String htmlSelector,) async {
    final response = await getEmailHTMLQueryWithHttpInfo(emailId, htmlSelector,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailTextLinesResult',) as EmailTextLinesResult;
    
    }
    return null;
  }

  /// Parse and return list of links found in an email (only works for HTML content)
  ///
  /// HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to fetch text for
  ///
  /// * [String] selector:
  ///   Optional HTML query selector for links
  Future<Response> getEmailLinksWithHttpInfo(String emailId, { String? selector, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/links'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (selector != null) {
      queryParams.addAll(_queryParams('', 'selector', selector));
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

  /// Parse and return list of links found in an email (only works for HTML content)
  ///
  /// HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to fetch text for
  ///
  /// * [String] selector:
  ///   Optional HTML query selector for links
  Future<EmailLinksResult?> getEmailLinks(String emailId, { String? selector, }) async {
    final response = await getEmailLinksWithHttpInfo(emailId,  selector: selector, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailLinksResult',) as EmailLinksResult;
    
    }
    return null;
  }

  /// Get email URLs for viewing in browser or downloading
  ///
  /// Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Response> getEmailPreviewURLsWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/urls'
      .replaceAll('{emailId}', emailId);

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

  /// Get email URLs for viewing in browser or downloading
  ///
  /// Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<EmailPreviewUrls?> getEmailPreviewURLs(String emailId,) async {
    final response = await getEmailPreviewURLsWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailPreviewUrls',) as EmailPreviewUrls;
    
    }
    return null;
  }

  /// Take a screenshot of an email in a browser and return base64 encoded string
  ///
  /// Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [GetEmailScreenshotOptions] getEmailScreenshotOptions (required):
  Future<Response> getEmailScreenshotAsBase64WithHttpInfo(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/screenshot/base64'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = getEmailScreenshotOptions;

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

  /// Take a screenshot of an email in a browser and return base64 encoded string
  ///
  /// Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [GetEmailScreenshotOptions] getEmailScreenshotOptions (required):
  Future<EmailScreenshotResult?> getEmailScreenshotAsBase64(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions,) async {
    final response = await getEmailScreenshotAsBase64WithHttpInfo(emailId, getEmailScreenshotOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailScreenshotResult',) as EmailScreenshotResult;
    
    }
    return null;
  }

  /// Take a screenshot of an email in a browser
  ///
  /// Returns binary octet-stream of screenshot of the given email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [GetEmailScreenshotOptions] getEmailScreenshotOptions (required):
  Future<Response> getEmailScreenshotAsBinaryWithHttpInfo(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/screenshot/binary'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = getEmailScreenshotOptions;

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

  /// Take a screenshot of an email in a browser
  ///
  /// Returns binary octet-stream of screenshot of the given email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [GetEmailScreenshotOptions] getEmailScreenshotOptions (required):
  Future<void> getEmailScreenshotAsBinary(String emailId, GetEmailScreenshotOptions getEmailScreenshotOptions,) async {
    final response = await getEmailScreenshotAsBinaryWithHttpInfo(emailId, getEmailScreenshotOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  ///
  /// Returns a email summary object with headers. To retrieve the body see getEmail and to get raw unparsed email use the getRawEmail endpoints
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] decode:
  Future<Response> getEmailSummaryWithHttpInfo(String emailId, { bool? decode, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/summary'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decode != null) {
      queryParams.addAll(_queryParams('', 'decode', decode));
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

  /// Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
  ///
  /// Returns a email summary object with headers. To retrieve the body see getEmail and to get raw unparsed email use the getRawEmail endpoints
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] decode:
  Future<EmailPreview?> getEmailSummary(String emailId, { bool? decode, }) async {
    final response = await getEmailSummaryWithHttpInfo(emailId,  decode: decode, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailPreview',) as EmailPreview;
    
    }
    return null;
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
  Future<Response> getEmailTextLinesWithHttpInfo(String emailId, { bool? decodeHtmlEntities, String? lineSeparator, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/textLines'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (decodeHtmlEntities != null) {
      queryParams.addAll(_queryParams('', 'decodeHtmlEntities', decodeHtmlEntities));
    }
    if (lineSeparator != null) {
      queryParams.addAll(_queryParams('', 'lineSeparator', lineSeparator));
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
  Future<EmailTextLinesResult?> getEmailTextLines(String emailId, { bool? decodeHtmlEntities, String? lineSeparator, }) async {
    final response = await getEmailTextLinesWithHttpInfo(emailId,  decodeHtmlEntities: decodeHtmlEntities, lineSeparator: lineSeparator, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailTextLinesResult',) as EmailTextLinesResult;
    
    }
    return null;
  }

  /// Return email thread information. Use items endpoints to get messages for thread.
  ///
  /// Return email message thread summary from Message-ID, In-Reply-To, and References header. Get messages using items endpoint
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  Future<Response> getEmailThreadWithHttpInfo(String threadId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/threads/{threadId}'
      .replaceAll('{threadId}', threadId);

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

  /// Return email thread information. Use items endpoints to get messages for thread.
  ///
  /// Return email message thread summary from Message-ID, In-Reply-To, and References header. Get messages using items endpoint
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  Future<EmailThreadDto?> getEmailThread(String threadId,) async {
    final response = await getEmailThreadWithHttpInfo(threadId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailThreadDto',) as EmailThreadDto;
    
    }
    return null;
  }

  /// Return email thread items.
  ///
  /// Return email thread messages based on Message-ID, In-Reply-To, and References header
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> getEmailThreadItemsWithHttpInfo(String threadId, { String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/threads/{threadId}/items'
      .replaceAll('{threadId}', threadId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
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

  /// Return email thread items.
  ///
  /// Return email thread messages based on Message-ID, In-Reply-To, and References header
  ///
  /// Parameters:
  ///
  /// * [String] threadId (required):
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<EmailThreadItemsDto?> getEmailThreadItems(String threadId, { String? sort, }) async {
    final response = await getEmailThreadItemsWithHttpInfo(threadId,  sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailThreadItemsDto',) as EmailThreadItemsDto;
    
    }
    return null;
  }

  /// Return email threads in paginated form
  ///
  /// Return email message chains built from Message-ID, In-Reply-To, and References header.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] htmlSelector:
  ///   Optional inbox filter
  ///
  /// * [int] page:
  ///   Optional page index in email thread pagination
  ///
  /// * [int] size:
  ///   Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter search filter for email threads.
  ///
  /// * [DateTime] since:
  ///   Optional filter email threads created since time
  ///
  /// * [DateTime] before:
  ///   Optional filter emails threads created before given date time
  Future<Response> getEmailThreadsWithHttpInfo({ String? htmlSelector, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/threads';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (htmlSelector != null) {
      queryParams.addAll(_queryParams('', 'htmlSelector', htmlSelector));
    }
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

  /// Return email threads in paginated form
  ///
  /// Return email message chains built from Message-ID, In-Reply-To, and References header.
  ///
  /// Parameters:
  ///
  /// * [String] htmlSelector:
  ///   Optional inbox filter
  ///
  /// * [int] page:
  ///   Optional page index in email thread pagination
  ///
  /// * [int] size:
  ///   Optional page size in email thread pagination. Maximum size is 100. Use page index and sort to page through larger results
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  ///
  /// * [String] searchFilter:
  ///   Optional search filter search filter for email threads.
  ///
  /// * [DateTime] since:
  ///   Optional filter email threads created since time
  ///
  /// * [DateTime] before:
  ///   Optional filter emails threads created before given date time
  Future<PageEmailThreadProjection?> getEmailThreads({ String? htmlSelector, int? page, int? size, String? sort, String? searchFilter, DateTime? since, DateTime? before, }) async {
    final response = await getEmailThreadsWithHttpInfo( htmlSelector: htmlSelector, page: page, size: size, sort: sort, searchFilter: searchFilter, since: since, before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailThreadProjection',) as PageEmailThreadProjection;
    
    }
    return null;
  }

  /// Get all emails in all inboxes in paginated form. Email API list all.
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] favourited:
  ///   Optional filter emails that are favourited
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  ///
  /// * [List<String>] include:
  ///   Optional list of IDs to include in result
  Future<Response> getEmailsOffsetPaginatedWithHttpInfo({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? favourited, bool? syncConnectors, String? plusAddressId, List<String>? include, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/offset-paginated';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('multi', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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
    if (favourited != null) {
      queryParams.addAll(_queryParams('', 'favourited', favourited));
    }
    if (syncConnectors != null) {
      queryParams.addAll(_queryParams('', 'syncConnectors', syncConnectors));
    }
    if (plusAddressId != null) {
      queryParams.addAll(_queryParams('', 'plusAddressId', plusAddressId));
    }
    if (include != null) {
      queryParams.addAll(_queryParams('multi', 'include', include));
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

  /// Get all emails in all inboxes in paginated form. Email API list all.
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] favourited:
  ///   Optional filter emails that are favourited
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  ///
  /// * [List<String>] include:
  ///   Optional list of IDs to include in result
  Future<PageEmailProjection?> getEmailsOffsetPaginated({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? favourited, bool? syncConnectors, String? plusAddressId, List<String>? include, }) async {
    final response = await getEmailsOffsetPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, favourited: favourited, syncConnectors: syncConnectors, plusAddressId: plusAddressId, include: include, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
    
    }
    return null;
  }

  /// Get all emails in all inboxes in paginated form. Email API list all.
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time. If unset will use time 24hours prior to now.
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  ///
  /// * [bool] favourited:
  ///   Optional filter emails that are favourited
  Future<Response> getEmailsPaginatedWithHttpInfo({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? syncConnectors, String? plusAddressId, bool? favourited, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('multi', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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
    if (syncConnectors != null) {
      queryParams.addAll(_queryParams('', 'syncConnectors', syncConnectors));
    }
    if (plusAddressId != null) {
      queryParams.addAll(_queryParams('', 'plusAddressId', plusAddressId));
    }
    if (favourited != null) {
      queryParams.addAll(_queryParams('', 'favourited', favourited));
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

  /// Get all emails in all inboxes in paginated form. Email API list all.
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter. Searches email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time. If unset will use time 24hours prior to now.
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  ///
  /// * [bool] favourited:
  ///   Optional filter emails that are favourited
  Future<PageEmailProjection?> getEmailsPaginated({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? syncConnectors, String? plusAddressId, bool? favourited, }) async {
    final response = await getEmailsPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, syncConnectors: syncConnectors, plusAddressId: plusAddressId, favourited: favourited, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
    
    }
    return null;
  }

  /// Get gravatar url for email address
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///
  /// * [String] size:
  Future<Response> getGravatarUrlForEmailAddressWithHttpInfo(String emailAddress, { String? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/gravatarFor';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'emailAddress', emailAddress));
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
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

  /// Get gravatar url for email address
  ///
  /// Parameters:
  ///
  /// * [String] emailAddress (required):
  ///
  /// * [String] size:
  Future<GravatarUrl?> getGravatarUrlForEmailAddress(String emailAddress, { String? size, }) async {
    final response = await getGravatarUrlForEmailAddressWithHttpInfo(emailAddress,  size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GravatarUrl',) as GravatarUrl;
    
    }
    return null;
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
  ///   Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes
  Future<Response> getLatestEmailWithHttpInfo({ List<String>? inboxIds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/latest';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxIds != null) {
      queryParams.addAll(_queryParams('multi', 'inboxIds', inboxIds));
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

  /// Get latest email in all inboxes. Most recently received.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Parameters:
  ///
  /// * [List<String>] inboxIds:
  ///   Optional set of inboxes to filter by. Only get the latest email from these inbox IDs. If not provided will search across all inboxes
  Future<Email?> getLatestEmail({ List<String>? inboxIds, }) async {
    final response = await getLatestEmailWithHttpInfo( inboxIds: inboxIds, );
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

  /// Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
  ///
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to get the latest email from
  Future<Response> getLatestEmailInInbox1WithHttpInfo(String inboxId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/latestIn';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'inboxId', inboxId));

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
  /// Get the newest email in all inboxes or in a passed set of inbox IDs
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of the inbox you want to get the latest email from
  Future<Email?> getLatestEmailInInbox1(String inboxId,) async {
    final response = await getLatestEmailInInbox1WithHttpInfo(inboxId,);
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter search filter for emails.
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time. If unset will use time 24hours prior to now.
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [bool] favourited:
  ///   Search only favorited emails
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  Future<Response> getOrganizationEmailsPaginatedWithHttpInfo({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? syncConnectors, bool? favourited, String? plusAddressId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/organization';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('multi', 'inboxId', inboxId));
    }
    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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
    if (syncConnectors != null) {
      queryParams.addAll(_queryParams('', 'syncConnectors', syncConnectors));
    }
    if (favourited != null) {
      queryParams.addAll(_queryParams('', 'favourited', favourited));
    }
    if (plusAddressId != null) {
      queryParams.addAll(_queryParams('', 'plusAddressId', plusAddressId));
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
  ///
  /// * [String] searchFilter:
  ///   Optional search filter search filter for emails.
  ///
  /// * [DateTime] since:
  ///   Optional filter emails received after given date time. If unset will use time 24hours prior to now.
  ///
  /// * [DateTime] before:
  ///   Optional filter emails received before given date time
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [bool] favourited:
  ///   Search only favorited emails
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  Future<PageEmailProjection?> getOrganizationEmailsPaginated({ List<String>? inboxId, int? page, int? size, String? sort, bool? unreadOnly, String? searchFilter, DateTime? since, DateTime? before, bool? syncConnectors, bool? favourited, String? plusAddressId, }) async {
    final response = await getOrganizationEmailsPaginatedWithHttpInfo( inboxId: inboxId, page: page, size: size, sort: sort, unreadOnly: unreadOnly, searchFilter: searchFilter, since: since, before: before, syncConnectors: syncConnectors, favourited: favourited, plusAddressId: plusAddressId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
    
    }
    return null;
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
  Future<Response> getRawEmailContentsWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/raw'
      .replaceAll('{emailId}', emailId);

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

  /// Get raw email string. Returns unparsed raw SMTP message with headers and body.
  ///
  /// Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<void> getRawEmailContents(String emailId,) async {
    final response = await getRawEmailContentsWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
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
  Future<Response> getRawEmailJsonWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/raw/json'
      .replaceAll('{emailId}', emailId);

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

  /// Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
  ///
  /// Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<RawEmailJson?> getRawEmailJson(String emailId,) async {
    final response = await getRawEmailJsonWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'RawEmailJson',) as RawEmailJson;
    
    }
    return null;
  }

  /// Get unread email count
  ///
  /// Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<Response> getUnreadEmailCountWithHttpInfo({ String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/unreadCount';

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

  /// Get unread email count
  ///
  /// Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<UnreadCount?> getUnreadEmailCount({ String? inboxId, }) async {
    final response = await getUnreadEmailCountWithHttpInfo( inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UnreadCount',) as UnreadCount;
    
    }
    return null;
  }

  /// Mark all emails as read or unread
  ///
  /// Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [bool] read:
  ///   What value to assign to email read property. Default true.
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<Response> markAllAsReadWithHttpInfo({ bool? read, String? inboxId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/read';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (read != null) {
      queryParams.addAll(_queryParams('', 'read', read));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }

    const contentTypes = <String>[];


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

  /// Mark all emails as read or unread
  ///
  /// Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
  ///
  /// Parameters:
  ///
  /// * [bool] read:
  ///   What value to assign to email read property. Default true.
  ///
  /// * [String] inboxId:
  ///   Optional inbox ID filter
  Future<void> markAllAsRead({ bool? read, String? inboxId, }) async {
    final response = await markAllAsReadWithHttpInfo( read: read, inboxId: inboxId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Mark an email as read or unread
  ///
  /// Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] read:
  ///   What value to assign to email read property. Default true.
  Future<Response> markAsReadWithHttpInfo(String emailId, { bool? read, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/read'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (read != null) {
      queryParams.addAll(_queryParams('', 'read', read));
    }

    const contentTypes = <String>[];


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

  /// Mark an email as read or unread
  ///
  /// Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] read:
  ///   What value to assign to email read property. Default true.
  Future<EmailPreview?> markAsRead(String emailId, { bool? read, }) async {
    final response = await markAsReadWithHttpInfo(emailId,  read: read, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailPreview',) as EmailPreview;
    
    }
    return null;
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
  Future<Response> replyToEmailWithHttpInfo(String emailId, ReplyToEmailOptions replyToEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = replyToEmailOptions;

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
  Future<SentEmailDto?> replyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions,) async {
    final response = await replyToEmailWithHttpInfo(emailId, replyToEmailOptions,);
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

  /// Get all emails by search criteria. Return in paginated form.
  ///
  /// Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SearchEmailsOptions] searchEmailsOptions (required):
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [bool] favourited:
  ///   Search only favourited emails
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  Future<Response> searchEmailsWithHttpInfo(SearchEmailsOptions searchEmailsOptions, { bool? syncConnectors, bool? favourited, String? plusAddressId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/search';

    // ignore: prefer_final_locals
    Object? postBody = searchEmailsOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (syncConnectors != null) {
      queryParams.addAll(_queryParams('', 'syncConnectors', syncConnectors));
    }
    if (favourited != null) {
      queryParams.addAll(_queryParams('', 'favourited', favourited));
    }
    if (plusAddressId != null) {
      queryParams.addAll(_queryParams('', 'plusAddressId', plusAddressId));
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

  /// Get all emails by search criteria. Return in paginated form.
  ///
  /// Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body
  ///
  /// Parameters:
  ///
  /// * [SearchEmailsOptions] searchEmailsOptions (required):
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors
  ///
  /// * [bool] favourited:
  ///   Search only favourited emails
  ///
  /// * [String] plusAddressId:
  ///   Optional plus address ID filter
  Future<PageEmailProjection?> searchEmails(SearchEmailsOptions searchEmailsOptions, { bool? syncConnectors, bool? favourited, String? plusAddressId, }) async {
    final response = await searchEmailsWithHttpInfo(searchEmailsOptions,  syncConnectors: syncConnectors, favourited: favourited, plusAddressId: plusAddressId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailProjection',) as PageEmailProjection;
    
    }
    return null;
  }

  /// Send email
  ///
  /// Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [String] inboxId:
  ///   ID of the inbox you want to send the email from
  ///
  /// * [bool] useDomainPool:
  ///   Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
  ///
  /// * [bool] virtualSend:
  ///   Optionally create inbox to send from that is a virtual inbox and won't send to external addresses
  Future<Response> sendEmailSourceOptionalWithHttpInfo(SendEmailOptions sendEmailOptions, { String? inboxId, bool? useDomainPool, bool? virtualSend, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails';

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (useDomainPool != null) {
      queryParams.addAll(_queryParams('', 'useDomainPool', useDomainPool));
    }
    if (virtualSend != null) {
      queryParams.addAll(_queryParams('', 'virtualSend', virtualSend));
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

  /// Send email
  ///
  /// Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.
  ///
  /// Parameters:
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [String] inboxId:
  ///   ID of the inbox you want to send the email from
  ///
  /// * [bool] useDomainPool:
  ///   Use domain pool. Optionally create inbox to send from using the mailslurp domain pool.
  ///
  /// * [bool] virtualSend:
  ///   Optionally create inbox to send from that is a virtual inbox and won't send to external addresses
  Future<void> sendEmailSourceOptional(SendEmailOptions sendEmailOptions, { String? inboxId, bool? useDomainPool, bool? virtualSend, }) async {
    final response = await sendEmailSourceOptionalWithHttpInfo(sendEmailOptions,  inboxId: inboxId, useDomainPool: useDomainPool, virtualSend: virtualSend, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Set email favourited state
  ///
  /// Set and return new favorite state for an email
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to set favourite state
  ///
  /// * [bool] favourited (required):
  Future<Response> setEmailFavouritedWithHttpInfo(String emailId, bool favourited,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/favourite'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'favourited', favourited));

    const contentTypes = <String>[];


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

  /// Set email favourited state
  ///
  /// Set and return new favorite state for an email
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to set favourite state
  ///
  /// * [bool] favourited (required):
  Future<void> setEmailFavourited(String emailId, bool favourited,) async {
    final response = await setEmailFavouritedWithHttpInfo(emailId, favourited,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Validate email HTML contents
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<Response> validateEmailWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/validate'
      .replaceAll('{emailId}', emailId);

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

  /// Validate email HTML contents
  ///
  /// Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email
  Future<ValidationDto?> validateEmail(String emailId,) async {
    final response = await validateEmailWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidationDto',) as ValidationDto;
    
    }
    return null;
  }
}
