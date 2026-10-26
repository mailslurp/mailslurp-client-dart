//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementRemoteResultsDto {
  /// Returns a new [InboxPlacementRemoteResultsDto] instance.
  InboxPlacementRemoteResultsDto({
    required this.test,
    required this.deliverability,
    this.setupAnalysis = const {},
    this.contentAnalysis = const {},
    this.analysis,
    this.providerAnalysis,
    this.targets = const [],
    this.scores = const [],
    this.share = const {},
  });

  InboxPlacementRemoteTestSummaryDto test;

  InboxPlacementDeliverabilitySummaryDto deliverability;

  Map<String, String> setupAnalysis;

  Map<String, String> contentAnalysis;

  InboxPlacementAnalysisBundleDto? analysis;

  InboxPlacementProviderAnalysisDto? providerAnalysis;

  List<InboxPlacementTargetResultDto> targets;

  List<Map<String, String>> scores;

  Map<String, String>? share;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementRemoteResultsDto &&
     other.test == test &&
     other.deliverability == deliverability &&
     other.setupAnalysis == setupAnalysis &&
     other.contentAnalysis == contentAnalysis &&
     other.analysis == analysis &&
     other.providerAnalysis == providerAnalysis &&
     other.targets == targets &&
     other.scores == scores &&
     other.share == share;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (test.hashCode) +
    (deliverability.hashCode) +
    (setupAnalysis.hashCode) +
    (contentAnalysis.hashCode) +
    (analysis == null ? 0 : analysis!.hashCode) +
    (providerAnalysis == null ? 0 : providerAnalysis!.hashCode) +
    (targets.hashCode) +
    (scores.hashCode) +
    (share == null ? 0 : share!.hashCode);

  @override
  String toString() => 'InboxPlacementRemoteResultsDto[test=$test, deliverability=$deliverability, setupAnalysis=$setupAnalysis, contentAnalysis=$contentAnalysis, analysis=$analysis, providerAnalysis=$providerAnalysis, targets=$targets, scores=$scores, share=$share]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'test'] = this.test;
      json[r'deliverability'] = this.deliverability;
      json[r'setupAnalysis'] = this.setupAnalysis;
      json[r'contentAnalysis'] = this.contentAnalysis;
    if (this.analysis != null) {
      json[r'analysis'] = this.analysis;
    } else {
      json[r'analysis'] = null;
    }
    if (this.providerAnalysis != null) {
      json[r'providerAnalysis'] = this.providerAnalysis;
    } else {
      json[r'providerAnalysis'] = null;
    }
      json[r'targets'] = this.targets;
      json[r'scores'] = this.scores;
    if (this.share != null) {
      json[r'share'] = this.share;
    } else {
      json[r'share'] = null;
    }
    return json;
  }

  /// Returns a new [InboxPlacementRemoteResultsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementRemoteResultsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementRemoteResultsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementRemoteResultsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementRemoteResultsDto(
        test: InboxPlacementRemoteTestSummaryDto.fromJson(json[r'test'])!,
        deliverability: InboxPlacementDeliverabilitySummaryDto.fromJson(json[r'deliverability'])!,
        setupAnalysis: mapCastOfType<String, String>(json, r'setupAnalysis')!,
        contentAnalysis: mapCastOfType<String, String>(json, r'contentAnalysis')!,
        analysis: InboxPlacementAnalysisBundleDto.fromJson(json[r'analysis']),
        providerAnalysis: InboxPlacementProviderAnalysisDto.fromJson(json[r'providerAnalysis']),
        targets: InboxPlacementTargetResultDto.listFromJson(json[r'targets']),
        scores: Map.listFromJson(json[r'scores']),
        share: mapCastOfType<String, String>(json, r'share') ?? const {},
      );
    }
    return null;
  }

  static List<InboxPlacementRemoteResultsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementRemoteResultsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementRemoteResultsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementRemoteResultsDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementRemoteResultsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementRemoteResultsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementRemoteResultsDto-objects as value to a dart map
  static Map<String, List<InboxPlacementRemoteResultsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementRemoteResultsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementRemoteResultsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'test',
    'deliverability',
    'setupAnalysis',
    'contentAnalysis',
    'targets',
    'scores',
  };
}

