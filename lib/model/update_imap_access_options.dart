//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateImapAccessOptions {
  /// Returns a new [UpdateImapAccessOptions] instance.
  UpdateImapAccessOptions({
    this.imapUsername,
    this.imapPassword,
  });

  /// IMAP username for login
  String? imapUsername;

  /// IMAP password for login
  String? imapPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateImapAccessOptions &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode);

  @override
  String toString() => 'UpdateImapAccessOptions[imapUsername=$imapUsername, imapPassword=$imapPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.imapUsername != null) {
      json[r'imapUsername'] = this.imapUsername;
    } else {
      json[r'imapUsername'] = null;
    }
    if (this.imapPassword != null) {
      json[r'imapPassword'] = this.imapPassword;
    } else {
      json[r'imapPassword'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateImapAccessOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateImapAccessOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateImapAccessOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateImapAccessOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateImapAccessOptions(
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
      );
    }
    return null;
  }

  static List<UpdateImapAccessOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateImapAccessOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateImapAccessOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateImapAccessOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateImapAccessOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateImapAccessOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateImapAccessOptions-objects as value to a dart map
  static Map<String, List<UpdateImapAccessOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateImapAccessOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateImapAccessOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

