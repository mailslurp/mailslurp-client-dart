//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SmtpTlsDiagnosticResult {
  /// Returns a new [SmtpTlsDiagnosticResult] instance.
  SmtpTlsDiagnosticResult({
    required this.supported,
    required this.negotiated,
    this.protocol,
    this.cipher,
  });

  bool supported;

  bool negotiated;

  String? protocol;

  String? cipher;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SmtpTlsDiagnosticResult &&
     other.supported == supported &&
     other.negotiated == negotiated &&
     other.protocol == protocol &&
     other.cipher == cipher;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (supported.hashCode) +
    (negotiated.hashCode) +
    (protocol == null ? 0 : protocol!.hashCode) +
    (cipher == null ? 0 : cipher!.hashCode);

  @override
  String toString() => 'SmtpTlsDiagnosticResult[supported=$supported, negotiated=$negotiated, protocol=$protocol, cipher=$cipher]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'supported'] = this.supported;
      json[r'negotiated'] = this.negotiated;
    if (this.protocol != null) {
      json[r'protocol'] = this.protocol;
    } else {
      json[r'protocol'] = null;
    }
    if (this.cipher != null) {
      json[r'cipher'] = this.cipher;
    } else {
      json[r'cipher'] = null;
    }
    return json;
  }

  /// Returns a new [SmtpTlsDiagnosticResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SmtpTlsDiagnosticResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SmtpTlsDiagnosticResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SmtpTlsDiagnosticResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SmtpTlsDiagnosticResult(
        supported: mapValueOfType<bool>(json, r'supported')!,
        negotiated: mapValueOfType<bool>(json, r'negotiated')!,
        protocol: mapValueOfType<String>(json, r'protocol'),
        cipher: mapValueOfType<String>(json, r'cipher'),
      );
    }
    return null;
  }

  static List<SmtpTlsDiagnosticResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SmtpTlsDiagnosticResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SmtpTlsDiagnosticResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SmtpTlsDiagnosticResult> mapFromJson(dynamic json) {
    final map = <String, SmtpTlsDiagnosticResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SmtpTlsDiagnosticResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SmtpTlsDiagnosticResult-objects as value to a dart map
  static Map<String, List<SmtpTlsDiagnosticResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SmtpTlsDiagnosticResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SmtpTlsDiagnosticResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'supported',
    'negotiated',
  };
}

