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
    this.useThreads,
    @required this.updatedAt,
  });

  String name;

  String id;

  String inboxId;

  String userId;

  String emailAddress;

  DateTime createdAt;

  bool useThreads;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasProjection &&
     other.name == name &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt &&
     other.useThreads == useThreads &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'AliasProjection[name=$name, id=$id, inboxId=$inboxId, userId=$userId, emailAddress=$emailAddress, createdAt=$createdAt, useThreads=$useThreads, updatedAt=$updatedAt]';

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
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
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
        useThreads: json[r'useThreads'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
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

