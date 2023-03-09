//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxReplierDto {
  /// Returns a new [InboxReplierDto] instance.
  InboxReplierDto({
    @required this.id,
    @required this.inboxId,
    this.name,
    @required this.field,
    @required this.match,
    this.replyTo,
    this.subject,
    this.from,
    this.charset,
    @required this.isHTML,
    this.templateId,
    this.templateVariables = const {},
    @required this.ignoreReplyTo,
    @required this.createdAt,
  });

  String id;

  String inboxId;

  String name;

  InboxReplierDtoFieldEnum field;

  String match;

  String replyTo;

  String subject;

  String from;

  String charset;

  bool isHTML;

  String templateId;

  Map<String, Object> templateVariables;

  bool ignoreReplyTo;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxReplierDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.replyTo == replyTo &&
     other.subject == subject &&
     other.from == from &&
     other.charset == charset &&
     other.isHTML == isHTML &&
     other.templateId == templateId &&
     other.templateVariables == templateVariables &&
     other.ignoreReplyTo == ignoreReplyTo &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (field == null ? 0 : field.hashCode) +
    (match == null ? 0 : match.hashCode) +
    (replyTo == null ? 0 : replyTo.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (charset == null ? 0 : charset.hashCode) +
    (isHTML == null ? 0 : isHTML.hashCode) +
    (templateId == null ? 0 : templateId.hashCode) +
    (templateVariables == null ? 0 : templateVariables.hashCode) +
    (ignoreReplyTo == null ? 0 : ignoreReplyTo.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'InboxReplierDto[id=$id, inboxId=$inboxId, name=$name, field=$field, match=$match, replyTo=$replyTo, subject=$subject, from=$from, charset=$charset, isHTML=$isHTML, templateId=$templateId, templateVariables=$templateVariables, ignoreReplyTo=$ignoreReplyTo, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
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
      json[r'isHTML'] = isHTML;
    if (templateId != null) {
      json[r'templateId'] = templateId;
    }
    if (templateVariables != null) {
      json[r'templateVariables'] = templateVariables;
    }
      json[r'ignoreReplyTo'] = ignoreReplyTo;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxReplierDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxReplierDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxReplierDto(
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        field: InboxReplierDtoFieldEnum.fromJson(json[r'field']),
        match: json[r'match'],
        replyTo: json[r'replyTo'],
        subject: json[r'subject'],
        from: json[r'from'],
        charset: json[r'charset'],
        isHTML: json[r'isHTML'],
        templateId: json[r'templateId'],
        templateVariables: json[r'templateVariables'] == null
          ? null
          : Object.mapFromJson(json[r'templateVariables']),
        ignoreReplyTo: json[r'ignoreReplyTo'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<InboxReplierDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxReplierDto>[]
      : json.map((v) => InboxReplierDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxReplierDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxReplierDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxReplierDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxReplierDto-objects as value to a dart map
  static Map<String, List<InboxReplierDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxReplierDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxReplierDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxReplierDtoFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxReplierDtoFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = InboxReplierDtoFieldEnum._(r'RECIPIENTS');
  static const SENDER = InboxReplierDtoFieldEnum._(r'SENDER');
  static const SUBJECT = InboxReplierDtoFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = InboxReplierDtoFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][InboxReplierDtoFieldEnum].
  static const values = <InboxReplierDtoFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static InboxReplierDtoFieldEnum fromJson(dynamic value) =>
    InboxReplierDtoFieldEnumTypeTransformer().decode(value);

  static List<InboxReplierDtoFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxReplierDtoFieldEnum>[]
      : json
          .map((value) => InboxReplierDtoFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxReplierDtoFieldEnum] to String,
/// and [decode] dynamic data back to [InboxReplierDtoFieldEnum].
class InboxReplierDtoFieldEnumTypeTransformer {
  const InboxReplierDtoFieldEnumTypeTransformer._();

  factory InboxReplierDtoFieldEnumTypeTransformer() => _instance ??= InboxReplierDtoFieldEnumTypeTransformer._();

  String encode(InboxReplierDtoFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxReplierDtoFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxReplierDtoFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECIPIENTS': return InboxReplierDtoFieldEnum.RECIPIENTS;
      case r'SENDER': return InboxReplierDtoFieldEnum.SENDER;
      case r'SUBJECT': return InboxReplierDtoFieldEnum.SUBJECT;
      case r'ATTACHMENTS': return InboxReplierDtoFieldEnum.ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxReplierDtoFieldEnumTypeTransformer] instance.
  static InboxReplierDtoFieldEnumTypeTransformer _instance;
}

