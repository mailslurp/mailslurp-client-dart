//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewNativeTargetAvailabilityListDto {
  /// Returns a new [DevicePreviewNativeTargetAvailabilityListDto] instance.
  DevicePreviewNativeTargetAvailabilityListDto({
    required this.enabled,
    required this.heartbeatOfflineAfterSeconds,
    this.targets = const [],
    this.error,
  });

  bool enabled;

  int heartbeatOfflineAfterSeconds;

  List<DevicePreviewNativeTargetAvailabilityDto> targets;

  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewNativeTargetAvailabilityListDto &&
     other.enabled == enabled &&
     other.heartbeatOfflineAfterSeconds == heartbeatOfflineAfterSeconds &&
     other.targets == targets &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled.hashCode) +
    (heartbeatOfflineAfterSeconds.hashCode) +
    (targets.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'DevicePreviewNativeTargetAvailabilityListDto[enabled=$enabled, heartbeatOfflineAfterSeconds=$heartbeatOfflineAfterSeconds, targets=$targets, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'enabled'] = this.enabled;
      json[r'heartbeatOfflineAfterSeconds'] = this.heartbeatOfflineAfterSeconds;
      json[r'targets'] = this.targets;
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [DevicePreviewNativeTargetAvailabilityListDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewNativeTargetAvailabilityListDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewNativeTargetAvailabilityListDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewNativeTargetAvailabilityListDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewNativeTargetAvailabilityListDto(
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        heartbeatOfflineAfterSeconds: mapValueOfType<int>(json, r'heartbeatOfflineAfterSeconds')!,
        targets: DevicePreviewNativeTargetAvailabilityDto.listFromJson(json[r'targets']),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<DevicePreviewNativeTargetAvailabilityListDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetAvailabilityListDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetAvailabilityListDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewNativeTargetAvailabilityListDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewNativeTargetAvailabilityListDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewNativeTargetAvailabilityListDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewNativeTargetAvailabilityListDto-objects as value to a dart map
  static Map<String, List<DevicePreviewNativeTargetAvailabilityListDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewNativeTargetAvailabilityListDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewNativeTargetAvailabilityListDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'enabled',
    'heartbeatOfflineAfterSeconds',
    'targets',
  };
}

