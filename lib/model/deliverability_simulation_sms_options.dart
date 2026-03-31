//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilitySimulationSmsOptions {
  /// Returns a new [DeliverabilitySimulationSmsOptions] instance.
  DeliverabilitySimulationSmsOptions({
    this.bodyTemplate,
  });

  /// Optional SMS body template. Supports {{targetLabel}}, {{sendIndex}}, {{attempt}}.
  String? bodyTemplate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilitySimulationSmsOptions &&
     other.bodyTemplate == bodyTemplate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bodyTemplate == null ? 0 : bodyTemplate!.hashCode);

  @override
  String toString() => 'DeliverabilitySimulationSmsOptions[bodyTemplate=$bodyTemplate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.bodyTemplate != null) {
      json[r'bodyTemplate'] = this.bodyTemplate;
    } else {
      json[r'bodyTemplate'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilitySimulationSmsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilitySimulationSmsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilitySimulationSmsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilitySimulationSmsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilitySimulationSmsOptions(
        bodyTemplate: mapValueOfType<String>(json, r'bodyTemplate'),
      );
    }
    return null;
  }

  static List<DeliverabilitySimulationSmsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilitySimulationSmsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilitySimulationSmsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilitySimulationSmsOptions> mapFromJson(dynamic json) {
    final map = <String, DeliverabilitySimulationSmsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilitySimulationSmsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilitySimulationSmsOptions-objects as value to a dart map
  static Map<String, List<DeliverabilitySimulationSmsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilitySimulationSmsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilitySimulationSmsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

