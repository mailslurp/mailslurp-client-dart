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
    @required this.body,
    @required this.userId,
    @required this.createdAt,
    @required this.phoneNumber,
    @required this.fromNumber,
    @required this.read,
  });

  String id;

  String body;

  String userId;

  DateTime createdAt;

  String phoneNumber;

  String fromNumber;

  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsProjection &&
     other.id == id &&
     other.body == body &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.read == read;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (fromNumber == null ? 0 : fromNumber.hashCode) +
    (read == null ? 0 : read.hashCode);

  @override
  String toString() => 'SmsProjection[id=$id, body=$body, userId=$userId, createdAt=$createdAt, phoneNumber=$phoneNumber, fromNumber=$fromNumber, read=$read]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'body'] = body;
      json[r'userId'] = userId;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'phoneNumber'] = phoneNumber;
      json[r'fromNumber'] = fromNumber;
      json[r'read'] = read;
    return json;
  }

  /// Returns a new [SmsProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SmsProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SmsProjection(
        id: json[r'id'],
        body: json[r'body'],
        userId: json[r'userId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        phoneNumber: json[r'phoneNumber'],
        fromNumber: json[r'fromNumber'],
        read: json[r'read'],
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

