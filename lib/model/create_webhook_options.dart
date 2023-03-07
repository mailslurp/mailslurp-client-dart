//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateWebhookOptions {
  /// Returns a new [CreateWebhookOptions] instance.
  CreateWebhookOptions({
    @required this.url,
    this.basicAuth,
    this.name,
    this.eventName,
    this.includeHeaders,
    this.requestBodyTemplate,
    this.ignoreInsecureSslCertificates,
  });

  /// Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received or an event is trigger. The payload of the submitted JSON is dependent on the webhook event type. See docs.mailslurp.com/webhooks for event payload documentation.
  String url;

  BasicAuthOptions basicAuth;

  /// Optional name for the webhook
  String name;

  /// Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
  CreateWebhookOptionsEventNameEnum eventName;

  WebhookHeaders includeHeaders;

  /// Template for the JSON body of the webhook request that will be sent to your server. Use Moustache style `{{variableName}}` templating to use parts of the standard webhook payload for the given event.
  String requestBodyTemplate;

  /// Ignore insecure SSL certificates when sending request. Useful for self-signed certs.
  bool ignoreInsecureSslCertificates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateWebhookOptions &&
     other.url == url &&
     other.basicAuth == basicAuth &&
     other.name == name &&
     other.eventName == eventName &&
     other.includeHeaders == includeHeaders &&
     other.requestBodyTemplate == requestBodyTemplate &&
     other.ignoreInsecureSslCertificates == ignoreInsecureSslCertificates;

  @override
  int get hashCode =>
    (url == null ? 0 : url.hashCode) +
    (basicAuth == null ? 0 : basicAuth.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (eventName == null ? 0 : eventName.hashCode) +
    (includeHeaders == null ? 0 : includeHeaders.hashCode) +
    (requestBodyTemplate == null ? 0 : requestBodyTemplate.hashCode) +
    (ignoreInsecureSslCertificates == null ? 0 : ignoreInsecureSslCertificates.hashCode);

  @override
  String toString() => 'CreateWebhookOptions[url=$url, basicAuth=$basicAuth, name=$name, eventName=$eventName, includeHeaders=$includeHeaders, requestBodyTemplate=$requestBodyTemplate, ignoreInsecureSslCertificates=$ignoreInsecureSslCertificates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = url;
    if (basicAuth != null) {
      json[r'basicAuth'] = basicAuth;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (eventName != null) {
      json[r'eventName'] = eventName;
    }
    if (includeHeaders != null) {
      json[r'includeHeaders'] = includeHeaders;
    }
    if (requestBodyTemplate != null) {
      json[r'requestBodyTemplate'] = requestBodyTemplate;
    }
    if (ignoreInsecureSslCertificates != null) {
      json[r'ignoreInsecureSslCertificates'] = ignoreInsecureSslCertificates;
    }
    return json;
  }

  /// Returns a new [CreateWebhookOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateWebhookOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateWebhookOptions(
        url: json[r'url'],
        basicAuth: BasicAuthOptions.fromJson(json[r'basicAuth']),
        name: json[r'name'],
        eventName: CreateWebhookOptionsEventNameEnum.fromJson(json[r'eventName']),
        includeHeaders: WebhookHeaders.fromJson(json[r'includeHeaders']),
        requestBodyTemplate: json[r'requestBodyTemplate'],
        ignoreInsecureSslCertificates: json[r'ignoreInsecureSslCertificates'],
    );

  static List<CreateWebhookOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateWebhookOptions>[]
      : json.map((v) => CreateWebhookOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateWebhookOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateWebhookOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateWebhookOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookOptions-objects as value to a dart map
  static Map<String, List<CreateWebhookOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateWebhookOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateWebhookOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Optional webhook event name. Default is `EMAIL_RECEIVED` and is triggered when an email is received by the inbox associated with the webhook. Payload differ according to the webhook event name.
class CreateWebhookOptionsEventNameEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateWebhookOptionsEventNameEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL_RECEIVED = CreateWebhookOptionsEventNameEnum._(r'EMAIL_RECEIVED');
  static const NEW_EMAIL = CreateWebhookOptionsEventNameEnum._(r'NEW_EMAIL');
  static const NEW_CONTACT = CreateWebhookOptionsEventNameEnum._(r'NEW_CONTACT');
  static const NEW_ATTACHMENT = CreateWebhookOptionsEventNameEnum._(r'NEW_ATTACHMENT');
  static const EMAIL_OPENED = CreateWebhookOptionsEventNameEnum._(r'EMAIL_OPENED');
  static const EMAIL_READ = CreateWebhookOptionsEventNameEnum._(r'EMAIL_READ');
  static const DELIVERY_STATUS = CreateWebhookOptionsEventNameEnum._(r'DELIVERY_STATUS');
  static const BOUNCE = CreateWebhookOptionsEventNameEnum._(r'BOUNCE');
  static const BOUNCE_RECIPIENT = CreateWebhookOptionsEventNameEnum._(r'BOUNCE_RECIPIENT');
  static const NEW_SMS = CreateWebhookOptionsEventNameEnum._(r'NEW_SMS');

  /// List of all possible values in this [enum][CreateWebhookOptionsEventNameEnum].
  static const values = <CreateWebhookOptionsEventNameEnum>[
    EMAIL_RECEIVED,
    NEW_EMAIL,
    NEW_CONTACT,
    NEW_ATTACHMENT,
    EMAIL_OPENED,
    EMAIL_READ,
    DELIVERY_STATUS,
    BOUNCE,
    BOUNCE_RECIPIENT,
    NEW_SMS,
  ];

  static CreateWebhookOptionsEventNameEnum fromJson(dynamic value) =>
    CreateWebhookOptionsEventNameEnumTypeTransformer().decode(value);

  static List<CreateWebhookOptionsEventNameEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateWebhookOptionsEventNameEnum>[]
      : json
          .map((value) => CreateWebhookOptionsEventNameEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateWebhookOptionsEventNameEnum] to String,
/// and [decode] dynamic data back to [CreateWebhookOptionsEventNameEnum].
class CreateWebhookOptionsEventNameEnumTypeTransformer {
  const CreateWebhookOptionsEventNameEnumTypeTransformer._();

  factory CreateWebhookOptionsEventNameEnumTypeTransformer() => _instance ??= CreateWebhookOptionsEventNameEnumTypeTransformer._();

  String encode(CreateWebhookOptionsEventNameEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateWebhookOptionsEventNameEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateWebhookOptionsEventNameEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'EMAIL_RECEIVED': return CreateWebhookOptionsEventNameEnum.EMAIL_RECEIVED;
      case r'NEW_EMAIL': return CreateWebhookOptionsEventNameEnum.NEW_EMAIL;
      case r'NEW_CONTACT': return CreateWebhookOptionsEventNameEnum.NEW_CONTACT;
      case r'NEW_ATTACHMENT': return CreateWebhookOptionsEventNameEnum.NEW_ATTACHMENT;
      case r'EMAIL_OPENED': return CreateWebhookOptionsEventNameEnum.EMAIL_OPENED;
      case r'EMAIL_READ': return CreateWebhookOptionsEventNameEnum.EMAIL_READ;
      case r'DELIVERY_STATUS': return CreateWebhookOptionsEventNameEnum.DELIVERY_STATUS;
      case r'BOUNCE': return CreateWebhookOptionsEventNameEnum.BOUNCE;
      case r'BOUNCE_RECIPIENT': return CreateWebhookOptionsEventNameEnum.BOUNCE_RECIPIENT;
      case r'NEW_SMS': return CreateWebhookOptionsEventNameEnum.NEW_SMS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateWebhookOptionsEventNameEnumTypeTransformer] instance.
  static CreateWebhookOptionsEventNameEnumTypeTransformer _instance;
}

