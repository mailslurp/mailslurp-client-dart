//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentInboxSendPolicyCheckOptions {
  /// Returns a new [AgentInboxSendPolicyCheckOptions] instance.
  AgentInboxSendPolicyCheckOptions({
    this.recipients = const [],
  });

  List<String> recipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentInboxSendPolicyCheckOptions &&
     other.recipients == recipients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recipients.hashCode);

  @override
  String toString() => 'AgentInboxSendPolicyCheckOptions[recipients=$recipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'recipients'] = this.recipients;
    return json;
  }

  /// Returns a new [AgentInboxSendPolicyCheckOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentInboxSendPolicyCheckOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentInboxSendPolicyCheckOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentInboxSendPolicyCheckOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentInboxSendPolicyCheckOptions(
        recipients: json[r'recipients'] is List
            ? (json[r'recipients'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AgentInboxSendPolicyCheckOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentInboxSendPolicyCheckOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentInboxSendPolicyCheckOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentInboxSendPolicyCheckOptions> mapFromJson(dynamic json) {
    final map = <String, AgentInboxSendPolicyCheckOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentInboxSendPolicyCheckOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentInboxSendPolicyCheckOptions-objects as value to a dart map
  static Map<String, List<AgentInboxSendPolicyCheckOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentInboxSendPolicyCheckOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentInboxSendPolicyCheckOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'recipients',
  };
}

