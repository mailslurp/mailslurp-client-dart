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
    required this.body,
    required this.id,
    required this.userId,
    required this.read,
    required this.phoneNumber,
    required this.createdAt,
    required this.fromNumber,
  });

  String body;

  String id;

  String userId;

  bool read;

  String phoneNumber;

  DateTime createdAt;

  String fromNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmsProjection &&
     other.body == body &&
     other.id == id &&
     other.userId == userId &&
     other.read == read &&
     other.phoneNumber == phoneNumber &&
     other.createdAt == createdAt &&
     other.fromNumber == fromNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (read.hashCode) +
    (phoneNumber.hashCode) +
    (createdAt.hashCode) +
    (fromNumber.hashCode);

  @override
  String toString() => 'SmsProjection[body=$body, id=$id, userId=$userId, read=$read, phoneNumber=$phoneNumber, createdAt=$createdAt, fromNumber=$fromNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'read'] = this.read;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'fromNumber'] = this.fromNumber;
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
        body: mapValueOfType<String>(json, r'body')!,
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        read: mapValueOfType<bool>(json, r'read')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
      );
    }
    return null;
  }

  static List<SmsProjection> listFromJson(dynamic json, {bool growable = false,}) {
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
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmsProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'id',
    'userId',
    'read',
    'phoneNumber',
    'createdAt',
    'fromNumber',
  };
}

