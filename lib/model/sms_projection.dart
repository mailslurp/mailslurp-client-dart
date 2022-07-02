//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsProjection {
  /// Returns a new [SmsProjection] instance.
  SmsProjection({
    @required this.id,
    @required this.userId,
    @required this.phoneNumber,
    @required this.createdAt,
    @required this.read,
    @required this.fromNumber,
  });

  String id;

  String userId;

  String phoneNumber;

  DateTime createdAt;

  bool read;

  String fromNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsProjection &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.createdAt == createdAt &&
     other.read == read &&
     other.fromNumber == fromNumber;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (fromNumber == null ? 0 : fromNumber.hashCode);

  @override
  String toString() => 'SmsProjection[id=$id, userId=$userId, phoneNumber=$phoneNumber, createdAt=$createdAt, read=$read, fromNumber=$fromNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'phoneNumber'] = phoneNumber;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'read'] = read;
      json[r'fromNumber'] = fromNumber;
    return json;
  }

  /// Returns a new [SmsProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SmsProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SmsProjection(
        id: json[r'id'],
        userId: json[r'userId'],
        phoneNumber: json[r'phoneNumber'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        read: json[r'read'],
        fromNumber: json[r'fromNumber'],
    );

  static List<SmsProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsProjection>[]
      : json.map((v) => SmsProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, SmsProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SmsProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SmsProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SmsProjection-objects as value to a dart map
  static Map<String, List<SmsProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SmsProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SmsProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}
