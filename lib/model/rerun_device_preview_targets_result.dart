//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RerunDevicePreviewTargetsResult {
  /// Returns a new [RerunDevicePreviewTargetsResult] instance.
  RerunDevicePreviewTargetsResult({
    required this.results,
    required this.remoteRerunAttempted,
    required this.remoteRerunAccepted,
    required this.affectedTargets,
    required this.affectedTasks,
    this.warnings = const [],
  });

  DevicePreviewRunResultsDto results;

  bool remoteRerunAttempted;

  bool remoteRerunAccepted;

  int affectedTargets;

  int affectedTasks;

  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RerunDevicePreviewTargetsResult &&
     other.results == results &&
     other.remoteRerunAttempted == remoteRerunAttempted &&
     other.remoteRerunAccepted == remoteRerunAccepted &&
     other.affectedTargets == affectedTargets &&
     other.affectedTasks == affectedTasks &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (results.hashCode) +
    (remoteRerunAttempted.hashCode) +
    (remoteRerunAccepted.hashCode) +
    (affectedTargets.hashCode) +
    (affectedTasks.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'RerunDevicePreviewTargetsResult[results=$results, remoteRerunAttempted=$remoteRerunAttempted, remoteRerunAccepted=$remoteRerunAccepted, affectedTargets=$affectedTargets, affectedTasks=$affectedTasks, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'results'] = this.results;
      json[r'remoteRerunAttempted'] = this.remoteRerunAttempted;
      json[r'remoteRerunAccepted'] = this.remoteRerunAccepted;
      json[r'affectedTargets'] = this.affectedTargets;
      json[r'affectedTasks'] = this.affectedTasks;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [RerunDevicePreviewTargetsResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RerunDevicePreviewTargetsResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RerunDevicePreviewTargetsResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RerunDevicePreviewTargetsResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RerunDevicePreviewTargetsResult(
        results: DevicePreviewRunResultsDto.fromJson(json[r'results'])!,
        remoteRerunAttempted: mapValueOfType<bool>(json, r'remoteRerunAttempted')!,
        remoteRerunAccepted: mapValueOfType<bool>(json, r'remoteRerunAccepted')!,
        affectedTargets: mapValueOfType<int>(json, r'affectedTargets')!,
        affectedTasks: mapValueOfType<int>(json, r'affectedTasks')!,
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<RerunDevicePreviewTargetsResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RerunDevicePreviewTargetsResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RerunDevicePreviewTargetsResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RerunDevicePreviewTargetsResult> mapFromJson(dynamic json) {
    final map = <String, RerunDevicePreviewTargetsResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RerunDevicePreviewTargetsResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RerunDevicePreviewTargetsResult-objects as value to a dart map
  static Map<String, List<RerunDevicePreviewTargetsResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RerunDevicePreviewTargetsResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RerunDevicePreviewTargetsResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'results',
    'remoteRerunAttempted',
    'remoteRerunAccepted',
    'affectedTargets',
    'affectedTasks',
    'warnings',
  };
}

