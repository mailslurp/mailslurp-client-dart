//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthV2PasswordLoginOptions {
  /// Returns a new [AuthV2PasswordLoginOptions] instance.
  AuthV2PasswordLoginOptions({
    required this.emailAddress,
    required this.password,
    this.organizationSlug,
    this.returnTo,
  });

  String emailAddress;

  String password;

  String? organizationSlug;

  String? returnTo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthV2PasswordLoginOptions &&
     other.emailAddress == emailAddress &&
     other.password == password &&
     other.organizationSlug == organizationSlug &&
     other.returnTo == returnTo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddress.hashCode) +
    (password.hashCode) +
    (organizationSlug == null ? 0 : organizationSlug!.hashCode) +
    (returnTo == null ? 0 : returnTo!.hashCode);

  @override
  String toString() => 'AuthV2PasswordLoginOptions[emailAddress=$emailAddress, password=$password, organizationSlug=$organizationSlug, returnTo=$returnTo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = this.emailAddress;
      json[r'password'] = this.password;
    if (this.organizationSlug != null) {
      json[r'organizationSlug'] = this.organizationSlug;
    } else {
      json[r'organizationSlug'] = null;
    }
    if (this.returnTo != null) {
      json[r'returnTo'] = this.returnTo;
    } else {
      json[r'returnTo'] = null;
    }
    return json;
  }

  /// Returns a new [AuthV2PasswordLoginOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthV2PasswordLoginOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthV2PasswordLoginOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthV2PasswordLoginOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthV2PasswordLoginOptions(
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        password: mapValueOfType<String>(json, r'password')!,
        organizationSlug: mapValueOfType<String>(json, r'organizationSlug'),
        returnTo: mapValueOfType<String>(json, r'returnTo'),
      );
    }
    return null;
  }

  static List<AuthV2PasswordLoginOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthV2PasswordLoginOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthV2PasswordLoginOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthV2PasswordLoginOptions> mapFromJson(dynamic json) {
    final map = <String, AuthV2PasswordLoginOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthV2PasswordLoginOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthV2PasswordLoginOptions-objects as value to a dart map
  static Map<String, List<AuthV2PasswordLoginOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthV2PasswordLoginOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthV2PasswordLoginOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
    'password',
  };
}

