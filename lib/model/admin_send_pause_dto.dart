//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AdminSendPauseDto {
  /// Returns a new [AdminSendPauseDto] instance.
  AdminSendPauseDto({
    required this.userId,
    required this.reason,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
  });

  String userId;

  String reason;

  String createdBy;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AdminSendPauseDto &&
     other.userId == userId &&
     other.reason == reason &&
     other.createdBy == createdBy &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (reason.hashCode) +
    (createdBy.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AdminSendPauseDto[userId=$userId, reason=$reason, createdBy=$createdBy, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
      json[r'reason'] = this.reason;
      json[r'createdBy'] = this.createdBy;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AdminSendPauseDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AdminSendPauseDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AdminSendPauseDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AdminSendPauseDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AdminSendPauseDto(
        userId: mapValueOfType<String>(json, r'userId')!,
        reason: mapValueOfType<String>(json, r'reason')!,
        createdBy: mapValueOfType<String>(json, r'createdBy')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AdminSendPauseDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AdminSendPauseDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AdminSendPauseDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AdminSendPauseDto> mapFromJson(dynamic json) {
    final map = <String, AdminSendPauseDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AdminSendPauseDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AdminSendPauseDto-objects as value to a dart map
  static Map<String, List<AdminSendPauseDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AdminSendPauseDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AdminSendPauseDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'reason',
    'createdBy',
    'createdAt',
    'updatedAt',
  };
}

