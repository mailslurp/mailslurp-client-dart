//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementProviderAnalysisSectionDto {
  /// Returns a new [InboxPlacementProviderAnalysisSectionDto] instance.
  InboxPlacementProviderAnalysisSectionDto({
    required this.status,
    this.summary,
    this.checks = const [],
    this.details = const {},
  });

  String status;

  String? summary;

  List<InboxPlacementProviderAnalysisCheckDto> checks;

  Map<String, String> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementProviderAnalysisSectionDto &&
     other.status == status &&
     other.summary == summary &&
     other.checks == checks &&
     other.details == details;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (checks.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'InboxPlacementProviderAnalysisSectionDto[status=$status, summary=$summary, checks=$checks, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
      json[r'checks'] = this.checks;
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InboxPlacementProviderAnalysisSectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementProviderAnalysisSectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementProviderAnalysisSectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementProviderAnalysisSectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementProviderAnalysisSectionDto(
        status: mapValueOfType<String>(json, r'status')!,
        summary: mapValueOfType<String>(json, r'summary'),
        checks: InboxPlacementProviderAnalysisCheckDto.listFromJson(json[r'checks']),
        details: mapCastOfType<String, String>(json, r'details')!,
      );
    }
    return null;
  }

  static List<InboxPlacementProviderAnalysisSectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementProviderAnalysisSectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementProviderAnalysisSectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementProviderAnalysisSectionDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementProviderAnalysisSectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementProviderAnalysisSectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementProviderAnalysisSectionDto-objects as value to a dart map
  static Map<String, List<InboxPlacementProviderAnalysisSectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementProviderAnalysisSectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementProviderAnalysisSectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'checks',
    'details',
  };
}

