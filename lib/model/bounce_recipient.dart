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
    @required this.createdAt,
    this.id,
    @required this.recipient,
    @required this.updatedAt,
    @required this.userId,
  });

  DateTime createdAt;

  String id;

  String recipient;

  DateTime updatedAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceRecipient &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.recipient == recipient &&
     other.updatedAt == updatedAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'BounceRecipient[createdAt=$createdAt, id=$id, recipient=$recipient, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'recipient'] = recipient;
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [BounceRecipient] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceRecipient fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceRecipient(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        recipient: json[r'recipient'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
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

