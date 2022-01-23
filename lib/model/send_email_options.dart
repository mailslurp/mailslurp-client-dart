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
    this.toContacts = const [],
    this.toGroup,
    this.to = const [],
    this.from,
    this.cc = const [],
    this.bcc = const [],
    this.subject,
    this.replyTo,
    this.body,
    this.html,
    this.isHTML,
    this.charset,
    this.attachments = const [],
    this.templateVariables = const {},
    this.template,
    this.sendStrategy,
    this.useInboxName,
    this.addTrackingPixel,
  });

  /// Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients.
  List<String> toContacts;

  /// Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients
  String toGroup;

  /// List of destination email addresses. Each email address must be RFC 5322 format. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). Be cautious when sending emails that your recipients exist. High bounce rates (meaning a high percentage of emails cannot be delivered because an address does not exist) can result in account freezing.
  List<String> to;

  /// Optional from address. Email address is RFC 5322 format and may include a display name and email in angle brackets (`my@address.com` or `My inbox <my@address.com>`). If no sender is set the source inbox address will be used for this field. If you set `useInboxName` to `true` the from field will include the inbox name as a display name: `inbox_name <inbox@address.com>`. For this to work use the name field when creating an inbox. Beware of potential spam penalties when setting the from field to an address not used by the inbox. Your emails may get blocked by services if you impersonate another address. To use a custom email addresses use a custom domain. You can create domains with the DomainController. The domain must be verified in the dashboard before it can be used.
  String from;

  /// Optional list of cc destination email addresses
  List<String> cc;

  /// Optional list of bcc destination email addresses
  List<String> bcc;

  /// Optional email subject line
  String subject;

  /// Optional replyTo header
  String replyTo;

  /// Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body.
  String body;

  /// Optional HTML flag to indicate that contents is HTML. Set's a `content-type: text/html` for email. (Deprecated: use `isHTML` instead.)
  bool html;

  /// Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients
  bool isHTML;

  /// Optional charset
  String charset;

  /// Optional list of attachment IDs to send with this email. You must first upload each attachment separately via method call or dashboard in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. There are several ways to upload that support `multi-part form`, `base64 file encoding`, and octet stream binary uploads. See the `UploadController` for available methods. 
  List<String> attachments;

  /// Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found.
  Map<String, Object> templateVariables;

  /// Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard.
  String template;

  /// How an email should be sent based on its recipients
  SendEmailOptionsSendStrategyEnum sendStrategy;

  /// Use name of inbox as sender email address name. Will construct RFC 5322 email address with `Inbox name <inbox@address.com>` if the inbox has a name.
  bool useInboxName;

  /// Add tracking pixel to email
  bool addTrackingPixel;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendEmailOptions &&
     other.toContacts == toContacts &&
     other.toGroup == toGroup &&
     other.to == to &&
     other.from == from &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.subject == subject &&
     other.replyTo == replyTo &&
     other.body == body &&
     other.html == html &&
     other.isHTML == isHTML &&
     other.charset == charset &&
     other.attachments == attachments &&
     other.templateVariables == templateVariables &&
     other.template == template &&
     other.sendStrategy == sendStrategy &&
     other.useInboxName == useInboxName &&
     other.addTrackingPixel == addTrackingPixel;

  @override
  int get hashCode =>
    (toContacts == null ? 0 : toContacts.hashCode) +
    (toGroup == null ? 0 : toGroup.hashCode) +
    (to == null ? 0 : to.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (cc == null ? 0 : cc.hashCode) +
    (bcc == null ? 0 : bcc.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (html == null ? 0 : html.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (attachments == null ? 0 : attachments.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (template == null ? 0 : template.hashCode) +
    (sendStrategy == null ? 0 : sendStrategy.hashCode) +
    (useInboxName == null ? 0 : useInboxName.hashCode) +
    (addTrackingPixel == null ? 0 : addTrackingPixel.hashCode);

  @override
  String toString() => 'SendEmailOptions[toContacts=$toContacts, toGroup=$toGroup, to=$to, from=$from, cc=$cc, bcc=$bcc, subject=$subject, replyTo=$replyTo, body=$body, html=$html, isHTML=$isHTML, charset=$charset, attachments=$attachments, templateVariables=$templateVariables, template=$template, sendStrategy=$sendStrategy, useInboxName=$useInboxName, addTrackingPixel=$addTrackingPixel]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (toContacts != null) {
      json[r'toContacts'] = toContacts;
    }
    if (toGroup != null) {
      json[r'toGroup'] = toGroup;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (cc != null) {
      json[r'cc'] = cc;
    }
    if (bcc != null) {
      json[r'bcc'] = bcc;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (html != null) {
      json[r'html'] = html;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (attachments != null) {
      json[r'attachments'] = attachments;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    if (template != null) {
      json[r'template'] = template;
    }
    if (sendStrategy != null) {
      json[r'sendStrategy'] = sendStrategy;
    }
    if (useInboxName != null) {
      json[r'useInboxName'] = useInboxName;
    }
    if (addTrackingPixel != null) {
      json[r'addTrackingPixel'] = addTrackingPixel;
    }
    return json;
  }

  /// Returns a new [SendEmailOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SendEmailOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SendEmailOptions(
        toContacts: json[r'toContacts'] == null
          ? null
          : (json[r'toContacts'] as List).cast<String>(),
        toGroup: json[r'toGroup'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
        from: json[r'from'],
        cc: json[r'cc'] == null
          ? null
          : (json[r'cc'] as List).cast<String>(),
        bcc: json[r'bcc'] == null
          ? null
          : (json[r'bcc'] as List).cast<String>(),
        subject: json[r'subject'],
        replyTo: json[r'replyTo'],
        body: json[r'body'],
        html: json[r'html'],
        isHTML: json[r'isHTML'],
        charset: json[r'charset'],
        attachments: json[r'attachments'] == null
          ? null
          : (json[r'attachments'] as List).cast<String>(),
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
        template: json[r'template'],
        sendStrategy: SendEmailOptionsSendStrategyEnum.fromJson(json[r'sendStrategy']),
        useInboxName: json[r'useInboxName'],
        addTrackingPixel: json[r'addTrackingPixel'],
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

/// How an email should be sent based on its recipients
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

