//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RerunDevicePreviewTargetsOptions {
  /// Returns a new [RerunDevicePreviewTargetsOptions] instance.
  RerunDevicePreviewTargetsOptions({
    this.targetIds = const [],
    required this.failedOnly,
  });

  /// Device preview target IDs to rerun within the existing run. Use target IDs from DevicePreviewRunResultsDto.targets.
  List<String> targetIds;

  /// When true, only selected targets in failed terminal states are rerun. Set false to rerun any selected target; a target that already completed successfully uses its credit cost again. Defaults to true.
  bool failedOnly;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RerunDevicePreviewTargetsOptions &&
     other.targetIds == targetIds &&
     other.failedOnly == failedOnly;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targetIds.hashCode) +
    (failedOnly.hashCode);

  @override
  String toString() => 'RerunDevicePreviewTargetsOptions[targetIds=$targetIds, failedOnly=$failedOnly]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'targetIds'] = this.targetIds;
      json[r'failedOnly'] = this.failedOnly;
    return json;
  }

  /// Returns a new [RerunDevicePreviewTargetsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RerunDevicePreviewTargetsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RerunDevicePreviewTargetsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RerunDevicePreviewTargetsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RerunDevicePreviewTargetsOptions(
        targetIds: json[r'targetIds'] is List
            ? (json[r'targetIds'] as List).cast<String>()
            : const [],
        failedOnly: mapValueOfType<bool>(json, r'failedOnly')!,
      );
    }
    return null;
  }

  static List<RerunDevicePreviewTargetsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RerunDevicePreviewTargetsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RerunDevicePreviewTargetsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RerunDevicePreviewTargetsOptions> mapFromJson(dynamic json) {
    final map = <String, RerunDevicePreviewTargetsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RerunDevicePreviewTargetsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RerunDevicePreviewTargetsOptions-objects as value to a dart map
  static Map<String, List<RerunDevicePreviewTargetsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RerunDevicePreviewTargetsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RerunDevicePreviewTargetsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'targetIds',
    'failedOnly',
  };
}

