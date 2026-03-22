//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorSummaryDto {
  /// Returns a new [DomainMonitorSummaryDto] instance.
  DomainMonitorSummaryDto({
    required this.monitor,
    this.latestRun,
    required this.insights,
    required this.authStack,
  });

  DomainMonitorDto monitor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainMonitorRunDto? latestRun;

  DomainMonitorInsightsDto insights;

  CheckEmailAuthStackResults authStack;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorSummaryDto &&
     other.monitor == monitor &&
     other.latestRun == latestRun &&
     other.insights == insights &&
     other.authStack == authStack;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monitor.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode) +
    (insights.hashCode) +
    (authStack.hashCode);

  @override
  String toString() => 'DomainMonitorSummaryDto[monitor=$monitor, latestRun=$latestRun, insights=$insights, authStack=$authStack]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'monitor'] = this.monitor;
    if (this.latestRun != null) {
      json[r'latestRun'] = this.latestRun;
    } else {
      json[r'latestRun'] = null;
    }
      json[r'insights'] = this.insights;
      json[r'authStack'] = this.authStack;
    return json;
  }

  /// Returns a new [DomainMonitorSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorSummaryDto(
        monitor: DomainMonitorDto.fromJson(json[r'monitor'])!,
        latestRun: DomainMonitorRunDto.fromJson(json[r'latestRun']),
        insights: DomainMonitorInsightsDto.fromJson(json[r'insights'])!,
        authStack: CheckEmailAuthStackResults.fromJson(json[r'authStack'])!,
      );
    }
    return null;
  }

  static List<DomainMonitorSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorSummaryDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorSummaryDto-objects as value to a dart map
  static Map<String, List<DomainMonitorSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'monitor',
    'insights',
    'authStack',
  };
}

