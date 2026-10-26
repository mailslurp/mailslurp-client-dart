//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorRunNowResult {
  /// Returns a new [DomainMonitorRunNowResult] instance.
  DomainMonitorRunNowResult({
    required this.monitor,
    required this.run,
  });

  DomainMonitorDto monitor;

  DomainMonitorRunDto run;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorRunNowResult &&
     other.monitor == monitor &&
     other.run == run;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monitor.hashCode) +
    (run.hashCode);

  @override
  String toString() => 'DomainMonitorRunNowResult[monitor=$monitor, run=$run]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'monitor'] = this.monitor;
      json[r'run'] = this.run;
    return json;
  }

  /// Returns a new [DomainMonitorRunNowResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorRunNowResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorRunNowResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorRunNowResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorRunNowResult(
        monitor: DomainMonitorDto.fromJson(json[r'monitor'])!,
        run: DomainMonitorRunDto.fromJson(json[r'run'])!,
      );
    }
    return null;
  }

  static List<DomainMonitorRunNowResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunNowResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunNowResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorRunNowResult> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorRunNowResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorRunNowResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorRunNowResult-objects as value to a dart map
  static Map<String, List<DomainMonitorRunNowResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorRunNowResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorRunNowResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'monitor',
    'run',
  };
}

