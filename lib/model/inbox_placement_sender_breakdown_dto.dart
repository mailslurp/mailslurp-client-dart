//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementSenderBreakdownDto {
  /// Returns a new [InboxPlacementSenderBreakdownDto] instance.
  InboxPlacementSenderBreakdownDto({
    required this.key,
    required this.label,
    this.senderDomain,
    this.fromEmail,
    required this.runCount,
    this.lastRunAt,
    required this.metrics,
  });

  String key;

  String label;

  String? senderDomain;

  String? fromEmail;

  int runCount;

  DateTime? lastRunAt;

  InboxPlacementAnalyticsSummaryDto metrics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementSenderBreakdownDto &&
     other.key == key &&
     other.label == label &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.runCount == runCount &&
     other.lastRunAt == lastRunAt &&
     other.metrics == metrics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (label.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (runCount.hashCode) +
    (lastRunAt == null ? 0 : lastRunAt!.hashCode) +
    (metrics.hashCode);

  @override
  String toString() => 'InboxPlacementSenderBreakdownDto[key=$key, label=$label, senderDomain=$senderDomain, fromEmail=$fromEmail, runCount=$runCount, lastRunAt=$lastRunAt, metrics=$metrics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'key'] = this.key;
      json[r'label'] = this.label;
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
      json[r'runCount'] = this.runCount;
    if (this.lastRunAt != null) {
      json[r'lastRunAt'] = this.lastRunAt!.toUtc().toIso8601String();
    } else {
      json[r'lastRunAt'] = null;
    }
      json[r'metrics'] = this.metrics;
    return json;
  }

  /// Returns a new [InboxPlacementSenderBreakdownDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementSenderBreakdownDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementSenderBreakdownDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementSenderBreakdownDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementSenderBreakdownDto(
        key: mapValueOfType<String>(json, r'key')!,
        label: mapValueOfType<String>(json, r'label')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        runCount: mapValueOfType<int>(json, r'runCount')!,
        lastRunAt: mapDateTime(json, r'lastRunAt', ''),
        metrics: InboxPlacementAnalyticsSummaryDto.fromJson(json[r'metrics'])!,
      );
    }
    return null;
  }

  static List<InboxPlacementSenderBreakdownDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementSenderBreakdownDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementSenderBreakdownDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementSenderBreakdownDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementSenderBreakdownDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementSenderBreakdownDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementSenderBreakdownDto-objects as value to a dart map
  static Map<String, List<InboxPlacementSenderBreakdownDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementSenderBreakdownDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementSenderBreakdownDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'label',
    'runCount',
    'metrics',
  };
}

