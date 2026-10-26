//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.mailslurp.com', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType,
  ) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }

    throw ApiException(
      HttpStatus.badRequest,
      'Invalid HTTP operation: $method $path',
    );
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  static dynamic _deserialize(dynamic value, String targetType, {bool growable = false}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AIMappingMatchOption':
          return AIMappingMatchOption.fromJson(value);
        case 'AIMappingMatchOptions':
          return AIMappingMatchOptions.fromJson(value);
        case 'AIMessageAIOptions':
          return AIMessageAIOptions.fromJson(value);
        case 'AIMessageAssertion':
          return AIMessageAssertion.fromJson(value);
        case 'AIMessageAssertionResult':
          return AIMessageAssertionResult.fromJson(value);
        case 'AIMessageCandidateResult':
          return AIMessageCandidateResult.fromJson(value);
        case 'AIMessageConfidence':
          return AIMessageConfidence.fromJson(value);
        case 'AIMessageEvidence':
          return AIMessageEvidence.fromJson(value);
        case 'AIMessageExpectation':
          return AIMessageExpectation.fromJson(value);
        case 'AIMessageExpectationResult':
          return AIMessageExpectationResult.fromJson(value);
        case 'AIMessageMatchOptions':
          return AIMessageMatchOptions.fromJson(value);
        case 'AIMessageMatchResult':
          return AIMessageMatchResult.fromJson(value);
        case 'AIMessageModelDto':
          return AIMessageModelDto.fromJson(value);
        case 'AIMessageReference':
          return AIMessageReference.fromJson(value);
        case 'AIMessageResult':
          return AIMessageResult.fromJson(value);
        case 'AIMessageScope':
          return AIMessageScope.fromJson(value);
        case 'AIMessageUsage':
          return AIMessageUsage.fromJson(value);
        case 'AIMessagesResult':
          return AIMessagesResult.fromJson(value);
        case 'AITransformCreateOptions':
          return AITransformCreateOptions.fromJson(value);
        case 'AITransformDto':
          return AITransformDto.fromJson(value);
        case 'AITransformMappingDto':
          return AITransformMappingDto.fromJson(value);
        case 'AITransformMappingMatchResult':
          return AITransformMappingMatchResult.fromJson(value);
        case 'AITransformMappingProjection':
          return AITransformMappingProjection.fromJson(value);
        case 'AITransformProjection':
          return AITransformProjection.fromJson(value);
        case 'AITransformResultDto':
          return AITransformResultDto.fromJson(value);
        case 'AITransformResultProjectionDto':
          return AITransformResultProjectionDto.fromJson(value);
        case 'AbstractWebhookPayload':
          return AbstractWebhookPayload.fromJson(value);
        case 'AccessLinkSendResultDto':
          return AccessLinkSendResultDto.fromJson(value);
        case 'AccessibleInboxList':
          return AccessibleInboxList.fromJson(value);
        case 'AccountBounceBlockDto':
          return AccountBounceBlockDto.fromJson(value);
        case 'AccountDto':
          return AccountDto.fromJson(value);
        case 'AcquireAgentConversationClaimOptions':
          return AcquireAgentConversationClaimOptions.fromJson(value);
        case 'AcquirePhonePoolLeaseOptions':
          return AcquirePhonePoolLeaseOptions.fromJson(value);
        case 'AddPhonePoolNumbersOptions':
          return AddPhonePoolNumbersOptions.fromJson(value);
        case 'AdminSendPauseDto':
          return AdminSendPauseDto.fromJson(value);
        case 'AgentActivityDto':
          return AgentActivityDto.fromJson(value);
        case 'AgentApiErrorDto':
          return AgentApiErrorDto.fromJson(value);
        case 'AgentAutomationEventDto':
          return AgentAutomationEventDto.fromJson(value);
        case 'AgentAutomationEventPageDto':
          return AgentAutomationEventPageDto.fromJson(value);
        case 'AgentCapabilitiesDto':
          return AgentCapabilitiesDto.fromJson(value);
        case 'AgentCapabilityFeaturesDto':
          return AgentCapabilityFeaturesDto.fromJson(value);
        case 'AgentCapabilityLimitsDto':
          return AgentCapabilityLimitsDto.fromJson(value);
        case 'AgentCapabilityScopeDto':
          return AgentCapabilityScopeDto.fromJson(value);
        case 'AgentCompletedWorkItemDto':
          return AgentCompletedWorkItemDto.fromJson(value);
        case 'AgentConversationClaimDto':
          return AgentConversationClaimDto.fromJson(value);
        case 'AgentConversationCursorPageDto':
          return AgentConversationCursorPageDto.fromJson(value);
        case 'AgentConversationDetailV2Dto':
          return AgentConversationDetailV2Dto.fromJson(value);
        case 'AgentConversationHandoffDto':
          return AgentConversationHandoffDto.fromJson(value);
        case 'AgentConversationNoteDto':
          return AgentConversationNoteDto.fromJson(value);
        case 'AgentConversationQueueItemDto':
          return AgentConversationQueueItemDto.fromJson(value);
        case 'AgentDeferredWorkItemDto':
          return AgentDeferredWorkItemDto.fromJson(value);
        case 'AgentInboxSendPolicyCheckOptions':
          return AgentInboxSendPolicyCheckOptions.fromJson(value);
        case 'AgentInboxSendPolicyDto':
          return AgentInboxSendPolicyDto.fromJson(value);
        case 'AgentPreparedReplyDto':
          return AgentPreparedReplyDto.fromJson(value);
        case 'AgentSmsConversationCursorPageDto':
          return AgentSmsConversationCursorPageDto.fromJson(value);
        case 'AgentSmsConversationDetailDto':
          return AgentSmsConversationDetailDto.fromJson(value);
        case 'AgentSmsConversationQueueItemDto':
          return AgentSmsConversationQueueItemDto.fromJson(value);
        case 'AgentWorkItemDto':
          return AgentWorkItemDto.fromJson(value);
        case 'AgentWorkerHeartbeatDto':
          return AgentWorkerHeartbeatDto.fromJson(value);
        case 'AgentWorkerHeartbeatOptions':
          return AgentWorkerHeartbeatOptions.fromJson(value);
        case 'AliasDto':
          return AliasDto.fromJson(value);
        case 'AliasProjection':
          return AliasProjection.fromJson(value);
        case 'AliasThreadProjection':
          return AliasThreadProjection.fromJson(value);
        case 'AnalyzeDmarcReportOptions':
          return AnalyzeDmarcReportOptions.fromJson(value);
        case 'AnalyzeDmarcReportResults':
          return AnalyzeDmarcReportResults.fromJson(value);
        case 'AnalyzeEmailHeadersOptions':
          return AnalyzeEmailHeadersOptions.fromJson(value);
        case 'AnalyzeEmailHeadersResults':
          return AnalyzeEmailHeadersResults.fromJson(value);
        case 'AssertAIMessageOptions':
          return AssertAIMessageOptions.fromJson(value);
        case 'AttachmentEntityDto':
          return AttachmentEntityDto.fromJson(value);
        case 'AttachmentMetaData':
          return AttachmentMetaData.fromJson(value);
        case 'AttachmentProjection':
          return AttachmentProjection.fromJson(value);
        case 'AuditLogEventDto':
          return AuditLogEventDto.fromJson(value);
        case 'AuditLogPageDto':
          return AuditLogPageDto.fromJson(value);
        case 'AuditLogSearchOptions':
          return AuditLogSearchOptions.fromJson(value);
        case 'AuthBootstrapDto':
          return AuthBootstrapDto.fromJson(value);
        case 'AuthV2BootstrapDto':
          return AuthV2BootstrapDto.fromJson(value);
        case 'AuthV2BootstrapOptions':
          return AuthV2BootstrapOptions.fromJson(value);
        case 'AuthV2PasswordLoginOptions':
          return AuthV2PasswordLoginOptions.fromJson(value);
        case 'AutomatedInboxPlacementConnectionDto':
          return AutomatedInboxPlacementConnectionDto.fromJson(value);
        case 'AutomatedInboxPlacementEventDto':
          return AutomatedInboxPlacementEventDto.fromJson(value);
        case 'AutomatedInboxPlacementExecutionDto':
          return AutomatedInboxPlacementExecutionDto.fromJson(value);
        case 'AutomatedInboxPlacementProviderDto':
          return AutomatedInboxPlacementProviderDto.fromJson(value);
        case 'AutomatedInboxPlacementScheduleDto':
          return AutomatedInboxPlacementScheduleDto.fromJson(value);
        case 'AutomatedInboxPlacementSmtpOptions':
          return AutomatedInboxPlacementSmtpOptions.fromJson(value);
        case 'AvailablePhoneNumberDto':
          return AvailablePhoneNumberDto.fromJson(value);
        case 'AvailablePhoneNumbersResult':
          return AvailablePhoneNumbersResult.fromJson(value);
        case 'BasicAuthOptions':
          return BasicAuthOptions.fromJson(value);
        case 'BounceProjection':
          return BounceProjection.fromJson(value);
        case 'BounceRecipientProjection':
          return BounceRecipientProjection.fromJson(value);
        case 'BouncedEmailDto':
          return BouncedEmailDto.fromJson(value);
        case 'BouncedRecipientDto':
          return BouncedRecipientDto.fromJson(value);
        case 'BulkSendEmailOptions':
          return BulkSendEmailOptions.fromJson(value);
        case 'CampaignProbeDto':
          return CampaignProbeDto.fromJson(value);
        case 'CampaignProbeInsightsDto':
          return CampaignProbeInsightsDto.fromJson(value);
        case 'CampaignProbeRunComparisonDto':
          return CampaignProbeRunComparisonDto.fromJson(value);
        case 'CampaignProbeRunDto':
          return CampaignProbeRunDto.fromJson(value);
        case 'CampaignProbeRunDueResult':
          return CampaignProbeRunDueResult.fromJson(value);
        case 'CampaignProbeRunNowResult':
          return CampaignProbeRunNowResult.fromJson(value);
        case 'CampaignProbeSeriesDto':
          return CampaignProbeSeriesDto.fromJson(value);
        case 'CampaignProbeSeriesPointDto':
          return CampaignProbeSeriesPointDto.fromJson(value);
        case 'CanSendEmailResults':
          return CanSendEmailResults.fromJson(value);
        case 'CancelDevicePreviewRunOptions':
          return CancelDevicePreviewRunOptions.fromJson(value);
        case 'CancelDevicePreviewRunResult':
          return CancelDevicePreviewRunResult.fromJson(value);
        case 'CheckCampaignProbeOptions':
          return CheckCampaignProbeOptions.fromJson(value);
        case 'CheckCampaignProbeResults':
          return CheckCampaignProbeResults.fromJson(value);
        case 'CheckDnsPropagationOptions':
          return CheckDnsPropagationOptions.fromJson(value);
        case 'CheckDnsPropagationResults':
          return CheckDnsPropagationResults.fromJson(value);
        case 'CheckDomainMonitorOptions':
          return CheckDomainMonitorOptions.fromJson(value);
        case 'CheckDomainMonitorResults':
          return CheckDomainMonitorResults.fromJson(value);
        case 'CheckEmailAuditOptions':
          return CheckEmailAuditOptions.fromJson(value);
        case 'CheckEmailAuthStackOptions':
          return CheckEmailAuthStackOptions.fromJson(value);
        case 'CheckEmailAuthStackResults':
          return CheckEmailAuthStackResults.fromJson(value);
        case 'CheckEmailBlacklistOptions':
          return CheckEmailBlacklistOptions.fromJson(value);
        case 'CheckEmailBlacklistResults':
          return CheckEmailBlacklistResults.fromJson(value);
        case 'CheckEmailBodyFeatureSupportResults':
          return CheckEmailBodyFeatureSupportResults.fromJson(value);
        case 'CheckEmailBodyResults':
          return CheckEmailBodyResults.fromJson(value);
        case 'CheckEmailClientSupportOptions':
          return CheckEmailClientSupportOptions.fromJson(value);
        case 'CheckEmailClientSupportResults':
          return CheckEmailClientSupportResults.fromJson(value);
        case 'CheckEmailFeaturesClientSupportOptions':
          return CheckEmailFeaturesClientSupportOptions.fromJson(value);
        case 'CheckEmailFeaturesClientSupportResults':
          return CheckEmailFeaturesClientSupportResults.fromJson(value);
        case 'CodeCandidate':
          return CodeCandidate.fromJson(value);
        case 'Complaint':
          return Complaint.fromJson(value);
        case 'CompleteAgentWorkItemOptions':
          return CompleteAgentWorkItemOptions.fromJson(value);
        case 'ConditionOption':
          return ConditionOption.fromJson(value);
        case 'ConditionalStructuredContentResult':
          return ConditionalStructuredContentResult.fromJson(value);
        case 'ConnectorDto':
          return ConnectorDto.fromJson(value);
        case 'ConnectorEventDto':
          return ConnectorEventDto.fromJson(value);
        case 'ConnectorEventProjection':
          return ConnectorEventProjection.fromJson(value);
        case 'ConnectorImapConnectionDto':
          return ConnectorImapConnectionDto.fromJson(value);
        case 'ConnectorImapConnectionTestResult':
          return ConnectorImapConnectionTestResult.fromJson(value);
        case 'ConnectorProjection':
          return ConnectorProjection.fromJson(value);
        case 'ConnectorProviderSettingsDto':
          return ConnectorProviderSettingsDto.fromJson(value);
        case 'ConnectorSmtpConnectionDto':
          return ConnectorSmtpConnectionDto.fromJson(value);
        case 'ConnectorSmtpConnectionTestResult':
          return ConnectorSmtpConnectionTestResult.fromJson(value);
        case 'ConnectorSyncRequestResult':
          return ConnectorSyncRequestResult.fromJson(value);
        case 'ConnectorSyncResult':
          return ConnectorSyncResult.fromJson(value);
        case 'ConnectorSyncSettingsDto':
          return ConnectorSyncSettingsDto.fromJson(value);
        case 'ConsentStatusDto':
          return ConsentStatusDto.fromJson(value);
        case 'ContactDto':
          return ContactDto.fromJson(value);
        case 'ContactProjection':
          return ContactProjection.fromJson(value);
        case 'ContentMatchOptions':
          return ContentMatchOptions.fromJson(value);
        case 'CountDto':
          return CountDto.fromJson(value);
        case 'CreateAITransformerMappingOptions':
          return CreateAITransformerMappingOptions.fromJson(value);
        case 'CreateAgentConversationHandoffOptions':
          return CreateAgentConversationHandoffOptions.fromJson(value);
        case 'CreateAgentConversationNoteOptions':
          return CreateAgentConversationNoteOptions.fromJson(value);
        case 'CreateAgentSmsConversationHandoffOptions':
          return CreateAgentSmsConversationHandoffOptions.fromJson(value);
        case 'CreateAgentSmsConversationNoteOptions':
          return CreateAgentSmsConversationNoteOptions.fromJson(value);
        case 'CreateAliasOptions':
          return CreateAliasOptions.fromJson(value);
        case 'CreateAutomatedInboxPlacementConnectionOptions':
          return CreateAutomatedInboxPlacementConnectionOptions.fromJson(value);
        case 'CreateAutomatedInboxPlacementScheduleOptions':
          return CreateAutomatedInboxPlacementScheduleOptions.fromJson(value);
        case 'CreateCampaignProbeOptions':
          return CreateCampaignProbeOptions.fromJson(value);
        case 'CreateCampaignProbeRunOptions':
          return CreateCampaignProbeRunOptions.fromJson(value);
        case 'CreateConnectorImapConnectionOptions':
          return CreateConnectorImapConnectionOptions.fromJson(value);
        case 'CreateConnectorOptions':
          return CreateConnectorOptions.fromJson(value);
        case 'CreateConnectorSmtpConnectionOptions':
          return CreateConnectorSmtpConnectionOptions.fromJson(value);
        case 'CreateConnectorSyncSettingsOptions':
          return CreateConnectorSyncSettingsOptions.fromJson(value);
        case 'CreateConnectorWithOptions':
          return CreateConnectorWithOptions.fromJson(value);
        case 'CreateContactOptions':
          return CreateContactOptions.fromJson(value);
        case 'CreateDeliverabilitySimulationJobOptions':
          return CreateDeliverabilitySimulationJobOptions.fromJson(value);
        case 'CreateDeliverabilityTestOptions':
          return CreateDeliverabilityTestOptions.fromJson(value);
        case 'CreateDevicePreviewFeedbackOptions':
          return CreateDevicePreviewFeedbackOptions.fromJson(value);
        case 'CreateDevicePreviewFolderOptions':
          return CreateDevicePreviewFolderOptions.fromJson(value);
        case 'CreateDevicePreviewHtmlImportOptions':
          return CreateDevicePreviewHtmlImportOptions.fromJson(value);
        case 'CreateDevicePreviewImportOptions':
          return CreateDevicePreviewImportOptions.fromJson(value);
        case 'CreateDevicePreviewIngestAddressOptions':
          return CreateDevicePreviewIngestAddressOptions.fromJson(value);
        case 'CreateDevicePreviewOptions':
          return CreateDevicePreviewOptions.fromJson(value);
        case 'CreateDevicePreviewProfileOptions':
          return CreateDevicePreviewProfileOptions.fromJson(value);
        case 'CreateDevicePreviewQaOptions':
          return CreateDevicePreviewQaOptions.fromJson(value);
        case 'CreateDevicePreviewRunResult':
          return CreateDevicePreviewRunResult.fromJson(value);
        case 'CreateDevicePreviewShareLinkOptions':
          return CreateDevicePreviewShareLinkOptions.fromJson(value);
        case 'CreateDomainMonitorAlertSinkOptions':
          return CreateDomainMonitorAlertSinkOptions.fromJson(value);
        case 'CreateDomainMonitorOptions':
          return CreateDomainMonitorOptions.fromJson(value);
        case 'CreateDomainOptions':
          return CreateDomainOptions.fromJson(value);
        case 'CreateEmailAuditOptions':
          return CreateEmailAuditOptions.fromJson(value);
        case 'CreateEmailWarmupProgramOptions':
          return CreateEmailWarmupProgramOptions.fromJson(value);
        case 'CreateEmergencyAddressOptions':
          return CreateEmergencyAddressOptions.fromJson(value);
        case 'CreateFreeInboxOptions':
          return CreateFreeInboxOptions.fromJson(value);
        case 'CreateGroupOptions':
          return CreateGroupOptions.fromJson(value);
        case 'CreateInboxDto':
          return CreateInboxDto.fromJson(value);
        case 'CreateInboxForwarderOptions':
          return CreateInboxForwarderOptions.fromJson(value);
        case 'CreateInboxPlacementTestOptions':
          return CreateInboxPlacementTestOptions.fromJson(value);
        case 'CreateInboxReplierOptions':
          return CreateInboxReplierOptions.fromJson(value);
        case 'CreateInboxRetentionPolicyForAccountOptions':
          return CreateInboxRetentionPolicyForAccountOptions.fromJson(value);
        case 'CreateInboxRetentionPolicyOptions':
          return CreateInboxRetentionPolicyOptions.fromJson(value);
        case 'CreatePhoneNumberOptions':
          return CreatePhoneNumberOptions.fromJson(value);
        case 'CreatePhonePoolOptions':
          return CreatePhonePoolOptions.fromJson(value);
        case 'CreatePhoneProvisioningJobItemOptions':
          return CreatePhoneProvisioningJobItemOptions.fromJson(value);
        case 'CreatePhoneProvisioningJobOptions':
          return CreatePhoneProvisioningJobOptions.fromJson(value);
        case 'CreatePortalOptions':
          return CreatePortalOptions.fromJson(value);
        case 'CreatePortalUserOptions':
          return CreatePortalUserOptions.fromJson(value);
        case 'CreatePostmasterConnectionOptions':
          return CreatePostmasterConnectionOptions.fromJson(value);
        case 'CreatePostmasterConnectionResult':
          return CreatePostmasterConnectionResult.fromJson(value);
        case 'CreatePublicDeviceRenderTestOptions':
          return CreatePublicDeviceRenderTestOptions.fromJson(value);
        case 'CreatePublicSpamTestOptions':
          return CreatePublicSpamTestOptions.fromJson(value);
        case 'CreateRulesetOptions':
          return CreateRulesetOptions.fromJson(value);
        case 'CreateSendingConnectionOptions':
          return CreateSendingConnectionOptions.fromJson(value);
        case 'CreateTemplateOptions':
          return CreateTemplateOptions.fromJson(value);
        case 'CreateTotpDeviceBase32SecretKeyOptions':
          return CreateTotpDeviceBase32SecretKeyOptions.fromJson(value);
        case 'CreateTotpDeviceCustomOptions':
          return CreateTotpDeviceCustomOptions.fromJson(value);
        case 'CreateTotpDeviceOtpAuthUrlOptions':
          return CreateTotpDeviceOtpAuthUrlOptions.fromJson(value);
        case 'CreateTrackingPixelOptions':
          return CreateTrackingPixelOptions.fromJson(value);
        case 'CreateWebhookOptions':
          return CreateWebhookOptions.fromJson(value);
        case 'CreatedFreeInboxDto':
          return CreatedFreeInboxDto.fromJson(value);
        case 'CurrentPeriodDto':
          return CurrentPeriodDto.fromJson(value);
        case 'DNSLookupOptions':
          return DNSLookupOptions.fromJson(value);
        case 'DNSLookupResult':
          return DNSLookupResult.fromJson(value);
        case 'DNSLookupResults':
          return DNSLookupResults.fromJson(value);
        case 'DNSLookupsOptions':
          return DNSLookupsOptions.fromJson(value);
        case 'DeferAgentWorkItemOptions':
          return DeferAgentWorkItemOptions.fromJson(value);
        case 'DeleteDevicePreviewFolderResult':
          return DeleteDevicePreviewFolderResult.fromJson(value);
        case 'DeleteDevicePreviewProfileResult':
          return DeleteDevicePreviewProfileResult.fromJson(value);
        case 'DeleteDevicePreviewRunResult':
          return DeleteDevicePreviewRunResult.fromJson(value);
        case 'DeleteDevicePreviewShareLinkResult':
          return DeleteDevicePreviewShareLinkResult.fromJson(value);
        case 'DeleteResult':
          return DeleteResult.fromJson(value);
        case 'DeliverabilityAnalyticsRunDto':
          return DeliverabilityAnalyticsRunDto.fromJson(value);
        case 'DeliverabilityAnalyticsSeriesDto':
          return DeliverabilityAnalyticsSeriesDto.fromJson(value);
        case 'DeliverabilityAnalyticsSeriesPointDto':
          return DeliverabilityAnalyticsSeriesPointDto.fromJson(value);
        case 'DeliverabilityAnalyticsSummaryDto':
          return DeliverabilityAnalyticsSummaryDto.fromJson(value);
        case 'DeliverabilityEntityResultDto':
          return DeliverabilityEntityResultDto.fromJson(value);
        case 'DeliverabilityEntityResultPageDto':
          return DeliverabilityEntityResultPageDto.fromJson(value);
        case 'DeliverabilityExpectation':
          return DeliverabilityExpectation.fromJson(value);
        case 'DeliverabilityExpectationResultDto':
          return DeliverabilityExpectationResultDto.fromJson(value);
        case 'DeliverabilityFailureEntityHotspotDto':
          return DeliverabilityFailureEntityHotspotDto.fromJson(value);
        case 'DeliverabilityFailureHotspotsDto':
          return DeliverabilityFailureHotspotsDto.fromJson(value);
        case 'DeliverabilityFailurePhoneDimensionHotspotDto':
          return DeliverabilityFailurePhoneDimensionHotspotDto.fromJson(value);
        case 'DeliverabilityPollStatusResultDto':
          return DeliverabilityPollStatusResultDto.fromJson(value);
        case 'DeliverabilitySelectorOptions':
          return DeliverabilitySelectorOptions.fromJson(value);
        case 'DeliverabilitySimulationEmailOptions':
          return DeliverabilitySimulationEmailOptions.fromJson(value);
        case 'DeliverabilitySimulationJobConfigDto':
          return DeliverabilitySimulationJobConfigDto.fromJson(value);
        case 'DeliverabilitySimulationJobDto':
          return DeliverabilitySimulationJobDto.fromJson(value);
        case 'DeliverabilitySimulationJobErrorSummaryDto':
          return DeliverabilitySimulationJobErrorSummaryDto.fromJson(value);
        case 'DeliverabilitySimulationJobEventDto':
          return DeliverabilitySimulationJobEventDto.fromJson(value);
        case 'DeliverabilitySimulationJobEventPageDto':
          return DeliverabilitySimulationJobEventPageDto.fromJson(value);
        case 'DeliverabilitySimulationJobTopErrorDto':
          return DeliverabilitySimulationJobTopErrorDto.fromJson(value);
        case 'DeliverabilitySimulationSmsOptions':
          return DeliverabilitySimulationSmsOptions.fromJson(value);
        case 'DeliverabilityTestDto':
          return DeliverabilityTestDto.fromJson(value);
        case 'DeliverabilityTestPageDto':
          return DeliverabilityTestPageDto.fromJson(value);
        case 'DeliverySenderCapacityDto':
          return DeliverySenderCapacityDto.fromJson(value);
        case 'DeliveryStatusDto':
          return DeliveryStatusDto.fromJson(value);
        case 'DescribeDomainOptions':
          return DescribeDomainOptions.fromJson(value);
        case 'DescribeMailServerDomainResult':
          return DescribeMailServerDomainResult.fromJson(value);
        case 'DevicePreviewAccountSettingsDto':
          return DevicePreviewAccountSettingsDto.fromJson(value);
        case 'DevicePreviewEmailSubmissionDto':
          return DevicePreviewEmailSubmissionDto.fromJson(value);
        case 'DevicePreviewEmailSubmissionWaitResult':
          return DevicePreviewEmailSubmissionWaitResult.fromJson(value);
        case 'DevicePreviewFeedbackDto':
          return DevicePreviewFeedbackDto.fromJson(value);
        case 'DevicePreviewFeedbackListDto':
          return DevicePreviewFeedbackListDto.fromJson(value);
        case 'DevicePreviewFolderDto':
          return DevicePreviewFolderDto.fromJson(value);
        case 'DevicePreviewIngestAddressDto':
          return DevicePreviewIngestAddressDto.fromJson(value);
        case 'DevicePreviewIngestDomainDto':
          return DevicePreviewIngestDomainDto.fromJson(value);
        case 'DevicePreviewIngestRunWaitResult':
          return DevicePreviewIngestRunWaitResult.fromJson(value);
        case 'DevicePreviewNativeTargetAvailabilityDto':
          return DevicePreviewNativeTargetAvailabilityDto.fromJson(value);
        case 'DevicePreviewNativeTargetAvailabilityListDto':
          return DevicePreviewNativeTargetAvailabilityListDto.fromJson(value);
        case 'DevicePreviewNativeTargetDto':
          return DevicePreviewNativeTargetDto.fromJson(value);
        case 'DevicePreviewNativeTargetListDto':
          return DevicePreviewNativeTargetListDto.fromJson(value);
        case 'DevicePreviewProfileDto':
          return DevicePreviewProfileDto.fromJson(value);
        case 'DevicePreviewProviderProgressDto':
          return DevicePreviewProviderProgressDto.fromJson(value);
        case 'DevicePreviewQaBundleDto':
          return DevicePreviewQaBundleDto.fromJson(value);
        case 'DevicePreviewRunDto':
          return DevicePreviewRunDto.fromJson(value);
        case 'DevicePreviewRunResultsDto':
          return DevicePreviewRunResultsDto.fromJson(value);
        case 'DevicePreviewRunThumbnailDto':
          return DevicePreviewRunThumbnailDto.fromJson(value);
        case 'DevicePreviewRunWaitResult':
          return DevicePreviewRunWaitResult.fromJson(value);
        case 'DevicePreviewScreenshotDto':
          return DevicePreviewScreenshotDto.fromJson(value);
        case 'DevicePreviewShareLinkDto':
          return DevicePreviewShareLinkDto.fromJson(value);
        case 'DevicePreviewSharedCommentDto':
          return DevicePreviewSharedCommentDto.fromJson(value);
        case 'DevicePreviewSharedResultDto':
          return DevicePreviewSharedResultDto.fromJson(value);
        case 'DevicePreviewSharedRunDto':
          return DevicePreviewSharedRunDto.fromJson(value);
        case 'DevicePreviewSharedScreenshotDto':
          return DevicePreviewSharedScreenshotDto.fromJson(value);
        case 'DevicePreviewSharedTargetDto':
          return DevicePreviewSharedTargetDto.fromJson(value);
        case 'DevicePreviewSourceEmailDto':
          return DevicePreviewSourceEmailDto.fromJson(value);
        case 'DevicePreviewTargetDto':
          return DevicePreviewTargetDto.fromJson(value);
        case 'DmarcReportMetadata':
          return DmarcReportMetadata.fromJson(value);
        case 'DmarcReportSourceSummary':
          return DmarcReportSourceSummary.fromJson(value);
        case 'DnsPropagationResolverResult':
          return DnsPropagationResolverResult.fromJson(value);
        case 'DomainDto':
          return DomainDto.fromJson(value);
        case 'DomainGroup':
          return DomainGroup.fromJson(value);
        case 'DomainGroupsDto':
          return DomainGroupsDto.fromJson(value);
        case 'DomainHealthEventDto':
          return DomainHealthEventDto.fromJson(value);
        case 'DomainInformation':
          return DomainInformation.fromJson(value);
        case 'DomainIssuesDto':
          return DomainIssuesDto.fromJson(value);
        case 'DomainMonitorAlertSinkDto':
          return DomainMonitorAlertSinkDto.fromJson(value);
        case 'DomainMonitorDkimSignatureDto':
          return DomainMonitorDkimSignatureDto.fromJson(value);
        case 'DomainMonitorDto':
          return DomainMonitorDto.fromJson(value);
        case 'DomainMonitorEmailVerificationDto':
          return DomainMonitorEmailVerificationDto.fromJson(value);
        case 'DomainMonitorInsightsDto':
          return DomainMonitorInsightsDto.fromJson(value);
        case 'DomainMonitorObservedAuthSampleDto':
          return DomainMonitorObservedAuthSampleDto.fromJson(value);
        case 'DomainMonitorRunComparisonDto':
          return DomainMonitorRunComparisonDto.fromJson(value);
        case 'DomainMonitorRunDto':
          return DomainMonitorRunDto.fromJson(value);
        case 'DomainMonitorRunDueResult':
          return DomainMonitorRunDueResult.fromJson(value);
        case 'DomainMonitorRunEvidenceDto':
          return DomainMonitorRunEvidenceDto.fromJson(value);
        case 'DomainMonitorRunNowResult':
          return DomainMonitorRunNowResult.fromJson(value);
        case 'DomainMonitorSeriesDto':
          return DomainMonitorSeriesDto.fromJson(value);
        case 'DomainMonitorSeriesPointDto':
          return DomainMonitorSeriesPointDto.fromJson(value);
        case 'DomainMonitorSummaryDto':
          return DomainMonitorSummaryDto.fromJson(value);
        case 'DomainNameRecord':
          return DomainNameRecord.fromJson(value);
        case 'DomainPreview':
          return DomainPreview.fromJson(value);
        case 'DomainRegionGroup':
          return DomainRegionGroup.fromJson(value);
        case 'DomainRegionGroupsDto':
          return DomainRegionGroupsDto.fromJson(value);
        case 'DomainRegionInformation':
          return DomainRegionInformation.fromJson(value);
        case 'DownloadAttachmentDto':
          return DownloadAttachmentDto.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'EmailAnalysis':
          return EmailAnalysis.fromJson(value);
        case 'EmailAuditAnalysisResult':
          return EmailAuditAnalysisResult.fromJson(value);
        case 'EmailAuditCheck':
          return EmailAuditCheck.fromJson(value);
        case 'EmailAuditComparisonDto':
          return EmailAuditComparisonDto.fromJson(value);
        case 'EmailAuditDto':
          return EmailAuditDto.fromJson(value);
        case 'EmailAuditSpellingIssue':
          return EmailAuditSpellingIssue.fromJson(value);
        case 'EmailAuditUrlIssue':
          return EmailAuditUrlIssue.fromJson(value);
        case 'EmailAvailableResult':
          return EmailAvailableResult.fromJson(value);
        case 'EmailBlacklistDomainResult':
          return EmailBlacklistDomainResult.fromJson(value);
        case 'EmailBlacklistIpResult':
          return EmailBlacklistIpResult.fromJson(value);
        case 'EmailBlacklistListingResult':
          return EmailBlacklistListingResult.fromJson(value);
        case 'EmailContentMatchResult':
          return EmailContentMatchResult.fromJson(value);
        case 'EmailContentPartResult':
          return EmailContentPartResult.fromJson(value);
        case 'EmailDomainReputationOptions':
          return EmailDomainReputationOptions.fromJson(value);
        case 'EmailDomainReputationResult':
          return EmailDomainReputationResult.fromJson(value);
        case 'EmailDraftDto':
          return EmailDraftDto.fromJson(value);
        case 'EmailDraftProjection':
          return EmailDraftProjection.fromJson(value);
        case 'EmailFeatureCategoryName':
          return EmailFeatureCategoryName.fromJson(value);
        case 'EmailFeatureFamilyName':
          return EmailFeatureFamilyName.fromJson(value);
        case 'EmailFeatureFamilyStatistics':
          return EmailFeatureFamilyStatistics.fromJson(value);
        case 'EmailFeatureNames':
          return EmailFeatureNames.fromJson(value);
        case 'EmailFeatureOverview':
          return EmailFeatureOverview.fromJson(value);
        case 'EmailFeaturePlatformName':
          return EmailFeaturePlatformName.fromJson(value);
        case 'EmailFeaturePlatformStatistics':
          return EmailFeaturePlatformStatistics.fromJson(value);
        case 'EmailFeatureSupportFlags':
          return EmailFeatureSupportFlags.fromJson(value);
        case 'EmailFeatureSupportResult':
          return EmailFeatureSupportResult.fromJson(value);
        case 'EmailFeatureSupportStatusPercentage':
          return EmailFeatureSupportStatusPercentage.fromJson(value);
        case 'EmailFeatureVersionStatistics':
          return EmailFeatureVersionStatistics.fromJson(value);
        case 'EmailHeaderAnalysisSummary':
          return EmailHeaderAnalysisSummary.fromJson(value);
        case 'EmailHeaderReceivedHop':
          return EmailHeaderReceivedHop.fromJson(value);
        case 'EmailHtmlDto':
          return EmailHtmlDto.fromJson(value);
        case 'EmailIntelligenceListResult':
          return EmailIntelligenceListResult.fromJson(value);
        case 'EmailIntelligenceOptions':
          return EmailIntelligenceOptions.fromJson(value);
        case 'EmailIntelligenceResultDto':
          return EmailIntelligenceResultDto.fromJson(value);
        case 'EmailIntelligenceScoreBreakdownDto':
          return EmailIntelligenceScoreBreakdownDto.fromJson(value);
        case 'EmailIntelligenceSignalsDto':
          return EmailIntelligenceSignalsDto.fromJson(value);
        case 'EmailIntelligenceTestsOptions':
          return EmailIntelligenceTestsOptions.fromJson(value);
        case 'EmailLinksResult':
          return EmailLinksResult.fromJson(value);
        case 'EmailPreview':
          return EmailPreview.fromJson(value);
        case 'EmailPreviewHtmlDto':
          return EmailPreviewHtmlDto.fromJson(value);
        case 'EmailPreviewUrls':
          return EmailPreviewUrls.fromJson(value);
        case 'EmailProjection':
          return EmailProjection.fromJson(value);
        case 'EmailRecipients':
          return EmailRecipients.fromJson(value);
        case 'EmailRecipientsProjection':
          return EmailRecipientsProjection.fromJson(value);
        case 'EmailScreenshotResult':
          return EmailScreenshotResult.fromJson(value);
        case 'EmailSignature':
          return EmailSignature.fromJson(value);
        case 'EmailSignatureParseResult':
          return EmailSignatureParseResult.fromJson(value);
        case 'EmailTextLinesResult':
          return EmailTextLinesResult.fromJson(value);
        case 'EmailThreadDto':
          return EmailThreadDto.fromJson(value);
        case 'EmailThreadItem':
          return EmailThreadItem.fromJson(value);
        case 'EmailThreadItemsDto':
          return EmailThreadItemsDto.fromJson(value);
        case 'EmailThreadProjection':
          return EmailThreadProjection.fromJson(value);
        case 'EmailValidationRequestDto':
          return EmailValidationRequestDto.fromJson(value);
        case 'EmailVerificationResult':
          return EmailVerificationResult.fromJson(value);
        case 'EmailWarmupContentOptions':
          return EmailWarmupContentOptions.fromJson(value);
        case 'EmailWarmupDailyActivityDto':
          return EmailWarmupDailyActivityDto.fromJson(value);
        case 'EmailWarmupDomainHealthDto':
          return EmailWarmupDomainHealthDto.fromJson(value);
        case 'EmailWarmupOverviewDto':
          return EmailWarmupOverviewDto.fromJson(value);
        case 'EmailWarmupPacingDto':
          return EmailWarmupPacingDto.fromJson(value);
        case 'EmailWarmupPlacementCheckDto':
          return EmailWarmupPlacementCheckDto.fromJson(value);
        case 'EmailWarmupPlacementDeltaDto':
          return EmailWarmupPlacementDeltaDto.fromJson(value);
        case 'EmailWarmupPostmasterSignalsDto':
          return EmailWarmupPostmasterSignalsDto.fromJson(value);
        case 'EmailWarmupProgramAnalyticsDto':
          return EmailWarmupProgramAnalyticsDto.fromJson(value);
        case 'EmailWarmupProgramCommandOptions':
          return EmailWarmupProgramCommandOptions.fromJson(value);
        case 'EmailWarmupProgramDto':
          return EmailWarmupProgramDto.fromJson(value);
        case 'EmailWarmupProgramPageDto':
          return EmailWarmupProgramPageDto.fromJson(value);
        case 'EmailWarmupProgramProgressDto':
          return EmailWarmupProgramProgressDto.fromJson(value);
        case 'EmailWarmupProviderPlacementDto':
          return EmailWarmupProviderPlacementDto.fromJson(value);
        case 'EmailWarmupReadinessDto':
          return EmailWarmupReadinessDto.fromJson(value);
        case 'EmailWarmupSendSlotDto':
          return EmailWarmupSendSlotDto.fromJson(value);
        case 'EmailWarmupSendSlotPageDto':
          return EmailWarmupSendSlotPageDto.fromJson(value);
        case 'EmailWarmupTodayDto':
          return EmailWarmupTodayDto.fromJson(value);
        case 'EmailWarmupUsageSummaryDto':
          return EmailWarmupUsageSummaryDto.fromJson(value);
        case 'EmergencyAddress':
          return EmergencyAddress.fromJson(value);
        case 'EmergencyAddressDto':
          return EmergencyAddressDto.fromJson(value);
        case 'EmptyResponseDto':
          return EmptyResponseDto.fromJson(value);
        case 'EntityAutomationItemProjection':
          return EntityAutomationItemProjection.fromJson(value);
        case 'EntityEventItemProjection':
          return EntityEventItemProjection.fromJson(value);
        case 'EntityFavouriteItemProjection':
          return EntityFavouriteItemProjection.fromJson(value);
        case 'EnvironmentAccountLinkDto':
          return EnvironmentAccountLinkDto.fromJson(value);
        case 'EnvironmentAccountsDto':
          return EnvironmentAccountsDto.fromJson(value);
        case 'ExchangePostmasterCodeOptions':
          return ExchangePostmasterCodeOptions.fromJson(value);
        case 'ExpirationDefaults':
          return ExpirationDefaults.fromJson(value);
        case 'ExpiredInboxDto':
          return ExpiredInboxDto.fromJson(value);
        case 'ExpiredInboxRecordProjection':
          return ExpiredInboxRecordProjection.fromJson(value);
        case 'ExportLink':
          return ExportLink.fromJson(value);
        case 'ExportOptions':
          return ExportOptions.fromJson(value);
        case 'ExportTransformerOptions':
          return ExportTransformerOptions.fromJson(value);
        case 'ExportTransformerResponse':
          return ExportTransformerResponse.fromJson(value);
        case 'ExportTransformerResultJobDto':
          return ExportTransformerResultJobDto.fromJson(value);
        case 'ExtractAIMessageOptions':
          return ExtractAIMessageOptions.fromJson(value);
        case 'ExtractAttachmentTextOptions':
          return ExtractAttachmentTextOptions.fromJson(value);
        case 'ExtractAttachmentTextResult':
          return ExtractAttachmentTextResult.fromJson(value);
        case 'ExtractCodesOptions':
          return ExtractCodesOptions.fromJson(value);
        case 'ExtractCodesResult':
          return ExtractCodesResult.fromJson(value);
        case 'FakeEmailDto':
          return FakeEmailDto.fromJson(value);
        case 'FakeEmailPreview':
          return FakeEmailPreview.fromJson(value);
        case 'FakeEmailResult':
          return FakeEmailResult.fromJson(value);
        case 'FilterBouncedRecipientsOptions':
          return FilterBouncedRecipientsOptions.fromJson(value);
        case 'FilterBouncedRecipientsResult':
          return FilterBouncedRecipientsResult.fromJson(value);
        case 'FlushExpiredInboxesResult':
          return FlushExpiredInboxesResult.fromJson(value);
        case 'ForwardEmailOptions':
          return ForwardEmailOptions.fromJson(value);
        case 'FreeInboxDto':
          return FreeInboxDto.fromJson(value);
        case 'FreeInboxMessageDto':
          return FreeInboxMessageDto.fromJson(value);
        case 'GenerateBimiRecordOptions':
          return GenerateBimiRecordOptions.fromJson(value);
        case 'GenerateBimiRecordResults':
          return GenerateBimiRecordResults.fromJson(value);
        case 'GenerateDmarcRecordOptions':
          return GenerateDmarcRecordOptions.fromJson(value);
        case 'GenerateDmarcRecordResults':
          return GenerateDmarcRecordResults.fromJson(value);
        case 'GenerateMtaStsRecordOptions':
          return GenerateMtaStsRecordOptions.fromJson(value);
        case 'GenerateMtaStsRecordResults':
          return GenerateMtaStsRecordResults.fromJson(value);
        case 'GenerateSpfRecordOptions':
          return GenerateSpfRecordOptions.fromJson(value);
        case 'GenerateSpfRecordResults':
          return GenerateSpfRecordResults.fromJson(value);
        case 'GenerateStructuredContentAttachmentOptions':
          return GenerateStructuredContentAttachmentOptions.fromJson(value);
        case 'GenerateStructuredContentEmailOptions':
          return GenerateStructuredContentEmailOptions.fromJson(value);
        case 'GenerateStructuredContentSmsOptions':
          return GenerateStructuredContentSmsOptions.fromJson(value);
        case 'GenerateTlsReportingRecordOptions':
          return GenerateTlsReportingRecordOptions.fromJson(value);
        case 'GenerateTlsReportingRecordResults':
          return GenerateTlsReportingRecordResults.fromJson(value);
        case 'GetEmailScreenshotOptions':
          return GetEmailScreenshotOptions.fromJson(value);
        case 'GetNextAgentWorkItemOptions':
          return GetNextAgentWorkItemOptions.fromJson(value);
        case 'GetOrCreatePhonePoolOptions':
          return GetOrCreatePhonePoolOptions.fromJson(value);
        case 'GravatarUrl':
          return GravatarUrl.fromJson(value);
        case 'GroupContactsDto':
          return GroupContactsDto.fromJson(value);
        case 'GroupDto':
          return GroupDto.fromJson(value);
        case 'GroupProjection':
          return GroupProjection.fromJson(value);
        case 'GuestPortalDto':
          return GuestPortalDto.fromJson(value);
        case 'GuestPortalUserCreateDto':
          return GuestPortalUserCreateDto.fromJson(value);
        case 'GuestPortalUserDto':
          return GuestPortalUserDto.fromJson(value);
        case 'GuestPortalUserProjection':
          return GuestPortalUserProjection.fromJson(value);
        case 'HTMLValidationResult':
          return HTMLValidationResult.fromJson(value);
        case 'HomeExperienceChecklistDto':
          return HomeExperienceChecklistDto.fromJson(value);
        case 'HomeExperienceChecklistStepDto':
          return HomeExperienceChecklistStepDto.fromJson(value);
        case 'HomeExperienceDto':
          return HomeExperienceDto.fromJson(value);
        case 'HomeExperienceFirstValueDto':
          return HomeExperienceFirstValueDto.fromJson(value);
        case 'HomeExperienceUpgradeContextDto':
          return HomeExperienceUpgradeContextDto.fromJson(value);
        case 'IPAddressResult':
          return IPAddressResult.fromJson(value);
        case 'ImageIssue':
          return ImageIssue.fromJson(value);
        case 'ImapAccessDetails':
          return ImapAccessDetails.fromJson(value);
        case 'ImapEmailProjection':
          return ImapEmailProjection.fromJson(value);
        case 'ImapFlagOperationOptions':
          return ImapFlagOperationOptions.fromJson(value);
        case 'ImapMailboxStatus':
          return ImapMailboxStatus.fromJson(value);
        case 'ImapServerFetchItem':
          return ImapServerFetchItem.fromJson(value);
        case 'ImapServerFetchResult':
          return ImapServerFetchResult.fromJson(value);
        case 'ImapServerGetResult':
          return ImapServerGetResult.fromJson(value);
        case 'ImapServerListOptions':
          return ImapServerListOptions.fromJson(value);
        case 'ImapServerListResult':
          return ImapServerListResult.fromJson(value);
        case 'ImapServerMailboxResult':
          return ImapServerMailboxResult.fromJson(value);
        case 'ImapServerSearchOptions':
          return ImapServerSearchOptions.fromJson(value);
        case 'ImapServerSearchResult':
          return ImapServerSearchResult.fromJson(value);
        case 'ImapServerStatusOptions':
          return ImapServerStatusOptions.fromJson(value);
        case 'ImapServerStatusResult':
          return ImapServerStatusResult.fromJson(value);
        case 'ImapSmtpAccessDetails':
          return ImapSmtpAccessDetails.fromJson(value);
        case 'ImapSmtpAccessServers':
          return ImapSmtpAccessServers.fromJson(value);
        case 'ImapUpdateFlagsOptions':
          return ImapUpdateFlagsOptions.fromJson(value);
        case 'ImportEmailIntoInboxMultipartRequest':
          return ImportEmailIntoInboxMultipartRequest.fromJson(value);
        case 'ImportEmailOptions':
          return ImportEmailOptions.fromJson(value);
        case 'InboxAutomationMatchOption':
          return InboxAutomationMatchOption.fromJson(value);
        case 'InboxAutomationMatchOptions':
          return InboxAutomationMatchOptions.fromJson(value);
        case 'InboxByEmailAddressResult':
          return InboxByEmailAddressResult.fromJson(value);
        case 'InboxByNameResult':
          return InboxByNameResult.fromJson(value);
        case 'InboxDto':
          return InboxDto.fromJson(value);
        case 'InboxExistsDto':
          return InboxExistsDto.fromJson(value);
        case 'InboxForwarderDto':
          return InboxForwarderDto.fromJson(value);
        case 'InboxForwarderEventDto':
          return InboxForwarderEventDto.fromJson(value);
        case 'InboxForwarderEventProjection':
          return InboxForwarderEventProjection.fromJson(value);
        case 'InboxForwarderTestOptions':
          return InboxForwarderTestOptions.fromJson(value);
        case 'InboxForwarderTestResult':
          return InboxForwarderTestResult.fromJson(value);
        case 'InboxIdItem':
          return InboxIdItem.fromJson(value);
        case 'InboxIdsResult':
          return InboxIdsResult.fromJson(value);
        case 'InboxPlacementAnalysisBundleDto':
          return InboxPlacementAnalysisBundleDto.fromJson(value);
        case 'InboxPlacementAnalysisDetailTableDto':
          return InboxPlacementAnalysisDetailTableDto.fromJson(value);
        case 'InboxPlacementAnalysisItemDto':
          return InboxPlacementAnalysisItemDto.fromJson(value);
        case 'InboxPlacementAnalyticsBreakdownDto':
          return InboxPlacementAnalyticsBreakdownDto.fromJson(value);
        case 'InboxPlacementAnalyticsGroupSeriesDto':
          return InboxPlacementAnalyticsGroupSeriesDto.fromJson(value);
        case 'InboxPlacementAnalyticsRunDto':
          return InboxPlacementAnalyticsRunDto.fromJson(value);
        case 'InboxPlacementAnalyticsSeriesDto':
          return InboxPlacementAnalyticsSeriesDto.fromJson(value);
        case 'InboxPlacementAnalyticsSeriesPointDto':
          return InboxPlacementAnalyticsSeriesPointDto.fromJson(value);
        case 'InboxPlacementAnalyticsSummaryDto':
          return InboxPlacementAnalyticsSummaryDto.fromJson(value);
        case 'InboxPlacementDeliverabilitySummaryDto':
          return InboxPlacementDeliverabilitySummaryDto.fromJson(value);
        case 'InboxPlacementDomainMonitorSummaryDto':
          return InboxPlacementDomainMonitorSummaryDto.fromJson(value);
        case 'InboxPlacementFolderBreakdownDto':
          return InboxPlacementFolderBreakdownDto.fromJson(value);
        case 'InboxPlacementProviderAnalysisCheckDto':
          return InboxPlacementProviderAnalysisCheckDto.fromJson(value);
        case 'InboxPlacementProviderAnalysisDto':
          return InboxPlacementProviderAnalysisDto.fromJson(value);
        case 'InboxPlacementProviderAnalysisOptionsDto':
          return InboxPlacementProviderAnalysisOptionsDto.fromJson(value);
        case 'InboxPlacementProviderAnalysisPreviewDto':
          return InboxPlacementProviderAnalysisPreviewDto.fromJson(value);
        case 'InboxPlacementProviderAnalysisSectionDto':
          return InboxPlacementProviderAnalysisSectionDto.fromJson(value);
        case 'InboxPlacementProviderBreakdownDto':
          return InboxPlacementProviderBreakdownDto.fromJson(value);
        case 'InboxPlacementPublicShareDto':
          return InboxPlacementPublicShareDto.fromJson(value);
        case 'InboxPlacementPublicTestRunDto':
          return InboxPlacementPublicTestRunDto.fromJson(value);
        case 'InboxPlacementRemoteResultsDto':
          return InboxPlacementRemoteResultsDto.fromJson(value);
        case 'InboxPlacementRemoteTestSummaryDto':
          return InboxPlacementRemoteTestSummaryDto.fromJson(value);
        case 'InboxPlacementSenderBreakdownDto':
          return InboxPlacementSenderBreakdownDto.fromJson(value);
        case 'InboxPlacementSpamScoreDto':
          return InboxPlacementSpamScoreDto.fromJson(value);
        case 'InboxPlacementTargetResultDto':
          return InboxPlacementTargetResultDto.fromJson(value);
        case 'InboxPlacementTestResultsDto':
          return InboxPlacementTestResultsDto.fromJson(value);
        case 'InboxPlacementTestRunDto':
          return InboxPlacementTestRunDto.fromJson(value);
        case 'InboxPreview':
          return InboxPreview.fromJson(value);
        case 'InboxReplierDto':
          return InboxReplierDto.fromJson(value);
        case 'InboxReplierEventProjection':
          return InboxReplierEventProjection.fromJson(value);
        case 'InboxRetentionPoliciesDto':
          return InboxRetentionPoliciesDto.fromJson(value);
        case 'InboxRetentionPolicyDto':
          return InboxRetentionPolicyDto.fromJson(value);
        case 'InboxRetentionPolicyOptionalDto':
          return InboxRetentionPolicyOptionalDto.fromJson(value);
        case 'InboxRetentionPolicyRunDto':
          return InboxRetentionPolicyRunDto.fromJson(value);
        case 'InboxRulesetTestResult':
          return InboxRulesetTestResult.fromJson(value);
        case 'InvokeTransformerOptions':
          return InvokeTransformerOptions.fromJson(value);
        case 'JSONSchemaDto':
          return JSONSchemaDto.fromJson(value);
        case 'JsonNode':
          return JsonNode.fromJson(value);
        case 'LinkIssue':
          return LinkIssue.fromJson(value);
        case 'ListUnsubscribeRecipientProjection':
          return ListUnsubscribeRecipientProjection.fromJson(value);
        case 'LookupBimiDomainOptions':
          return LookupBimiDomainOptions.fromJson(value);
        case 'LookupBimiDomainResults':
          return LookupBimiDomainResults.fromJson(value);
        case 'LookupDkimDomainOptions':
          return LookupDkimDomainOptions.fromJson(value);
        case 'LookupDkimDomainResults':
          return LookupDkimDomainResults.fromJson(value);
        case 'LookupDmarcDomainOptions':
          return LookupDmarcDomainOptions.fromJson(value);
        case 'LookupDmarcDomainResults':
          return LookupDmarcDomainResults.fromJson(value);
        case 'LookupMtaStsDomainOptions':
          return LookupMtaStsDomainOptions.fromJson(value);
        case 'LookupMtaStsDomainResults':
          return LookupMtaStsDomainResults.fromJson(value);
        case 'LookupMxRecordsOptions':
          return LookupMxRecordsOptions.fromJson(value);
        case 'LookupMxRecordsResults':
          return LookupMxRecordsResults.fromJson(value);
        case 'LookupPtrOptions':
          return LookupPtrOptions.fromJson(value);
        case 'LookupPtrResults':
          return LookupPtrResults.fromJson(value);
        case 'LookupSpfDomainOptions':
          return LookupSpfDomainOptions.fromJson(value);
        case 'LookupSpfDomainResults':
          return LookupSpfDomainResults.fromJson(value);
        case 'LookupTlsReportingDomainOptions':
          return LookupTlsReportingDomainOptions.fromJson(value);
        case 'LookupTlsReportingDomainResults':
          return LookupTlsReportingDomainResults.fromJson(value);
        case 'MatchOption':
          return MatchOption.fromJson(value);
        case 'MatchOptions':
          return MatchOptions.fromJson(value);
        case 'McpOAuthClientRegistrationOptions':
          return McpOAuthClientRegistrationOptions.fromJson(value);
        case 'MissedEmailDto':
          return MissedEmailDto.fromJson(value);
        case 'MissedEmailProjection':
          return MissedEmailProjection.fromJson(value);
        case 'MissedSmsDto':
          return MissedSmsDto.fromJson(value);
        case 'MissedSmsProjection':
          return MissedSmsProjection.fromJson(value);
        case 'MoveDevicePreviewRunsOptions':
          return MoveDevicePreviewRunsOptions.fromJson(value);
        case 'MoveDevicePreviewRunsResult':
          return MoveDevicePreviewRunsResult.fromJson(value);
        case 'NameServerRecord':
          return NameServerRecord.fromJson(value);
        case 'NewFakeEmailAddressResult':
          return NewFakeEmailAddressResult.fromJson(value);
        case 'OptInConsentOptions':
          return OptInConsentOptions.fromJson(value);
        case 'OptInConsentSendResult':
          return OptInConsentSendResult.fromJson(value);
        case 'OptInIdentityProjection':
          return OptInIdentityProjection.fromJson(value);
        case 'OptInSendingConsentDto':
          return OptInSendingConsentDto.fromJson(value);
        case 'OptionalConnectorDto':
          return OptionalConnectorDto.fromJson(value);
        case 'OptionalConnectorImapConnectionDto':
          return OptionalConnectorImapConnectionDto.fromJson(value);
        case 'OptionalConnectorSmtpConnectionDto':
          return OptionalConnectorSmtpConnectionDto.fromJson(value);
        case 'OptionalConnectorSyncSettingsDto':
          return OptionalConnectorSyncSettingsDto.fromJson(value);
        case 'OrganizationInboxProjection':
          return OrganizationInboxProjection.fromJson(value);
        case 'PageAITransformMappingProjection':
          return PageAITransformMappingProjection.fromJson(value);
        case 'PageAITransformProjection':
          return PageAITransformProjection.fromJson(value);
        case 'PageAITransformResultProjection':
          return PageAITransformResultProjection.fromJson(value);
        case 'PageAgentPhoneNumber':
          return PageAgentPhoneNumber.fromJson(value);
        case 'PageAlias':
          return PageAlias.fromJson(value);
        case 'PageAliasThreadProjection':
          return PageAliasThreadProjection.fromJson(value);
        case 'PageAttachmentEntity':
          return PageAttachmentEntity.fromJson(value);
        case 'PageBouncedEmail':
          return PageBouncedEmail.fromJson(value);
        case 'PageBouncedRecipients':
          return PageBouncedRecipients.fromJson(value);
        case 'PageComplaint':
          return PageComplaint.fromJson(value);
        case 'PageConnector':
          return PageConnector.fromJson(value);
        case 'PageConnectorEvents':
          return PageConnectorEvents.fromJson(value);
        case 'PageContactProjection':
          return PageContactProjection.fromJson(value);
        case 'PageDeliveryStatus':
          return PageDeliveryStatus.fromJson(value);
        case 'PageDevicePreviewRunProjection':
          return PageDevicePreviewRunProjection.fromJson(value);
        case 'PageEmailDraftProjection':
          return PageEmailDraftProjection.fromJson(value);
        case 'PageEmailPreview':
          return PageEmailPreview.fromJson(value);
        case 'PageEmailProjection':
          return PageEmailProjection.fromJson(value);
        case 'PageEmailThreadProjection':
          return PageEmailThreadProjection.fromJson(value);
        case 'PageEmailValidationRequest':
          return PageEmailValidationRequest.fromJson(value);
        case 'PageEntityAutomationItems':
          return PageEntityAutomationItems.fromJson(value);
        case 'PageEntityEventItems':
          return PageEntityEventItems.fromJson(value);
        case 'PageEntityFavouriteItems':
          return PageEntityFavouriteItems.fromJson(value);
        case 'PageExpiredInboxRecordProjection':
          return PageExpiredInboxRecordProjection.fromJson(value);
        case 'PageGroupProjection':
          return PageGroupProjection.fromJson(value);
        case 'PageGuestPortalUsers':
          return PageGuestPortalUsers.fromJson(value);
        case 'PageInboxForwarderDto':
          return PageInboxForwarderDto.fromJson(value);
        case 'PageInboxForwarderEvents':
          return PageInboxForwarderEvents.fromJson(value);
        case 'PageInboxProjection':
          return PageInboxProjection.fromJson(value);
        case 'PageInboxReplierDto':
          return PageInboxReplierDto.fromJson(value);
        case 'PageInboxReplierEvents':
          return PageInboxReplierEvents.fromJson(value);
        case 'PageInboxRetentionPolicyRunProjection':
          return PageInboxRetentionPolicyRunProjection.fromJson(value);
        case 'PageInboxTags':
          return PageInboxTags.fromJson(value);
        case 'PageListUnsubscribeRecipients':
          return PageListUnsubscribeRecipients.fromJson(value);
        case 'PageMissedEmailProjection':
          return PageMissedEmailProjection.fromJson(value);
        case 'PageMissedSmsProjection':
          return PageMissedSmsProjection.fromJson(value);
        case 'PageOptInIdentityProjection':
          return PageOptInIdentityProjection.fromJson(value);
        case 'PageOrganizationInboxProjection':
          return PageOrganizationInboxProjection.fromJson(value);
        case 'PagePhoneMessageThreadItemProjection':
          return PagePhoneMessageThreadItemProjection.fromJson(value);
        case 'PagePhoneMessageThreadProjection':
          return PagePhoneMessageThreadProjection.fromJson(value);
        case 'PagePhoneNumberProjection':
          return PagePhoneNumberProjection.fromJson(value);
        case 'PagePhoneNumberReleaseProjection':
          return PagePhoneNumberReleaseProjection.fromJson(value);
        case 'PagePlusAddressProjection':
          return PagePlusAddressProjection.fromJson(value);
        case 'PageReputationItems':
          return PageReputationItems.fromJson(value);
        case 'PageRulesetDto':
          return PageRulesetDto.fromJson(value);
        case 'PageScheduledJobs':
          return PageScheduledJobs.fromJson(value);
        case 'PageSentEmailProjection':
          return PageSentEmailProjection.fromJson(value);
        case 'PageSentEmailWithQueueProjection':
          return PageSentEmailWithQueueProjection.fromJson(value);
        case 'PageSentSmsProjection':
          return PageSentSmsProjection.fromJson(value);
        case 'PageSmsMessageMedia':
          return PageSmsMessageMedia.fromJson(value);
        case 'PageSmsProjection':
          return PageSmsProjection.fromJson(value);
        case 'PageSpamEmailProjection':
          return PageSpamEmailProjection.fromJson(value);
        case 'PageTableData':
          return PageTableData.fromJson(value);
        case 'PageTemplateProjection':
          return PageTemplateProjection.fromJson(value);
        case 'PageTotpDeviceProjection':
          return PageTotpDeviceProjection.fromJson(value);
        case 'PageTrackingPixelProjection':
          return PageTrackingPixelProjection.fromJson(value);
        case 'PageUnknownMissedEmailProjection':
          return PageUnknownMissedEmailProjection.fromJson(value);
        case 'PageWebhookEndpointProjection':
          return PageWebhookEndpointProjection.fromJson(value);
        case 'PageWebhookProjection':
          return PageWebhookProjection.fromJson(value);
        case 'PageWebhookResult':
          return PageWebhookResult.fromJson(value);
        case 'PageableObject':
          return PageableObject.fromJson(value);
        case 'Pagination':
          return Pagination.fromJson(value);
        case 'PhoneMessageThreadItemProjection':
          return PhoneMessageThreadItemProjection.fromJson(value);
        case 'PhoneMessageThreadProjection':
          return PhoneMessageThreadProjection.fromJson(value);
        case 'PhoneNumberDto':
          return PhoneNumberDto.fromJson(value);
        case 'PhoneNumberLineTypeIntelligenceDto':
          return PhoneNumberLineTypeIntelligenceDto.fromJson(value);
        case 'PhoneNumberLineTypeLookupDto':
          return PhoneNumberLineTypeLookupDto.fromJson(value);
        case 'PhoneNumberProjection':
          return PhoneNumberProjection.fromJson(value);
        case 'PhoneNumberReleaseProjection':
          return PhoneNumberReleaseProjection.fromJson(value);
        case 'PhoneNumberTagsOptions':
          return PhoneNumberTagsOptions.fromJson(value);
        case 'PhoneNumberValidationDto':
          return PhoneNumberValidationDto.fromJson(value);
        case 'PhonePlanAvailability':
          return PhonePlanAvailability.fromJson(value);
        case 'PhonePlanAvailabilityItem':
          return PhonePlanAvailabilityItem.fromJson(value);
        case 'PhonePlanDto':
          return PhonePlanDto.fromJson(value);
        case 'PhonePoolDetailDto':
          return PhonePoolDetailDto.fromJson(value);
        case 'PhonePoolDto':
          return PhonePoolDto.fromJson(value);
        case 'PhonePoolLeaseDto':
          return PhonePoolLeaseDto.fromJson(value);
        case 'PhonePoolMemberDto':
          return PhonePoolMemberDto.fromJson(value);
        case 'PhoneProviderCapabilitiesResult':
          return PhoneProviderCapabilitiesResult.fromJson(value);
        case 'PhoneProvisioningJobDto':
          return PhoneProvisioningJobDto.fromJson(value);
        case 'PhoneProvisioningJobItemDto':
          return PhoneProvisioningJobItemDto.fromJson(value);
        case 'PhoneSmsPrepaidCreditDto':
          return PhoneSmsPrepaidCreditDto.fromJson(value);
        case 'PhoneSmsPrepaidCreditsDto':
          return PhoneSmsPrepaidCreditsDto.fromJson(value);
        case 'PhoneSummaryCountryDto':
          return PhoneSummaryCountryDto.fromJson(value);
        case 'PhoneSummaryDto':
          return PhoneSummaryDto.fromJson(value);
        case 'PlanSummaryDto':
          return PlanSummaryDto.fromJson(value);
        case 'PlusAddressDto':
          return PlusAddressDto.fromJson(value);
        case 'PlusAddressProjection':
          return PlusAddressProjection.fromJson(value);
        case 'PostmasterConnectionDto':
          return PostmasterConnectionDto.fromJson(value);
        case 'PostmasterConnectionStatusDto':
          return PostmasterConnectionStatusDto.fromJson(value);
        case 'PostmasterDomainDto':
          return PostmasterDomainDto.fromJson(value);
        case 'PostmasterIpReputationDto':
          return PostmasterIpReputationDto.fromJson(value);
        case 'PostmasterTrafficStatsDto':
          return PostmasterTrafficStatsDto.fromJson(value);
        case 'PostmasterTrafficStatsListDto':
          return PostmasterTrafficStatsListDto.fromJson(value);
        case 'PrepareAgentReplyOptions':
          return PrepareAgentReplyOptions.fromJson(value);
        case 'ProviderSettings':
          return ProviderSettings.fromJson(value);
        case 'PublicDeviceRenderTargetDto':
          return PublicDeviceRenderTargetDto.fromJson(value);
        case 'PublicDeviceRenderTargetListDto':
          return PublicDeviceRenderTargetListDto.fromJson(value);
        case 'PublicDeviceRenderTestDto':
          return PublicDeviceRenderTestDto.fromJson(value);
        case 'PublicEmailPreviewContentDto':
          return PublicEmailPreviewContentDto.fromJson(value);
        case 'PublicSpamTestResultsDto':
          return PublicSpamTestResultsDto.fromJson(value);
        case 'PublicSpamTestRunDto':
          return PublicSpamTestRunDto.fromJson(value);
        case 'RawEmailJson':
          return RawEmailJson.fromJson(value);
        case 'Recipient':
          return Recipient.fromJson(value);
        case 'RecipientProjection':
          return RecipientProjection.fromJson(value);
        case 'RenewAgentConversationClaimOptions':
          return RenewAgentConversationClaimOptions.fromJson(value);
        case 'ReplyForSms':
          return ReplyForSms.fromJson(value);
        case 'ReplyToAliasEmailOptions':
          return ReplyToAliasEmailOptions.fromJson(value);
        case 'ReplyToEmailOptions':
          return ReplyToEmailOptions.fromJson(value);
        case 'ReputationItemProjection':
          return ReputationItemProjection.fromJson(value);
        case 'RerunDevicePreviewTargetsOptions':
          return RerunDevicePreviewTargetsOptions.fromJson(value);
        case 'RerunDevicePreviewTargetsResult':
          return RerunDevicePreviewTargetsResult.fromJson(value);
        case 'RotateAutomatedInboxPlacementConnectionCredentialsOptions':
          return RotateAutomatedInboxPlacementConnectionCredentialsOptions.fromJson(value);
        case 'RotateSendingConnectionCredentialsOptions':
          return RotateSendingConnectionCredentialsOptions.fromJson(value);
        case 'RulesetDto':
          return RulesetDto.fromJson(value);
        case 'RulesetTestOptions':
          return RulesetTestOptions.fromJson(value);
        case 'ScheduledJob':
          return ScheduledJob.fromJson(value);
        case 'ScheduledJobDto':
          return ScheduledJobDto.fromJson(value);
        case 'ScimEmail':
          return ScimEmail.fromJson(value);
        case 'ScimGroupResource':
          return ScimGroupResource.fromJson(value);
        case 'ScimMember':
          return ScimMember.fromJson(value);
        case 'ScimMeta':
          return ScimMeta.fromJson(value);
        case 'ScimName':
          return ScimName.fromJson(value);
        case 'ScimPatchOperation':
          return ScimPatchOperation.fromJson(value);
        case 'ScimPatchRequest':
          return ScimPatchRequest.fromJson(value);
        case 'ScimUserResource':
          return ScimUserResource.fromJson(value);
        case 'ScopedEmailThread':
          return ScopedEmailThread.fromJson(value);
        case 'SearchAvailablePhoneNumbersOptions':
          return SearchAvailablePhoneNumbersOptions.fromJson(value);
        case 'SearchEmailsOptions':
          return SearchEmailsOptions.fromJson(value);
        case 'SearchInboxesOptions':
          return SearchInboxesOptions.fromJson(value);
        case 'SendEmailBodyPart':
          return SendEmailBodyPart.fromJson(value);
        case 'SendEmailOptions':
          return SendEmailOptions.fromJson(value);
        case 'SendOptInConsentEmailOptions':
          return SendOptInConsentEmailOptions.fromJson(value);
        case 'SendSMTPEnvelopeFromS3Options':
          return SendSMTPEnvelopeFromS3Options.fromJson(value);
        case 'SendSMTPEnvelopeOptions':
          return SendSMTPEnvelopeOptions.fromJson(value);
        case 'SendWithQueueResult':
          return SendWithQueueResult.fromJson(value);
        case 'Sender':
          return Sender.fromJson(value);
        case 'SenderProjection':
          return SenderProjection.fromJson(value);
        case 'SendingConnectionApiKeyOptions':
          return SendingConnectionApiKeyOptions.fromJson(value);
        case 'SendingConnectionDeliveryProbeDto':
          return SendingConnectionDeliveryProbeDto.fromJson(value);
        case 'SendingConnectionDto':
          return SendingConnectionDto.fromJson(value);
        case 'SendingConnectionProviderDto':
          return SendingConnectionProviderDto.fromJson(value);
        case 'SendingConnectionSmtpDefaults':
          return SendingConnectionSmtpDefaults.fromJson(value);
        case 'SendingConnectionSmtpHostOption':
          return SendingConnectionSmtpHostOption.fromJson(value);
        case 'SendingConnectionSmtpOptions':
          return SendingConnectionSmtpOptions.fromJson(value);
        case 'SentEmailDto':
          return SentEmailDto.fromJson(value);
        case 'SentEmailProjection':
          return SentEmailProjection.fromJson(value);
        case 'SentSmsDto':
          return SentSmsDto.fromJson(value);
        case 'SentSmsProjection':
          return SentSmsProjection.fromJson(value);
        case 'ServerEndpoints':
          return ServerEndpoints.fromJson(value);
        case 'SetInboxFavouritedOptions':
          return SetInboxFavouritedOptions.fromJson(value);
        case 'SetPhoneFavouritedOptions':
          return SetPhoneFavouritedOptions.fromJson(value);
        case 'SimpleSendEmailOptions':
          return SimpleSendEmailOptions.fromJson(value);
        case 'SmsDto':
          return SmsDto.fromJson(value);
        case 'SmsMatchOption':
          return SmsMatchOption.fromJson(value);
        case 'SmsMatchOptions':
          return SmsMatchOptions.fromJson(value);
        case 'SmsMessageMediaDto':
          return SmsMessageMediaDto.fromJson(value);
        case 'SmsPreview':
          return SmsPreview.fromJson(value);
        case 'SmsProjection':
          return SmsProjection.fromJson(value);
        case 'SmsReplyOptions':
          return SmsReplyOptions.fromJson(value);
        case 'SmsSendOptions':
          return SmsSendOptions.fromJson(value);
        case 'SmtpAccessDetails':
          return SmtpAccessDetails.fromJson(value);
        case 'SmtpAuthDiagnosticResult':
          return SmtpAuthDiagnosticResult.fromJson(value);
        case 'SmtpDiagnosticStep':
          return SmtpDiagnosticStep.fromJson(value);
        case 'SmtpMailMessageBucketPath':
          return SmtpMailMessageBucketPath.fromJson(value);
        case 'SmtpTlsDiagnosticResult':
          return SmtpTlsDiagnosticResult.fromJson(value);
        case 'SortObject':
          return SortObject.fromJson(value);
        case 'SpamEmailProjection':
          return SpamEmailProjection.fromJson(value);
        case 'SpellingIssue':
          return SpellingIssue.fromJson(value);
        case 'SpfMechanismResult':
          return SpfMechanismResult.fromJson(value);
        case 'StructuredContentResultDto':
          return StructuredContentResultDto.fromJson(value);
        case 'StructuredOutputSchema':
          return StructuredOutputSchema.fromJson(value);
        case 'StructuredOutputSchemaValidation':
          return StructuredOutputSchemaValidation.fromJson(value);
        case 'SubmitPublicDeviceRenderHtmlOptions':
          return SubmitPublicDeviceRenderHtmlOptions.fromJson(value);
        case 'SubmitPublicSpamTestOptions':
          return SubmitPublicSpamTestOptions.fromJson(value);
        case 'SubscriptionDto':
          return SubscriptionDto.fromJson(value);
        case 'SwitchAccountOptions':
          return SwitchAccountOptions.fromJson(value);
        case 'TemplateDto':
          return TemplateDto.fromJson(value);
        case 'TemplatePreview':
          return TemplatePreview.fromJson(value);
        case 'TemplateProjection':
          return TemplateProjection.fromJson(value);
        case 'TemplateVariable':
          return TemplateVariable.fromJson(value);
        case 'TemporaryAccessKeyDto':
          return TemporaryAccessKeyDto.fromJson(value);
        case 'TenantReputationFindingDto':
          return TenantReputationFindingDto.fromJson(value);
        case 'TenantReputationFindingsDto':
          return TenantReputationFindingsDto.fromJson(value);
        case 'TenantReputationStatusRowDto':
          return TenantReputationStatusRowDto.fromJson(value);
        case 'TenantReputationStatusSummaryDto':
          return TenantReputationStatusSummaryDto.fromJson(value);
        case 'TestInboxRulesetSendingOptions':
          return TestInboxRulesetSendingOptions.fromJson(value);
        case 'TestNewInboxForwarderOptions':
          return TestNewInboxForwarderOptions.fromJson(value);
        case 'TestNewInboxRulesetOptions':
          return TestNewInboxRulesetOptions.fromJson(value);
        case 'TestPhoneNumberOptions':
          return TestPhoneNumberOptions.fromJson(value);
        case 'TestRulesetReceivingOptions':
          return TestRulesetReceivingOptions.fromJson(value);
        case 'TestRulesetReceivingResult':
          return TestRulesetReceivingResult.fromJson(value);
        case 'TestRulesetSendingResult':
          return TestRulesetSendingResult.fromJson(value);
        case 'TestSmtpServerOptions':
          return TestSmtpServerOptions.fromJson(value);
        case 'TestSmtpServerResults':
          return TestSmtpServerResults.fromJson(value);
        case 'TotpDeviceCodeDto':
          return TotpDeviceCodeDto.fromJson(value);
        case 'TotpDeviceDto':
          return TotpDeviceDto.fromJson(value);
        case 'TotpDeviceOptionalDto':
          return TotpDeviceOptionalDto.fromJson(value);
        case 'TotpDeviceProjection':
          return TotpDeviceProjection.fromJson(value);
        case 'TrackingPixelDto':
          return TrackingPixelDto.fromJson(value);
        case 'TrackingPixelProjection':
          return TrackingPixelProjection.fromJson(value);
        case 'UnknownMissedEmailProjection':
          return UnknownMissedEmailProjection.fromJson(value);
        case 'UnreadCount':
          return UnreadCount.fromJson(value);
        case 'UnseenErrorCountDto':
          return UnseenErrorCountDto.fromJson(value);
        case 'UpdateAliasOptions':
          return UpdateAliasOptions.fromJson(value);
        case 'UpdateAutomatedInboxPlacementConnectionOptions':
          return UpdateAutomatedInboxPlacementConnectionOptions.fromJson(value);
        case 'UpdateAutomatedInboxPlacementScheduleOptions':
          return UpdateAutomatedInboxPlacementScheduleOptions.fromJson(value);
        case 'UpdateCampaignProbeOptions':
          return UpdateCampaignProbeOptions.fromJson(value);
        case 'UpdateDeliverabilityTestOptions':
          return UpdateDeliverabilityTestOptions.fromJson(value);
        case 'UpdateDeliverySenderSeatsOptions':
          return UpdateDeliverySenderSeatsOptions.fromJson(value);
        case 'UpdateDevicePreviewFeedbackOptions':
          return UpdateDevicePreviewFeedbackOptions.fromJson(value);
        case 'UpdateDevicePreviewFolderOptions':
          return UpdateDevicePreviewFolderOptions.fromJson(value);
        case 'UpdateDevicePreviewIngestDomainOptions':
          return UpdateDevicePreviewIngestDomainOptions.fromJson(value);
        case 'UpdateDevicePreviewProfileOptions':
          return UpdateDevicePreviewProfileOptions.fromJson(value);
        case 'UpdateDomainMonitorOptions':
          return UpdateDomainMonitorOptions.fromJson(value);
        case 'UpdateDomainOptions':
          return UpdateDomainOptions.fromJson(value);
        case 'UpdateEmailWarmupProgramOptions':
          return UpdateEmailWarmupProgramOptions.fromJson(value);
        case 'UpdateEmailWarmupSenderSeatsOptions':
          return UpdateEmailWarmupSenderSeatsOptions.fromJson(value);
        case 'UpdateGroupContacts':
          return UpdateGroupContacts.fromJson(value);
        case 'UpdateImapAccessOptions':
          return UpdateImapAccessOptions.fromJson(value);
        case 'UpdateInboxOptions':
          return UpdateInboxOptions.fromJson(value);
        case 'UpdateInboxReplierActiveOptions':
          return UpdateInboxReplierActiveOptions.fromJson(value);
        case 'UpdateInboxReplierOptions':
          return UpdateInboxReplierOptions.fromJson(value);
        case 'UpdateInboxRetentionPolicyOptions':
          return UpdateInboxRetentionPolicyOptions.fromJson(value);
        case 'UpdatePhoneNumberOptions':
          return UpdatePhoneNumberOptions.fromJson(value);
        case 'UpdatePhonePoolOptions':
          return UpdatePhonePoolOptions.fromJson(value);
        case 'UpdateRulesetOptions':
          return UpdateRulesetOptions.fromJson(value);
        case 'UpdateSendingConnectionOptions':
          return UpdateSendingConnectionOptions.fromJson(value);
        case 'UpdateSmtpAccessOptions':
          return UpdateSmtpAccessOptions.fromJson(value);
        case 'UpdateTotpDeviceOptions':
          return UpdateTotpDeviceOptions.fromJson(value);
        case 'UploadAttachmentOptions':
          return UploadAttachmentOptions.fromJson(value);
        case 'UserDto':
          return UserDto.fromJson(value);
        case 'UserInfoDto':
          return UserInfoDto.fromJson(value);
        case 'UserPermissionDto':
          return UserPermissionDto.fromJson(value);
        case 'UserStorageInsightItemDto':
          return UserStorageInsightItemDto.fromJson(value);
        case 'UserStorageInsightsDto':
          return UserStorageInsightsDto.fromJson(value);
        case 'ValidateEmailAddressListOptions':
          return ValidateEmailAddressListOptions.fromJson(value);
        case 'ValidateEmailAddressListResult':
          return ValidateEmailAddressListResult.fromJson(value);
        case 'ValidatePhoneNumberOptions':
          return ValidatePhoneNumberOptions.fromJson(value);
        case 'ValidationDto':
          return ValidationDto.fromJson(value);
        case 'ValidationMessage':
          return ValidationMessage.fromJson(value);
        case 'VerifyEmailAddressOptions':
          return VerifyEmailAddressOptions.fromJson(value);
        case 'VerifyWebhookSignatureOptions':
          return VerifyWebhookSignatureOptions.fromJson(value);
        case 'VerifyWebhookSignatureResults':
          return VerifyWebhookSignatureResults.fromJson(value);
        case 'WaitForAIMessageOptions':
          return WaitForAIMessageOptions.fromJson(value);
        case 'WaitForAIMessagesOptions':
          return WaitForAIMessagesOptions.fromJson(value);
        case 'WaitForConditions':
          return WaitForConditions.fromJson(value);
        case 'WaitForSingleSmsOptions':
          return WaitForSingleSmsOptions.fromJson(value);
        case 'WaitForSmsConditions':
          return WaitForSmsConditions.fromJson(value);
        case 'WebhookBouncePayload':
          return WebhookBouncePayload.fromJson(value);
        case 'WebhookBounceRecipientPayload':
          return WebhookBounceRecipientPayload.fromJson(value);
        case 'WebhookDeliveryStatusPayload':
          return WebhookDeliveryStatusPayload.fromJson(value);
        case 'WebhookDto':
          return WebhookDto.fromJson(value);
        case 'WebhookEmailOpenedPayload':
          return WebhookEmailOpenedPayload.fromJson(value);
        case 'WebhookEmailReadPayload':
          return WebhookEmailReadPayload.fromJson(value);
        case 'WebhookEndpointProjection':
          return WebhookEndpointProjection.fromJson(value);
        case 'WebhookHeaderNameValue':
          return WebhookHeaderNameValue.fromJson(value);
        case 'WebhookHeaders':
          return WebhookHeaders.fromJson(value);
        case 'WebhookNewAITransformResultPayload':
          return WebhookNewAITransformResultPayload.fromJson(value);
        case 'WebhookNewAttachmentPayload':
          return WebhookNewAttachmentPayload.fromJson(value);
        case 'WebhookNewContactPayload':
          return WebhookNewContactPayload.fromJson(value);
        case 'WebhookNewEmailPayload':
          return WebhookNewEmailPayload.fromJson(value);
        case 'WebhookNewSmsPayload':
          return WebhookNewSmsPayload.fromJson(value);
        case 'WebhookProjection':
          return WebhookProjection.fromJson(value);
        case 'WebhookRedriveAllResult':
          return WebhookRedriveAllResult.fromJson(value);
        case 'WebhookRedriveResult':
          return WebhookRedriveResult.fromJson(value);
        case 'WebhookResultDto':
          return WebhookResultDto.fromJson(value);
        case 'WebhookTestRequest':
          return WebhookTestRequest.fromJson(value);
        case 'WebhookTestResponse':
          return WebhookTestResponse.fromJson(value);
        case 'WebhookTestResult':
          return WebhookTestResult.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => _deserialize(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
