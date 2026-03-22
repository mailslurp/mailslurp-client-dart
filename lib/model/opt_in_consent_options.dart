//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OptInConsentOptions {
  /// Returns a new [OptInConsentOptions] instance.
  OptInConsentOptions({
    required this.emailAddress,
    this.companyName,
    this.sendOptInOptions,
  });

  String emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? companyName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  SendOptInConsentEmailOptions? sendOptInOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OptInConsentOptions &&
     other.emailAddress == emailAddress &&
     other.companyName == companyName &&
     other.sendOptInOptions == sendOptInOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddress.hashCode) +
    (companyName == null ? 0 : companyName!.hashCode) +
    (sendOptInOptions == null ? 0 : sendOptInOptions!.hashCode);

  @override
  String toString() => 'OptInConsentOptions[emailAddress=$emailAddress, companyName=$companyName, sendOptInOptions=$sendOptInOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = this.emailAddress;
    if (this.companyName != null) {
      json[r'companyName'] = this.companyName;
    } else {
      json[r'companyName'] = null;
    }
    if (this.sendOptInOptions != null) {
      json[r'sendOptInOptions'] = this.sendOptInOptions;
    } else {
      json[r'sendOptInOptions'] = null;
    }
    return json;
  }

  /// Returns a new [OptInConsentOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OptInConsentOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OptInConsentOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OptInConsentOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OptInConsentOptions(
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        companyName: mapValueOfType<String>(json, r'companyName'),
        sendOptInOptions: SendOptInConsentEmailOptions.fromJson(json[r'sendOptInOptions']),
      );
    }
    return null;
  }

  static List<OptInConsentOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OptInConsentOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OptInConsentOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OptInConsentOptions> mapFromJson(dynamic json) {
    final map = <String, OptInConsentOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OptInConsentOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OptInConsentOptions-objects as value to a dart map
  static Map<String, List<OptInConsentOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OptInConsentOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OptInConsentOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
  };
}

