//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDomainMonitorOptions {
  /// Returns a new [CreateDomainMonitorOptions] instance.
  CreateDomainMonitorOptions({
    required this.domain,
    this.name,
    this.intervalSeconds,
    this.enabled,
    this.schedulingEnabled,
  });

  String domain;

  /// Optional display name
  String? name;

  /// Check interval in seconds
  ///
  /// Minimum value: 60
  /// Maximum value: 604800
  int? intervalSeconds;

  /// Whether scheduled monitor runs are enabled (legacy alias for schedulingEnabled)
  bool? enabled;

  /// Whether scheduled monitor runs are enabled. Direct run-now is always permitted.
  bool? schedulingEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDomainMonitorOptions &&
     other.domain == domain &&
     other.name == name &&
     other.intervalSeconds == intervalSeconds &&
     other.enabled == enabled &&
     other.schedulingEnabled == schedulingEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (intervalSeconds == null ? 0 : intervalSeconds!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (schedulingEnabled == null ? 0 : schedulingEnabled!.hashCode);

  @override
  String toString() => 'CreateDomainMonitorOptions[domain=$domain, name=$name, intervalSeconds=$intervalSeconds, enabled=$enabled, schedulingEnabled=$schedulingEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.intervalSeconds != null) {
      json[r'intervalSeconds'] = this.intervalSeconds;
    } else {
      json[r'intervalSeconds'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.schedulingEnabled != null) {
      json[r'schedulingEnabled'] = this.schedulingEnabled;
    } else {
      json[r'schedulingEnabled'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDomainMonitorOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDomainMonitorOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDomainMonitorOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDomainMonitorOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDomainMonitorOptions(
        domain: mapValueOfType<String>(json, r'domain')!,
        name: mapValueOfType<String>(json, r'name'),
        intervalSeconds: mapValueOfType<int>(json, r'intervalSeconds'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        schedulingEnabled: mapValueOfType<bool>(json, r'schedulingEnabled'),
      );
    }
    return null;
  }

  static List<CreateDomainMonitorOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDomainMonitorOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDomainMonitorOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDomainMonitorOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDomainMonitorOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDomainMonitorOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDomainMonitorOptions-objects as value to a dart map
  static Map<String, List<CreateDomainMonitorOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDomainMonitorOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDomainMonitorOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
  };
}

