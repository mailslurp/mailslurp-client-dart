//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HTMLValidationResult {
  /// Returns a new [HTMLValidationResult] instance.
  HTMLValidationResult({
    @required this.isValid,
    this.errors = const [],
    this.warnings = const [],
  });

  /// Is HTML validation result valid
  bool isValid;

  /// Optional errors resulting from HTML validation
  List<ValidationMessage> errors;

  /// Optional warnings resulting from HTML validation
  List<ValidationMessage> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HTMLValidationResult &&
     other.isValid == isValid &&
     other.errors == errors &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    (isValid == null ? 0 : isValid.hashCode) +
    (errors == null ? 0 : errors.hashCode) +
    (warnings == null ? 0 : warnings.hashCode);

  @override
  String toString() => 'HTMLValidationResult[isValid=$isValid, errors=$errors, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'isValid'] = isValid;
      json[r'errors'] = errors;
      json[r'warnings'] = warnings;
    return json;
  }

  /// Returns a new [HTMLValidationResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static HTMLValidationResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : HTMLValidationResult(
        isValid: json[r'isValid'],
        errors: ValidationMessage.listFromJson(json[r'errors']),
        warnings: ValidationMessage.listFromJson(json[r'warnings']),
    );

  static List<HTMLValidationResult> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <HTMLValidationResult>[]
      : json.map((v) => HTMLValidationResult.fromJson(v)).toList(growable: true == growable);

  static Map<String, HTMLValidationResult> mapFromJson(Map<String, dynamic> json) {
    final map = <String, HTMLValidationResult>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = HTMLValidationResult.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of HTMLValidationResult-objects as value to a dart map
  static Map<String, List<HTMLValidationResult>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<HTMLValidationResult>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = HTMLValidationResult.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

