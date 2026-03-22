//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeEmailHeadersResults {
  /// Returns a new [AnalyzeEmailHeadersResults] instance.
  AnalyzeEmailHeadersResults({
    required this.summary,
    this.receivedPath = const [],
    this.parsedHeaders = const {},
    this.warnings = const [],
    this.errors = const [],
  });

  EmailHeaderAnalysisSummary summary;

  List<EmailHeaderReceivedHop> receivedPath;

  Map<String, List<String>> parsedHeaders;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeEmailHeadersResults &&
     other.summary == summary &&
     other.receivedPath == receivedPath &&
     other.parsedHeaders == parsedHeaders &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (summary.hashCode) +
    (receivedPath.hashCode) +
    (parsedHeaders.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'AnalyzeEmailHeadersResults[summary=$summary, receivedPath=$receivedPath, parsedHeaders=$parsedHeaders, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'summary'] = this.summary;
      json[r'receivedPath'] = this.receivedPath;
      json[r'parsedHeaders'] = this.parsedHeaders;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [AnalyzeEmailHeadersResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeEmailHeadersResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeEmailHeadersResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeEmailHeadersResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeEmailHeadersResults(
        summary: EmailHeaderAnalysisSummary.fromJson(json[r'summary'])!,
        receivedPath: EmailHeaderReceivedHop.listFromJson(json[r'receivedPath']),
        parsedHeaders: json[r'parsedHeaders'] == null
          ? const {}
            : mapCastOfType<String, List>(json, r'parsedHeaders'),
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

  static List<AnalyzeEmailHeadersResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeEmailHeadersResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeEmailHeadersResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeEmailHeadersResults> mapFromJson(dynamic json) {
    final map = <String, AnalyzeEmailHeadersResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeEmailHeadersResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeEmailHeadersResults-objects as value to a dart map
  static Map<String, List<AnalyzeEmailHeadersResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeEmailHeadersResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeEmailHeadersResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'summary',
    'receivedPath',
    'parsedHeaders',
    'warnings',
    'errors',
  };
}

