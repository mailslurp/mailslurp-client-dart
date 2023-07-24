//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsDto {
  /// Returns a new [SmsDto] instance.
  SmsDto({
    required this.id,
    required this.userId,
    required this.phoneNumber,
    required this.fromNumber,
    required this.body,
    required this.read,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String phoneNumber;

  String fromNumber;

  String body;

  bool read;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsDto &&
     other.id == id &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.body == body &&
     other.read == read &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (body.hashCode) +
    (read.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SmsDto[id=$id, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, body=$body, read=$read, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'body'] = this.body;
      json[r'read'] = this.read;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SmsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        body: mapValueOfType<String>(json, r'body')!,
        read: mapValueOfType<bool>(json, r'read')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<SmsDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsDto> mapFromJson(dynamic json) {
    final map = <String, SmsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsDto-objects as value to a dart map
  static Map<String, List<SmsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsDto.listFromJson(entry.value, growable: growable,);
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
    'phoneNumber',
    'fromNumber',
    'body',
    'read',
    'createdAt',
    'updatedAt',
  };
}

