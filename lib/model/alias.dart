//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Alias {
  /// Returns a new [Alias] instance.
  Alias({
    @required this.createdAt,
    @required this.emailAddress,
    this.id,
    @required this.inboxId,
    this.name,
    @required this.updatedAt,
    this.useThreads,
    @required this.userId,
  });

  DateTime createdAt;

  String emailAddress;

  String id;

  String inboxId;

  String name;

  DateTime updatedAt;

  bool useThreads;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Alias &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.updatedAt == updatedAt &&
     other.useThreads == useThreads &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (useThreads == null ? 0 : useThreads.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'Alias[createdAt=$createdAt, emailAddress=$emailAddress, id=$id, inboxId=$inboxId, name=$name, updatedAt=$updatedAt, useThreads=$useThreads, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'emailAddress'] = emailAddress;
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'inboxId'] = inboxId;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    if (useThreads != null) {
      json[r'useThreads'] = useThreads;
    }
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [Alias] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Alias fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Alias(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddress: json[r'emailAddress'],
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        useThreads: json[r'useThreads'],
        userId: json[r'userId'],
    );

  static List<Alias> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Alias>[]
      : json.map((v) => Alias.fromJson(v)).toList(growable: true == growable);

  static Map<String, Alias> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Alias>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Alias.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Alias-objects as value to a dart map
  static Map<String, List<Alias>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Alias>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Alias.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

