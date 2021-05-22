//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxProjection {
  /// Returns a new [InboxProjection] instance.
  InboxProjection({
    @required this.createdAt,
    this.emailAddress,
    @required this.favourite,
    @required this.id,
    this.inboxType,
    this.name,
    this.tags = const [],
    @required this.teamAccess,
  });

  DateTime createdAt;

  String emailAddress;

  bool favourite;

  String id;

  InboxProjectionInboxTypeEnum inboxType;

  String name;

  List<String> tags;

  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxProjection &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.favourite == favourite &&
     other.id == id &&
     other.inboxType == inboxType &&
     other.name == name &&
     other.tags == tags &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxType == null ? 0 : inboxType.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode);

  @override
  String toString() => 'InboxProjection[createdAt=$createdAt, emailAddress=$emailAddress, favourite=$favourite, id=$id, inboxType=$inboxType, name=$name, tags=$tags, teamAccess=$teamAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
      json[r'favourite'] = favourite;
      json[r'id'] = id;
    if (inboxType != null) {
      json[r'inboxType'] = inboxType;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
      json[r'teamAccess'] = teamAccess;
    return json;
  }

  /// Returns a new [InboxProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddress: json[r'emailAddress'],
        favourite: json[r'favourite'],
        id: json[r'id'],
        inboxType: InboxProjectionInboxTypeEnum.fromJson(json[r'inboxType']),
        name: json[r'name'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
    );

  static List<InboxProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxProjection>[]
      : json.map((v) => InboxProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxProjection-objects as value to a dart map
  static Map<String, List<InboxProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class InboxProjectionInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxProjectionInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = InboxProjectionInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = InboxProjectionInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][InboxProjectionInboxTypeEnum].
  static const values = <InboxProjectionInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static InboxProjectionInboxTypeEnum fromJson(dynamic value) =>
    InboxProjectionInboxTypeEnumTypeTransformer().decode(value);

  static List<InboxProjectionInboxTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxProjectionInboxTypeEnum>[]
      : json
          .map((value) => InboxProjectionInboxTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxProjectionInboxTypeEnum] to String,
/// and [decode] dynamic data back to [InboxProjectionInboxTypeEnum].
class InboxProjectionInboxTypeEnumTypeTransformer {
  const InboxProjectionInboxTypeEnumTypeTransformer._();

  factory InboxProjectionInboxTypeEnumTypeTransformer() => _instance ??= InboxProjectionInboxTypeEnumTypeTransformer._();

  String encode(InboxProjectionInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxProjectionInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxProjectionInboxTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return InboxProjectionInboxTypeEnum.HTTP_INBOX;
      case r'SMTP_INBOX': return InboxProjectionInboxTypeEnum.SMTP_INBOX;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxProjectionInboxTypeEnumTypeTransformer] instance.
  static InboxProjectionInboxTypeEnumTypeTransformer _instance;
}

