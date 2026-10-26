//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewProfileDto {
  /// Returns a new [DevicePreviewProfileDto] instance.
  DevicePreviewProfileDto({
    required this.id,
    required this.userId,
    required this.localPart,
    this.displayName,
    this.targets = const [],
    this.allTargets,
    required this.enabled,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String localPart;

  String? displayName;

  List<String>? targets;

  bool? allTargets;

  bool enabled;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewProfileDto &&
     other.id == id &&
     other.userId == userId &&
     other.localPart == localPart &&
     other.displayName == displayName &&
     other.targets == targets &&
     other.allTargets == allTargets &&
     other.enabled == enabled &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (localPart.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (targets == null ? 0 : targets!.hashCode) +
    (allTargets == null ? 0 : allTargets!.hashCode) +
    (enabled.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewProfileDto[id=$id, userId=$userId, localPart=$localPart, displayName=$displayName, targets=$targets, allTargets=$allTargets, enabled=$enabled, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'localPart'] = this.localPart;
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.targets != null) {
      json[r'targets'] = this.targets;
    } else {
      json[r'targets'] = null;
    }
    if (this.allTargets != null) {
      json[r'allTargets'] = this.allTargets;
    } else {
      json[r'allTargets'] = null;
    }
      json[r'enabled'] = this.enabled;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewProfileDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewProfileDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewProfileDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewProfileDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewProfileDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        localPart: mapValueOfType<String>(json, r'localPart')!,
        displayName: mapValueOfType<String>(json, r'displayName'),
        targets: json[r'targets'] is List
            ? (json[r'targets'] as List).cast<String>()
            : const [],
        allTargets: mapValueOfType<bool>(json, r'allTargets'),
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewProfileDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewProfileDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewProfileDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewProfileDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewProfileDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewProfileDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewProfileDto-objects as value to a dart map
  static Map<String, List<DevicePreviewProfileDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewProfileDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewProfileDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'localPart',
    'enabled',
    'createdAt',
    'updatedAt',
  };
}

