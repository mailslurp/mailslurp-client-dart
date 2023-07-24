//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateEmailAddressListOptions {
  /// Returns a new [ValidateEmailAddressListOptions] instance.
  ValidateEmailAddressListOptions({
    this.emailAddressList = const [],
  });

  List<String> emailAddressList;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateEmailAddressListOptions &&
     other.emailAddressList == emailAddressList;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddressList.hashCode);

  @override
  String toString() => 'ValidateEmailAddressListOptions[emailAddressList=$emailAddressList]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddressList'] = this.emailAddressList;
    return json;
  }

  /// Returns a new [ValidateEmailAddressListOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateEmailAddressListOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateEmailAddressListOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateEmailAddressListOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateEmailAddressListOptions(
        emailAddressList: json[r'emailAddressList'] is List
            ? (json[r'emailAddressList'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ValidateEmailAddressListOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateEmailAddressListOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateEmailAddressListOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateEmailAddressListOptions> mapFromJson(dynamic json) {
    final map = <String, ValidateEmailAddressListOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateEmailAddressListOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateEmailAddressListOptions-objects as value to a dart map
  static Map<String, List<ValidateEmailAddressListOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateEmailAddressListOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateEmailAddressListOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddressList',
  };
}

