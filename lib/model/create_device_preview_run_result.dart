//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewRunResult {
  /// Returns a new [CreateDevicePreviewRunResult] instance.
  CreateDevicePreviewRunResult({
    required this.run,
    required this.created,
  });

  DevicePreviewRunDto run;

  bool created;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewRunResult &&
     other.run == run &&
     other.created == created;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (run.hashCode) +
    (created.hashCode);

  @override
  String toString() => 'CreateDevicePreviewRunResult[run=$run, created=$created]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'run'] = this.run;
      json[r'created'] = this.created;
    return json;
  }

  /// Returns a new [CreateDevicePreviewRunResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewRunResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewRunResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewRunResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewRunResult(
        run: DevicePreviewRunDto.fromJson(json[r'run'])!,
        created: mapValueOfType<bool>(json, r'created')!,
      );
    }
    return null;
  }

  static List<CreateDevicePreviewRunResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewRunResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewRunResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewRunResult> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewRunResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewRunResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewRunResult-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewRunResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewRunResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewRunResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'run',
    'created',
  };
}

