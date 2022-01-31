//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpiredInboxRecordProjection {
  /// Returns a new [ExpiredInboxRecordProjection] instance.
  ExpiredInboxRecordProjection({
    @required this.id,
    @required this.userId,
    @required this.emailAddress,
    @required this.createdAt,
  });

  String id;

  String userId;

  String emailAddress;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpiredInboxRecordProjection &&
     other.id == id &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'ExpiredInboxRecordProjection[id=$id, userId=$userId, emailAddress=$emailAddress, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'emailAddress'] = emailAddress;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ExpiredInboxRecordProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExpiredInboxRecordProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ExpiredInboxRecordProjection(
        id: json[r'id'],
        userId: json[r'userId'],
        emailAddress: json[r'emailAddress'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<ExpiredInboxRecordProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ExpiredInboxRecordProjection>[]
      : json.map((v) => ExpiredInboxRecordProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, ExpiredInboxRecordProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ExpiredInboxRecordProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ExpiredInboxRecordProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ExpiredInboxRecordProjection-objects as value to a dart map
  static Map<String, List<ExpiredInboxRecordProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ExpiredInboxRecordProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ExpiredInboxRecordProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

