//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SwitchAccountOptions {
  /// Returns a new [SwitchAccountOptions] instance.
  SwitchAccountOptions({
    this.targetAccountId,
    this.organizationSlug,
  });

  String? targetAccountId;

  String? organizationSlug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SwitchAccountOptions &&
     other.targetAccountId == targetAccountId &&
     other.organizationSlug == organizationSlug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targetAccountId == null ? 0 : targetAccountId!.hashCode) +
    (organizationSlug == null ? 0 : organizationSlug!.hashCode);

  @override
  String toString() => 'SwitchAccountOptions[targetAccountId=$targetAccountId, organizationSlug=$organizationSlug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.targetAccountId != null) {
      json[r'targetAccountId'] = this.targetAccountId;
    } else {
      json[r'targetAccountId'] = null;
    }
    if (this.organizationSlug != null) {
      json[r'organizationSlug'] = this.organizationSlug;
    } else {
      json[r'organizationSlug'] = null;
    }
    return json;
  }

  /// Returns a new [SwitchAccountOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SwitchAccountOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SwitchAccountOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SwitchAccountOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SwitchAccountOptions(
        targetAccountId: mapValueOfType<String>(json, r'targetAccountId'),
        organizationSlug: mapValueOfType<String>(json, r'organizationSlug'),
      );
    }
    return null;
  }

  static List<SwitchAccountOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SwitchAccountOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SwitchAccountOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SwitchAccountOptions> mapFromJson(dynamic json) {
    final map = <String, SwitchAccountOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SwitchAccountOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SwitchAccountOptions-objects as value to a dart map
  static Map<String, List<SwitchAccountOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SwitchAccountOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SwitchAccountOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

