//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Sender {
  /// Returns a new [Sender] instance.
  Sender({
    required this.rawValue,
    required this.emailAddress,
    this.name,
  });

  String rawValue;

  String emailAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sender &&
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
  String toString() => 'Sender[rawValue=$rawValue, emailAddress=$emailAddress, name=$name]';

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

  /// Returns a new [Sender] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sender? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Sender[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Sender[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Sender(
        rawValue: mapValueOfType<String>(json, r'rawValue')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<Sender> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sender>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sender.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sender> mapFromJson(dynamic json) {
    final map = <String, Sender>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sender.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sender-objects as value to a dart map
  static Map<String, List<Sender>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sender>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sender.listFromJson(entry.value, growable: growable,);
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

