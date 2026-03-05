//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeInsightsDto {
  /// Returns a new [CampaignProbeInsightsDto] instance.
  CampaignProbeInsightsDto({
    required this.probeId,
    required this.since,
    required this.before,
    required this.totalRuns,
    required this.healthyRuns,
    required this.warningRuns,
    required this.failedRuns,
    required this.successRate,
    required this.averageHealthScore,
    required this.currentHealthyStreak,
    required this.bestHealthyStreak,
    this.goodPerformanceSignals = const [],
    this.attentionSignals = const [],
    this.topFindings = const [],
    this.latestRun,
  });

  String probeId;

  DateTime since;

  DateTime before;

  int totalRuns;

  int healthyRuns;

  int warningRuns;

  int failedRuns;

  double successRate;

  double averageHealthScore;

  int currentHealthyStreak;

  int bestHealthyStreak;

  List<String> goodPerformanceSignals;

  List<String> attentionSignals;

  List<String> topFindings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CampaignProbeRunDto? latestRun;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeInsightsDto &&
     other.probeId == probeId &&
     other.since == since &&
     other.before == before &&
     other.totalRuns == totalRuns &&
     other.healthyRuns == healthyRuns &&
     other.warningRuns == warningRuns &&
     other.failedRuns == failedRuns &&
     other.successRate == successRate &&
     other.averageHealthScore == averageHealthScore &&
     other.currentHealthyStreak == currentHealthyStreak &&
     other.bestHealthyStreak == bestHealthyStreak &&
     other.goodPerformanceSignals == goodPerformanceSignals &&
     other.attentionSignals == attentionSignals &&
     other.topFindings == topFindings &&
     other.latestRun == latestRun;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (probeId.hashCode) +
    (since.hashCode) +
    (before.hashCode) +
    (totalRuns.hashCode) +
    (healthyRuns.hashCode) +
    (warningRuns.hashCode) +
    (failedRuns.hashCode) +
    (successRate.hashCode) +
    (averageHealthScore.hashCode) +
    (currentHealthyStreak.hashCode) +
    (bestHealthyStreak.hashCode) +
    (goodPerformanceSignals.hashCode) +
    (attentionSignals.hashCode) +
    (topFindings.hashCode) +
    (latestRun == null ? 0 : latestRun!.hashCode);

  @override
  String toString() => 'CampaignProbeInsightsDto[probeId=$probeId, since=$since, before=$before, totalRuns=$totalRuns, healthyRuns=$healthyRuns, warningRuns=$warningRuns, failedRuns=$failedRuns, successRate=$successRate, averageHealthScore=$averageHealthScore, currentHealthyStreak=$currentHealthyStreak, bestHealthyStreak=$bestHealthyStreak, goodPerformanceSignals=$goodPerformanceSignals, attentionSignals=$attentionSignals, topFindings=$topFindings, latestRun=$latestRun]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'probeId'] = this.probeId;
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
      json[r'totalRuns'] = this.totalRuns;
      json[r'healthyRuns'] = this.healthyRuns;
      json[r'warningRuns'] = this.warningRuns;
      json[r'failedRuns'] = this.failedRuns;
      json[r'successRate'] = this.successRate;
      json[r'averageHealthScore'] = this.averageHealthScore;
      json[r'currentHealthyStreak'] = this.currentHealthyStreak;
      json[r'bestHealthyStreak'] = this.bestHealthyStreak;
      json[r'goodPerformanceSignals'] = this.goodPerformanceSignals;
      json[r'attentionSignals'] = this.attentionSignals;
      json[r'topFindings'] = this.topFindings;
    if (this.latestRun != null) {
      json[r'latestRun'] = this.latestRun;
    } else {
      json[r'latestRun'] = null;
    }
    return json;
  }

  /// Returns a new [CampaignProbeInsightsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeInsightsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeInsightsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeInsightsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeInsightsDto(
        probeId: mapValueOfType<String>(json, r'probeId')!,
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        totalRuns: mapValueOfType<int>(json, r'totalRuns')!,
        healthyRuns: mapValueOfType<int>(json, r'healthyRuns')!,
        warningRuns: mapValueOfType<int>(json, r'warningRuns')!,
        failedRuns: mapValueOfType<int>(json, r'failedRuns')!,
        successRate: mapValueOfType<double>(json, r'successRate')!,
        averageHealthScore: mapValueOfType<double>(json, r'averageHealthScore')!,
        currentHealthyStreak: mapValueOfType<int>(json, r'currentHealthyStreak')!,
        bestHealthyStreak: mapValueOfType<int>(json, r'bestHealthyStreak')!,
        goodPerformanceSignals: json[r'goodPerformanceSignals'] is List
            ? (json[r'goodPerformanceSignals'] as List).cast<String>()
            : const [],
        attentionSignals: json[r'attentionSignals'] is List
            ? (json[r'attentionSignals'] as List).cast<String>()
            : const [],
        topFindings: json[r'topFindings'] is List
            ? (json[r'topFindings'] as List).cast<String>()
            : const [],
        latestRun: CampaignProbeRunDto.fromJson(json[r'latestRun']),
      );
    }
    return null;
  }

  static List<CampaignProbeInsightsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeInsightsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeInsightsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeInsightsDto> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeInsightsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeInsightsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeInsightsDto-objects as value to a dart map
  static Map<String, List<CampaignProbeInsightsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeInsightsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeInsightsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'probeId',
    'since',
    'before',
    'totalRuns',
    'healthyRuns',
    'warningRuns',
    'failedRuns',
    'successRate',
    'averageHealthScore',
    'currentHealthyStreak',
    'bestHealthyStreak',
    'goodPerformanceSignals',
    'attentionSignals',
    'topFindings',
  };
}

