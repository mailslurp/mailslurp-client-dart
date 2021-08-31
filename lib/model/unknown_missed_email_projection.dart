//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnknownMissedEmailProjection {
  /// Returns a new [UnknownMissedEmailProjection] instance.
  UnknownMissedEmailProjection({
    @required this.createdAt,
    this.from,
    @required this.id,
    this.subject,
    this.to = const [],
  });

  DateTime createdAt;

  String from;

  String id;

  String subject;

  List<String> to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnknownMissedEmailProjection &&
     other.createdAt == createdAt &&
     other.from == from &&
     other.id == id &&
     other.subject == subject &&
     other.to == to;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (from == null ? 0 : from.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (to == null ? 0 : to.hashCode);

  @override
  String toString() => 'UnknownMissedEmailProjection[createdAt=$createdAt, from=$from, id=$id, subject=$subject, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (from != null) {
      json[r'from'] = from;
    }
      json[r'id'] = id;
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (to != null) {
      json[r'to'] = to;
    }
    return json;
  }

  /// Returns a new [UnknownMissedEmailProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UnknownMissedEmailProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UnknownMissedEmailProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        from: json[r'from'],
        id: json[r'id'],
        subject: json[r'subject'],
        to: json[r'to'] == null
          ? null
          : (json[r'to'] as List).cast<String>(),
    );

  static List<UnknownMissedEmailProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UnknownMissedEmailProjection>[]
      : json.map((v) => UnknownMissedEmailProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, UnknownMissedEmailProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UnknownMissedEmailProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UnknownMissedEmailProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UnknownMissedEmailProjection-objects as value to a dart map
  static Map<String, List<UnknownMissedEmailProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UnknownMissedEmailProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UnknownMissedEmailProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

