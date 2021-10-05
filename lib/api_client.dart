//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://api.mailslurp.com'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'API_KEY'] = ApiKeyAuth('header', 'x-api-key');
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    Iterable<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final url = '$basePath$path$queryString';

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, Uri.parse(url));
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, Uri.parse(url));
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(url, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(url, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(url, headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(url, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(url, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(url, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    authNames.forEach((authName) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    });
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AbstractWebhookPayload':
          return AbstractWebhookPayload.fromJson(value);
        case 'AliasDto':
          return AliasDto.fromJson(value);
        case 'AliasProjection':
          return AliasProjection.fromJson(value);
        case 'AttachmentEntity':
          return AttachmentEntity.fromJson(value);
        case 'AttachmentMetaData':
          return AttachmentMetaData.fromJson(value);
        case 'AttachmentProjection':
          return AttachmentProjection.fromJson(value);
        case 'BasicAuthOptions':
          return BasicAuthOptions.fromJson(value);
        case 'BounceProjection':
          return BounceProjection.fromJson(value);
        case 'BounceRecipient':
          return BounceRecipient.fromJson(value);
        case 'BouncedEmailDto':
          return BouncedEmailDto.fromJson(value);
        case 'BouncedRecipientDto':
          return BouncedRecipientDto.fromJson(value);
        case 'BulkSendEmailOptions':
          return BulkSendEmailOptions.fromJson(value);
        case 'ConditionOption':
          return ConditionOption.fromJson(value);
        case 'ContactDto':
          return ContactDto.fromJson(value);
        case 'ContactProjection':
          return ContactProjection.fromJson(value);
        case 'ContentMatchOptions':
          return ContentMatchOptions.fromJson(value);
        case 'CreateAliasOptions':
          return CreateAliasOptions.fromJson(value);
        case 'CreateContactOptions':
          return CreateContactOptions.fromJson(value);
        case 'CreateDomainOptions':
          return CreateDomainOptions.fromJson(value);
        case 'CreateGroupOptions':
          return CreateGroupOptions.fromJson(value);
        case 'CreateInboxDto':
          return CreateInboxDto.fromJson(value);
        case 'CreateInboxForwarderOptions':
          return CreateInboxForwarderOptions.fromJson(value);
        case 'CreateInboxRulesetOptions':
          return CreateInboxRulesetOptions.fromJson(value);
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
        case 'DescribeDomainOptions':
          return DescribeDomainOptions.fromJson(value);
        case 'DescribeMailServerDomainResult':
          return DescribeMailServerDomainResult.fromJson(value);
        case 'DomainDto':
          return DomainDto.fromJson(value);
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
        case 'EmailContentMatchResult':
          return EmailContentMatchResult.fromJson(value);
        case 'EmailLinksResult':
          return EmailLinksResult.fromJson(value);
        case 'EmailPreview':
          return EmailPreview.fromJson(value);
        case 'EmailProjection':
          return EmailProjection.fromJson(value);
        case 'EmailRecipients':
          return EmailRecipients.fromJson(value);
        case 'EmailTextLinesResult':
          return EmailTextLinesResult.fromJson(value);
        case 'EmailVerificationResult':
          return EmailVerificationResult.fromJson(value);
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
        case 'FlushExpiredInboxesResult':
          return FlushExpiredInboxesResult.fromJson(value);
        case 'ForwardEmailOptions':
          return ForwardEmailOptions.fromJson(value);
        case 'GravatarUrl':
          return GravatarUrl.fromJson(value);
        case 'GroupContactsDto':
          return GroupContactsDto.fromJson(value);
        case 'GroupDto':
          return GroupDto.fromJson(value);
        case 'GroupProjection':
          return GroupProjection.fromJson(value);
        case 'HTMLValidationResult':
          return HTMLValidationResult.fromJson(value);
        case 'IPAddressResult':
          return IPAddressResult.fromJson(value);
        case 'Inbox':
          return Inbox.fromJson(value);
        case 'InboxForwarderDto':
          return InboxForwarderDto.fromJson(value);
        case 'InboxForwarderTestOptions':
          return InboxForwarderTestOptions.fromJson(value);
        case 'InboxForwarderTestResult':
          return InboxForwarderTestResult.fromJson(value);
        case 'InboxPreview':
          return InboxPreview.fromJson(value);
        case 'InboxRulesetDto':
          return InboxRulesetDto.fromJson(value);
        case 'InboxRulesetTestOptions':
          return InboxRulesetTestOptions.fromJson(value);
        case 'InboxRulesetTestResult':
          return InboxRulesetTestResult.fromJson(value);
        case 'JSONSchemaDto':
          return JSONSchemaDto.fromJson(value);
        case 'MatchOption':
          return MatchOption.fromJson(value);
        case 'MatchOptions':
          return MatchOptions.fromJson(value);
        case 'MissedEmail':
          return MissedEmail.fromJson(value);
        case 'MissedEmailProjection':
          return MissedEmailProjection.fromJson(value);
        case 'NameServerRecord':
          return NameServerRecord.fromJson(value);
        case 'OrganizationInboxProjection':
          return OrganizationInboxProjection.fromJson(value);
        case 'PageAlias':
          return PageAlias.fromJson(value);
        case 'PageAttachmentEntity':
          return PageAttachmentEntity.fromJson(value);
        case 'PageBouncedEmail':
          return PageBouncedEmail.fromJson(value);
        case 'PageBouncedRecipients':
          return PageBouncedRecipients.fromJson(value);
        case 'PageContactProjection':
          return PageContactProjection.fromJson(value);
        case 'PageEmailPreview':
          return PageEmailPreview.fromJson(value);
        case 'PageEmailProjection':
          return PageEmailProjection.fromJson(value);
        case 'PageExpiredInboxRecordProjection':
          return PageExpiredInboxRecordProjection.fromJson(value);
        case 'PageGroupProjection':
          return PageGroupProjection.fromJson(value);
        case 'PageInboxForwarderDto':
          return PageInboxForwarderDto.fromJson(value);
        case 'PageInboxProjection':
          return PageInboxProjection.fromJson(value);
        case 'PageInboxRulesetDto':
          return PageInboxRulesetDto.fromJson(value);
        case 'PageMissedEmailProjection':
          return PageMissedEmailProjection.fromJson(value);
        case 'PageOrganizationInboxProjection':
          return PageOrganizationInboxProjection.fromJson(value);
        case 'PageSentEmailProjection':
          return PageSentEmailProjection.fromJson(value);
        case 'PageTemplateProjection':
          return PageTemplateProjection.fromJson(value);
        case 'PageThreadProjection':
          return PageThreadProjection.fromJson(value);
        case 'PageTrackingPixelProjection':
          return PageTrackingPixelProjection.fromJson(value);
        case 'PageUnknownMissedEmailProjection':
          return PageUnknownMissedEmailProjection.fromJson(value);
        case 'PageWebhookProjection':
          return PageWebhookProjection.fromJson(value);
        case 'PageWebhookResult':
          return PageWebhookResult.fromJson(value);
        case 'Pageable':
          return Pageable.fromJson(value);
        case 'RawEmailJson':
          return RawEmailJson.fromJson(value);
        case 'Recipient':
          return Recipient.fromJson(value);
        case 'ReplyToAliasEmailOptions':
          return ReplyToAliasEmailOptions.fromJson(value);
        case 'ReplyToEmailOptions':
          return ReplyToEmailOptions.fromJson(value);
        case 'SendEmailOptions':
          return SendEmailOptions.fromJson(value);
        case 'Sender':
          return Sender.fromJson(value);
        case 'SentEmailDto':
          return SentEmailDto.fromJson(value);
        case 'SentEmailProjection':
          return SentEmailProjection.fromJson(value);
        case 'SetInboxFavouritedOptions':
          return SetInboxFavouritedOptions.fromJson(value);
        case 'SimpleSendEmailOptions':
          return SimpleSendEmailOptions.fromJson(value);
        case 'Sort':
          return Sort.fromJson(value);
        case 'TemplateDto':
          return TemplateDto.fromJson(value);
        case 'TemplateProjection':
          return TemplateProjection.fromJson(value);
        case 'TemplateVariable':
          return TemplateVariable.fromJson(value);
        case 'TestNewInboxForwarderOptions':
          return TestNewInboxForwarderOptions.fromJson(value);
        case 'TestNewInboxRulesetOptions':
          return TestNewInboxRulesetOptions.fromJson(value);
        case 'ThreadProjection':
          return ThreadProjection.fromJson(value);
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
        case 'UpdateInboxOptions':
          return UpdateInboxOptions.fromJson(value);
        case 'UploadAttachmentOptions':
          return UploadAttachmentOptions.fromJson(value);
        case 'ValidationDto':
          return ValidationDto.fromJson(value);
        case 'ValidationMessage':
          return ValidationMessage.fromJson(value);
        case 'VerifyEmailAddressOptions':
          return VerifyEmailAddressOptions.fromJson(value);
        case 'WaitForConditions':
          return WaitForConditions.fromJson(value);
        case 'WebhookDto':
          return WebhookDto.fromJson(value);
        case 'WebhookEmailOpenedPayload':
          return WebhookEmailOpenedPayload.fromJson(value);
        case 'WebhookEmailReadPayload':
          return WebhookEmailReadPayload.fromJson(value);
        case 'WebhookNewAttachmentPayload':
          return WebhookNewAttachmentPayload.fromJson(value);
        case 'WebhookNewContactPayload':
          return WebhookNewContactPayload.fromJson(value);
        case 'WebhookNewEmailPayload':
          return WebhookNewEmailPayload.fromJson(value);
        case 'WebhookProjection':
          return WebhookProjection.fromJson(value);
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
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, targetType, growable: growable)),
            );
          }
          break;
      }
    } catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
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
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
