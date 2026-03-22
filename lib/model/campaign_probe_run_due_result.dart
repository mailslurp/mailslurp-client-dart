//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeRunDueResult {
  /// Returns a new [CampaignProbeRunDueResult] instance.
  CampaignProbeRunDueResult({
    required this.triggerSource,
    required this.runCount,
    required this.dueProbeCount,
    required this.skippedCount,
    required this.requestedMaxRuns,
    required this.executedAt,
  });

  CampaignProbeRunDueResultTriggerSourceEnum triggerSource;

  int runCount;

  int dueProbeCount;

  int skippedCount;

  int requestedMaxRuns;

  DateTime executedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeRunDueResult &&
     other.triggerSource == triggerSource &&
     other.runCount == runCount &&
     other.dueProbeCount == dueProbeCount &&
     other.skippedCount == skippedCount &&
     other.requestedMaxRuns == requestedMaxRuns &&
     other.executedAt == executedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (triggerSource.hashCode) +
    (runCount.hashCode) +
    (dueProbeCount.hashCode) +
    (skippedCount.hashCode) +
    (requestedMaxRuns.hashCode) +
    (executedAt.hashCode);

  @override
  String toString() => 'CampaignProbeRunDueResult[triggerSource=$triggerSource, runCount=$runCount, dueProbeCount=$dueProbeCount, skippedCount=$skippedCount, requestedMaxRuns=$requestedMaxRuns, executedAt=$executedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'triggerSource'] = this.triggerSource;
      json[r'runCount'] = this.runCount;
      json[r'dueProbeCount'] = this.dueProbeCount;
      json[r'skippedCount'] = this.skippedCount;
      json[r'requestedMaxRuns'] = this.requestedMaxRuns;
      json[r'executedAt'] = this.executedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [CampaignProbeRunDueResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeRunDueResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeRunDueResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeRunDueResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeRunDueResult(
        triggerSource: CampaignProbeRunDueResultTriggerSourceEnum.fromJson(json[r'triggerSource'])!,
        runCount: mapValueOfType<int>(json, r'runCount')!,
        dueProbeCount: mapValueOfType<int>(json, r'dueProbeCount')!,
        skippedCount: mapValueOfType<int>(json, r'skippedCount')!,
        requestedMaxRuns: mapValueOfType<int>(json, r'requestedMaxRuns')!,
        executedAt: mapDateTime(json, r'executedAt', '')!,
      );
    }
    return null;
  }

  static List<CampaignProbeRunDueResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunDueResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunDueResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeRunDueResult> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeRunDueResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeRunDueResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeRunDueResult-objects as value to a dart map
  static Map<String, List<CampaignProbeRunDueResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeRunDueResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeRunDueResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'triggerSource',
    'runCount',
    'dueProbeCount',
    'skippedCount',
    'requestedMaxRuns',
    'executedAt',
  };
}


class CampaignProbeRunDueResultTriggerSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const CampaignProbeRunDueResultTriggerSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DIRECT_API = CampaignProbeRunDueResultTriggerSourceEnum._(r'DIRECT_API');
  static const SES_MONITOR = CampaignProbeRunDueResultTriggerSourceEnum._(r'SES_MONITOR');
  static const USER_SCHEDULE = CampaignProbeRunDueResultTriggerSourceEnum._(r'USER_SCHEDULE');
  static const CRON = CampaignProbeRunDueResultTriggerSourceEnum._(r'CRON');
  static const SCHEDULER = CampaignProbeRunDueResultTriggerSourceEnum._(r'SCHEDULER');

  /// List of all possible values in this [enum][CampaignProbeRunDueResultTriggerSourceEnum].
  static const values = <CampaignProbeRunDueResultTriggerSourceEnum>[
    DIRECT_API,
    SES_MONITOR,
    USER_SCHEDULE,
    CRON,
    SCHEDULER,
  ];

  static CampaignProbeRunDueResultTriggerSourceEnum? fromJson(dynamic value) => CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer().decode(value);

  static List<CampaignProbeRunDueResultTriggerSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeRunDueResultTriggerSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeRunDueResultTriggerSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignProbeRunDueResultTriggerSourceEnum] to String,
/// and [decode] dynamic data back to [CampaignProbeRunDueResultTriggerSourceEnum].
class CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer {
  factory CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer() => _instance ??= const CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer._();

  const CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer._();

  String encode(CampaignProbeRunDueResultTriggerSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignProbeRunDueResultTriggerSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignProbeRunDueResultTriggerSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DIRECT_API': return CampaignProbeRunDueResultTriggerSourceEnum.DIRECT_API;
        case r'SES_MONITOR': return CampaignProbeRunDueResultTriggerSourceEnum.SES_MONITOR;
        case r'USER_SCHEDULE': return CampaignProbeRunDueResultTriggerSourceEnum.USER_SCHEDULE;
        case r'CRON': return CampaignProbeRunDueResultTriggerSourceEnum.CRON;
        case r'SCHEDULER': return CampaignProbeRunDueResultTriggerSourceEnum.SCHEDULER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer] instance.
  static CampaignProbeRunDueResultTriggerSourceEnumTypeTransformer? _instance;
}


