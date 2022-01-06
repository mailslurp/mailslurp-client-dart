//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BouncedEmailDto {
  /// Returns a new [BouncedEmailDto] instance.
  BouncedEmailDto({
    this.id,
    this.userId,
    this.notificationType,
    this.sentToRecipients = const [],
    this.sender,
    this.bounceMta,
    this.bounceType,
    this.bounceRecipients = const [],
    this.bounceSubType,
    this.createdAt,
  });

  String id;

  String userId;

  String notificationType;

  List<String> sentToRecipients;

  String sender;

  String bounceMta;

  String bounceType;

  List<String> bounceRecipients;

  String bounceSubType;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BouncedEmailDto &&
     other.id == id &&
     other.userId == userId &&
     other.notificationType == notificationType &&
     other.sentToRecipients == sentToRecipients &&
     other.sender == sender &&
     other.bounceMta == bounceMta &&
     other.bounceType == bounceType &&
     other.bounceRecipients == bounceRecipients &&
     other.bounceSubType == bounceSubType &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (notificationType == null ? 0 : notificationType.hashCode) +
    (sentToRecipients == null ? 0 : sentToRecipients.hashCode) +
    (sender == null ? 0 : sender.hashCode) +
    (bounceMta == null ? 0 : bounceMta.hashCode) +
    (bounceType == null ? 0 : bounceType.hashCode) +
    (bounceRecipients == null ? 0 : bounceRecipients.hashCode) +
    (bounceSubType == null ? 0 : bounceSubType.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'BouncedEmailDto[id=$id, userId=$userId, notificationType=$notificationType, sentToRecipients=$sentToRecipients, sender=$sender, bounceMta=$bounceMta, bounceType=$bounceType, bounceRecipients=$bounceRecipients, bounceSubType=$bounceSubType, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (notificationType != null) {
      json[r'notificationType'] = notificationType;
    }
    if (sentToRecipients != null) {
      json[r'sentToRecipients'] = sentToRecipients;
    }
    if (sender != null) {
      json[r'sender'] = sender;
    }
    if (bounceMta != null) {
      json[r'bounceMta'] = bounceMta;
    }
    if (bounceType != null) {
      json[r'bounceType'] = bounceType;
    }
    if (bounceRecipients != null) {
      json[r'bounceRecipients'] = bounceRecipients;
    }
    if (bounceSubType != null) {
      json[r'bounceSubType'] = bounceSubType;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [BouncedEmailDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BouncedEmailDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : BouncedEmailDto(
        id: json[r'id'],
        userId: json[r'userId'],
        notificationType: json[r'notificationType'],
        sentToRecipients: json[r'sentToRecipients'] == null
          ? null
          : (json[r'sentToRecipients'] as List).cast<String>(),
        sender: json[r'sender'],
        bounceMta: json[r'bounceMta'],
        bounceType: json[r'bounceType'],
        bounceRecipients: json[r'bounceRecipients'] == null
          ? null
          : (json[r'bounceRecipients'] as List).cast<String>(),
        bounceSubType: json[r'bounceSubType'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<BouncedEmailDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <BouncedEmailDto>[]
      : json.map((v) => BouncedEmailDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, BouncedEmailDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, BouncedEmailDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = BouncedEmailDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of BouncedEmailDto-objects as value to a dart map
  static Map<String, List<BouncedEmailDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<BouncedEmailDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = BouncedEmailDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

