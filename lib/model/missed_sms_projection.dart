//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedSmsProjection {
  /// Returns a new [MissedSmsProjection] instance.
  MissedSmsProjection({
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.phoneNumber,
    required this.sid,
    required this.fromNumber,
  });

  String id;

  String userId;

  DateTime createdAt;

  String phoneNumber;

  String sid;

  String fromNumber;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedSmsProjection &&
     other.id == id &&
     other.userId == userId &&
     other.createdAt == createdAt &&
     other.phoneNumber == phoneNumber &&
     other.sid == sid &&
     other.fromNumber == fromNumber;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (createdAt.hashCode) +
    (phoneNumber.hashCode) +
    (sid.hashCode) +
    (fromNumber.hashCode);

  @override
  String toString() => 'MissedSmsProjection[id=$id, userId=$userId, createdAt=$createdAt, phoneNumber=$phoneNumber, sid=$sid, fromNumber=$fromNumber]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'sid'] = this.sid;
      json[r'fromNumber'] = this.fromNumber;
    return json;
  }

  /// Returns a new [MissedSmsProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissedSmsProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissedSmsProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissedSmsProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissedSmsProjection(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        sid: mapValueOfType<String>(json, r'sid')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
      );
    }
    return null;
  }

  static List<MissedSmsProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissedSmsProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissedSmsProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissedSmsProjection> mapFromJson(dynamic json) {
    final map = <String, MissedSmsProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissedSmsProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissedSmsProjection-objects as value to a dart map
  static Map<String, List<MissedSmsProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissedSmsProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissedSmsProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'createdAt',
    'phoneNumber',
    'sid',
    'fromNumber',
  };
}

