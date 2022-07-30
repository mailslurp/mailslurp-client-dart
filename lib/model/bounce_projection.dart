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
    this.id,
    this.subject,
    @required this.sender,
    @required this.createdAt,
    this.bounceType,
    this.bounceMta,
  });

  String id;

  String subject;

  String sender;

  DateTime createdAt;

  String bounceType;

  String bounceMta;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceProjection &&
     other.id == id &&
     other.subject == subject &&
     other.sender == sender &&
     other.createdAt == createdAt &&
     other.bounceType == bounceType &&
     other.bounceMta == bounceMta;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (bounceType == null ? 0 : bounceType.hashCode) +
    (bounceMta == null ? 0 : bounceMta.hashCode);

  @override
  String toString() => 'BounceProjection[id=$id, subject=$subject, sender=$sender, createdAt=$createdAt, bounceType=$bounceType, bounceMta=$bounceMta]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'sender'] = sender;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (bounceType != null) {
      json[r'bounceType'] = bounceType;
    }
    if (bounceMta != null) {
      json[r'bounceMta'] = bounceMta;
    }
    return json;
  }

  /// Returns a new [BounceProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceProjection(
        id: json[r'id'],
        subject: json[r'subject'],
        sender: json[r'sender'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        bounceType: json[r'bounceType'],
        bounceMta: json[r'bounceMta'],
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

