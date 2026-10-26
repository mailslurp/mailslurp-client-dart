//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ScimName {
  /// Returns a new [ScimName] instance.
  ScimName({
    this.formatted,
    this.givenName,
    this.familyName,
  });

  String? formatted;

  String? givenName;

  String? familyName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScimName &&
     other.formatted == formatted &&
     other.givenName == givenName &&
     other.familyName == familyName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formatted == null ? 0 : formatted!.hashCode) +
    (givenName == null ? 0 : givenName!.hashCode) +
    (familyName == null ? 0 : familyName!.hashCode);

  @override
  String toString() => 'ScimName[formatted=$formatted, givenName=$givenName, familyName=$familyName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formatted != null) {
      json[r'formatted'] = this.formatted;
    } else {
      json[r'formatted'] = null;
    }
    if (this.givenName != null) {
      json[r'givenName'] = this.givenName;
    } else {
      json[r'givenName'] = null;
    }
    if (this.familyName != null) {
      json[r'familyName'] = this.familyName;
    } else {
      json[r'familyName'] = null;
    }
    return json;
  }

  /// Returns a new [ScimName] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScimName? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScimName[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScimName[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScimName(
        formatted: mapValueOfType<String>(json, r'formatted'),
        givenName: mapValueOfType<String>(json, r'givenName'),
        familyName: mapValueOfType<String>(json, r'familyName'),
      );
    }
    return null;
  }

  static List<ScimName> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScimName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScimName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScimName> mapFromJson(dynamic json) {
    final map = <String, ScimName>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScimName.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScimName-objects as value to a dart map
  static Map<String, List<ScimName>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScimName>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScimName.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

