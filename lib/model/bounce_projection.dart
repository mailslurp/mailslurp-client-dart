//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BounceProjection {
  /// Returns a new [BounceProjection] instance.
  BounceProjection({
    @required this.createdAt,
    this.id,
    @required this.sender,
  });

  DateTime createdAt;

  String id;

  String sender;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceProjection &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.sender == sender;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (sender == null ? 0 : sender.hashCode);

  @override
  String toString() => 'BounceProjection[createdAt=$createdAt, id=$id, sender=$sender]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'sender'] = sender;
    return json;
  }

  /// Returns a new [BounceProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        sender: json[r'sender'],
    );

  static List<BounceProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BounceProjection>[]
      : json.map((v) => BounceProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, BounceProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BounceProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BounceProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BounceProjection-objects as value to a dart map
  static Map<String, List<BounceProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BounceProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BounceProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

