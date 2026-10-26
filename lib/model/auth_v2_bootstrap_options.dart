//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthV2BootstrapOptions {
  /// Returns a new [AuthV2BootstrapOptions] instance.
  AuthV2BootstrapOptions({
    this.returnTo,
  });

  String? returnTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthV2BootstrapOptions &&
     other.returnTo == returnTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (returnTo == null ? 0 : returnTo!.hashCode);

  @override
  String toString() => 'AuthV2BootstrapOptions[returnTo=$returnTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.returnTo != null) {
      json[r'returnTo'] = this.returnTo;
    } else {
      json[r'returnTo'] = null;
    }
    return json;
  }

  /// Returns a new [AuthV2BootstrapOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthV2BootstrapOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthV2BootstrapOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthV2BootstrapOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthV2BootstrapOptions(
        returnTo: mapValueOfType<String>(json, r'returnTo'),
      );
    }
    return null;
  }

  static List<AuthV2BootstrapOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthV2BootstrapOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthV2BootstrapOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthV2BootstrapOptions> mapFromJson(dynamic json) {
    final map = <String, AuthV2BootstrapOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthV2BootstrapOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthV2BootstrapOptions-objects as value to a dart map
  static Map<String, List<AuthV2BootstrapOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthV2BootstrapOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthV2BootstrapOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

