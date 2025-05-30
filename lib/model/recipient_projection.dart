//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RecipientProjection {
  /// Returns a new [RecipientProjection] instance.
  RecipientProjection({
    required this.emailAddress,
    required this.rawValue,
    this.name,
  });

  String emailAddress;

  String rawValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RecipientProjection &&
     other.emailAddress == emailAddress &&
     other.rawValue == rawValue &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAddress.hashCode) +
    (rawValue.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'RecipientProjection[emailAddress=$emailAddress, rawValue=$rawValue, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailAddress'] = this.emailAddress;
      json[r'rawValue'] = this.rawValue;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [RecipientProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RecipientProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RecipientProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RecipientProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RecipientProjection(
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        rawValue: mapValueOfType<String>(json, r'rawValue')!,
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<RecipientProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RecipientProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RecipientProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RecipientProjection> mapFromJson(dynamic json) {
    final map = <String, RecipientProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RecipientProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RecipientProjection-objects as value to a dart map
  static Map<String, List<RecipientProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RecipientProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RecipientProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailAddress',
    'rawValue',
  };
}

