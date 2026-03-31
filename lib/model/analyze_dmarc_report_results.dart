//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AnalyzeDmarcReportResults {
  /// Returns a new [AnalyzeDmarcReportResults] instance.
  AnalyzeDmarcReportResults({
    required this.metadata,
    required this.recordCount,
    required this.totalMessages,
    required this.rejectCount,
    required this.quarantineCount,
    required this.noneCount,
    required this.dkimAlignedCount,
    required this.spfAlignedCount,
    required this.fullyAlignedCount,
    required this.failedAlignmentCount,
    this.topSources = const [],
    this.warnings = const [],
    this.errors = const [],
  });

  DmarcReportMetadata metadata;

  int recordCount;

  int totalMessages;

  int rejectCount;

  int quarantineCount;

  int noneCount;

  int dkimAlignedCount;

  int spfAlignedCount;

  int fullyAlignedCount;

  int failedAlignmentCount;

  List<DmarcReportSourceSummary> topSources;

  List<String> warnings;

  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyzeDmarcReportResults &&
     other.metadata == metadata &&
     other.recordCount == recordCount &&
     other.totalMessages == totalMessages &&
     other.rejectCount == rejectCount &&
     other.quarantineCount == quarantineCount &&
     other.noneCount == noneCount &&
     other.dkimAlignedCount == dkimAlignedCount &&
     other.spfAlignedCount == spfAlignedCount &&
     other.fullyAlignedCount == fullyAlignedCount &&
     other.failedAlignmentCount == failedAlignmentCount &&
     other.topSources == topSources &&
     other.warnings == warnings &&
     other.errors == errors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (metadata.hashCode) +
    (recordCount.hashCode) +
    (totalMessages.hashCode) +
    (rejectCount.hashCode) +
    (quarantineCount.hashCode) +
    (noneCount.hashCode) +
    (dkimAlignedCount.hashCode) +
    (spfAlignedCount.hashCode) +
    (fullyAlignedCount.hashCode) +
    (failedAlignmentCount.hashCode) +
    (topSources.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'AnalyzeDmarcReportResults[metadata=$metadata, recordCount=$recordCount, totalMessages=$totalMessages, rejectCount=$rejectCount, quarantineCount=$quarantineCount, noneCount=$noneCount, dkimAlignedCount=$dkimAlignedCount, spfAlignedCount=$spfAlignedCount, fullyAlignedCount=$fullyAlignedCount, failedAlignmentCount=$failedAlignmentCount, topSources=$topSources, warnings=$warnings, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'metadata'] = this.metadata;
      json[r'recordCount'] = this.recordCount;
      json[r'totalMessages'] = this.totalMessages;
      json[r'rejectCount'] = this.rejectCount;
      json[r'quarantineCount'] = this.quarantineCount;
      json[r'noneCount'] = this.noneCount;
      json[r'dkimAlignedCount'] = this.dkimAlignedCount;
      json[r'spfAlignedCount'] = this.spfAlignedCount;
      json[r'fullyAlignedCount'] = this.fullyAlignedCount;
      json[r'failedAlignmentCount'] = this.failedAlignmentCount;
      json[r'topSources'] = this.topSources;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [AnalyzeDmarcReportResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyzeDmarcReportResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyzeDmarcReportResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyzeDmarcReportResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyzeDmarcReportResults(
        metadata: DmarcReportMetadata.fromJson(json[r'metadata'])!,
        recordCount: mapValueOfType<int>(json, r'recordCount')!,
        totalMessages: mapValueOfType<int>(json, r'totalMessages')!,
        rejectCount: mapValueOfType<int>(json, r'rejectCount')!,
        quarantineCount: mapValueOfType<int>(json, r'quarantineCount')!,
        noneCount: mapValueOfType<int>(json, r'noneCount')!,
        dkimAlignedCount: mapValueOfType<int>(json, r'dkimAlignedCount')!,
        spfAlignedCount: mapValueOfType<int>(json, r'spfAlignedCount')!,
        fullyAlignedCount: mapValueOfType<int>(json, r'fullyAlignedCount')!,
        failedAlignmentCount: mapValueOfType<int>(json, r'failedAlignmentCount')!,
        topSources: DmarcReportSourceSummary.listFromJson(json[r'topSources']),
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

  static List<AnalyzeDmarcReportResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyzeDmarcReportResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyzeDmarcReportResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyzeDmarcReportResults> mapFromJson(dynamic json) {
    final map = <String, AnalyzeDmarcReportResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyzeDmarcReportResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyzeDmarcReportResults-objects as value to a dart map
  static Map<String, List<AnalyzeDmarcReportResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyzeDmarcReportResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyzeDmarcReportResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'metadata',
    'recordCount',
    'totalMessages',
    'rejectCount',
    'quarantineCount',
    'noneCount',
    'dkimAlignedCount',
    'spfAlignedCount',
    'fullyAlignedCount',
    'failedAlignmentCount',
    'topSources',
    'warnings',
    'errors',
  };
}

