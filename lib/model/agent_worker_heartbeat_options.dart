//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentWorkerHeartbeatOptions {
  /// Returns a new [AgentWorkerHeartbeatOptions] instance.
  AgentWorkerHeartbeatOptions({
    required this.workerId,
    required this.instanceId,
    this.release,
  });

  String workerId;

  String instanceId;

  String? release;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentWorkerHeartbeatOptions &&
     other.workerId == workerId &&
     other.instanceId == instanceId &&
     other.release == release;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId.hashCode) +
    (instanceId.hashCode) +
    (release == null ? 0 : release!.hashCode);

  @override
  String toString() => 'AgentWorkerHeartbeatOptions[workerId=$workerId, instanceId=$instanceId, release=$release]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workerId'] = this.workerId;
      json[r'instanceId'] = this.instanceId;
    if (this.release != null) {
      json[r'release'] = this.release;
    } else {
      json[r'release'] = null;
    }
    return json;
  }

  /// Returns a new [AgentWorkerHeartbeatOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentWorkerHeartbeatOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentWorkerHeartbeatOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentWorkerHeartbeatOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentWorkerHeartbeatOptions(
        workerId: mapValueOfType<String>(json, r'workerId')!,
        instanceId: mapValueOfType<String>(json, r'instanceId')!,
        release: mapValueOfType<String>(json, r'release'),
      );
    }
    return null;
  }

  static List<AgentWorkerHeartbeatOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentWorkerHeartbeatOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentWorkerHeartbeatOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentWorkerHeartbeatOptions> mapFromJson(dynamic json) {
    final map = <String, AgentWorkerHeartbeatOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentWorkerHeartbeatOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentWorkerHeartbeatOptions-objects as value to a dart map
  static Map<String, List<AgentWorkerHeartbeatOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentWorkerHeartbeatOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentWorkerHeartbeatOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workerId',
    'instanceId',
  };
}

