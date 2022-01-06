//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedEmailProjection {
  /// Returns a new [MissedEmailProjection] instance.
  MissedEmailProjection({
    @required this.id,
    this.from,
    this.userId,
    this.subject,
    @required this.createdAt,
  });

  String id;

  String from;

  String userId;

  String subject;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedEmailProjection &&
     other.id == id &&
     other.from == from &&
     other.userId == userId &&
     other.subject == subject &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'MissedEmailProjection[id=$id, from=$from, userId=$userId, subject=$subject, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
    if (from != null) {
      json[r'from'] = from;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MissedEmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MissedEmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : MissedEmailProjection(
        id: json[r'id'],
        from: json[r'from'],
        userId: json[r'userId'],
        subject: json[r'subject'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<MissedEmailProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <MissedEmailProjection>[]
      : json.map((v) => MissedEmailProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, MissedEmailProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, MissedEmailProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = MissedEmailProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of MissedEmailProjection-objects as value to a dart map
  static Map<String, List<MissedEmailProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<MissedEmailProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = MissedEmailProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

