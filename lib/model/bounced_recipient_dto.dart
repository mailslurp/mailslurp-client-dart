//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BouncedRecipientDto {
  /// Returns a new [BouncedRecipientDto] instance.
  BouncedRecipientDto({
    @required this.createdAt,
    this.id,
    @required this.recipient,
    @required this.userId,
  });

  DateTime createdAt;

  String id;

  String recipient;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BouncedRecipientDto &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.recipient == recipient &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'BouncedRecipientDto[createdAt=$createdAt, id=$id, recipient=$recipient, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'recipient'] = recipient;
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [BouncedRecipientDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BouncedRecipientDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BouncedRecipientDto(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        recipient: json[r'recipient'],
        userId: json[r'userId'],
    );

  static List<BouncedRecipientDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BouncedRecipientDto>[]
      : json.map((v) => BouncedRecipientDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, BouncedRecipientDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BouncedRecipientDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BouncedRecipientDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BouncedRecipientDto-objects as value to a dart map
  static Map<String, List<BouncedRecipientDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BouncedRecipientDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BouncedRecipientDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

