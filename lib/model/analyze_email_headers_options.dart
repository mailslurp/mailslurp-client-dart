//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeEmailHeadersOptions {
  /// Returns a new [AnalyzeEmailHeadersOptions] instance.
  AnalyzeEmailHeadersOptions({
    required this.rawHeaders,
  });

  /// Raw RFC 5322 email headers to analyze
  String rawHeaders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeEmailHeadersOptions &&
     other.rawHeaders == rawHeaders;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawHeaders.hashCode);

  @override
  String toString() => 'AnalyzeEmailHeadersOptions[rawHeaders=$rawHeaders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawHeaders'] = this.rawHeaders;
    return json;
  }

  /// Returns a new [AnalyzeEmailHeadersOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeEmailHeadersOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeEmailHeadersOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeEmailHeadersOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeEmailHeadersOptions(
        rawHeaders: mapValueOfType<String>(json, r'rawHeaders')!,
      );
    }
    return null;
  }

  static List<AnalyzeEmailHeadersOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeEmailHeadersOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeEmailHeadersOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeEmailHeadersOptions> mapFromJson(dynamic json) {
    final map = <String, AnalyzeEmailHeadersOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeEmailHeadersOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeEmailHeadersOptions-objects as value to a dart map
  static Map<String, List<AnalyzeEmailHeadersOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeEmailHeadersOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeEmailHeadersOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rawHeaders',
  };
}

