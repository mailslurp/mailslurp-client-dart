//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendEmailOptions {
  /// Returns a new [SendEmailOptions] instance.
  SendEmailOptions({
    this.attachments = const [],
    this.bcc = const [],
    this.body,
    this.cc = const [],
    this.charset,
    this.from,
    this.isHTML,
    this.replyTo,
    this.sendStrategy,
    this.subject,
    this.template,
    this.templateVariables,
    this.to = const [],
    this.toContacts = const [],
    this.toGroup,
  });

  /// Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded.
  List<String> attachments;

  /// Optional list of bcc destination email addresses
  List<String> bcc;

  /// Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
  String body;

  /// Optional list of cc destination email addresses
  List<String> cc;

  /// Optional charset
  String charset;

  /// Optional from address. If not set the source inbox address will be used for this field. Beware of potential spam penalties when setting this field to an address not used by the inbox. For custom email addresses use a custom domain.
  String from;

  /// Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
  bool isHTML;

  /// Optional replyTo header
  String replyTo;

  /// Optional strategy to use when sending the email
  SendEmailOptionsSendStrategyEnum sendStrategy;

  /// Optional email subject line
  String subject;

  /// Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
  String template;

  /// Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
  Object templateVariables;

  /// List of destination email addresses. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating).
  List<String> to;

  /// Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
  List<String> toContacts;

  /// Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
  String toGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendEmailOptions &&
     other.attachments == attachments &&
     other.bcc == bcc &&
     other.body == body &&
     other.cc == cc &&
     other.charset == charset &&
     other.from == from &&
     other.isHTML == isHTML &&
     other.replyTo == replyTo &&
     other.sendStrategy == sendStrategy &&
     other.subject == subject &&
     other.template == template &&
     other.templateVariables == templateVariables &&
     other.to == to &&
     other.toContacts == toContacts &&
     other.toGroup == toGroup;

  @override
  int get hashCode =>
    (attachments == null ? 0 : attachments.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (template == null ? 0 : template.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (toContacts == null ? 0 : toContacts.hashCode) +
    (toGroup == null ? 0 : toGroup.hashCode);

  @override
  String toString() => 'SendEmailOptions[attachments=$attachments, bcc=$bcc, body=$body, cc=$cc, charset=$charset, from=$from, isHTML=$isHTML, replyTo=$replyTo, sendStrategy=$sendStrategy, subject=$subject, template=$template, templateVariables=$templateVariables, to=$to, toContacts=$toContacts, toGroup=$toGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
    if (sendStrategy != null) {
      json[r'sendStrategy'] = sendStrategy;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (template != null) {
      json[r'template'] = template;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (toContacts != null) {
      json[r'toContacts'] = toContacts;
    }
    if (toGroup != null) {
      json[r'toGroup'] = toGroup;
    }
    return json;
  }

  /// Returns a new [SendEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SendEmailOptions(
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        body: json[r'body'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        charset: json[r'charset'],
        from: json[r'from'],
        isHTML: json[r'isHTML'],
        replyTo: json[r'replyTo'],
        sendStrategy: SendEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        subject: json[r'subject'],
        template: json[r'template'],
        templateVariables: json[r'templateVariables'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        toContacts: json[r'toContacts'] == null
          ? null
          : (json[r'toContacts'] as List).cast<String>(),
        toGroup: json[r'toGroup'],
    );

  static List<SendEmailOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SendEmailOptions>[]
      : json.map((v) => SendEmailOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, SendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SendEmailOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SendEmailOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SendEmailOptions-objects as value to a dart map
  static Map<String, List<SendEmailOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SendEmailOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SendEmailOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Optional strategy to use when sending the email
class SendEmailOptionsSendStrategyEnum {
  /// Instantiate a new enum with the provided [value].
  const SendEmailOptionsSendStrategyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SINGLE_MESSAGE = SendEmailOptionsSendStrategyEnum._(r'SINGLE_MESSAGE');

  /// List of all possible values in this [enum][SendEmailOptionsSendStrategyEnum].
  static const values = <SendEmailOptionsSendStrategyEnum>[
    SINGLE_MESSAGE,
  ];

  static SendEmailOptionsSendStrategyEnum fromJson(dynamic value) =>
    SendEmailOptionsSendStrategyEnumTypeTransformer().decode(value);

  static List<SendEmailOptionsSendStrategyEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SendEmailOptionsSendStrategyEnum>[]
      : json
          .map((value) => SendEmailOptionsSendStrategyEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [SendEmailOptionsSendStrategyEnum] to String,
/// and [decode] dynamic data back to [SendEmailOptionsSendStrategyEnum].
class SendEmailOptionsSendStrategyEnumTypeTransformer {
  const SendEmailOptionsSendStrategyEnumTypeTransformer._();

  factory SendEmailOptionsSendStrategyEnumTypeTransformer() => _instance ??= SendEmailOptionsSendStrategyEnumTypeTransformer._();

  String encode(SendEmailOptionsSendStrategyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendEmailOptionsSendStrategyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendEmailOptionsSendStrategyEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SINGLE_MESSAGE': return SendEmailOptionsSendStrategyEnum.SINGLE_MESSAGE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [SendEmailOptionsSendStrategyEnumTypeTransformer] instance.
  static SendEmailOptionsSendStrategyEnumTypeTransformer _instance;
}

