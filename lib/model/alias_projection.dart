//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AliasProjection {
  /// Returns a new [AliasProjection] instance.
  AliasProjection({
    this.name,
    @required this.id,
    @required this.inboxId,
    @required this.userId,
    @required this.emailAddress,
    @required this.createdAt,
    @required this.updatedAt,
    this.useThreads,
  });

  String name;

  String id;

  String inboxId;

  String userId;

  String emailAddress;

  DateTime createdAt;

  DateTime updatedAt;

  bool useThreads;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasProjection &&
     other.name == name &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.useThreads == useThreads;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode);

  @override
  String toString() => 'AliasProjection[name=$name, id=$id, inboxId=$inboxId, userId=$userId, emailAddress=$emailAddress, createdAt=$createdAt, updatedAt=$updatedAt, useThreads=$useThreads]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
      json[r'userId'] = userId;
      json[r'emailAddress'] = emailAddress;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
    return json;
  }

  /// Returns a new [AliasProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AliasProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : AliasProjection(
        name: json[r'name'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        userId: json[r'userId'],
        emailAddress: json[r'emailAddress'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        useThreads: json[r'useThreads'],
    );

  static List<AliasProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <AliasProjection>[]
      : json.map((v) => AliasProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, AliasProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, AliasProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = AliasProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of AliasProjection-objects as value to a dart map
  static Map<String, List<AliasProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<AliasProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = AliasProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

