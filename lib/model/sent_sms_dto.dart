//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentSmsDto {
  /// Returns a new [SentSmsDto] instance.
  SentSmsDto({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.fromNumber,
    required this.toNumber,
    required this.body,
    required this.sid,
    this.replyToSid,
    this.replyToId,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String phoneNumber;

  String fromNumber;

  String toNumber;

  String body;

  String sid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyToSid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyToId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentSmsDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.toNumber == toNumber &&
     other.body == body &&
     other.sid == sid &&
     other.replyToSid == replyToSid &&
     other.replyToId == replyToId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (toNumber.hashCode) +
    (body.hashCode) +
    (sid.hashCode) +
    (replyToSid == null ? 0 : replyToSid!.hashCode) +
    (replyToId == null ? 0 : replyToId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SentSmsDto[id=$id, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, toNumber=$toNumber, body=$body, sid=$sid, replyToSid=$replyToSid, replyToId=$replyToId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'toNumber'] = this.toNumber;
      json[r'body'] = this.body;
      json[r'sid'] = this.sid;
    if (this.replyToSid != null) {
      json[r'replyToSid'] = this.replyToSid;
    } else {
      json[r'replyToSid'] = null;
    }
    if (this.replyToId != null) {
      json[r'replyToId'] = this.replyToId;
    } else {
      json[r'replyToId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SentSmsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SentSmsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SentSmsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SentSmsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SentSmsDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        toNumber: mapValueOfType<String>(json, r'toNumber')!,
        body: mapValueOfType<String>(json, r'body')!,
        sid: mapValueOfType<String>(json, r'sid')!,
        replyToSid: mapValueOfType<String>(json, r'replyToSid'),
        replyToId: mapValueOfType<String>(json, r'replyToId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<SentSmsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SentSmsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SentSmsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SentSmsDto> mapFromJson(dynamic json) {
    final map = <String, SentSmsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SentSmsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SentSmsDto-objects as value to a dart map
  static Map<String, List<SentSmsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SentSmsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SentSmsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'phoneNumber',
    'fromNumber',
    'toNumber',
    'body',
    'sid',
    'createdAt',
    'updatedAt',
  };
}

