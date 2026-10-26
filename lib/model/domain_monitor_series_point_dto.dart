//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorSeriesPointDto {
  /// Returns a new [DomainMonitorSeriesPointDto] instance.
  DomainMonitorSeriesPointDto({
    required this.bucketStart,
    required this.runCount,
    required this.healthyCount,
    required this.degradedCount,
    required this.criticalCount,
    required this.failedCount,
    required this.healthyRate,
    required this.averageHealthScore,
  });

  DateTime bucketStart;

  int runCount;

  int healthyCount;

  int degradedCount;

  int criticalCount;

  int failedCount;

  double healthyRate;

  double averageHealthScore;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorSeriesPointDto &&
     other.bucketStart == bucketStart &&
     other.runCount == runCount &&
     other.healthyCount == healthyCount &&
     other.degradedCount == degradedCount &&
     other.criticalCount == criticalCount &&
     other.failedCount == failedCount &&
     other.healthyRate == healthyRate &&
     other.averageHealthScore == averageHealthScore;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bucketStart.hashCode) +
    (runCount.hashCode) +
    (healthyCount.hashCode) +
    (degradedCount.hashCode) +
    (criticalCount.hashCode) +
    (failedCount.hashCode) +
    (healthyRate.hashCode) +
    (averageHealthScore.hashCode);

  @override
  String toString() => 'DomainMonitorSeriesPointDto[bucketStart=$bucketStart, runCount=$runCount, healthyCount=$healthyCount, degradedCount=$degradedCount, criticalCount=$criticalCount, failedCount=$failedCount, healthyRate=$healthyRate, averageHealthScore=$averageHealthScore]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'bucketStart'] = this.bucketStart.toUtc().toIso8601String();
      json[r'runCount'] = this.runCount;
      json[r'healthyCount'] = this.healthyCount;
      json[r'degradedCount'] = this.degradedCount;
      json[r'criticalCount'] = this.criticalCount;
      json[r'failedCount'] = this.failedCount;
      json[r'healthyRate'] = this.healthyRate;
      json[r'averageHealthScore'] = this.averageHealthScore;
    return json;
  }

  /// Returns a new [DomainMonitorSeriesPointDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorSeriesPointDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorSeriesPointDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorSeriesPointDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorSeriesPointDto(
        bucketStart: mapDateTime(json, r'bucketStart', '')!,
        runCount: mapValueOfType<int>(json, r'runCount')!,
        healthyCount: mapValueOfType<int>(json, r'healthyCount')!,
        degradedCount: mapValueOfType<int>(json, r'degradedCount')!,
        criticalCount: mapValueOfType<int>(json, r'criticalCount')!,
        failedCount: mapValueOfType<int>(json, r'failedCount')!,
        healthyRate: mapValueOfType<double>(json, r'healthyRate')!,
        averageHealthScore: mapValueOfType<double>(json, r'averageHealthScore')!,
      );
    }
    return null;
  }

  static List<DomainMonitorSeriesPointDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorSeriesPointDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorSeriesPointDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorSeriesPointDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorSeriesPointDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorSeriesPointDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorSeriesPointDto-objects as value to a dart map
  static Map<String, List<DomainMonitorSeriesPointDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorSeriesPointDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorSeriesPointDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'bucketStart',
    'runCount',
    'healthyCount',
    'degradedCount',
    'criticalCount',
    'failedCount',
    'healthyRate',
    'averageHealthScore',
  };
}

