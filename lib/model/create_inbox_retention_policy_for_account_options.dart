//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxRetentionPolicyForAccountOptions {
  /// Returns a new [CreateInboxRetentionPolicyForAccountOptions] instance.
  CreateInboxRetentionPolicyForAccountOptions({
    required this.retentionDays,
  });

  /// Minimum value: 1
  /// Maximum value: 730
  int retentionDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxRetentionPolicyForAccountOptions &&
     other.retentionDays == retentionDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (retentionDays.hashCode);

  @override
  String toString() => 'CreateInboxRetentionPolicyForAccountOptions[retentionDays=$retentionDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'retentionDays'] = this.retentionDays;
    return json;
  }

  /// Returns a new [CreateInboxRetentionPolicyForAccountOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxRetentionPolicyForAccountOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxRetentionPolicyForAccountOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxRetentionPolicyForAccountOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxRetentionPolicyForAccountOptions(
        retentionDays: mapValueOfType<int>(json, r'retentionDays')!,
      );
    }
    return null;
  }

  static List<CreateInboxRetentionPolicyForAccountOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRetentionPolicyForAccountOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRetentionPolicyForAccountOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxRetentionPolicyForAccountOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxRetentionPolicyForAccountOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxRetentionPolicyForAccountOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxRetentionPolicyForAccountOptions-objects as value to a dart map
  static Map<String, List<CreateInboxRetentionPolicyForAccountOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxRetentionPolicyForAccountOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxRetentionPolicyForAccountOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'retentionDays',
  };
}

