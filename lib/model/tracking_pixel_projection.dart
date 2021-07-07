//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingPixelProjection {
  /// Returns a new [TrackingPixelProjection] instance.
  TrackingPixelProjection({
    @required this.createdAt,
    @required this.id,
    this.inboxId,
    this.name,
    this.recipient,
    @required this.seen,
    this.seenAt,
    @required this.userId,
  });

  DateTime createdAt;

  String id;

  String inboxId;

  String name;

  String recipient;

  bool seen;

  DateTime seenAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelProjection &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.name == name &&
     other.recipient == recipient &&
     other.seen == seen &&
     other.seenAt == seenAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (seenAt == null ? 0 : seenAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'TrackingPixelProjection[createdAt=$createdAt, id=$id, inboxId=$inboxId, name=$name, recipient=$recipient, seen=$seen, seenAt=$seenAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'id'] = id;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
      json[r'seen'] = seen;
    if (seenAt != null) {
      json[r'seenAt'] = seenAt.toUtc().toIso8601String();
    }
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [TrackingPixelProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingPixelProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TrackingPixelProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        inboxId: json[r'inboxId'],
        name: json[r'name'],
        recipient: json[r'recipient'],
        seen: json[r'seen'],
        seenAt: json[r'seenAt'] == null
          ? null
          : DateTime.parse(json[r'seenAt']),
        userId: json[r'userId'],
    );

  static List<TrackingPixelProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TrackingPixelProjection>[]
      : json.map((v) => TrackingPixelProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, TrackingPixelProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TrackingPixelProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TrackingPixelProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TrackingPixelProjection-objects as value to a dart map
  static Map<String, List<TrackingPixelProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TrackingPixelProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TrackingPixelProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

