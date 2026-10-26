//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityAnalyticsSummaryDto {
  /// Returns a new [DeliverabilityAnalyticsSummaryDto] instance.
  DeliverabilityAnalyticsSummaryDto({
    required this.totalRuns,
    required this.completeRuns,
    required this.failedRuns,
    required this.stoppedRuns,
    required this.runningRuns,
    required this.scheduledRuns,
    required this.pausedRuns,
    required this.createdRuns,
    required this.thresholdConfiguredRuns,
    required this.thresholdMetRuns,
    required this.averageCompletionPercentage,
    required this.averageMatchedEntities,
    required this.averageUnmatchedEntities,
  });

  int totalRuns;

  int completeRuns;

  int failedRuns;

  int stoppedRuns;

  int runningRuns;

  int scheduledRuns;

  int pausedRuns;

  int createdRuns;

  int thresholdConfiguredRuns;

  int thresholdMetRuns;

  double averageCompletionPercentage;

  double averageMatchedEntities;

  double averageUnmatchedEntities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityAnalyticsSummaryDto &&
     other.totalRuns == totalRuns &&
     other.completeRuns == completeRuns &&
     other.failedRuns == failedRuns &&
     other.stoppedRuns == stoppedRuns &&
     other.runningRuns == runningRuns &&
     other.scheduledRuns == scheduledRuns &&
     other.pausedRuns == pausedRuns &&
     other.createdRuns == createdRuns &&
     other.thresholdConfiguredRuns == thresholdConfiguredRuns &&
     other.thresholdMetRuns == thresholdMetRuns &&
     other.averageCompletionPercentage == averageCompletionPercentage &&
     other.averageMatchedEntities == averageMatchedEntities &&
     other.averageUnmatchedEntities == averageUnmatchedEntities;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalRuns.hashCode) +
    (completeRuns.hashCode) +
    (failedRuns.hashCode) +
    (stoppedRuns.hashCode) +
    (runningRuns.hashCode) +
    (scheduledRuns.hashCode) +
    (pausedRuns.hashCode) +
    (createdRuns.hashCode) +
    (thresholdConfiguredRuns.hashCode) +
    (thresholdMetRuns.hashCode) +
    (averageCompletionPercentage.hashCode) +
    (averageMatchedEntities.hashCode) +
    (averageUnmatchedEntities.hashCode);

  @override
  String toString() => 'DeliverabilityAnalyticsSummaryDto[totalRuns=$totalRuns, completeRuns=$completeRuns, failedRuns=$failedRuns, stoppedRuns=$stoppedRuns, runningRuns=$runningRuns, scheduledRuns=$scheduledRuns, pausedRuns=$pausedRuns, createdRuns=$createdRuns, thresholdConfiguredRuns=$thresholdConfiguredRuns, thresholdMetRuns=$thresholdMetRuns, averageCompletionPercentage=$averageCompletionPercentage, averageMatchedEntities=$averageMatchedEntities, averageUnmatchedEntities=$averageUnmatchedEntities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalRuns'] = this.totalRuns;
      json[r'completeRuns'] = this.completeRuns;
      json[r'failedRuns'] = this.failedRuns;
      json[r'stoppedRuns'] = this.stoppedRuns;
      json[r'runningRuns'] = this.runningRuns;
      json[r'scheduledRuns'] = this.scheduledRuns;
      json[r'pausedRuns'] = this.pausedRuns;
      json[r'createdRuns'] = this.createdRuns;
      json[r'thresholdConfiguredRuns'] = this.thresholdConfiguredRuns;
      json[r'thresholdMetRuns'] = this.thresholdMetRuns;
      json[r'averageCompletionPercentage'] = this.averageCompletionPercentage;
      json[r'averageMatchedEntities'] = this.averageMatchedEntities;
      json[r'averageUnmatchedEntities'] = this.averageUnmatchedEntities;
    return json;
  }

  /// Returns a new [DeliverabilityAnalyticsSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityAnalyticsSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityAnalyticsSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityAnalyticsSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityAnalyticsSummaryDto(
        totalRuns: mapValueOfType<int>(json, r'totalRuns')!,
        completeRuns: mapValueOfType<int>(json, r'completeRuns')!,
        failedRuns: mapValueOfType<int>(json, r'failedRuns')!,
        stoppedRuns: mapValueOfType<int>(json, r'stoppedRuns')!,
        runningRuns: mapValueOfType<int>(json, r'runningRuns')!,
        scheduledRuns: mapValueOfType<int>(json, r'scheduledRuns')!,
        pausedRuns: mapValueOfType<int>(json, r'pausedRuns')!,
        createdRuns: mapValueOfType<int>(json, r'createdRuns')!,
        thresholdConfiguredRuns: mapValueOfType<int>(json, r'thresholdConfiguredRuns')!,
        thresholdMetRuns: mapValueOfType<int>(json, r'thresholdMetRuns')!,
        averageCompletionPercentage: mapValueOfType<double>(json, r'averageCompletionPercentage')!,
        averageMatchedEntities: mapValueOfType<double>(json, r'averageMatchedEntities')!,
        averageUnmatchedEntities: mapValueOfType<double>(json, r'averageUnmatchedEntities')!,
      );
    }
    return null;
  }

  static List<DeliverabilityAnalyticsSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityAnalyticsSummaryDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityAnalyticsSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityAnalyticsSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityAnalyticsSummaryDto-objects as value to a dart map
  static Map<String, List<DeliverabilityAnalyticsSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityAnalyticsSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityAnalyticsSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalRuns',
    'completeRuns',
    'failedRuns',
    'stoppedRuns',
    'runningRuns',
    'scheduledRuns',
    'pausedRuns',
    'createdRuns',
    'thresholdConfiguredRuns',
    'thresholdMetRuns',
    'averageCompletionPercentage',
    'averageMatchedEntities',
    'averageUnmatchedEntities',
  };
}

