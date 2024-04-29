//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HTMLValidationResult {
  /// Returns a new [HTMLValidationResult] instance.
  HTMLValidationResult({
    required this.isValid,
    this.infos = const [],
    this.errors = const [],
    this.warnings = const [],
  });

  /// Is HTML validation result valid
  bool isValid;

  /// Optional infos resulting from HTML validation
  List<ValidationMessage> infos;

  /// Optional errors resulting from HTML validation
  List<ValidationMessage> errors;

  /// Optional warnings resulting from HTML validation
  List<ValidationMessage> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HTMLValidationResult &&
     other.isValid == isValid &&
     other.infos == infos &&
     other.errors == errors &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (isValid.hashCode) +
    (infos.hashCode) +
    (errors.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'HTMLValidationResult[isValid=$isValid, infos=$infos, errors=$errors, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isValid'] = this.isValid;
      json[r'infos'] = this.infos;
      json[r'errors'] = this.errors;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [HTMLValidationResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HTMLValidationResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HTMLValidationResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HTMLValidationResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HTMLValidationResult(
        isValid: mapValueOfType<bool>(json, r'isValid')!,
        infos: ValidationMessage.listFromJson(json[r'infos']),
        errors: ValidationMessage.listFromJson(json[r'errors']),
        warnings: ValidationMessage.listFromJson(json[r'warnings']),
      );
    }
    return null;
  }

  static List<HTMLValidationResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HTMLValidationResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HTMLValidationResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HTMLValidationResult> mapFromJson(dynamic json) {
    final map = <String, HTMLValidationResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HTMLValidationResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HTMLValidationResult-objects as value to a dart map
  static Map<String, List<HTMLValidationResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HTMLValidationResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HTMLValidationResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'isValid',
    'infos',
    'errors',
    'warnings',
  };
}

