//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsDto {
  /// Returns a new [SmsDto] instance.
  SmsDto({
    @required this.id,
    @required this.userId,
    @required this.phoneNumber,
    @required this.fromNumber,
    @required this.body,
    @required this.read,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String phoneNumber;

  String fromNumber;

  String body;

  bool read;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.body == body &&
     other.read == read &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (fromNumber == null ? 0 : fromNumber.hashCode) +
    (body == null ? 0 : body.hashCode) +
    (read == null ? 0 : read.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'SmsDto[id=$id, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, body=$body, read=$read, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
      json[r'phoneNumber'] = phoneNumber;
      json[r'fromNumber'] = fromNumber;
      json[r'body'] = body;
      json[r'read'] = read;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SmsDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SmsDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : SmsDto(
        id: json[r'id'],
        userId: json[r'userId'],
        phoneNumber: json[r'phoneNumber'],
        fromNumber: json[r'fromNumber'],
        body: json[r'body'],
        read: json[r'read'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<SmsDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <SmsDto>[]
      : json.map((v) => SmsDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, SmsDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, SmsDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = SmsDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of SmsDto-objects as value to a dart map
  static Map<String, List<SmsDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<SmsDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = SmsDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

