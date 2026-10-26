//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateSendingConnectionOptions {
  /// Returns a new [UpdateSendingConnectionOptions] instance.
  UpdateSendingConnectionOptions({
    this.name,
    this.fromEmail,
  });

  String? name;

  String? fromEmail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateSendingConnectionOptions &&
     other.name == name &&
     other.fromEmail == fromEmail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode);

  @override
  String toString() => 'UpdateSendingConnectionOptions[name=$name, fromEmail=$fromEmail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateSendingConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateSendingConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateSendingConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateSendingConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateSendingConnectionOptions(
        name: mapValueOfType<String>(json, r'name'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
      );
    }
    return null;
  }

  static List<UpdateSendingConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateSendingConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateSendingConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateSendingConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateSendingConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateSendingConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateSendingConnectionOptions-objects as value to a dart map
  static Map<String, List<UpdateSendingConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateSendingConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateSendingConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

