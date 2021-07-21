//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Bounce {
  /// Returns a new [Bounce] instance.
  Bounce({
    this.bounceMta,
    this.bounceRecipients = const [],
    this.bounceSubType,
    this.bounceType,
    @required this.createdAt,
    this.id,
    @required this.notificationType,
    @required this.sender,
    this.sentToRecipients = const [],
    @required this.updatedAt,
    @required this.userId,
  });

  String bounceMta;

  List<String> bounceRecipients;

  String bounceSubType;

  String bounceType;

  DateTime createdAt;

  String id;

  String notificationType;

  String sender;

  List<String> sentToRecipients;

  DateTime updatedAt;

  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Bounce &&
     other.bounceMta == bounceMta &&
     other.bounceRecipients == bounceRecipients &&
     other.bounceSubType == bounceSubType &&
     other.bounceType == bounceType &&
     other.createdAt == createdAt &&
     other.id == id &&
     other.notificationType == notificationType &&
     other.sender == sender &&
     other.sentToRecipients == sentToRecipients &&
     other.updatedAt == updatedAt &&
     other.userId == userId;

  @override
  int get hashCode =>
    (bounceMta == null ? 0 : bounceMta.hashCode) +
    (bounceRecipients == null ? 0 : bounceRecipients.hashCode) +
    (bounceSubType == null ? 0 : bounceSubType.hashCode) +
    (bounceType == null ? 0 : bounceType.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (notificationType == null ? 0 : notificationType.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (sentToRecipients == null ? 0 : sentToRecipients.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'Bounce[bounceMta=$bounceMta, bounceRecipients=$bounceRecipients, bounceSubType=$bounceSubType, bounceType=$bounceType, createdAt=$createdAt, id=$id, notificationType=$notificationType, sender=$sender, sentToRecipients=$sentToRecipients, updatedAt=$updatedAt, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (bounceMta != null) {
      json[r'bounceMta'] = bounceMta;
    }
    if (bounceRecipients != null) {
      json[r'bounceRecipients'] = bounceRecipients;
    }
    if (bounceSubType != null) {
      json[r'bounceSubType'] = bounceSubType;
    }
    if (bounceType != null) {
      json[r'bounceType'] = bounceType;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (id != null) {
      json[r'id'] = id;
    }
      json[r'notificationType'] = notificationType;
      json[r'sender'] = sender;
    if (sentToRecipients != null) {
      json[r'sentToRecipients'] = sentToRecipients;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
    return json;
  }

  /// Returns a new [Bounce] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Bounce fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Bounce(
        bounceMta: json[r'bounceMta'],
        bounceRecipients: json[r'bounceRecipients'] == null
          ? null
          : (json[r'bounceRecipients'] as List).cast<String>(),
        bounceSubType: json[r'bounceSubType'],
        bounceType: json[r'bounceType'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        id: json[r'id'],
        notificationType: json[r'notificationType'],
        sender: json[r'sender'],
        sentToRecipients: json[r'sentToRecipients'] == null
          ? null
          : (json[r'sentToRecipients'] as List).cast<String>(),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
    );

  static List<Bounce> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Bounce>[]
      : json.map((v) => Bounce.fromJson(v)).toList(growable: true == growable);

  static Map<String, Bounce> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Bounce>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Bounce.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Bounce-objects as value to a dart map
  static Map<String, List<Bounce>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Bounce>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Bounce.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

