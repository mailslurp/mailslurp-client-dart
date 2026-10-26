//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalyticsGroupSeriesDto {
  /// Returns a new [InboxPlacementAnalyticsGroupSeriesDto] instance.
  InboxPlacementAnalyticsGroupSeriesDto({
    required this.key,
    required this.label,
    this.senderDomain,
    this.fromEmail,
    required this.summary,
    this.points = const [],
  });

  String key;

  String label;

  String? senderDomain;

  String? fromEmail;

  InboxPlacementAnalyticsSummaryDto summary;

  List<InboxPlacementAnalyticsSeriesPointDto> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalyticsGroupSeriesDto &&
     other.key == key &&
     other.label == label &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.summary == summary &&
     other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key.hashCode) +
    (label.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (summary.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'InboxPlacementAnalyticsGroupSeriesDto[key=$key, label=$label, senderDomain=$senderDomain, fromEmail=$fromEmail, summary=$summary, points=$points]';

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
      json[r'summary'] = this.summary;
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [InboxPlacementAnalyticsGroupSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalyticsGroupSeriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalyticsGroupSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalyticsGroupSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalyticsGroupSeriesDto(
        key: mapValueOfType<String>(json, r'key')!,
        label: mapValueOfType<String>(json, r'label')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        summary: InboxPlacementAnalyticsSummaryDto.fromJson(json[r'summary'])!,
        points: InboxPlacementAnalyticsSeriesPointDto.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalyticsGroupSeriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsGroupSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsGroupSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalyticsGroupSeriesDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalyticsGroupSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalyticsGroupSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalyticsGroupSeriesDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalyticsGroupSeriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalyticsGroupSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalyticsGroupSeriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'key',
    'label',
    'summary',
    'points',
  };
}

