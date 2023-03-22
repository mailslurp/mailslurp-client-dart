//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxReplierOptions {
  /// Returns a new [CreateInboxReplierOptions] instance.
  CreateInboxReplierOptions({
    @required this.inboxId,
    this.name,
    @required this.field,
    @required this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    this.ignoreReplyTo,
    this.isHTML,
    this.body,
    this.templateId,
    this.templateVariables,
  });

  /// Inbox ID to attach replier to
  String inboxId;

  /// Name for replier
  String name;

  /// Field to match against to trigger inbox replier for inbound email
  CreateInboxReplierOptionsFieldEnum field;

  /// String or wildcard style match for field specified when evaluating reply rules. Use `*` to match anything.
  String match;

  /// Reply-to email address when sending replying
  String replyTo;

  /// Subject override when replying to email
  String subject;

  /// Send email from address
  String from;

  /// Email reply charset
  String charset;

  /// Ignore sender replyTo when responding. Send directly to the sender if enabled.
  bool ignoreReplyTo;

  /// Send HTML email
  bool isHTML;

  /// Email body for reply
  String body;

  /// ID of template to use when sending a reply
  String templateId;

  /// Template variable values
  Map<String, Object> templateVariables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxReplierOptions &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.isHTML == isHTML &&
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
    (ignoreReplyTo == null ? 0 : ignoreReplyTo.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (templateId == null ? 0 : templateId.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode);

  @override
  String toString() => 'CreateInboxReplierOptions[inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, ignoreReplyTo=$ignoreReplyTo, isHTML=$isHTML, body=$body, templateId=$templateId, templateVariables=$templateVariables]';

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
    if (ignoreReplyTo != null) {
      json[r'ignoreReplyTo'] = ignoreReplyTo;
    }
    if (isHTML != null) {
      json[r'isHTML'] = isHTML;
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

  /// Returns a new [CreateInboxReplierOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInboxReplierOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInboxReplierOptions(
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        field: CreateInboxReplierOptionsFieldEnum.fromJson(json[r'field']),
        match: json[r'match'],
        replyTo: json[r'replyTo'],
        subject: json[r'subject'],
        from: json[r'from'],
        charset: json[r'charset'],
        ignoreReplyTo: json[r'ignoreReplyTo'],
        isHTML: json[r'isHTML'],
        body: json[r'body'],
        templateId: json[r'templateId'],
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
    );

  static List<CreateInboxReplierOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxReplierOptions>[]
      : json.map((v) => CreateInboxReplierOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateInboxReplierOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateInboxReplierOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateInboxReplierOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateInboxReplierOptions-objects as value to a dart map
  static Map<String, List<CreateInboxReplierOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateInboxReplierOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateInboxReplierOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Field to match against to trigger inbox replier for inbound email
class CreateInboxReplierOptionsFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxReplierOptionsFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = CreateInboxReplierOptionsFieldEnum._(r'RECIPIENTS');
  static const SENDER = CreateInboxReplierOptionsFieldEnum._(r'SENDER');
  static const SUBJECT = CreateInboxReplierOptionsFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = CreateInboxReplierOptionsFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][CreateInboxReplierOptionsFieldEnum].
  static const values = <CreateInboxReplierOptionsFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static CreateInboxReplierOptionsFieldEnum fromJson(dynamic value) =>
    CreateInboxReplierOptionsFieldEnumTypeTransformer().decode(value);

  static List<CreateInboxReplierOptionsFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxReplierOptionsFieldEnum>[]
      : json
          .map((value) => CreateInboxReplierOptionsFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateInboxReplierOptionsFieldEnum] to String,
/// and [decode] dynamic data back to [CreateInboxReplierOptionsFieldEnum].
class CreateInboxReplierOptionsFieldEnumTypeTransformer {
  const CreateInboxReplierOptionsFieldEnumTypeTransformer._();

  factory CreateInboxReplierOptionsFieldEnumTypeTransformer() => _instance ??= CreateInboxReplierOptionsFieldEnumTypeTransformer._();

  String encode(CreateInboxReplierOptionsFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxReplierOptionsFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxReplierOptionsFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECIPIENTS': return CreateInboxReplierOptionsFieldEnum.RECIPIENTS;
      case r'SENDER': return CreateInboxReplierOptionsFieldEnum.SENDER;
      case r'SUBJECT': return CreateInboxReplierOptionsFieldEnum.SUBJECT;
      case r'ATTACHMENTS': return CreateInboxReplierOptionsFieldEnum.ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateInboxReplierOptionsFieldEnumTypeTransformer] instance.
  static CreateInboxReplierOptionsFieldEnumTypeTransformer _instance;
}

