//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateInboxReplierOptions {
  /// Returns a new [UpdateInboxReplierOptions] instance.
  UpdateInboxReplierOptions({
    @required this.inboxId,
    this.name,
    @required this.field,
    @required this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    this.isHTML,
    this.ignoreReplyTo,
    this.body,
    this.templateId,
    this.templateVariables,
  });

  /// Inbox ID to attach replier to
  String inboxId;

  /// Name for replier
  String name;

  /// Field to match against to trigger inbox replier for inbound email
  UpdateInboxReplierOptionsFieldEnum field;

  /// String or wildcard style match for field specified when evaluating reply rules
  String match;

  /// Reply-to email address when sending replying
  String replyTo;

  /// Subject override when replying to email
  String subject;

  /// Send email from address
  String from;

  /// Email reply charset
  String charset;

  /// Send HTML email
  bool isHTML;

  /// Ignore sender replyTo when responding. Send directly to the sender if enabled.
  bool ignoreReplyTo;

  /// Email body for reply
  String body;

  /// ID of template to use when sending a reply
  String templateId;

  /// Template variable values
  Map<String, Object> templateVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateInboxReplierOptions &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.body == body &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables;

  @override
  int get hashCode =>
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (field == null ? 0 : field.hashCode) +
    (match == null ? 0 : match.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (ignoreReplyTo == null ? 0 : ignoreReplyTo.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (templateId == null ? 0 : templateId.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode);

  @override
  String toString() => 'UpdateInboxReplierOptions[inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, isHTML=$isHTML, ignoreReplyTo=$ignoreReplyTo, body=$body, templateId=$templateId, templateVariables=$templateVariables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'field'] = field;
      json[r'match'] = match;
    if (replyTo != null) {
      json[r'replyTo'] = replyTo;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (from != null) {
      json[r'from'] = from;
    }
    if (charset != null) {
      json[r'charset'] = charset;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
    }
    if (ignoreReplyTo != null) {
      json[r'ignoreReplyTo'] = ignoreReplyTo;
    }
    if (body != null) {
      json[r'body'] = body;
    }
    if (templateId != null) {
      json[r'templateId'] = templateId;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
    return json;
  }

  /// Returns a new [UpdateInboxReplierOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UpdateInboxReplierOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UpdateInboxReplierOptions(
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        field: UpdateInboxReplierOptionsFieldEnum.fromJson(json[r'field']),
        match: json[r'match'],
        replyTo: json[r'replyTo'],
        subject: json[r'subject'],
        from: json[r'from'],
        charset: json[r'charset'],
        isHTML: json[r'isHTML'],
        ignoreReplyTo: json[r'ignoreReplyTo'],
        body: json[r'body'],
        templateId: json[r'templateId'],
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
    );

  static List<UpdateInboxReplierOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateInboxReplierOptions>[]
      : json.map((v) => UpdateInboxReplierOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, UpdateInboxReplierOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UpdateInboxReplierOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UpdateInboxReplierOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxReplierOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxReplierOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UpdateInboxReplierOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UpdateInboxReplierOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Field to match against to trigger inbox replier for inbound email
class UpdateInboxReplierOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const UpdateInboxReplierOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = UpdateInboxReplierOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = UpdateInboxReplierOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = UpdateInboxReplierOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = UpdateInboxReplierOptionsFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][UpdateInboxReplierOptionsFieldEnum].
  static const values = <UpdateInboxReplierOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static UpdateInboxReplierOptionsFieldEnum fromJson(dynamic value) =>
    UpdateInboxReplierOptionsFieldEnumTypeTransformer().decode(value);

  static List<UpdateInboxReplierOptionsFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UpdateInboxReplierOptionsFieldEnum>[]
      : json
          .map((value) => UpdateInboxReplierOptionsFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UpdateInboxReplierOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [UpdateInboxReplierOptionsFieldEnum].
class UpdateInboxReplierOptionsFieldEnumTypeTransformer {
  const UpdateInboxReplierOptionsFieldEnumTypeTransformer._();

  factory UpdateInboxReplierOptionsFieldEnumTypeTransformer() => _instance ??= UpdateInboxReplierOptionsFieldEnumTypeTransformer._();

  String encode(UpdateInboxReplierOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UpdateInboxReplierOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateInboxReplierOptionsFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECIPIENTS': return UpdateInboxReplierOptionsFieldEnum.RECIPIENTS;
      case r'SENDER': return UpdateInboxReplierOptionsFieldEnum.SENDER;
      case r'SUBJECT': return UpdateInboxReplierOptionsFieldEnum.SUBJECT;
      case r'ATTACHMENTS': return UpdateInboxReplierOptionsFieldEnum.ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UpdateInboxReplierOptionsFieldEnumTypeTransformer] instance.
  static UpdateInboxReplierOptionsFieldEnumTypeTransformer _instance;
}

