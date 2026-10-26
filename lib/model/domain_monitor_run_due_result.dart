//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorRunDueResult {
  /// Returns a new [DomainMonitorRunDueResult] instance.
  DomainMonitorRunDueResult({
    required this.triggerSource,
    required this.runCount,
    required this.requestedMaxRuns,
    required this.executedAt,
  });

  DomainMonitorRunDueResultTriggerSourceEnum triggerSource;

  int runCount;

  int requestedMaxRuns;

  DateTime executedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorRunDueResult &&
     other.triggerSource == triggerSource &&
     other.runCount == runCount &&
     other.requestedMaxRuns == requestedMaxRuns &&
     other.executedAt == executedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (triggerSource.hashCode) +
    (runCount.hashCode) +
    (requestedMaxRuns.hashCode) +
    (executedAt.hashCode);

  @override
  String toString() => 'DomainMonitorRunDueResult[triggerSource=$triggerSource, runCount=$runCount, requestedMaxRuns=$requestedMaxRuns, executedAt=$executedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'triggerSource'] = this.triggerSource;
      json[r'runCount'] = this.runCount;
      json[r'requestedMaxRuns'] = this.requestedMaxRuns;
      json[r'executedAt'] = this.executedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainMonitorRunDueResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorRunDueResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorRunDueResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorRunDueResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorRunDueResult(
        triggerSource: DomainMonitorRunDueResultTriggerSourceEnum.fromJson(json[r'triggerSource'])!,
        runCount: mapValueOfType<int>(json, r'runCount')!,
        requestedMaxRuns: mapValueOfType<int>(json, r'requestedMaxRuns')!,
        executedAt: mapDateTime(json, r'executedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorRunDueResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunDueResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunDueResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorRunDueResult> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorRunDueResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorRunDueResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorRunDueResult-objects as value to a dart map
  static Map<String, List<DomainMonitorRunDueResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorRunDueResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorRunDueResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'triggerSource',
    'runCount',
    'requestedMaxRuns',
    'executedAt',
  };
}


class DomainMonitorRunDueResultTriggerSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorRunDueResultTriggerSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const API = DomainMonitorRunDueResultTriggerSourceEnum._(r'API');
  static const USER_SCHEDULE = DomainMonitorRunDueResultTriggerSourceEnum._(r'USER_SCHEDULE');
  static const CRON = DomainMonitorRunDueResultTriggerSourceEnum._(r'CRON');
  static const SCHEDULER = DomainMonitorRunDueResultTriggerSourceEnum._(r'SCHEDULER');

  /// List of all possible values in this [enum][DomainMonitorRunDueResultTriggerSourceEnum].
  static const values = <DomainMonitorRunDueResultTriggerSourceEnum>[
    API,
    USER_SCHEDULE,
    CRON,
    SCHEDULER,
  ];

  static DomainMonitorRunDueResultTriggerSourceEnum? fromJson(dynamic value) => DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer().decode(value);

  static List<DomainMonitorRunDueResultTriggerSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorRunDueResultTriggerSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorRunDueResultTriggerSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorRunDueResultTriggerSourceEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorRunDueResultTriggerSourceEnum].
class DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer {
  factory DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer() => _instance ??= const DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer._();

  const DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer._();

  String encode(DomainMonitorRunDueResultTriggerSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorRunDueResultTriggerSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorRunDueResultTriggerSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'API': return DomainMonitorRunDueResultTriggerSourceEnum.API;
        case r'USER_SCHEDULE': return DomainMonitorRunDueResultTriggerSourceEnum.USER_SCHEDULE;
        case r'CRON': return DomainMonitorRunDueResultTriggerSourceEnum.CRON;
        case r'SCHEDULER': return DomainMonitorRunDueResultTriggerSourceEnum.SCHEDULER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer] instance.
  static DomainMonitorRunDueResultTriggerSourceEnumTypeTransformer? _instance;
}


