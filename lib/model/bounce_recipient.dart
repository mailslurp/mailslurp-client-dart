//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceRecipient {
  /// Returns a new [BounceRecipient] instance.
  BounceRecipient({
    this.id,
    @required this.userId,
    @required this.recipient,
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String recipient;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceRecipient &&
     other.id == id &&
     other.userId == userId &&
     other.recipient == recipient &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'BounceRecipient[id=$id, userId=$userId, recipient=$recipient, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'userId'] = userId;
      json[r'recipient'] = recipient;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BounceRecipient] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceRecipient fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceRecipient(
        id: json[r'id'],
        userId: json[r'userId'],
        recipient: json[r'recipient'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<BounceRecipient> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BounceRecipient>[]
      : json.map((v) => BounceRecipient.fromJson(v)).toList(growable: true == growable);

  static Map<String, BounceRecipient> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BounceRecipient>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BounceRecipient.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BounceRecipient-objects as value to a dart map
  static Map<String, List<BounceRecipient>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BounceRecipient>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BounceRecipient.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

