//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateSmtpAccessOptions {
  /// Returns a new [UpdateSmtpAccessOptions] instance.
  UpdateSmtpAccessOptions({
    this.smtpUsername,
    this.smtpPassword,
  });

  /// SMTP username for login
  String? smtpUsername;

  /// SMTP password for login
  String? smtpPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSmtpAccessOptions &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode);

  @override
  String toString() => 'UpdateSmtpAccessOptions[smtpUsername=$smtpUsername, smtpPassword=$smtpPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.smtpUsername != null) {
      json[r'smtpUsername'] = this.smtpUsername;
    } else {
      json[r'smtpUsername'] = null;
    }
    if (this.smtpPassword != null) {
      json[r'smtpPassword'] = this.smtpPassword;
    } else {
      json[r'smtpPassword'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSmtpAccessOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSmtpAccessOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSmtpAccessOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSmtpAccessOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSmtpAccessOptions(
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
      );
    }
    return null;
  }

  static List<UpdateSmtpAccessOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSmtpAccessOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSmtpAccessOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSmtpAccessOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateSmtpAccessOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSmtpAccessOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSmtpAccessOptions-objects as value to a dart map
  static Map<String, List<UpdateSmtpAccessOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSmtpAccessOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSmtpAccessOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

