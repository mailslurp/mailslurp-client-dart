//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxForwarderDto {
  /// Returns a new [InboxForwarderDto] instance.
  InboxForwarderDto({
    @required this.id,
    @required this.inboxId,
    this.name,
    @required this.field,
    @required this.match,
    this.forwardToRecipients = const [],
    @required this.createdAt,
  });

  String id;

  String inboxId;

  /// Name of inbox forwarder
  String name;

  /// Which field to match against
  InboxForwarderDtoFieldEnum field;

  /// Wild-card type pattern to apply to field
  String match;

  /// Who to send forwarded email to
  List<String> forwardToRecipients;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxForwarderDto &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.field == field &&
     other.match == match &&
     other.forwardToRecipients == forwardToRecipients &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (field == null ? 0 : field.hashCode) +
    (match == null ? 0 : match.hashCode) +
    (forwardToRecipients == null ? 0 : forwardToRecipients.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'InboxForwarderDto[id=$id, inboxId=$inboxId, name=$name, field=$field, match=$match, forwardToRecipients=$forwardToRecipients, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'field'] = field;
      json[r'match'] = match;
      json[r'forwardToRecipients'] = forwardToRecipients;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxForwarderDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxForwarderDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxForwarderDto(
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        field: InboxForwarderDtoFieldEnum.fromJson(json[r'field']),
        match: json[r'match'],
        forwardToRecipients: json[r'forwardToRecipients'] == null
          ? null
          : (json[r'forwardToRecipients'] as List).cast<String>(),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<InboxForwarderDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderDto>[]
      : json.map((v) => InboxForwarderDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxForwarderDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxForwarderDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxForwarderDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxForwarderDto-objects as value to a dart map
  static Map<String, List<InboxForwarderDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxForwarderDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxForwarderDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Which field to match against
class InboxForwarderDtoFieldEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxForwarderDtoFieldEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RECIPIENTS = InboxForwarderDtoFieldEnum._(r'RECIPIENTS');
  static const SENDER = InboxForwarderDtoFieldEnum._(r'SENDER');
  static const SUBJECT = InboxForwarderDtoFieldEnum._(r'SUBJECT');
  static const ATTACHMENTS = InboxForwarderDtoFieldEnum._(r'ATTACHMENTS');

  /// List of all possible values in this [enum][InboxForwarderDtoFieldEnum].
  static const values = <InboxForwarderDtoFieldEnum>[
    RECIPIENTS,
    SENDER,
    SUBJECT,
    ATTACHMENTS,
  ];

  static InboxForwarderDtoFieldEnum fromJson(dynamic value) =>
    InboxForwarderDtoFieldEnumTypeTransformer().decode(value);

  static List<InboxForwarderDtoFieldEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxForwarderDtoFieldEnum>[]
      : json
          .map((value) => InboxForwarderDtoFieldEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxForwarderDtoFieldEnum] to String,
/// and [decode] dynamic data back to [InboxForwarderDtoFieldEnum].
class InboxForwarderDtoFieldEnumTypeTransformer {
  const InboxForwarderDtoFieldEnumTypeTransformer._();

  factory InboxForwarderDtoFieldEnumTypeTransformer() => _instance ??= InboxForwarderDtoFieldEnumTypeTransformer._();

  String encode(InboxForwarderDtoFieldEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxForwarderDtoFieldEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxForwarderDtoFieldEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'RECIPIENTS': return InboxForwarderDtoFieldEnum.RECIPIENTS;
      case r'SENDER': return InboxForwarderDtoFieldEnum.SENDER;
      case r'SUBJECT': return InboxForwarderDtoFieldEnum.SUBJECT;
      case r'ATTACHMENTS': return InboxForwarderDtoFieldEnum.ATTACHMENTS;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxForwarderDtoFieldEnumTypeTransformer] instance.
  static InboxForwarderDtoFieldEnumTypeTransformer _instance;
}

