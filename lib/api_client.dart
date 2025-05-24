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
        case 'AbstractWebhookPayload':
          return AbstractWebhookPayload.fromJson(value);
        case 'AccountBounceBlockDto':
          return AccountBounceBlockDto.fromJson(value);
        case 'AliasDto':
          return AliasDto.fromJson(value);
        case 'AliasProjection':
          return AliasProjection.fromJson(value);
        case 'AliasThreadProjection':
          return AliasThreadProjection.fromJson(value);
        case 'AttachmentEntityDto':
          return AttachmentEntityDto.fromJson(value);
        case 'AttachmentMetaData':
          return AttachmentMetaData.fromJson(value);
        case 'AttachmentProjection':
          return AttachmentProjection.fromJson(value);
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
        case 'CanSendEmailResults':
          return CanSendEmailResults.fromJson(value);
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
        case 'Complaint':
          return Complaint.fromJson(value);
        case 'ConditionOption':
          return ConditionOption.fromJson(value);
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
        case 'CreateAliasOptions':
          return CreateAliasOptions.fromJson(value);
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
        case 'CreateDomainOptions':
          return CreateDomainOptions.fromJson(value);
        case 'CreateEmergencyAddressOptions':
          return CreateEmergencyAddressOptions.fromJson(value);
        case 'CreateGroupOptions':
          return CreateGroupOptions.fromJson(value);
        case 'CreateInboxDto':
          return CreateInboxDto.fromJson(value);
        case 'CreateInboxForwarderOptions':
          return CreateInboxForwarderOptions.fromJson(value);
        case 'CreateInboxReplierOptions':
          return CreateInboxReplierOptions.fromJson(value);
        case 'CreateInboxRulesetOptions':
          return CreateInboxRulesetOptions.fromJson(value);
        case 'CreateOAuthConnectionResult':
          return CreateOAuthConnectionResult.fromJson(value);
        case 'CreateOAuthExchangeResult':
          return CreateOAuthExchangeResult.fromJson(value);
        case 'CreatePhoneNumberOptions':
          return CreatePhoneNumberOptions.fromJson(value);
        case 'CreatePortalOptions':
          return CreatePortalOptions.fromJson(value);
        case 'CreatePortalUserOptions':
          return CreatePortalUserOptions.fromJson(value);
        case 'CreateTemplateOptions':
          return CreateTemplateOptions.fromJson(value);
        case 'CreateTrackingPixelOptions':
          return CreateTrackingPixelOptions.fromJson(value);
        case 'CreateWebhookOptions':
          return CreateWebhookOptions.fromJson(value);
        case 'DNSLookupOptions':
          return DNSLookupOptions.fromJson(value);
        case 'DNSLookupResult':
          return DNSLookupResult.fromJson(value);
        case 'DNSLookupResults':
          return DNSLookupResults.fromJson(value);
        case 'DNSLookupsOptions':
          return DNSLookupsOptions.fromJson(value);
        case 'DeliveryStatusDto':
          return DeliveryStatusDto.fromJson(value);
        case 'DescribeDomainOptions':
          return DescribeDomainOptions.fromJson(value);
        case 'DescribeMailServerDomainResult':
          return DescribeMailServerDomainResult.fromJson(value);
        case 'DomainDto':
          return DomainDto.fromJson(value);
        case 'DomainGroup':
          return DomainGroup.fromJson(value);
        case 'DomainGroupsDto':
          return DomainGroupsDto.fromJson(value);
        case 'DomainInformation':
          return DomainInformation.fromJson(value);
        case 'DomainIssuesDto':
          return DomainIssuesDto.fromJson(value);
        case 'DomainNameRecord':
          return DomainNameRecord.fromJson(value);
        case 'DomainPreview':
          return DomainPreview.fromJson(value);
        case 'DownloadAttachmentDto':
          return DownloadAttachmentDto.fromJson(value);
        case 'Email':
          return Email.fromJson(value);
        case 'EmailAnalysis':
          return EmailAnalysis.fromJson(value);
        case 'EmailAvailableResult':
          return EmailAvailableResult.fromJson(value);
        case 'EmailContentMatchResult':
          return EmailContentMatchResult.fromJson(value);
        case 'EmailContentPartResult':
          return EmailContentPartResult.fromJson(value);
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
        case 'EmailHtmlDto':
          return EmailHtmlDto.fromJson(value);
        case 'EmailLinksResult':
          return EmailLinksResult.fromJson(value);
        case 'EmailPreview':
          return EmailPreview.fromJson(value);
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
        case 'GenerateStructuredContentEmailOptions':
          return GenerateStructuredContentEmailOptions.fromJson(value);
        case 'GenerateTlsReportingRecordOptions':
          return GenerateTlsReportingRecordOptions.fromJson(value);
        case 'GenerateTlsReportingRecordResults':
          return GenerateTlsReportingRecordResults.fromJson(value);
        case 'GetEmailScreenshotOptions':
          return GetEmailScreenshotOptions.fromJson(value);
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
        case 'InboxPreview':
          return InboxPreview.fromJson(value);
        case 'InboxReplierDto':
          return InboxReplierDto.fromJson(value);
        case 'InboxReplierEventProjection':
          return InboxReplierEventProjection.fromJson(value);
        case 'InboxRulesetDto':
          return InboxRulesetDto.fromJson(value);
        case 'InboxRulesetTestOptions':
          return InboxRulesetTestOptions.fromJson(value);
        case 'InboxRulesetTestResult':
          return InboxRulesetTestResult.fromJson(value);
        case 'JSONSchemaDto':
          return JSONSchemaDto.fromJson(value);
        case 'LinkIssue':
          return LinkIssue.fromJson(value);
        case 'ListUnsubscribeRecipientProjection':
          return ListUnsubscribeRecipientProjection.fromJson(value);
        case 'LookupBimiDomainOptions':
          return LookupBimiDomainOptions.fromJson(value);
        case 'LookupBimiDomainResults':
          return LookupBimiDomainResults.fromJson(value);
        case 'LookupDmarcDomainOptions':
          return LookupDmarcDomainOptions.fromJson(value);
        case 'LookupDmarcDomainResults':
          return LookupDmarcDomainResults.fromJson(value);
        case 'LookupMtaStsDomainOptions':
          return LookupMtaStsDomainOptions.fromJson(value);
        case 'LookupMtaStsDomainResults':
          return LookupMtaStsDomainResults.fromJson(value);
        case 'LookupTlsReportingDomainOptions':
          return LookupTlsReportingDomainOptions.fromJson(value);
        case 'LookupTlsReportingDomainResults':
          return LookupTlsReportingDomainResults.fromJson(value);
        case 'MatchOption':
          return MatchOption.fromJson(value);
        case 'MatchOptions':
          return MatchOptions.fromJson(value);
        case 'MissedEmailDto':
          return MissedEmailDto.fromJson(value);
        case 'MissedEmailProjection':
          return MissedEmailProjection.fromJson(value);
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
        case 'PageInboxRulesetDto':
          return PageInboxRulesetDto.fromJson(value);
        case 'PageInboxTags':
          return PageInboxTags.fromJson(value);
        case 'PageListUnsubscribeRecipients':
          return PageListUnsubscribeRecipients.fromJson(value);
        case 'PageMissedEmailProjection':
          return PageMissedEmailProjection.fromJson(value);
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
        case 'PagePlusAddressProjection':
          return PagePlusAddressProjection.fromJson(value);
        case 'PageReputationItems':
          return PageReputationItems.fromJson(value);
        case 'PageScheduledJobs':
          return PageScheduledJobs.fromJson(value);
        case 'PageSentEmailProjection':
          return PageSentEmailProjection.fromJson(value);
        case 'PageSentEmailWithQueueProjection':
          return PageSentEmailWithQueueProjection.fromJson(value);
        case 'PageSentSmsProjection':
          return PageSentSmsProjection.fromJson(value);
        case 'PageSmsProjection':
          return PageSmsProjection.fromJson(value);
        case 'PageTemplateProjection':
          return PageTemplateProjection.fromJson(value);
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
        case 'PhoneMessageThreadItemProjection':
          return PhoneMessageThreadItemProjection.fromJson(value);
        case 'PhoneMessageThreadProjection':
          return PhoneMessageThreadProjection.fromJson(value);
        case 'PhoneNumberDto':
          return PhoneNumberDto.fromJson(value);
        case 'PhoneNumberProjection':
          return PhoneNumberProjection.fromJson(value);
        case 'PhoneNumberValidationDto':
          return PhoneNumberValidationDto.fromJson(value);
        case 'PhonePlanAvailability':
          return PhonePlanAvailability.fromJson(value);
        case 'PhonePlanAvailabilityItem':
          return PhonePlanAvailabilityItem.fromJson(value);
        case 'PhonePlanDto':
          return PhonePlanDto.fromJson(value);
        case 'PlusAddressDto':
          return PlusAddressDto.fromJson(value);
        case 'PlusAddressProjection':
          return PlusAddressProjection.fromJson(value);
        case 'ProviderSettings':
          return ProviderSettings.fromJson(value);
        case 'RawEmailJson':
          return RawEmailJson.fromJson(value);
        case 'Recipient':
          return Recipient.fromJson(value);
        case 'RecipientProjection':
          return RecipientProjection.fromJson(value);
        case 'ReplyForSms':
          return ReplyForSms.fromJson(value);
        case 'ReplyToAliasEmailOptions':
          return ReplyToAliasEmailOptions.fromJson(value);
        case 'ReplyToEmailOptions':
          return ReplyToEmailOptions.fromJson(value);
        case 'ReputationItemProjection':
          return ReputationItemProjection.fromJson(value);
        case 'ScheduledJob':
          return ScheduledJob.fromJson(value);
        case 'ScheduledJobDto':
          return ScheduledJobDto.fromJson(value);
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
        case 'SendSMTPEnvelopeOptions':
          return SendSMTPEnvelopeOptions.fromJson(value);
        case 'SendWithQueueResult':
          return SendWithQueueResult.fromJson(value);
        case 'Sender':
          return Sender.fromJson(value);
        case 'SenderProjection':
          return SenderProjection.fromJson(value);
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
        case 'SortObject':
          return SortObject.fromJson(value);
        case 'SpellingIssue':
          return SpellingIssue.fromJson(value);
        case 'StructuredContentResult':
          return StructuredContentResult.fromJson(value);
        case 'StructuredOutputSchema':
          return StructuredOutputSchema.fromJson(value);
        case 'StructuredOutputSchemaValidation':
          return StructuredOutputSchemaValidation.fromJson(value);
        case 'TemplateDto':
          return TemplateDto.fromJson(value);
        case 'TemplatePreview':
          return TemplatePreview.fromJson(value);
        case 'TemplateProjection':
          return TemplateProjection.fromJson(value);
        case 'TemplateVariable':
          return TemplateVariable.fromJson(value);
        case 'TestInboxRulesetReceivingOptions':
          return TestInboxRulesetReceivingOptions.fromJson(value);
        case 'TestInboxRulesetReceivingResult':
          return TestInboxRulesetReceivingResult.fromJson(value);
        case 'TestInboxRulesetSendingOptions':
          return TestInboxRulesetSendingOptions.fromJson(value);
        case 'TestInboxRulesetSendingResult':
          return TestInboxRulesetSendingResult.fromJson(value);
        case 'TestNewInboxForwarderOptions':
          return TestNewInboxForwarderOptions.fromJson(value);
        case 'TestNewInboxRulesetOptions':
          return TestNewInboxRulesetOptions.fromJson(value);
        case 'TestPhoneNumberOptions':
          return TestPhoneNumberOptions.fromJson(value);
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
        case 'UpdateDomainOptions':
          return UpdateDomainOptions.fromJson(value);
        case 'UpdateGroupContacts':
          return UpdateGroupContacts.fromJson(value);
        case 'UpdateImapAccessOptions':
          return UpdateImapAccessOptions.fromJson(value);
        case 'UpdateInboxOptions':
          return UpdateInboxOptions.fromJson(value);
        case 'UpdateInboxReplierOptions':
          return UpdateInboxReplierOptions.fromJson(value);
        case 'UpdatePhoneNumberOptions':
          return UpdatePhoneNumberOptions.fromJson(value);
        case 'UpdateSmtpAccessOptions':
          return UpdateSmtpAccessOptions.fromJson(value);
        case 'UploadAttachmentOptions':
          return UploadAttachmentOptions.fromJson(value);
        case 'UploadMultipartFormRequest':
          return UploadMultipartFormRequest.fromJson(value);
        case 'UserInfoDto':
          return UserInfoDto.fromJson(value);
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
