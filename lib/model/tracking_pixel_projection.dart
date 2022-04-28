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
    this.name,
    @required this.id,
    @required this.userId,
    this.inboxId,
    @required this.seen,
    @required this.createdAt,
    this.recipient,
    this.seenAt,
    this.sentEmailId,
  });

  String name;

  String id;

  String userId;

  String inboxId;

  bool seen;

  DateTime createdAt;

  String recipient;

  DateTime seenAt;

  String sentEmailId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelProjection &&
     other.name == name &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.seen == seen &&
     other.createdAt == createdAt &&
     other.recipient == recipient &&
     other.seenAt == seenAt &&
     other.sentEmailId == sentEmailId;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (seenAt == null ? 0 : seenAt.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode);

  @override
  String toString() => 'TrackingPixelProjection[name=$name, id=$id, userId=$userId, inboxId=$inboxId, seen=$seen, createdAt=$createdAt, recipient=$recipient, seenAt=$seenAt, sentEmailId=$sentEmailId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
      json[r'userId'] = userId;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'seen'] = seen;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (seenAt != null) {
      json[r'seenAt'] = seenAt.toUtc().toIso8601String();
    }
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
    return json;
  }

  /// Returns a new [TrackingPixelProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingPixelProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TrackingPixelProjection(
        name: json[r'name'],
        id: json[r'id'],
        userId: json[r'userId'],
        inboxId: json[r'inboxId'],
        seen: json[r'seen'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        recipient: json[r'recipient'],
        seenAt: json[r'seenAt'] == null
          ? null
          : DateTime.parse(json[r'seenAt']),
        sentEmailId: json[r'sentEmailId'],
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

