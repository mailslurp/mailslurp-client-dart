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
    this.inboxId,
    @required this.userId,
    this.sentEmailId,
    @required this.createdAt,
    @required this.seen,
    this.recipient,
    this.seenAt,
  });

  String name;

  String id;

  String inboxId;

  String userId;

  String sentEmailId;

  DateTime createdAt;

  bool seen;

  String recipient;

  DateTime seenAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelProjection &&
     other.name == name &&
     other.id == id &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.sentEmailId == sentEmailId &&
     other.createdAt == createdAt &&
     other.seen == seen &&
     other.recipient == recipient &&
     other.seenAt == seenAt;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (recipient == null ? 0 : recipient.hashCode) +
    (seenAt == null ? 0 : seenAt.hashCode);

  @override
  String toString() => 'TrackingPixelProjection[name=$name, id=$id, inboxId=$inboxId, userId=$userId, sentEmailId=$sentEmailId, createdAt=$createdAt, seen=$seen, recipient=$recipient, seenAt=$seenAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'id'] = id;
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'userId'] = userId;
    if (sentEmailId != null) {
      json[r'sentEmailId'] = sentEmailId;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'seen'] = seen;
    if (recipient != null) {
      json[r'recipient'] = recipient;
    }
    if (seenAt != null) {
      json[r'seenAt'] = seenAt.toUtc().toIso8601String();
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
        inboxId: json[r'inboxId'],
        userId: json[r'userId'],
        sentEmailId: json[r'sentEmailId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        seen: json[r'seen'],
        recipient: json[r'recipient'],
        seenAt: json[r'seenAt'] == null
          ? null
          : DateTime.parse(json[r'seenAt']),
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

