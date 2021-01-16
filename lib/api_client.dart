part of mailslurp.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _regList = RegExp(r'^List<(.*)>$');
  final _regMap = RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath = "https://api.mailslurp.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['API_KEY'] = ApiKeyAuth("header", "x-api-key");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Alias':
          return Alias.fromJson(value);
        case 'AliasDto':
          return AliasDto.fromJson(value);
        case 'AliasProjection':
          return AliasProjection.fromJson(value);
        case 'AttachmentMetaData':
          return AttachmentMetaData.fromJson(value);
        case 'BasicAuthOptions':
          return BasicAuthOptions.fromJson(value);
        case 'BulkSendEmailOptions':
          return BulkSendEmailOptions.fromJson(value);
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
        case 'CreateTemplateOptions':
          return CreateTemplateOptions.fromJson(value);
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
        case 'EmailPreview':
          return EmailPreview.fromJson(value);
        case 'EmailProjection':
          return EmailProjection.fromJson(value);
        case 'EmailTextLinesResult':
          return EmailTextLinesResult.fromJson(value);
        case 'EmailVerificationResult':
          return EmailVerificationResult.fromJson(value);
        case 'ExpiredInboxDto':
          return ExpiredInboxDto.fromJson(value);
        case 'ExpiredInboxRecordProjection':
          return ExpiredInboxRecordProjection.fromJson(value);
        case 'ForwardEmailOptions':
          return ForwardEmailOptions.fromJson(value);
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
        case 'InboxProjection':
          return InboxProjection.fromJson(value);
        case 'MatchOption':
          return MatchOption.fromJson(value);
        case 'MatchOptions':
          return MatchOptions.fromJson(value);
        case 'NameServerRecord':
          return NameServerRecord.fromJson(value);
        case 'PageAlias':
          return PageAlias.fromJson(value);
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
        case 'PageInboxProjection':
          return PageInboxProjection.fromJson(value);
        case 'PageSentEmailProjection':
          return PageSentEmailProjection.fromJson(value);
        case 'PageTemplateProjection':
          return PageTemplateProjection.fromJson(value);
        case 'PageThreadProjection':
          return PageThreadProjection.fromJson(value);
        case 'PageWebhookProjection':
          return PageWebhookProjection.fromJson(value);
        case 'Pageable':
          return Pageable.fromJson(value);
        case 'RawEmailJson':
          return RawEmailJson.fromJson(value);
        case 'ReplyToAliasEmailOptions':
          return ReplyToAliasEmailOptions.fromJson(value);
        case 'ReplyToEmailOptions':
          return ReplyToEmailOptions.fromJson(value);
        case 'SendEmailOptions':
          return SendEmailOptions.fromJson(value);
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
        case 'ThreadProjection':
          return ThreadProjection.fromJson(value);
        case 'UnreadCount':
          return UnreadCount.fromJson(value);
        case 'UpdateAliasOptions':
          return UpdateAliasOptions.fromJson(value);
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
        case 'WebhookProjection':
          return WebhookProjection.fromJson(value);
        case 'WebhookTestRequest':
          return WebhookTestRequest.fromJson(value);
        case 'WebhookTestResponse':
          return WebhookTestResponse.fromJson(value);
        case 'WebhookTestResult':
          return WebhookTestResult.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _regList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _regMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } on Exception catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String json, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return json;

    var decodedJson = jsonDecode(json);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String nullableContentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
      .where((p) => p.value != null)
      .map((p) => '${p.name}=${Uri.encodeQueryComponent(p.value)}');

    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    if (nullableContentType != null) {
      final contentType = nullableContentType;
      headerParams['Content-Type'] = contentType;
    }

    if(body is MultipartRequest) {
      var request = MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = nullableContentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      final nullableHeaderParams = (headerParams.isEmpty)? null: headerParams;
      switch(method) {
        case "POST":
          return client.post(url, headers: nullableHeaderParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: nullableHeaderParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: nullableHeaderParams);
        case "PATCH":
          return client.patch(url, headers: nullableHeaderParams, body: msgBody);
        case "HEAD":
          return client.head(url, headers: nullableHeaderParams);
        default:
          return client.get(url, headers: nullableHeaderParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  T getAuthentication<T extends Authentication>(String name) {
    var authentication = _authentications[name];

    return authentication is T ? authentication : null;
  }
}
