//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AgentControllerApi {
  AgentControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Acquire a renewable conversation claim
  ///
  /// Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [AcquireAgentConversationClaimOptions] acquireAgentConversationClaimOptions (required):
  Future<Response> agentAcquireConversationClaimWithHttpInfo(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}/claims'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = acquireAgentConversationClaimOptions;

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

  /// Acquire a renewable conversation claim
  ///
  /// Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [AcquireAgentConversationClaimOptions] acquireAgentConversationClaimOptions (required):
  Future<AgentConversationClaimDto?> agentAcquireConversationClaim(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions,) async {
    final response = await agentAcquireConversationClaimWithHttpInfo(conversationId, acquireAgentConversationClaimOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationClaimDto',) as AgentConversationClaimDto;
    
    }
    return null;
  }

  /// Add an internal conversation note
  ///
  /// Adds agent/operator collaboration context without sending any email to the customer.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentConversationNoteOptions] createAgentConversationNoteOptions (required):
  Future<Response> agentAddConversationNoteWithHttpInfo(String conversationId, CreateAgentConversationNoteOptions createAgentConversationNoteOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}/notes'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = createAgentConversationNoteOptions;

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

  /// Add an internal conversation note
  ///
  /// Adds agent/operator collaboration context without sending any email to the customer.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentConversationNoteOptions] createAgentConversationNoteOptions (required):
  Future<AgentConversationNoteDto?> agentAddConversationNote(String conversationId, CreateAgentConversationNoteOptions createAgentConversationNoteOptions,) async {
    final response = await agentAddConversationNoteWithHttpInfo(conversationId, createAgentConversationNoteOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationNoteDto',) as AgentConversationNoteDto;
    
    }
    return null;
  }

  /// Add an internal SMS conversation note
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentSmsConversationNoteOptions] createAgentSmsConversationNoteOptions (required):
  Future<Response> agentAddSmsNoteWithHttpInfo(String conversationId, CreateAgentSmsConversationNoteOptions createAgentSmsConversationNoteOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}/notes'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = createAgentSmsConversationNoteOptions;

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

  /// Add an internal SMS conversation note
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentSmsConversationNoteOptions] createAgentSmsConversationNoteOptions (required):
  Future<AgentConversationNoteDto?> agentAddSmsNote(String conversationId, CreateAgentSmsConversationNoteOptions createAgentSmsConversationNoteOptions,) async {
    final response = await agentAddSmsNoteWithHttpInfo(conversationId, createAgentSmsConversationNoteOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationNoteDto',) as AgentConversationNoteDto;
    
    }
    return null;
  }

  /// Check whether sending rules allow recipients
  ///
  /// Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [AgentInboxSendPolicyCheckOptions] agentInboxSendPolicyCheckOptions (required):
  Future<Response> agentCheckInboxSendPolicyWithHttpInfo(String inboxId, AgentInboxSendPolicyCheckOptions agentInboxSendPolicyCheckOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/send-policy/check'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = agentInboxSendPolicyCheckOptions;

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

  /// Check whether sending rules allow recipients
  ///
  /// Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [AgentInboxSendPolicyCheckOptions] agentInboxSendPolicyCheckOptions (required):
  Future<AgentInboxSendPolicyDto?> agentCheckInboxSendPolicy(String inboxId, AgentInboxSendPolicyCheckOptions agentInboxSendPolicyCheckOptions,) async {
    final response = await agentCheckInboxSendPolicyWithHttpInfo(inboxId, agentInboxSendPolicyCheckOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentInboxSendPolicyDto',) as AgentInboxSendPolicyDto;
    
    }
    return null;
  }

  /// Acquire an SMS conversation claim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [AcquireAgentConversationClaimOptions] acquireAgentConversationClaimOptions (required):
  Future<Response> agentClaimSmsConversationWithHttpInfo(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}/claims'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = acquireAgentConversationClaimOptions;

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

  /// Acquire an SMS conversation claim
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [AcquireAgentConversationClaimOptions] acquireAgentConversationClaimOptions (required):
  Future<AgentConversationClaimDto?> agentClaimSmsConversation(String conversationId, AcquireAgentConversationClaimOptions acquireAgentConversationClaimOptions,) async {
    final response = await agentClaimSmsConversationWithHttpInfo(conversationId, acquireAgentConversationClaimOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationClaimDto',) as AgentConversationClaimDto;
    
    }
    return null;
  }

  /// Complete a work item with an idempotent reply
  ///
  /// Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CompleteAgentWorkItemOptions] completeAgentWorkItemOptions (required):
  Future<Response> agentCompleteWorkItemWithHttpInfo(String conversationId, CompleteAgentWorkItemOptions completeAgentWorkItemOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/work-items/{conversationId}/complete'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = completeAgentWorkItemOptions;

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

  /// Complete a work item with an idempotent reply
  ///
  /// Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CompleteAgentWorkItemOptions] completeAgentWorkItemOptions (required):
  Future<AgentCompletedWorkItemDto?> agentCompleteWorkItem(String conversationId, CompleteAgentWorkItemOptions completeAgentWorkItemOptions,) async {
    final response = await agentCompleteWorkItemWithHttpInfo(conversationId, completeAgentWorkItemOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentCompletedWorkItemDto',) as AgentCompletedWorkItemDto;
    
    }
    return null;
  }

  /// Create a scoped email draft for an agent
  ///
  /// Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to save the draft against
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [String] sourceEmailId:
  ///   Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation.
  Future<Response> agentCreateEmailDraftWithHttpInfo(String inboxId, SendEmailOptions sendEmailOptions, { String? sourceEmailId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sourceEmailId != null) {
      queryParams.addAll(_queryParams('', 'sourceEmailId', sourceEmailId));
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

  /// Create a scoped email draft for an agent
  ///
  /// Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to save the draft against
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  ///
  /// * [String] sourceEmailId:
  ///   Optional source email this draft responds to. When supplied, MailSlurp links the draft and later draft actions to that conversation.
  Future<EmailDraftDto?> agentCreateEmailDraft(String inboxId, SendEmailOptions sendEmailOptions, { String? sourceEmailId, }) async {
    final response = await agentCreateEmailDraftWithHttpInfo(inboxId, sendEmailOptions,  sourceEmailId: sourceEmailId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailDraftDto',) as EmailDraftDto;
    
    }
    return null;
  }

  /// Create an inbox with an account-wide inbox-manager connection
  ///
  /// Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<Response> agentCreateInboxWithHttpInfo(CreateInboxDto createInboxDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes';

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

  /// Create an inbox with an account-wide inbox-manager connection
  ///
  /// Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.
  ///
  /// Parameters:
  ///
  /// * [CreateInboxDto] createInboxDto (required):
  Future<InboxDto?> agentCreateInbox(CreateInboxDto createInboxDto,) async {
    final response = await agentCreateInboxWithHttpInfo(createInboxDto,);
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

  /// Create a correctly threaded reply draft
  ///
  /// Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  Future<Response> agentCreateReplyDraftWithHttpInfo(String emailId, ReplyToEmailOptions replyToEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/reply-draft'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = replyToEmailOptions;

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

  /// Create a correctly threaded reply draft
  ///
  /// Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  Future<EmailDraftDto?> agentCreateReplyDraft(String emailId, ReplyToEmailOptions replyToEmailOptions,) async {
    final response = await agentCreateReplyDraftWithHttpInfo(emailId, replyToEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailDraftDto',) as EmailDraftDto;
    
    }
    return null;
  }

  /// Create an agent-managed TOTP device from a base32 secret key
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceBase32SecretKeyOptions] createTotpDeviceBase32SecretKeyOptions (required):
  Future<Response> agentCreateTotpDeviceForBase32SecretKeyWithHttpInfo(CreateTotpDeviceBase32SecretKeyOptions createTotpDeviceBase32SecretKeyOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/base32-secret-key';

    // ignore: prefer_final_locals
    Object? postBody = createTotpDeviceBase32SecretKeyOptions;

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

  /// Create an agent-managed TOTP device from a base32 secret key
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceBase32SecretKeyOptions] createTotpDeviceBase32SecretKeyOptions (required):
  Future<TotpDeviceDto?> agentCreateTotpDeviceForBase32SecretKey(CreateTotpDeviceBase32SecretKeyOptions createTotpDeviceBase32SecretKeyOptions,) async {
    final response = await agentCreateTotpDeviceForBase32SecretKeyWithHttpInfo(createTotpDeviceBase32SecretKeyOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Create an agent-managed TOTP device from custom options
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceCustomOptions] createTotpDeviceCustomOptions (required):
  Future<Response> agentCreateTotpDeviceForCustomWithHttpInfo(CreateTotpDeviceCustomOptions createTotpDeviceCustomOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/custom';

    // ignore: prefer_final_locals
    Object? postBody = createTotpDeviceCustomOptions;

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

  /// Create an agent-managed TOTP device from custom options
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceCustomOptions] createTotpDeviceCustomOptions (required):
  Future<TotpDeviceDto?> agentCreateTotpDeviceForCustom(CreateTotpDeviceCustomOptions createTotpDeviceCustomOptions,) async {
    final response = await agentCreateTotpDeviceForCustomWithHttpInfo(createTotpDeviceCustomOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Create an agent-managed TOTP device from an OTP Auth URL
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<Response> agentCreateTotpDeviceForOtpAuthUrlWithHttpInfo(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/otp-auth-url';

    // ignore: prefer_final_locals
    Object? postBody = createTotpDeviceOtpAuthUrlOptions;

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

  /// Create an agent-managed TOTP device from an OTP Auth URL
  ///
  /// Parameters:
  ///
  /// * [CreateTotpDeviceOtpAuthUrlOptions] createTotpDeviceOtpAuthUrlOptions (required):
  Future<TotpDeviceDto?> agentCreateTotpDeviceForOtpAuthUrl(CreateTotpDeviceOtpAuthUrlOptions createTotpDeviceOtpAuthUrlOptions,) async {
    final response = await agentCreateTotpDeviceForOtpAuthUrlWithHttpInfo(createTotpDeviceOtpAuthUrlOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Defer a work item to human review
  ///
  /// Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [DeferAgentWorkItemOptions] deferAgentWorkItemOptions (required):
  Future<Response> agentDeferWorkItemWithHttpInfo(String conversationId, DeferAgentWorkItemOptions deferAgentWorkItemOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/work-items/{conversationId}/defer'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = deferAgentWorkItemOptions;

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

  /// Defer a work item to human review
  ///
  /// Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [DeferAgentWorkItemOptions] deferAgentWorkItemOptions (required):
  Future<AgentDeferredWorkItemDto?> agentDeferWorkItem(String conversationId, DeferAgentWorkItemOptions deferAgentWorkItemOptions,) async {
    final response = await agentDeferWorkItemWithHttpInfo(conversationId, deferAgentWorkItemOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentDeferredWorkItemDto',) as AgentDeferredWorkItemDto;
    
    }
    return null;
  }

  /// Delete a scoped email draft for an agent
  ///
  /// Deletes a saved draft without sending it.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  Future<Response> agentDeleteEmailDraftWithHttpInfo(String inboxId, String draftId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts/{draftId}'
      .replaceAll('{inboxId}', inboxId)
      .replaceAll('{draftId}', draftId);

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

  /// Delete a scoped email draft for an agent
  ///
  /// Deletes a saved draft without sending it.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  Future<void> agentDeleteEmailDraft(String inboxId, String draftId,) async {
    final response = await agentDeleteEmailDraftWithHttpInfo(inboxId, draftId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete an agent-managed TOTP device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> agentDeleteTotpDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/{id}'
      .replaceAll('{id}', id);

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

  /// Delete an agent-managed TOTP device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> agentDeleteTotpDevice(String id,) async {
    final response = await agentDeleteTotpDeviceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Extract text from a scoped email attachment for an agent
  ///
  /// Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [ExtractAttachmentTextOptions] extractAttachmentTextOptions:
  Future<Response> agentExtractEmailAttachmentTextWithHttpInfo(String emailId, String attachmentId, { ExtractAttachmentTextOptions? extractAttachmentTextOptions, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/attachments/{attachmentId}/text'
      .replaceAll('{emailId}', emailId)
      .replaceAll('{attachmentId}', attachmentId);

    // ignore: prefer_final_locals
    Object? postBody = extractAttachmentTextOptions;

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

  /// Extract text from a scoped email attachment for an agent
  ///
  /// Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [String] attachmentId (required):
  ///
  /// * [ExtractAttachmentTextOptions] extractAttachmentTextOptions:
  Future<ExtractAttachmentTextResult?> agentExtractEmailAttachmentText(String emailId, String attachmentId, { ExtractAttachmentTextOptions? extractAttachmentTextOptions, }) async {
    final response = await agentExtractEmailAttachmentTextWithHttpInfo(emailId, attachmentId,  extractAttachmentTextOptions: extractAttachmentTextOptions, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExtractAttachmentTextResult',) as ExtractAttachmentTextResult;
    
    }
    return null;
  }

  /// Generate a code for an agent-managed TOTP device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DateTime] at:
  ///
  /// * [int] minSecondsUntilExpire:
  ///   Minimum remaining code lifetime. The request may wait for the next period when needed.
  Future<Response> agentGenerateTotpDeviceCodeWithHttpInfo(String id, { DateTime? at, int? minSecondsUntilExpire, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/{id}/code'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (at != null) {
      queryParams.addAll(_queryParams('', 'at', at));
    }
    if (minSecondsUntilExpire != null) {
      queryParams.addAll(_queryParams('', 'minSecondsUntilExpire', minSecondsUntilExpire));
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

  /// Generate a code for an agent-managed TOTP device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [DateTime] at:
  ///
  /// * [int] minSecondsUntilExpire:
  ///   Minimum remaining code lifetime. The request may wait for the next period when needed.
  Future<TotpDeviceCodeDto?> agentGenerateTotpDeviceCode(String id, { DateTime? at, int? minSecondsUntilExpire, }) async {
    final response = await agentGenerateTotpDeviceCodeWithHttpInfo(id,  at: at, minSecondsUntilExpire: minSecondsUntilExpire, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceCodeDto',) as TotpDeviceCodeDto;
    
    }
    return null;
  }

  /// Discover this agent connection's capabilities
  ///
  /// Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> agentGetCapabilitiesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/agent/capabilities';

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

  /// Discover this agent connection's capabilities
  ///
  /// Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.
  Future<AgentCapabilitiesDto?> agentGetCapabilities() async {
    final response = await agentGetCapabilitiesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentCapabilitiesDto',) as AgentCapabilitiesDto;
    
    }
    return null;
  }

  /// Get one scoped conversation
  ///
  /// Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  Future<Response> agentGetConversationV2WithHttpInfo(String conversationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}'
      .replaceAll('{conversationId}', conversationId);

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

  /// Get one scoped conversation
  ///
  /// Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  Future<AgentConversationDetailV2Dto?> agentGetConversationV2(String conversationId,) async {
    final response = await agentGetConversationV2WithHttpInfo(conversationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationDetailV2Dto',) as AgentConversationDetailV2Dto;
    
    }
    return null;
  }

  /// Get scoped hydrated email for an agent
  ///
  /// Returns parsed email content after resolving the message inbox and checking agent scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to inspect
  Future<Response> agentGetEmailWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}'
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

  /// Get scoped hydrated email for an agent
  ///
  /// Returns parsed email content after resolving the message inbox and checking agent scope.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to inspect
  Future<Email?> agentGetEmail(String emailId,) async {
    final response = await agentGetEmailWithHttpInfo(emailId,);
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

  /// Get a scoped email draft for an agent
  ///
  /// Returns a saved draft including the full SendEmailOptions payload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  Future<Response> agentGetEmailDraftWithHttpInfo(String inboxId, String draftId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts/{draftId}'
      .replaceAll('{inboxId}', inboxId)
      .replaceAll('{draftId}', draftId);

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

  /// Get a scoped email draft for an agent
  ///
  /// Returns a saved draft including the full SendEmailOptions payload.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  Future<EmailDraftDto?> agentGetEmailDraft(String inboxId, String draftId,) async {
    final response = await agentGetEmailDraftWithHttpInfo(inboxId, draftId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailDraftDto',) as EmailDraftDto;
    
    }
    return null;
  }

  /// Get scoped email summary for an agent
  ///
  /// Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to inspect
  Future<Response> agentGetEmailSummaryWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/summary'
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

  /// Get scoped email summary for an agent
  ///
  /// Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to inspect
  Future<EmailPreview?> agentGetEmailSummary(String emailId,) async {
    final response = await agentGetEmailSummaryWithHttpInfo(emailId,);
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

  /// Get a scoped email thread for an agent
  ///
  /// Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [String] sort:
  Future<Response> agentGetEmailThreadWithHttpInfo(String emailId, { String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/thread'
      .replaceAll('{emailId}', emailId);

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

  /// Get a scoped email thread for an agent
  ///
  /// Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///
  /// * [String] sort:
  Future<ScopedEmailThread?> agentGetEmailThread(String emailId, { String? sort, }) async {
    final response = await agentGetEmailThreadWithHttpInfo(emailId,  sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ScopedEmailThread',) as ScopedEmailThread;
    
    }
    return null;
  }

  /// Get latest scoped inbox email for an agent
  ///
  /// Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the agent may read
  ///
  /// * [int] timeoutMillis:
  ///   Timeout milliseconds to wait for latest email
  ///
  /// * [bool] unreadOnly:
  ///   Only return unread emails
  ///
  /// * [DateTime] since:
  ///   Only return email received at or after this time
  ///
  /// * [DateTime] before:
  ///   Only return email received before this time
  Future<Response> agentGetLatestInboxEmailWithHttpInfo(String inboxId, { int? timeoutMillis, bool? unreadOnly, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/emails/latest'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (timeoutMillis != null) {
      queryParams.addAll(_queryParams('', 'timeoutMillis', timeoutMillis));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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

  /// Get latest scoped inbox email for an agent
  ///
  /// Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the agent may read
  ///
  /// * [int] timeoutMillis:
  ///   Timeout milliseconds to wait for latest email
  ///
  /// * [bool] unreadOnly:
  ///   Only return unread emails
  ///
  /// * [DateTime] since:
  ///   Only return email received at or after this time
  ///
  /// * [DateTime] before:
  ///   Only return email received before this time
  Future<Email?> agentGetLatestInboxEmail(String inboxId, { int? timeoutMillis, bool? unreadOnly, DateTime? since, DateTime? before, }) async {
    final response = await agentGetLatestInboxEmailWithHttpInfo(inboxId,  timeoutMillis: timeoutMillis, unreadOnly: unreadOnly, since: since, before: before, );
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

  /// Claim the next conversation work item
  ///
  /// Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GetNextAgentWorkItemOptions] getNextAgentWorkItemOptions (required):
  Future<Response> agentGetNextWorkItemWithHttpInfo(GetNextAgentWorkItemOptions getNextAgentWorkItemOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/work-items/next';

    // ignore: prefer_final_locals
    Object? postBody = getNextAgentWorkItemOptions;

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

  /// Claim the next conversation work item
  ///
  /// Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.
  ///
  /// Parameters:
  ///
  /// * [GetNextAgentWorkItemOptions] getNextAgentWorkItemOptions (required):
  Future<AgentWorkItemDto?> agentGetNextWorkItem(GetNextAgentWorkItemOptions getNextAgentWorkItemOptions,) async {
    final response = await agentGetNextWorkItemWithHttpInfo(getNextAgentWorkItemOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentWorkItemDto',) as AgentWorkItemDto;
    
    }
    return null;
  }

  /// List SMS thread messages
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] otherPhoneNumber (required):
  ///   Other participant phone number in E.164 format
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> agentGetPhoneMessageThreadItemsWithHttpInfo(String phoneNumberId, String otherPhoneNumber, { int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/message-threads/{otherPhoneNumber}'
      .replaceAll('{phoneNumberId}', phoneNumberId)
      .replaceAll('{otherPhoneNumber}', otherPhoneNumber);

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

  /// List SMS thread messages
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] otherPhoneNumber (required):
  ///   Other participant phone number in E.164 format
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<PagePhoneMessageThreadItemProjection?> agentGetPhoneMessageThreadItems(String phoneNumberId, String otherPhoneNumber, { int? page, int? size, }) async {
    final response = await agentGetPhoneMessageThreadItemsWithHttpInfo(phoneNumberId, otherPhoneNumber,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneMessageThreadItemProjection',) as PagePhoneMessageThreadItemProjection;
    
    }
    return null;
  }

  /// List SMS threads
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<Response> agentGetPhoneMessageThreadsWithHttpInfo(String phoneNumberId, { int? page, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/message-threads'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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

  /// List SMS threads
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  Future<PagePhoneMessageThreadProjection?> agentGetPhoneMessageThreads(String phoneNumberId, { int? page, int? size, }) async {
    final response = await agentGetPhoneMessageThreadsWithHttpInfo(phoneNumberId,  page: page, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PagePhoneMessageThreadProjection',) as PagePhoneMessageThreadProjection;
    
    }
    return null;
  }

  /// Get an assigned phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<Response> agentGetPhoneNumberWithHttpInfo(String phoneNumberId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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

  /// Get an assigned phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  Future<PhoneNumberDto?> agentGetPhoneNumber(String phoneNumberId,) async {
    final response = await agentGetPhoneNumberWithHttpInfo(phoneNumberId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PhoneNumberDto',) as PhoneNumberDto;
    
    }
    return null;
  }

  /// List assigned phone numbers
  ///
  /// Returns only active phone numbers explicitly assigned to this agent connection.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] search:
  Future<Response> agentGetPhoneNumbersWithHttpInfo({ int? page, int? size, String? sort, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers';

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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List assigned phone numbers
  ///
  /// Returns only active phone numbers explicitly assigned to this agent connection.
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] search:
  Future<PageAgentPhoneNumber?> agentGetPhoneNumbers({ int? page, int? size, String? sort, String? search, }) async {
    final response = await agentGetPhoneNumbersWithHttpInfo( page: page, size: size, sort: sort, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageAgentPhoneNumber',) as PageAgentPhoneNumber;
    
    }
    return null;
  }

  /// Get received SMS
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] smsId (required):
  Future<Response> agentGetReceivedSmsMessageWithHttpInfo(String phoneNumberId, String smsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms/{smsId}'
      .replaceAll('{phoneNumberId}', phoneNumberId)
      .replaceAll('{smsId}', smsId);

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

  /// Get received SMS
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] smsId (required):
  Future<SmsDto?> agentGetReceivedSmsMessage(String phoneNumberId, String smsId,) async {
    final response = await agentGetReceivedSmsMessageWithHttpInfo(phoneNumberId, smsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SmsDto',) as SmsDto;
    
    }
    return null;
  }

  /// List received SMS for an assigned phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [bool] favourite:
  Future<Response> agentGetReceivedSmsMessagesWithHttpInfo(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, bool? favourite, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (favourite != null) {
      queryParams.addAll(_queryParams('', 'favourite', favourite));
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

  /// List received SMS for an assigned phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [bool] favourite:
  Future<PageSmsProjection?> agentGetReceivedSmsMessages(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, bool? favourite, }) async {
    final response = await agentGetReceivedSmsMessagesWithHttpInfo(phoneNumberId,  page: page, size: size, sort: sort, since: since, before: before, search: search, favourite: favourite, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSmsProjection',) as PageSmsProjection;
    
    }
    return null;
  }

  /// Get sent SMS
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] sentSmsId (required):
  Future<Response> agentGetSentSmsMessageWithHttpInfo(String phoneNumberId, String sentSmsId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms/sent/{sentSmsId}'
      .replaceAll('{phoneNumberId}', phoneNumberId)
      .replaceAll('{sentSmsId}', sentSmsId);

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

  /// Get sent SMS
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] sentSmsId (required):
  Future<SentSmsDto?> agentGetSentSmsMessage(String phoneNumberId, String sentSmsId,) async {
    final response = await agentGetSentSmsMessageWithHttpInfo(phoneNumberId, sentSmsId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// List sent SMS for an assigned phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  Future<Response> agentGetSentSmsMessagesWithHttpInfo(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms/sent'
      .replaceAll('{phoneNumberId}', phoneNumberId);

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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List sent SMS for an assigned phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  Future<PageSentSmsProjection?> agentGetSentSmsMessages(String phoneNumberId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, String? search, }) async {
    final response = await agentGetSentSmsMessagesWithHttpInfo(phoneNumberId,  page: page, size: size, sort: sort, since: since, before: before, search: search, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageSentSmsProjection',) as PageSentSmsProjection;
    
    }
    return null;
  }

  /// Get one SMS conversation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  Future<Response> agentGetSmsConversationWithHttpInfo(String conversationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}'
      .replaceAll('{conversationId}', conversationId);

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

  /// Get one SMS conversation
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  Future<AgentSmsConversationDetailDto?> agentGetSmsConversation(String conversationId,) async {
    final response = await agentGetSmsConversationWithHttpInfo(conversationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentSmsConversationDetailDto',) as AgentSmsConversationDetailDto;
    
    }
    return null;
  }

  /// Get an agent-accessible TOTP device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> agentGetTotpDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/{id}'
      .replaceAll('{id}', id);

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

  /// Get an agent-accessible TOTP device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<TotpDeviceDto?> agentGetTotpDevice(String id,) async {
    final response = await agentGetTotpDeviceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }

  /// Find an agent-accessible TOTP device by name, issuer, or username
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///
  /// * [String] issuer:
  ///
  /// * [String] username:
  Future<Response> agentGetTotpDeviceByWithHttpInfo({ String? name, String? issuer, String? username, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/by';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (name != null) {
      queryParams.addAll(_queryParams('', 'name', name));
    }
    if (issuer != null) {
      queryParams.addAll(_queryParams('', 'issuer', issuer));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
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

  /// Find an agent-accessible TOTP device by name, issuer, or username
  ///
  /// Parameters:
  ///
  /// * [String] name:
  ///
  /// * [String] issuer:
  ///
  /// * [String] username:
  Future<TotpDeviceOptionalDto?> agentGetTotpDeviceBy({ String? name, String? issuer, String? username, }) async {
    final response = await agentGetTotpDeviceByWithHttpInfo( name: name, issuer: issuer, username: username, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceOptionalDto',) as TotpDeviceOptionalDto;
    
    }
    return null;
  }

  /// List agent-accessible TOTP devices
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] issuer:
  ///
  /// * [String] username:
  Future<Response> agentGetTotpDevicesWithHttpInfo({ int? page, int? size, String? sort, String? issuer, String? username, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices';

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
    if (issuer != null) {
      queryParams.addAll(_queryParams('', 'issuer', issuer));
    }
    if (username != null) {
      queryParams.addAll(_queryParams('', 'username', username));
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

  /// List agent-accessible TOTP devices
  ///
  /// Parameters:
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] issuer:
  ///
  /// * [String] username:
  Future<PageTotpDeviceProjection?> agentGetTotpDevices({ int? page, int? size, String? sort, String? issuer, String? username, }) async {
    final response = await agentGetTotpDevicesWithHttpInfo( page: page, size: size, sort: sort, issuer: issuer, username: username, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageTotpDeviceProjection',) as PageTotpDeviceProjection;
    
    }
    return null;
  }

  /// List inboxes accessible to an agent
  ///
  /// Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<Response> agentListAccessibleInboxesWithHttpInfo({ int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes';

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

  /// List inboxes accessible to an agent
  ///
  /// Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.
  ///
  /// Parameters:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  Future<AccessibleInboxList?> agentListAccessibleInboxes({ int? size, String? sort, }) async {
    final response = await agentListAccessibleInboxesWithHttpInfo( size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AccessibleInboxList',) as AccessibleInboxList;
    
    }
    return null;
  }

  /// Read durable scoped automation events
  ///
  /// Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] cursor:
  ///
  /// * [Set<String>] eventType:
  ///
  /// * [int] size:
  ///
  /// * [int] waitSeconds:
  Future<Response> agentListAutomationEventsWithHttpInfo({ String? cursor, Set<String>? eventType, int? size, int? waitSeconds, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/events';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
    if (eventType != null) {
      queryParams.addAll(_queryParams('multi', 'eventType', eventType));
    }
    if (size != null) {
      queryParams.addAll(_queryParams('', 'size', size));
    }
    if (waitSeconds != null) {
      queryParams.addAll(_queryParams('', 'waitSeconds', waitSeconds));
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

  /// Read durable scoped automation events
  ///
  /// Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.
  ///
  /// Parameters:
  ///
  /// * [String] cursor:
  ///
  /// * [Set<String>] eventType:
  ///
  /// * [int] size:
  ///
  /// * [int] waitSeconds:
  Future<AgentAutomationEventPageDto?> agentListAutomationEvents({ String? cursor, Set<String>? eventType, int? size, int? waitSeconds, }) async {
    final response = await agentListAutomationEventsWithHttpInfo( cursor: cursor, eventType: eventType, size: size, waitSeconds: waitSeconds, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentAutomationEventPageDto',) as AgentAutomationEventPageDto;
    
    }
    return null;
  }

  /// List active conversations with an opaque keyset cursor
  ///
  /// Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflowState:
  ///
  /// * [String] outcome:
  ///
  /// * [String] reviewStatus:
  ///
  /// * [String] inboxId:
  ///
  /// * [bool] unread:
  ///
  /// * [bool] hasAttachments:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [String] sort:
  ///
  /// * [String] cursor:
  ///
  /// * [int] size:
  Future<Response> agentListConversationsV2WithHttpInfo({ String? workflowState, String? outcome, String? reviewStatus, String? inboxId, bool? unread, bool? hasAttachments, DateTime? since, DateTime? before, String? search, String? sort, String? cursor, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (workflowState != null) {
      queryParams.addAll(_queryParams('', 'workflowState', workflowState));
    }
    if (outcome != null) {
      queryParams.addAll(_queryParams('', 'outcome', outcome));
    }
    if (reviewStatus != null) {
      queryParams.addAll(_queryParams('', 'reviewStatus', reviewStatus));
    }
    if (inboxId != null) {
      queryParams.addAll(_queryParams('', 'inboxId', inboxId));
    }
    if (unread != null) {
      queryParams.addAll(_queryParams('', 'unread', unread));
    }
    if (hasAttachments != null) {
      queryParams.addAll(_queryParams('', 'hasAttachments', hasAttachments));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
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

  /// List active conversations with an opaque keyset cursor
  ///
  /// Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.
  ///
  /// Parameters:
  ///
  /// * [String] workflowState:
  ///
  /// * [String] outcome:
  ///
  /// * [String] reviewStatus:
  ///
  /// * [String] inboxId:
  ///
  /// * [bool] unread:
  ///
  /// * [bool] hasAttachments:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [String] sort:
  ///
  /// * [String] cursor:
  ///
  /// * [int] size:
  Future<AgentConversationCursorPageDto?> agentListConversationsV2({ String? workflowState, String? outcome, String? reviewStatus, String? inboxId, bool? unread, bool? hasAttachments, DateTime? since, DateTime? before, String? search, String? sort, String? cursor, int? size, }) async {
    final response = await agentListConversationsV2WithHttpInfo( workflowState: workflowState, outcome: outcome, reviewStatus: reviewStatus, inboxId: inboxId, unread: unread, hasAttachments: hasAttachments, since: since, before: before, search: search, sort: sort, cursor: cursor, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationCursorPageDto',) as AgentConversationCursorPageDto;
    
    }
    return null;
  }

  /// List attachments on a scoped email for an agent
  ///
  /// Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<Response> agentListEmailAttachmentsWithHttpInfo(String emailId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/attachments'
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

  /// List attachments on a scoped email for an agent
  ///
  /// Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  Future<List<AttachmentMetaData>?> agentListEmailAttachments(String emailId,) async {
    final response = await agentListEmailAttachmentsWithHttpInfo(emailId,);
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

  /// List scoped email drafts for an agent
  ///
  /// Lists draft previews for one scoped inbox.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to list drafts for
  ///
  /// * [int] page:
  ///   Optional page index in draft pagination
  ///
  /// * [int] size:
  ///   Optional page size in draft pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<Response> agentListEmailDraftsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts'
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

  /// List scoped email drafts for an agent
  ///
  /// Lists draft previews for one scoped inbox.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox to list drafts for
  ///
  /// * [int] page:
  ///   Optional page index in draft pagination
  ///
  /// * [int] size:
  ///   Optional page size in draft pagination
  ///
  /// * [String] sort:
  ///   Optional createdAt sort direction ASC or DESC
  Future<PageEmailDraftProjection?> agentListEmailDrafts(String inboxId, { int? page, int? size, String? sort, }) async {
    final response = await agentListEmailDraftsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PageEmailDraftProjection',) as PageEmailDraftProjection;
    
    }
    return null;
  }

  /// List scoped inbox emails for an agent
  ///
  /// Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the agent may read
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
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors before fetching emails
  Future<Response> agentListInboxEmailsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, bool? syncConnectors, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/emails'
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
    if (syncConnectors != null) {
      queryParams.addAll(_queryParams('', 'syncConnectors', syncConnectors));
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

  /// List scoped inbox emails for an agent
  ///
  /// Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the agent may read
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
  ///
  /// * [bool] syncConnectors:
  ///   Sync connectors before fetching emails
  Future<PageEmailPreview?> agentListInboxEmails(String inboxId, { int? page, int? size, String? sort, DateTime? since, DateTime? before, bool? syncConnectors, }) async {
    final response = await agentListInboxEmailsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, since: since, before: before, syncConnectors: syncConnectors, );
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

  /// List scoped inbox threads for an agent
  ///
  /// Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] search:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<Response> agentListInboxThreadsWithHttpInfo(String inboxId, { int? page, int? size, String? sort, String? search, DateTime? since, DateTime? before, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/threads'
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
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
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

  /// List scoped inbox threads for an agent
  ///
  /// Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [int] page:
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [String] search:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  Future<PageEmailThreadProjection?> agentListInboxThreads(String inboxId, { int? page, int? size, String? sort, String? search, DateTime? since, DateTime? before, }) async {
    final response = await agentListInboxThreadsWithHttpInfo(inboxId,  page: page, size: size, sort: sort, search: search, since: since, before: before, );
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

  /// List active SMS conversations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] workflowState:
  ///
  /// * [String] outcome:
  ///
  /// * [String] reviewStatus:
  ///
  /// * [String] phoneNumberId:
  ///
  /// * [bool] unread:
  ///
  /// * [bool] hasMedia:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [String] sort:
  ///
  /// * [String] cursor:
  ///
  /// * [int] size:
  Future<Response> agentListSmsConversationsWithHttpInfo({ String? workflowState, String? outcome, String? reviewStatus, String? phoneNumberId, bool? unread, bool? hasMedia, DateTime? since, DateTime? before, String? search, String? sort, String? cursor, int? size, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (workflowState != null) {
      queryParams.addAll(_queryParams('', 'workflowState', workflowState));
    }
    if (outcome != null) {
      queryParams.addAll(_queryParams('', 'outcome', outcome));
    }
    if (reviewStatus != null) {
      queryParams.addAll(_queryParams('', 'reviewStatus', reviewStatus));
    }
    if (phoneNumberId != null) {
      queryParams.addAll(_queryParams('', 'phoneNumberId', phoneNumberId));
    }
    if (unread != null) {
      queryParams.addAll(_queryParams('', 'unread', unread));
    }
    if (hasMedia != null) {
      queryParams.addAll(_queryParams('', 'hasMedia', hasMedia));
    }
    if (since != null) {
      queryParams.addAll(_queryParams('', 'since', since));
    }
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (search != null) {
      queryParams.addAll(_queryParams('', 'search', search));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }
    if (cursor != null) {
      queryParams.addAll(_queryParams('', 'cursor', cursor));
    }
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

  /// List active SMS conversations
  ///
  /// Parameters:
  ///
  /// * [String] workflowState:
  ///
  /// * [String] outcome:
  ///
  /// * [String] reviewStatus:
  ///
  /// * [String] phoneNumberId:
  ///
  /// * [bool] unread:
  ///
  /// * [bool] hasMedia:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [String] search:
  ///
  /// * [String] sort:
  ///
  /// * [String] cursor:
  ///
  /// * [int] size:
  Future<AgentSmsConversationCursorPageDto?> agentListSmsConversations({ String? workflowState, String? outcome, String? reviewStatus, String? phoneNumberId, bool? unread, bool? hasMedia, DateTime? since, DateTime? before, String? search, String? sort, String? cursor, int? size, }) async {
    final response = await agentListSmsConversationsWithHttpInfo( workflowState: workflowState, outcome: outcome, reviewStatus: reviewStatus, phoneNumberId: phoneNumberId, unread: unread, hasMedia: hasMedia, since: since, before: before, search: search, sort: sort, cursor: cursor, size: size, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentSmsConversationCursorPageDto',) as AgentSmsConversationCursorPageDto;
    
    }
    return null;
  }

  /// Prepare a guarded reply draft
  ///
  /// Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [PrepareAgentReplyOptions] prepareAgentReplyOptions (required):
  Future<Response> agentPrepareWorkItemReplyWithHttpInfo(String conversationId, PrepareAgentReplyOptions prepareAgentReplyOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/work-items/{conversationId}/prepare-reply'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = prepareAgentReplyOptions;

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

  /// Prepare a guarded reply draft
  ///
  /// Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [PrepareAgentReplyOptions] prepareAgentReplyOptions (required):
  Future<AgentPreparedReplyDto?> agentPrepareWorkItemReply(String conversationId, PrepareAgentReplyOptions prepareAgentReplyOptions,) async {
    final response = await agentPrepareWorkItemReplyWithHttpInfo(conversationId, prepareAgentReplyOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentPreparedReplyDto',) as AgentPreparedReplyDto;
    
    }
    return null;
  }

  /// Release a conversation claim
  ///
  /// Release is idempotent; repeating it does not fail.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  Future<Response> agentReleaseConversationClaimWithHttpInfo(String conversationId, String claimId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}/claims/{claimId}'
      .replaceAll('{conversationId}', conversationId)
      .replaceAll('{claimId}', claimId);

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

  /// Release a conversation claim
  ///
  /// Release is idempotent; repeating it does not fail.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  Future<void> agentReleaseConversationClaim(String conversationId, String claimId,) async {
    final response = await agentReleaseConversationClaimWithHttpInfo(conversationId, claimId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Release an SMS conversation claim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  Future<Response> agentReleaseSmsClaimWithHttpInfo(String conversationId, String claimId,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}/claims/{claimId}'
      .replaceAll('{conversationId}', conversationId)
      .replaceAll('{claimId}', claimId);

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

  /// Release an SMS conversation claim
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  Future<void> agentReleaseSmsClaim(String conversationId, String claimId,) async {
    final response = await agentReleaseSmsClaimWithHttpInfo(conversationId, claimId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Renew a conversation claim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  ///
  /// * [RenewAgentConversationClaimOptions] renewAgentConversationClaimOptions (required):
  Future<Response> agentRenewConversationClaimWithHttpInfo(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}/claims/{claimId}'
      .replaceAll('{conversationId}', conversationId)
      .replaceAll('{claimId}', claimId);

    // ignore: prefer_final_locals
    Object? postBody = renewAgentConversationClaimOptions;

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

  /// Renew a conversation claim
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  ///
  /// * [RenewAgentConversationClaimOptions] renewAgentConversationClaimOptions (required):
  Future<AgentConversationClaimDto?> agentRenewConversationClaim(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions,) async {
    final response = await agentRenewConversationClaimWithHttpInfo(conversationId, claimId, renewAgentConversationClaimOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationClaimDto',) as AgentConversationClaimDto;
    
    }
    return null;
  }

  /// Renew an SMS conversation claim
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  ///
  /// * [RenewAgentConversationClaimOptions] renewAgentConversationClaimOptions (required):
  Future<Response> agentRenewSmsClaimWithHttpInfo(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}/claims/{claimId}'
      .replaceAll('{conversationId}', conversationId)
      .replaceAll('{claimId}', claimId);

    // ignore: prefer_final_locals
    Object? postBody = renewAgentConversationClaimOptions;

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

  /// Renew an SMS conversation claim
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [String] claimId (required):
  ///
  /// * [RenewAgentConversationClaimOptions] renewAgentConversationClaimOptions (required):
  Future<AgentConversationClaimDto?> agentRenewSmsClaim(String conversationId, String claimId, RenewAgentConversationClaimOptions renewAgentConversationClaimOptions,) async {
    final response = await agentRenewSmsClaimWithHttpInfo(conversationId, claimId, renewAgentConversationClaimOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationClaimDto',) as AgentConversationClaimDto;
    
    }
    return null;
  }

  /// Reply to a scoped email as an agent
  ///
  /// Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to reply to
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestEmailId:
  Future<Response> agentReplyToEmailWithHttpInfo(String emailId, ReplyToEmailOptions replyToEmailOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestEmailId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/emails/{emailId}/reply'
      .replaceAll('{emailId}', emailId);

    // ignore: prefer_final_locals
    Object? postBody = replyToEmailOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expectedConversationVersion != null) {
      queryParams.addAll(_queryParams('', 'expectedConversationVersion', expectedConversationVersion));
    }
    if (expectedLatestEmailId != null) {
      queryParams.addAll(_queryParams('', 'expectedLatestEmailId', expectedLatestEmailId));
    }

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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

  /// Reply to a scoped email as an agent
  ///
  /// Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.
  ///
  /// Parameters:
  ///
  /// * [String] emailId (required):
  ///   ID of email to reply to
  ///
  /// * [ReplyToEmailOptions] replyToEmailOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestEmailId:
  Future<SentEmailDto?> agentReplyToEmail(String emailId, ReplyToEmailOptions replyToEmailOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestEmailId, }) async {
    final response = await agentReplyToEmailWithHttpInfo(emailId, replyToEmailOptions,  idempotencyKey: idempotencyKey, expectedConversationVersion: expectedConversationVersion, expectedLatestEmailId: expectedLatestEmailId, );
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

  /// Reply to received SMS
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] smsId (required):
  ///
  /// * [SmsReplyOptions] smsReplyOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestMessageId:
  Future<Response> agentReplyToSmsWithHttpInfo(String phoneNumberId, String smsId, SmsReplyOptions smsReplyOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestMessageId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms/{smsId}/reply'
      .replaceAll('{phoneNumberId}', phoneNumberId)
      .replaceAll('{smsId}', smsId);

    // ignore: prefer_final_locals
    Object? postBody = smsReplyOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expectedConversationVersion != null) {
      queryParams.addAll(_queryParams('', 'expectedConversationVersion', expectedConversationVersion));
    }
    if (expectedLatestMessageId != null) {
      queryParams.addAll(_queryParams('', 'expectedLatestMessageId', expectedLatestMessageId));
    }

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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

  /// Reply to received SMS
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [String] smsId (required):
  ///
  /// * [SmsReplyOptions] smsReplyOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestMessageId:
  Future<SentSmsDto?> agentReplyToSms(String phoneNumberId, String smsId, SmsReplyOptions smsReplyOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestMessageId, }) async {
    final response = await agentReplyToSmsWithHttpInfo(phoneNumberId, smsId, smsReplyOptions,  idempotencyKey: idempotencyKey, expectedConversationVersion: expectedConversationVersion, expectedLatestMessageId: expectedLatestMessageId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Report a worker heartbeat
  ///
  /// Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AgentWorkerHeartbeatOptions] agentWorkerHeartbeatOptions (required):
  Future<Response> agentReportWorkerHeartbeatWithHttpInfo(AgentWorkerHeartbeatOptions agentWorkerHeartbeatOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/runtime/heartbeat';

    // ignore: prefer_final_locals
    Object? postBody = agentWorkerHeartbeatOptions;

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

  /// Report a worker heartbeat
  ///
  /// Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.
  ///
  /// Parameters:
  ///
  /// * [AgentWorkerHeartbeatOptions] agentWorkerHeartbeatOptions (required):
  Future<AgentWorkerHeartbeatDto?> agentReportWorkerHeartbeat(AgentWorkerHeartbeatOptions agentWorkerHeartbeatOptions,) async {
    final response = await agentReportWorkerHeartbeatWithHttpInfo(agentWorkerHeartbeatOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentWorkerHeartbeatDto',) as AgentWorkerHeartbeatDto;
    
    }
    return null;
  }

  /// Request human review for a conversation
  ///
  /// Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentConversationHandoffOptions] createAgentConversationHandoffOptions (required):
  Future<Response> agentRequestConversationHandoffWithHttpInfo(String conversationId, CreateAgentConversationHandoffOptions createAgentConversationHandoffOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/conversations/{conversationId}/handoffs'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = createAgentConversationHandoffOptions;

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

  /// Request human review for a conversation
  ///
  /// Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentConversationHandoffOptions] createAgentConversationHandoffOptions (required):
  Future<AgentConversationHandoffDto?> agentRequestConversationHandoff(String conversationId, CreateAgentConversationHandoffOptions createAgentConversationHandoffOptions,) async {
    final response = await agentRequestConversationHandoffWithHttpInfo(conversationId, createAgentConversationHandoffOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationHandoffDto',) as AgentConversationHandoffDto;
    
    }
    return null;
  }

  /// Request human review for an SMS conversation
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentSmsConversationHandoffOptions] createAgentSmsConversationHandoffOptions (required):
  Future<Response> agentRequestSmsHandoffWithHttpInfo(String conversationId, CreateAgentSmsConversationHandoffOptions createAgentSmsConversationHandoffOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/sms-conversations/{conversationId}/handoffs'
      .replaceAll('{conversationId}', conversationId);

    // ignore: prefer_final_locals
    Object? postBody = createAgentSmsConversationHandoffOptions;

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

  /// Request human review for an SMS conversation
  ///
  /// Parameters:
  ///
  /// * [String] conversationId (required):
  ///
  /// * [CreateAgentSmsConversationHandoffOptions] createAgentSmsConversationHandoffOptions (required):
  Future<AgentConversationHandoffDto?> agentRequestSmsHandoff(String conversationId, CreateAgentSmsConversationHandoffOptions createAgentSmsConversationHandoffOptions,) async {
    final response = await agentRequestSmsHandoffWithHttpInfo(conversationId, createAgentSmsConversationHandoffOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AgentConversationHandoffDto',) as AgentConversationHandoffDto;
    
    }
    return null;
  }

  /// Search scoped inbox emails for an agent
  ///
  /// Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [bool] unreadOnly:
  Future<Response> agentSearchInboxEmailsWithHttpInfo(String inboxId, MatchOptions matchOptions, { int? size, String? sort, DateTime? since, DateTime? before, bool? unreadOnly, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/emails/search'
      .replaceAll('{inboxId}', inboxId);

    // ignore: prefer_final_locals
    Object? postBody = matchOptions;

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
    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (unreadOnly != null) {
      queryParams.addAll(_queryParams('', 'unreadOnly', unreadOnly));
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

  /// Search scoped inbox emails for an agent
  ///
  /// Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [MatchOptions] matchOptions (required):
  ///
  /// * [int] size:
  ///
  /// * [String] sort:
  ///
  /// * [DateTime] since:
  ///
  /// * [DateTime] before:
  ///
  /// * [bool] unreadOnly:
  Future<List<EmailPreview>?> agentSearchInboxEmails(String inboxId, MatchOptions matchOptions, { int? size, String? sort, DateTime? since, DateTime? before, bool? unreadOnly, }) async {
    final response = await agentSearchInboxEmailsWithHttpInfo(inboxId, matchOptions,  size: size, sort: sort, since: since, before: before, unreadOnly: unreadOnly, );
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

  /// Send a scoped email draft for an agent
  ///
  /// Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  ///
  /// * [String] idempotencyKey:
  Future<Response> agentSendEmailDraftWithHttpInfo(String inboxId, String draftId, { String? idempotencyKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts/{draftId}/send'
      .replaceAll('{inboxId}', inboxId)
      .replaceAll('{draftId}', draftId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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

  /// Send a scoped email draft for an agent
  ///
  /// Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  ///
  /// * [String] idempotencyKey:
  Future<SentEmailDto?> agentSendEmailDraft(String inboxId, String draftId, { String? idempotencyKey, }) async {
    final response = await agentSendEmailDraftWithHttpInfo(inboxId, draftId,  idempotencyKey: idempotencyKey, );
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

  /// Send SMS from an assigned phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestMessageId:
  Future<Response> agentSendSmsWithHttpInfo(String phoneNumberId, SmsSendOptions smsSendOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestMessageId, }) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/phone-numbers/{phoneNumberId}/sms'
      .replaceAll('{phoneNumberId}', phoneNumberId);

    // ignore: prefer_final_locals
    Object? postBody = smsSendOptions;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (expectedConversationVersion != null) {
      queryParams.addAll(_queryParams('', 'expectedConversationVersion', expectedConversationVersion));
    }
    if (expectedLatestMessageId != null) {
      queryParams.addAll(_queryParams('', 'expectedLatestMessageId', expectedLatestMessageId));
    }

    if (idempotencyKey != null) {
      headerParams[r'Idempotency-Key'] = parameterToString(idempotencyKey);
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

  /// Send SMS from an assigned phone number
  ///
  /// Parameters:
  ///
  /// * [String] phoneNumberId (required):
  ///
  /// * [SmsSendOptions] smsSendOptions (required):
  ///
  /// * [String] idempotencyKey:
  ///
  /// * [int] expectedConversationVersion:
  ///
  /// * [String] expectedLatestMessageId:
  Future<SentSmsDto?> agentSendSms(String phoneNumberId, SmsSendOptions smsSendOptions, { String? idempotencyKey, int? expectedConversationVersion, String? expectedLatestMessageId, }) async {
    final response = await agentSendSmsWithHttpInfo(phoneNumberId, smsSendOptions,  idempotencyKey: idempotencyKey, expectedConversationVersion: expectedConversationVersion, expectedLatestMessageId: expectedLatestMessageId, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SentSmsDto',) as SentSmsDto;
    
    }
    return null;
  }

  /// Update a scoped email draft for an agent
  ///
  /// Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<Response> agentUpdateEmailDraftWithHttpInfo(String inboxId, String draftId, SendEmailOptions sendEmailOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}/drafts/{draftId}'
      .replaceAll('{inboxId}', inboxId)
      .replaceAll('{draftId}', draftId);

    // ignore: prefer_final_locals
    Object? postBody = sendEmailOptions;

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

  /// Update a scoped email draft for an agent
  ///
  /// Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///   ID of inbox the draft belongs to
  ///
  /// * [String] draftId (required):
  ///   ID of draft
  ///
  /// * [SendEmailOptions] sendEmailOptions (required):
  Future<EmailDraftDto?> agentUpdateEmailDraft(String inboxId, String draftId, SendEmailOptions sendEmailOptions,) async {
    final response = await agentUpdateEmailDraftWithHttpInfo(inboxId, draftId, sendEmailOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'EmailDraftDto',) as EmailDraftDto;
    
    }
    return null;
  }

  /// Update an inbox visible to an inbox-manager connection
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  Future<Response> agentUpdateInboxWithHttpInfo(String inboxId, UpdateInboxOptions updateInboxOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/inboxes/{inboxId}'
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

  /// Update an inbox visible to an inbox-manager connection
  ///
  /// Parameters:
  ///
  /// * [String] inboxId (required):
  ///
  /// * [UpdateInboxOptions] updateInboxOptions (required):
  Future<InboxDto?> agentUpdateInbox(String inboxId, UpdateInboxOptions updateInboxOptions,) async {
    final response = await agentUpdateInboxWithHttpInfo(inboxId, updateInboxOptions,);
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

  /// Update an agent-managed TOTP device
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateTotpDeviceOptions] updateTotpDeviceOptions (required):
  Future<Response> agentUpdateTotpDeviceWithHttpInfo(String id, UpdateTotpDeviceOptions updateTotpDeviceOptions,) async {
    // ignore: prefer_const_declarations
    final path = r'/agent/totp/devices/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = updateTotpDeviceOptions;

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

  /// Update an agent-managed TOTP device
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [UpdateTotpDeviceOptions] updateTotpDeviceOptions (required):
  Future<TotpDeviceDto?> agentUpdateTotpDevice(String id, UpdateTotpDeviceOptions updateTotpDeviceOptions,) async {
    final response = await agentUpdateTotpDeviceWithHttpInfo(id, updateTotpDeviceOptions,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TotpDeviceDto',) as TotpDeviceDto;
    
    }
    return null;
  }
}
