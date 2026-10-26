//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimMember {
  /// Returns a new [ScimMember] instance.
  ScimMember({
    required this.value,
    this.dollarRef,
    this.display,
  });

  String value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dollarRef;

  String? display;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimMember &&
     other.value == value &&
     other.dollarRef == dollarRef &&
     other.display == display;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (value.hashCode) +
    (dollarRef == null ? 0 : dollarRef!.hashCode) +
    (display == null ? 0 : display!.hashCode);

  @override
  String toString() => 'ScimMember[value=$value, dollarRef=$dollarRef, display=$display]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'value'] = this.value;
    if (this.dollarRef != null) {
      json[r'$ref'] = this.dollarRef;
    } else {
      json[r'$ref'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    return json;
  }

  /// Returns a new [ScimMember] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimMember? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimMember[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimMember[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimMember(
        value: mapValueOfType<String>(json, r'value')!,
        dollarRef: mapValueOfType<String>(json, r'$ref'),
        display: mapValueOfType<String>(json, r'display'),
      );
    }
    return null;
  }

  static List<ScimMember> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimMember>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimMember.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimMember> mapFromJson(dynamic json) {
    final map = <String, ScimMember>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimMember.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimMember-objects as value to a dart map
  static Map<String, List<ScimMember>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimMember>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimMember.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'value',
  };
}

