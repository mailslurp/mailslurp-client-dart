//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AcquireAgentConversationClaimOptions {
  /// Returns a new [AcquireAgentConversationClaimOptions] instance.
  AcquireAgentConversationClaimOptions({
    required this.workerId,
    required this.leaseSeconds,
    this.expectedVersion,
  });

  String workerId;

  /// Minimum value: 5
  /// Maximum value: 300
  int leaseSeconds;

  int? expectedVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AcquireAgentConversationClaimOptions &&
     other.workerId == workerId &&
     other.leaseSeconds == leaseSeconds &&
     other.expectedVersion == expectedVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workerId.hashCode) +
    (leaseSeconds.hashCode) +
    (expectedVersion == null ? 0 : expectedVersion!.hashCode);

  @override
  String toString() => 'AcquireAgentConversationClaimOptions[workerId=$workerId, leaseSeconds=$leaseSeconds, expectedVersion=$expectedVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'workerId'] = this.workerId;
      json[r'leaseSeconds'] = this.leaseSeconds;
    if (this.expectedVersion != null) {
      json[r'expectedVersion'] = this.expectedVersion;
    } else {
      json[r'expectedVersion'] = null;
    }
    return json;
  }

  /// Returns a new [AcquireAgentConversationClaimOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AcquireAgentConversationClaimOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AcquireAgentConversationClaimOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AcquireAgentConversationClaimOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AcquireAgentConversationClaimOptions(
        workerId: mapValueOfType<String>(json, r'workerId')!,
        leaseSeconds: mapValueOfType<int>(json, r'leaseSeconds')!,
        expectedVersion: mapValueOfType<int>(json, r'expectedVersion'),
      );
    }
    return null;
  }

  static List<AcquireAgentConversationClaimOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AcquireAgentConversationClaimOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AcquireAgentConversationClaimOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AcquireAgentConversationClaimOptions> mapFromJson(dynamic json) {
    final map = <String, AcquireAgentConversationClaimOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AcquireAgentConversationClaimOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AcquireAgentConversationClaimOptions-objects as value to a dart map
  static Map<String, List<AcquireAgentConversationClaimOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AcquireAgentConversationClaimOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AcquireAgentConversationClaimOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'workerId',
    'leaseSeconds',
  };
}

