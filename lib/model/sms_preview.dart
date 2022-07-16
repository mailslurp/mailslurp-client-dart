//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsPreview {
  /// Returns a new [SmsPreview] instance.
  SmsPreview({
    @required this.id,
    @required this.userId,
    @required this.phoneNumber,
    @required this.fromNumber,
    @required this.createdAt,
  });

  String id;

  String userId;

  String phoneNumber;

  String fromNumber;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsPreview &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (fromNumber == null ? 0 : fromNumber.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'SmsPreview[id=$id, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'phoneNumber'] = phoneNumber;
      json[r'fromNumber'] = fromNumber;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SmsPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SmsPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SmsPreview(
        id: json[r'id'],
        userId: json[r'userId'],
        phoneNumber: json[r'phoneNumber'],
        fromNumber: json[r'fromNumber'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<SmsPreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsPreview>[]
      : json.map((v) => SmsPreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, SmsPreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SmsPreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SmsPreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SmsPreview-objects as value to a dart map
  static Map<String, List<SmsPreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SmsPreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SmsPreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

