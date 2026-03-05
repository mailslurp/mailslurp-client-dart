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
  /// Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.
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
  /// Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.
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

  /// Check whether an email send would be accepted
  ///
  /// Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.
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

  /// Check whether an email send would be accepted
  ///
  /// Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.
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

  /// Check email body for broken links, images, and spelling issues
  ///
  /// Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.
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

  /// Check email body for broken links, images, and spelling issues
  ///
  /// Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.
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

  /// Check client support for features used in a stored email body
  ///
  /// Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.
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

  /// Check client support for features used in a stored email body
  ///
  /// Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.
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

  /// Check email-client support for a provided HTML body
  ///
  /// Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.
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

  /// Check email-client support for a provided HTML body
  ///
  /// Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.
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
  /// Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.
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
  /// Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.
  Future<void> deleteAllEmails() async {
    final response = await deleteAllEmailsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an email
  ///
  /// Deletes a single email from account scope. Operation is destructive and not reversible.
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
  /// Deletes a single email from account scope. Operation is destructive and not reversible.
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
  /// Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.
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
  /// Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.
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
  /// Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.
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
  /// Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.
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
  /// Returns hydrated email body text as a string with content type aligned to the underlying body format.
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
  /// Returns hydrated email body text as a string with content type aligned to the underlying body format.
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
  /// Streams hydrated email body bytes with content type derived from the message body format.
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
  /// Streams hydrated email body bytes with content type derived from the message body format.
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
  /// Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.
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
  /// Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.
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
  /// Returns metadata for a specific attachment ID (name, content type, and size fields).
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
  /// Returns metadata for a specific attachment ID (name, content type, and size fields).
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

  /// Get hydrated email (headers and body)
  ///
  /// Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.
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

  /// Get hydrated email (headers and body)
  ///
  /// Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.
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

  /// List attachment metadata for an email
  ///
  /// Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).
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

  /// List attachment metadata for an email
  ///
  /// Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).
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

  /// Extract verification codes from an email
  ///
  /// Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to extract codes from
  ///
  /// * [ExtractCodesOptions] extractCodesOptions:
  Future<Response> getEmailCodesWithHttpInfo(String emailId, { ExtractCodesOptions? extractCodesOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/codes'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = extractCodesOptions;

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

  /// Extract verification codes from an email
  ///
  /// Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to extract codes from
  ///
  /// * [ExtractCodesOptions] extractCodesOptions:
  Future<ExtractCodesResult?> getEmailCodes(String emailId, { ExtractCodesOptions? extractCodesOptions, }) async {
    final response = await getEmailCodesWithHttpInfo(emailId,  extractCodesOptions: extractCodesOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractCodesResult',) as ExtractCodesResult;
    
    }
    return null;
  }

  /// Run regex against hydrated email body and return matches
  ///
  /// Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.
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

  /// Run regex against hydrated email body and return matches
  ///
  /// Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.
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
  /// Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.
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
  /// Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.
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

  /// Get multipart content part as raw response
  ///
  /// Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.
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

  /// Get multipart content part as raw response
  ///
  /// Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.
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
  /// Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.
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
  /// Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.
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

  /// Get hydrated email HTML for browser rendering
  ///
  /// Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.
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

  /// Get hydrated email HTML for browser rendering
  ///
  /// Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.
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

  /// Get hydrated email HTML wrapped in JSON
  ///
  /// Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.
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

  /// Get hydrated email HTML wrapped in JSON
  ///
  /// Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.
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

  /// Query hydrated HTML body and return matching text lines
  ///
  /// Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.
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

  /// Query hydrated HTML body and return matching text lines
  ///
  /// Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.
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

  /// Extract links from an email HTML body
  ///
  /// Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.
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

  /// Extract links from an email HTML body
  ///
  /// Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.
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
  /// Returns precomputed URLs for preview and raw message access for the specified email.
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
  /// Returns precomputed URLs for preview and raw message access for the specified email.
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
  /// Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.
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
  /// Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.
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
  /// Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.
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
  /// Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.
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

  /// Extract signature from an inbound email
  ///
  /// Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to extract signature from
  Future<Response> getEmailSignatureWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/emails/{emailId}/signature'
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

  /// Extract signature from an inbound email
  ///
  /// Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to extract signature from
  Future<EmailSignatureParseResult?> getEmailSignature(String emailId,) async {
    final response = await getEmailSignatureWithHttpInfo(emailId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailSignatureParseResult',) as EmailSignatureParseResult;
    
    }
    return null;
  }

  /// Get email summary (headers/metadata only)
  ///
  /// Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] decode:
  ///   Deprecated and ignored. Retained for backwards compatibility.
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

  /// Get email summary (headers/metadata only)
  ///
  /// Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [bool] decode:
  ///   Deprecated and ignored. Retained for backwards compatibility.
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

  /// Extract normalized text lines from email body
  ///
  /// Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.
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

  /// Extract normalized text lines from email body
  ///
  /// Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.
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

  /// Get email thread metadata by thread ID
  ///
  /// Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.
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

  /// Get email thread metadata by thread ID
  ///
  /// Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.
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

  /// Get messages in a specific email thread
  ///
  /// Returns all messages in a thread ordered by `createdAt` using the requested sort direction.
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

  /// Get messages in a specific email thread
  ///
  /// Returns all messages in a thread ordered by `createdAt` using the requested sort direction.
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

  /// List email threads in paginated form
  ///
  /// Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] htmlSelector:
  ///   Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility.
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

  /// List email threads in paginated form
  ///
  /// Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.
  ///
  /// Parameters:
  ///
  /// * [String] htmlSelector:
  ///   Optional inbox filter. Query parameter name is `htmlSelector` for legacy compatibility.
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
  /// Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.
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
  ///   Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
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
  /// Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.
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
  ///   Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
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
  /// Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.
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
  ///   Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
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
  /// Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.
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
  ///   Optional search filter. Full email addresses match sender and receiving inbox email or receiving plus-address full address exactly. Address-like fragments containing @ (for example +alias@) also match sender, receiving inbox email, and receiving plus-address full address by contains. General text search matches sender, subject, and ID.
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

  /// Get Gravatar URL for an email address
  ///
  /// Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.
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

  /// Get Gravatar URL for an email address
  ///
  /// Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.
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
  /// Returns the most recently received email across all inboxes or an optional subset of inbox IDs.
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
  /// Returns the most recently received email across all inboxes or an optional subset of inbox IDs.
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
  /// Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.
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
  /// Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.
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

  /// List organization-visible emails
  ///
  /// Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.
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

  /// List organization-visible emails
  ///
  /// Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.
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
  /// Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.
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
  /// Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.
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
  /// Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.
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
  /// Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.
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
  /// Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID filter for unread count scope
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
  /// Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId:
  ///   Inbox ID filter for unread count scope
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
  /// Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.
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
  /// Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.
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
  /// Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.
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
  /// Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.
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
  /// Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.
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
  /// Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.
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
  /// Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.
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
  /// Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.
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
  /// Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.
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
  /// Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.
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
  /// Sets favourite state for an email for dashboard/search workflows.
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
  /// Sets favourite state for an email for dashboard/search workflows.
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
  /// Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.
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
  /// Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.
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
