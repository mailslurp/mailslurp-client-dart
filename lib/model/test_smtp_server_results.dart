//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TestSmtpServerResults {
  /// Returns a new [TestSmtpServerResults] instance.
  TestSmtpServerResults({
    required this.connected,
    this.banner,
    required this.tls,
    required this.auth,
    this.transcript = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  bool connected;

  String? banner;

  SmtpTlsDiagnosticResult tls;

  SmtpAuthDiagnosticResult auth;

  List<SmtpDiagnosticStep> transcript;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TestSmtpServerResults &&
     other.connected == connected &&
     other.banner == banner &&
     other.tls == tls &&
     other.auth == auth &&
     other.transcript == transcript &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connected.hashCode) +
    (banner == null ? 0 : banner!.hashCode) +
    (tls.hashCode) +
    (auth.hashCode) +
    (transcript.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'TestSmtpServerResults[connected=$connected, banner=$banner, tls=$tls, auth=$auth, transcript=$transcript, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connected'] = this.connected;
    if (this.banner != null) {
      json[r'banner'] = this.banner;
    } else {
      json[r'banner'] = null;
    }
      json[r'tls'] = this.tls;
      json[r'auth'] = this.auth;
      json[r'transcript'] = this.transcript;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [TestSmtpServerResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TestSmtpServerResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TestSmtpServerResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TestSmtpServerResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TestSmtpServerResults(
        connected: mapValueOfType<bool>(json, r'connected')!,
        banner: mapValueOfType<String>(json, r'banner'),
        tls: SmtpTlsDiagnosticResult.fromJson(json[r'tls'])!,
        auth: SmtpAuthDiagnosticResult.fromJson(json[r'auth'])!,
        transcript: SmtpDiagnosticStep.listFromJson(json[r'transcript']),
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<TestSmtpServerResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TestSmtpServerResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TestSmtpServerResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TestSmtpServerResults> mapFromJson(dynamic json) {
    final map = <String, TestSmtpServerResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TestSmtpServerResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TestSmtpServerResults-objects as value to a dart map
  static Map<String, List<TestSmtpServerResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TestSmtpServerResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TestSmtpServerResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connected',
    'tls',
    'auth',
    'transcript',
    'warnings',
    'errors',
  };
}

