//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityAnalyticsSeriesPointDto {
  /// Returns a new [DeliverabilityAnalyticsSeriesPointDto] instance.
  DeliverabilityAnalyticsSeriesPointDto({
    required this.bucketStart,
    required this.bucketEnd,
    required this.metrics,
  });

  DateTime bucketStart;

  DateTime bucketEnd;

  DeliverabilityAnalyticsSummaryDto metrics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityAnalyticsSeriesPointDto &&
     other.bucketStart == bucketStart &&
     other.bucketEnd == bucketEnd &&
     other.metrics == metrics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucketStart.hashCode) +
    (bucketEnd.hashCode) +
    (metrics.hashCode);

  @override
  String toString() => 'DeliverabilityAnalyticsSeriesPointDto[bucketStart=$bucketStart, bucketEnd=$bucketEnd, metrics=$metrics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bucketStart'] = this.bucketStart.toUtc().toIso8601String();
      json[r'bucketEnd'] = this.bucketEnd.toUtc().toIso8601String();
      json[r'metrics'] = this.metrics;
    return json;
  }

  /// Returns a new [DeliverabilityAnalyticsSeriesPointDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityAnalyticsSeriesPointDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityAnalyticsSeriesPointDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityAnalyticsSeriesPointDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityAnalyticsSeriesPointDto(
        bucketStart: mapDateTime(json, r'bucketStart', '')!,
        bucketEnd: mapDateTime(json, r'bucketEnd', '')!,
        metrics: DeliverabilityAnalyticsSummaryDto.fromJson(json[r'metrics'])!,
      );
    }
    return null;
  }

  static List<DeliverabilityAnalyticsSeriesPointDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsSeriesPointDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsSeriesPointDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityAnalyticsSeriesPointDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityAnalyticsSeriesPointDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityAnalyticsSeriesPointDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityAnalyticsSeriesPointDto-objects as value to a dart map
  static Map<String, List<DeliverabilityAnalyticsSeriesPointDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityAnalyticsSeriesPointDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityAnalyticsSeriesPointDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bucketStart',
    'bucketEnd',
    'metrics',
  };
}

