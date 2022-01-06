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
    this.errors = const [],
    this.warnings = const [],
    this.valid,
  });

  /// Optional errors resulting from HTML validation
  List<ValidationMessage> errors;

  /// Optional warnings resulting from HTML validation
  List<ValidationMessage> warnings;

  bool valid;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HTMLValidationResult &&
     other.errors == errors &&
     other.warnings == warnings &&
     other.valid == valid;

  @override
  int get hashCode =>
    (errors == null ? 0 : errors.hashCode) +
    (warnings == null ? 0 : warnings.hashCode) +
    (valid == null ? 0 : valid.hashCode);

  @override
  String toString() => 'HTMLValidationResult[errors=$errors, warnings=$warnings, valid=$valid]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (errors != null) {
      json[r'errors'] = errors;
    }
    if (warnings != null) {
      json[r'warnings'] = warnings;
    }
    if (valid != null) {
      json[r'valid'] = valid;
    }
    return json;
  }

  /// Returns a new [HTMLValidationResult] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static HTMLValidationResult fromJson(Map<String, dynamic> json) => json == null
    ? null
    : HTMLValidationResult(
        errors: ValidationMessage.listFromJson(json[r'errors']),
        warnings: ValidationMessage.listFromJson(json[r'warnings']),
        valid: json[r'valid'],
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

