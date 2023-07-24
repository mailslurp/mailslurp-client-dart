//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmsProjection {
  /// Returns a new [SmsProjection] instance.
  SmsProjection({
    required this.id,
    required this.body,
    required this.userId,
    required this.createdAt,
    required this.phoneNumber,
    required this.fromNumber,
    required this.read,
  });

  String id;

  String body;

  String userId;

  DateTime createdAt;

  String phoneNumber;

  String fromNumber;

  bool read;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsProjection &&
     other.id == id &&
     other.body == body &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.read == read;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (body.hashCode) +
    (userId.hashCode) +
    (createdAt.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (read.hashCode);

  @override
  String toString() => 'SmsProjection[id=$id, body=$body, userId=$userId, createdAt=$createdAt, phoneNumber=$phoneNumber, fromNumber=$fromNumber, read=$read]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'body'] = this.body;
      json[r'userId'] = this.userId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'read'] = this.read;
    return json;
  }

  /// Returns a new [SmsProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmsProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmsProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmsProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmsProjection(
        id: mapValueOfType<String>(json, r'id')!,
        body: mapValueOfType<String>(json, r'body')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        read: mapValueOfType<bool>(json, r'read')!,
      );
    }
    return null;
  }

  static List<SmsProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmsProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmsProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmsProjection> mapFromJson(dynamic json) {
    final map = <String, SmsProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmsProjection-objects as value to a dart map
  static Map<String, List<SmsProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmsProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmsProjection.listFromJson(entry.value, growable: growable,);
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
    'body',
    'userId',
    'createdAt',
    'phoneNumber',
    'fromNumber',
    'read',
  };
}

