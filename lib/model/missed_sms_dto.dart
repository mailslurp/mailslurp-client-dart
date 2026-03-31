//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedSmsDto {
  /// Returns a new [MissedSmsDto] instance.
  MissedSmsDto({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.fromNumber,
    this.toNumber,
    required this.body,
    required this.sid,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String phoneNumber;

  String fromNumber;

  String? toNumber;

  String body;

  String sid;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedSmsDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.toNumber == toNumber &&
     other.body == body &&
     other.sid == sid &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (toNumber == null ? 0 : toNumber!.hashCode) +
    (body.hashCode) +
    (sid.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'MissedSmsDto[id=$id, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, toNumber=$toNumber, body=$body, sid=$sid, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
    if (this.toNumber != null) {
      json[r'toNumber'] = this.toNumber;
    } else {
      json[r'toNumber'] = null;
    }
      json[r'body'] = this.body;
      json[r'sid'] = this.sid;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MissedSmsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissedSmsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissedSmsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissedSmsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissedSmsDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        toNumber: mapValueOfType<String>(json, r'toNumber'),
        body: mapValueOfType<String>(json, r'body')!,
        sid: mapValueOfType<String>(json, r'sid')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<MissedSmsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissedSmsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissedSmsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissedSmsDto> mapFromJson(dynamic json) {
    final map = <String, MissedSmsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissedSmsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissedSmsDto-objects as value to a dart map
  static Map<String, List<MissedSmsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissedSmsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissedSmsDto.listFromJson(entry.value, growable: growable,);
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
    'body',
    'sid',
    'createdAt',
    'updatedAt',
  };
}

