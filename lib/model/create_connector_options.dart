//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorOptions {
  /// Returns a new [CreateConnectorOptions] instance.
  CreateConnectorOptions({
    this.name,
    this.emailAddress,
    this.enabled,
  });

  /// Name of connector
  String? name;

  /// Email address of external inbox
  String? emailAddress;

  /// Is connector enabled
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorOptions &&
     other.name == name &&
     other.emailAddress == emailAddress &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'CreateConnectorOptions[name=$name, emailAddress=$emailAddress, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorOptions(
        name: mapValueOfType<String>(json, r'name'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<CreateConnectorOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

