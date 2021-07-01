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
    this.name,
    @required this.seen,
    @required this.userId,
  });

  DateTime createdAt;

  String id;

  String name;

  bool seen;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelProjection &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.name == name &&
     other.seen == seen &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (seen == null ? 0 : seen.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'TrackingPixelProjection[createdAt=$createdAt, id=$id, name=$name, seen=$seen, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'id'] = id;
    if (name != null) {
      json[r'name'] = name;
    }
      json[r'seen'] = seen;
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
        name: json[r'name'],
        seen: json[r'seen'],
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

