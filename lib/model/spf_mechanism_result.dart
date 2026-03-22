//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpfMechanismResult {
  /// Returns a new [SpfMechanismResult] instance.
  SpfMechanismResult({
    required this.kind,
    this.value,
    this.qualifier,
  });

  String kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? qualifier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpfMechanismResult &&
     other.kind == kind &&
     other.value == value &&
     other.qualifier == qualifier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (kind.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (qualifier == null ? 0 : qualifier!.hashCode);

  @override
  String toString() => 'SpfMechanismResult[kind=$kind, value=$value, qualifier=$qualifier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'kind'] = this.kind;
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.qualifier != null) {
      json[r'qualifier'] = this.qualifier;
    } else {
      json[r'qualifier'] = null;
    }
    return json;
  }

  /// Returns a new [SpfMechanismResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpfMechanismResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpfMechanismResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpfMechanismResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpfMechanismResult(
        kind: mapValueOfType<String>(json, r'kind')!,
        value: mapValueOfType<String>(json, r'value'),
        qualifier: mapValueOfType<String>(json, r'qualifier'),
      );
    }
    return null;
  }

  static List<SpfMechanismResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpfMechanismResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpfMechanismResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpfMechanismResult> mapFromJson(dynamic json) {
    final map = <String, SpfMechanismResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpfMechanismResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpfMechanismResult-objects as value to a dart map
  static Map<String, List<SpfMechanismResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpfMechanismResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpfMechanismResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'kind',
  };
}

