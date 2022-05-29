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
    @required this.emailAddress,
    @required this.userId,
    this.useThreads,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String name;

  String id;

  String inboxId;

  String emailAddress;

  String userId;

  bool useThreads;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasProjection &&
     other.name == name &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.emailAddress == emailAddress &&
     other.userId == userId &&
     other.useThreads == useThreads &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'AliasProjection[name=$name, id=$id, inboxId=$inboxId, emailAddress=$emailAddress, userId=$userId, useThreads=$useThreads, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
      json[r'inboxId'] = inboxId;
      json[r'emailAddress'] = emailAddress;
      json[r'userId'] = userId;
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
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
        emailAddress: json[r'emailAddress'],
        userId: json[r'userId'],
        useThreads: json[r'useThreads'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
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

