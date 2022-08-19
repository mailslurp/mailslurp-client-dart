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
    @required this.sender,
    this.subject,
    @required this.createdAt,
    this.bounceMta,
    this.bounceType,
  });

  String id;

  String sender;

  String subject;

  DateTime createdAt;

  String bounceMta;

  String bounceType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BounceProjection &&
     other.id == id &&
     other.sender == sender &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.bounceMta == bounceMta &&
     other.bounceType == bounceType;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (bounceMta == null ? 0 : bounceMta.hashCode) +
    (bounceType == null ? 0 : bounceType.hashCode);

  @override
  String toString() => 'BounceProjection[id=$id, sender=$sender, subject=$subject, createdAt=$createdAt, bounceMta=$bounceMta, bounceType=$bounceType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'sender'] = sender;
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (bounceMta != null) {
      json[r'bounceMta'] = bounceMta;
    }
    if (bounceType != null) {
      json[r'bounceType'] = bounceType;
    }
    return json;
  }

  /// Returns a new [BounceProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BounceProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BounceProjection(
        id: json[r'id'],
        sender: json[r'sender'],
        subject: json[r'subject'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        bounceMta: json[r'bounceMta'],
        bounceType: json[r'bounceType'],
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

