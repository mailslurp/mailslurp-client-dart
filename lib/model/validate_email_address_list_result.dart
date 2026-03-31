//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ValidateEmailAddressListResult {
  /// Returns a new [ValidateEmailAddressListResult] instance.
  ValidateEmailAddressListResult({
    this.validEmailAddresses = const [],
    this.invalidEmailAddresses = const [],
    this.resultMapEmailAddressIsValid = const {},
  });

  List<String> validEmailAddresses;

  List<String> invalidEmailAddresses;

  Map<String, bool> resultMapEmailAddressIsValid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ValidateEmailAddressListResult &&
     other.validEmailAddresses == validEmailAddresses &&
     other.invalidEmailAddresses == invalidEmailAddresses &&
     other.resultMapEmailAddressIsValid == resultMapEmailAddressIsValid;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (validEmailAddresses.hashCode) +
    (invalidEmailAddresses.hashCode) +
    (resultMapEmailAddressIsValid.hashCode);

  @override
  String toString() => 'ValidateEmailAddressListResult[validEmailAddresses=$validEmailAddresses, invalidEmailAddresses=$invalidEmailAddresses, resultMapEmailAddressIsValid=$resultMapEmailAddressIsValid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'validEmailAddresses'] = this.validEmailAddresses;
      json[r'invalidEmailAddresses'] = this.invalidEmailAddresses;
      json[r'resultMapEmailAddressIsValid'] = this.resultMapEmailAddressIsValid;
    return json;
  }

  /// Returns a new [ValidateEmailAddressListResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ValidateEmailAddressListResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ValidateEmailAddressListResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ValidateEmailAddressListResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ValidateEmailAddressListResult(
        validEmailAddresses: json[r'validEmailAddresses'] is List
            ? (json[r'validEmailAddresses'] as List).cast<String>()
            : const [],
        invalidEmailAddresses: json[r'invalidEmailAddresses'] is List
            ? (json[r'invalidEmailAddresses'] as List).cast<String>()
            : const [],
        resultMapEmailAddressIsValid: mapCastOfType<String, bool>(json, r'resultMapEmailAddressIsValid')!,
      );
    }
    return null;
  }

  static List<ValidateEmailAddressListResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ValidateEmailAddressListResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ValidateEmailAddressListResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ValidateEmailAddressListResult> mapFromJson(dynamic json) {
    final map = <String, ValidateEmailAddressListResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ValidateEmailAddressListResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ValidateEmailAddressListResult-objects as value to a dart map
  static Map<String, List<ValidateEmailAddressListResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ValidateEmailAddressListResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ValidateEmailAddressListResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'validEmailAddresses',
    'invalidEmailAddresses',
    'resultMapEmailAddressIsValid',
  };
}

