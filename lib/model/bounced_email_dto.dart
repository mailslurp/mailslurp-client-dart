//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BouncedEmailDto {
  /// Returns a new [BouncedEmailDto] instance.
  BouncedEmailDto({
    required this.id,
    required this.userId,
    required this.notificationType,
    this.sentToRecipients = const [],
    required this.sender,
    this.bounceMta,
    this.bounceType,
    this.bounceRecipients = const [],
    this.bounceSubType,
    this.sentEmailId,
    this.subject,
    required this.createdAt,
  });

  String id;

  String userId;

  String notificationType;

  List<String>? sentToRecipients;

  String sender;

  String? bounceMta;

  String? bounceType;

  List<String>? bounceRecipients;

  String? bounceSubType;

  String? sentEmailId;

  String? subject;

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
     other.sentEmailId == sentEmailId &&
     other.subject == subject &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (notificationType.hashCode) +
    (sentToRecipients == null ? 0 : sentToRecipients!.hashCode) +
    (sender.hashCode) +
    (bounceMta == null ? 0 : bounceMta!.hashCode) +
    (bounceType == null ? 0 : bounceType!.hashCode) +
    (bounceRecipients == null ? 0 : bounceRecipients!.hashCode) +
    (bounceSubType == null ? 0 : bounceSubType!.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'BouncedEmailDto[id=$id, userId=$userId, notificationType=$notificationType, sentToRecipients=$sentToRecipients, sender=$sender, bounceMta=$bounceMta, bounceType=$bounceType, bounceRecipients=$bounceRecipients, bounceSubType=$bounceSubType, sentEmailId=$sentEmailId, subject=$subject, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'notificationType'] = this.notificationType;
    if (this.sentToRecipients != null) {
      json[r'sentToRecipients'] = this.sentToRecipients;
    } else {
      json[r'sentToRecipients'] = null;
    }
      json[r'sender'] = this.sender;
    if (this.bounceMta != null) {
      json[r'bounceMta'] = this.bounceMta;
    } else {
      json[r'bounceMta'] = null;
    }
    if (this.bounceType != null) {
      json[r'bounceType'] = this.bounceType;
    } else {
      json[r'bounceType'] = null;
    }
    if (this.bounceRecipients != null) {
      json[r'bounceRecipients'] = this.bounceRecipients;
    } else {
      json[r'bounceRecipients'] = null;
    }
    if (this.bounceSubType != null) {
      json[r'bounceSubType'] = this.bounceSubType;
    } else {
      json[r'bounceSubType'] = null;
    }
    if (this.sentEmailId != null) {
      json[r'sentEmailId'] = this.sentEmailId;
    } else {
      json[r'sentEmailId'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [BouncedEmailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BouncedEmailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BouncedEmailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BouncedEmailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BouncedEmailDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        notificationType: mapValueOfType<String>(json, r'notificationType')!,
        sentToRecipients: json[r'sentToRecipients'] is List
            ? (json[r'sentToRecipients'] as List).cast<String>()
            : const [],
        sender: mapValueOfType<String>(json, r'sender')!,
        bounceMta: mapValueOfType<String>(json, r'bounceMta'),
        bounceType: mapValueOfType<String>(json, r'bounceType'),
        bounceRecipients: json[r'bounceRecipients'] is List
            ? (json[r'bounceRecipients'] as List).cast<String>()
            : const [],
        bounceSubType: mapValueOfType<String>(json, r'bounceSubType'),
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        subject: mapValueOfType<String>(json, r'subject'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<BouncedEmailDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BouncedEmailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BouncedEmailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BouncedEmailDto> mapFromJson(dynamic json) {
    final map = <String, BouncedEmailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BouncedEmailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BouncedEmailDto-objects as value to a dart map
  static Map<String, List<BouncedEmailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BouncedEmailDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BouncedEmailDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'notificationType',
    'sender',
    'createdAt',
  };
}

