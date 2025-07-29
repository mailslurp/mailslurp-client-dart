//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConditionalStructuredContentResult {
  /// Returns a new [ConditionalStructuredContentResult] instance.
  ConditionalStructuredContentResult({
    this.result,
    required this.conditionsMatch,
  });

  Object? result;

  bool conditionsMatch;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConditionalStructuredContentResult &&
     other.result == result &&
     other.conditionsMatch == conditionsMatch;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (result == null ? 0 : result!.hashCode) +
    (conditionsMatch.hashCode);

  @override
  String toString() => 'ConditionalStructuredContentResult[result=$result, conditionsMatch=$conditionsMatch]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.result != null) {
      json[r'result'] = this.result;
    } else {
      json[r'result'] = null;
    }
      json[r'conditionsMatch'] = this.conditionsMatch;
    return json;
  }

  /// Returns a new [ConditionalStructuredContentResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConditionalStructuredContentResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConditionalStructuredContentResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConditionalStructuredContentResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConditionalStructuredContentResult(
        result: mapValueOfType<Object>(json, r'result'),
        conditionsMatch: mapValueOfType<bool>(json, r'conditionsMatch')!,
      );
    }
    return null;
  }

  static List<ConditionalStructuredContentResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConditionalStructuredContentResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConditionalStructuredContentResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConditionalStructuredContentResult> mapFromJson(dynamic json) {
    final map = <String, ConditionalStructuredContentResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConditionalStructuredContentResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConditionalStructuredContentResult-objects as value to a dart map
  static Map<String, List<ConditionalStructuredContentResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConditionalStructuredContentResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConditionalStructuredContentResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'conditionsMatch',
  };
}

