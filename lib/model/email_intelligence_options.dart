//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailIntelligenceOptions {
  /// Returns a new [EmailIntelligenceOptions] instance.
  EmailIntelligenceOptions({
    this.targets = const [],
    this.page,
    this.size,
    this.ignoreCache,
    this.includeEmailValidation,
    this.tests,
  });

  /// Email addresses or domains to score.
  List<String> targets;

  /// Zero-based page index for processing a subset of the target list.
  ///
  /// Minimum value: 0
  int? page;

  /// Page size for processing a subset of the target list.
  ///
  /// Minimum value: 1
  /// Maximum value: 500
  int? size;

  /// Ignore cached intelligence values and force recomputation.
  bool? ignoreCache;

  /// Also run mailbox safety verification using the existing verification client for email inputs.
  bool? includeEmailValidation;

  EmailIntelligenceTestsOptions? tests;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailIntelligenceOptions &&
     other.targets == targets &&
     other.page == page &&
     other.size == size &&
     other.ignoreCache == ignoreCache &&
     other.includeEmailValidation == includeEmailValidation &&
     other.tests == tests;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targets.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (ignoreCache == null ? 0 : ignoreCache!.hashCode) +
    (includeEmailValidation == null ? 0 : includeEmailValidation!.hashCode) +
    (tests == null ? 0 : tests!.hashCode);

  @override
  String toString() => 'EmailIntelligenceOptions[targets=$targets, page=$page, size=$size, ignoreCache=$ignoreCache, includeEmailValidation=$includeEmailValidation, tests=$tests]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'targets'] = this.targets;
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.ignoreCache != null) {
      json[r'ignoreCache'] = this.ignoreCache;
    } else {
      json[r'ignoreCache'] = null;
    }
    if (this.includeEmailValidation != null) {
      json[r'includeEmailValidation'] = this.includeEmailValidation;
    } else {
      json[r'includeEmailValidation'] = null;
    }
    if (this.tests != null) {
      json[r'tests'] = this.tests;
    } else {
      json[r'tests'] = null;
    }
    return json;
  }

  /// Returns a new [EmailIntelligenceOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailIntelligenceOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailIntelligenceOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailIntelligenceOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailIntelligenceOptions(
        targets: json[r'targets'] is List
            ? (json[r'targets'] as List).cast<String>()
            : const [],
        page: mapValueOfType<int>(json, r'page'),
        size: mapValueOfType<int>(json, r'size'),
        ignoreCache: mapValueOfType<bool>(json, r'ignoreCache'),
        includeEmailValidation: mapValueOfType<bool>(json, r'includeEmailValidation'),
        tests: EmailIntelligenceTestsOptions.fromJson(json[r'tests']),
      );
    }
    return null;
  }

  static List<EmailIntelligenceOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailIntelligenceOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailIntelligenceOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailIntelligenceOptions> mapFromJson(dynamic json) {
    final map = <String, EmailIntelligenceOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailIntelligenceOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailIntelligenceOptions-objects as value to a dart map
  static Map<String, List<EmailIntelligenceOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailIntelligenceOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailIntelligenceOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'targets',
  };
}

