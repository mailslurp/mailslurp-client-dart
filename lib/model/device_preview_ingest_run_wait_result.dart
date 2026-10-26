//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewIngestRunWaitResult {
  /// Returns a new [DevicePreviewIngestRunWaitResult] instance.
  DevicePreviewIngestRunWaitResult({
    required this.timedOut,
    this.runs = const [],
  });

  bool timedOut;

  List<DevicePreviewRunDto> runs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewIngestRunWaitResult &&
     other.timedOut == timedOut &&
     other.runs == runs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timedOut.hashCode) +
    (runs.hashCode);

  @override
  String toString() => 'DevicePreviewIngestRunWaitResult[timedOut=$timedOut, runs=$runs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timedOut'] = this.timedOut;
      json[r'runs'] = this.runs;
    return json;
  }

  /// Returns a new [DevicePreviewIngestRunWaitResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewIngestRunWaitResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewIngestRunWaitResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewIngestRunWaitResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewIngestRunWaitResult(
        timedOut: mapValueOfType<bool>(json, r'timedOut')!,
        runs: DevicePreviewRunDto.listFromJson(json[r'runs']),
      );
    }
    return null;
  }

  static List<DevicePreviewIngestRunWaitResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewIngestRunWaitResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewIngestRunWaitResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewIngestRunWaitResult> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewIngestRunWaitResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewIngestRunWaitResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewIngestRunWaitResult-objects as value to a dart map
  static Map<String, List<DevicePreviewIngestRunWaitResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewIngestRunWaitResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewIngestRunWaitResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timedOut',
    'runs',
  };
}

