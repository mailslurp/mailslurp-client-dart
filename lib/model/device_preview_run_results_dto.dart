//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewRunResultsDto {
  /// Returns a new [DevicePreviewRunResultsDto] instance.
  DevicePreviewRunResultsDto({
    required this.run,
    this.targets = const [],
    this.screenshots = const [],
  });

  DevicePreviewRunDto run;

  List<DevicePreviewTargetDto> targets;

  List<DevicePreviewScreenshotDto> screenshots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewRunResultsDto &&
     other.run == run &&
     other.targets == targets &&
     other.screenshots == screenshots;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (run.hashCode) +
    (targets.hashCode) +
    (screenshots.hashCode);

  @override
  String toString() => 'DevicePreviewRunResultsDto[run=$run, targets=$targets, screenshots=$screenshots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'run'] = this.run;
      json[r'targets'] = this.targets;
      json[r'screenshots'] = this.screenshots;
    return json;
  }

  /// Returns a new [DevicePreviewRunResultsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewRunResultsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewRunResultsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewRunResultsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewRunResultsDto(
        run: DevicePreviewRunDto.fromJson(json[r'run'])!,
        targets: DevicePreviewTargetDto.listFromJson(json[r'targets']),
        screenshots: DevicePreviewScreenshotDto.listFromJson(json[r'screenshots']),
      );
    }
    return null;
  }

  static List<DevicePreviewRunResultsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunResultsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunResultsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewRunResultsDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewRunResultsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewRunResultsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewRunResultsDto-objects as value to a dart map
  static Map<String, List<DevicePreviewRunResultsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewRunResultsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewRunResultsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'run',
    'targets',
    'screenshots',
  };
}

