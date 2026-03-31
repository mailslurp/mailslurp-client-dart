//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmtpDiagnosticStep {
  /// Returns a new [SmtpDiagnosticStep] instance.
  SmtpDiagnosticStep({
    required this.step,
    this.code,
    required this.message,
  });

  String step;

  String? code;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmtpDiagnosticStep &&
     other.step == step &&
     other.code == code &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (step.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'SmtpDiagnosticStep[step=$step, code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'step'] = this.step;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [SmtpDiagnosticStep] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmtpDiagnosticStep? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmtpDiagnosticStep[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmtpDiagnosticStep[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmtpDiagnosticStep(
        step: mapValueOfType<String>(json, r'step')!,
        code: mapValueOfType<String>(json, r'code'),
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<SmtpDiagnosticStep> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmtpDiagnosticStep>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmtpDiagnosticStep.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmtpDiagnosticStep> mapFromJson(dynamic json) {
    final map = <String, SmtpDiagnosticStep>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmtpDiagnosticStep.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmtpDiagnosticStep-objects as value to a dart map
  static Map<String, List<SmtpDiagnosticStep>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmtpDiagnosticStep>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmtpDiagnosticStep.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'step',
    'message',
  };
}

