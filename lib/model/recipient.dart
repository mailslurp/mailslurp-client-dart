//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Recipient {
  /// Returns a new [Recipient] instance.
  Recipient({
    required this.rawValue,
    required this.emailAddress,
    this.name,
  });

  String rawValue;

  String emailAddress;

  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recipient &&
     other.rawValue == rawValue &&
     other.emailAddress == emailAddress &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawValue.hashCode) +
    (emailAddress.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'Recipient[rawValue=$rawValue, emailAddress=$emailAddress, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawValue'] = this.rawValue;
      json[r'emailAddress'] = this.emailAddress;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [Recipient] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recipient? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recipient[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recipient[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recipient(
        rawValue: mapValueOfType<String>(json, r'rawValue')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Recipient> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recipient>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recipient.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recipient> mapFromJson(dynamic json) {
    final map = <String, Recipient>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recipient.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recipient-objects as value to a dart map
  static Map<String, List<Recipient>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recipient>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recipient.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rawValue',
    'emailAddress',
  };
}

