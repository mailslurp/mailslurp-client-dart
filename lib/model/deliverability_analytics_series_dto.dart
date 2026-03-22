//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityAnalyticsSeriesDto {
  /// Returns a new [DeliverabilityAnalyticsSeriesDto] instance.
  DeliverabilityAnalyticsSeriesDto({
    required this.since,
    required this.before,
    this.scope,
    required this.bucket,
    required this.summary,
    this.runs = const [],
    this.points = const [],
  });

  DateTime since;

  DateTime before;

  DeliverabilityAnalyticsSeriesDtoScopeEnum? scope;

  DeliverabilityAnalyticsSeriesDtoBucketEnum bucket;

  DeliverabilityAnalyticsSummaryDto summary;

  List<DeliverabilityAnalyticsRunDto> runs;

  List<DeliverabilityAnalyticsSeriesPointDto> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityAnalyticsSeriesDto &&
     other.since == since &&
     other.before == before &&
     other.scope == scope &&
     other.bucket == bucket &&
     other.summary == summary &&
     other.runs == runs &&
     other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (since.hashCode) +
    (before.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (bucket.hashCode) +
    (summary.hashCode) +
    (runs.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'DeliverabilityAnalyticsSeriesDto[since=$since, before=$before, scope=$scope, bucket=$bucket, summary=$summary, runs=$runs, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
      json[r'bucket'] = this.bucket;
      json[r'summary'] = this.summary;
      json[r'runs'] = this.runs;
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [DeliverabilityAnalyticsSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityAnalyticsSeriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityAnalyticsSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityAnalyticsSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityAnalyticsSeriesDto(
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        scope: DeliverabilityAnalyticsSeriesDtoScopeEnum.fromJson(json[r'scope']),
        bucket: DeliverabilityAnalyticsSeriesDtoBucketEnum.fromJson(json[r'bucket'])!,
        summary: DeliverabilityAnalyticsSummaryDto.fromJson(json[r'summary'])!,
        runs: DeliverabilityAnalyticsRunDto.listFromJson(json[r'runs']),
        points: DeliverabilityAnalyticsSeriesPointDto.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<DeliverabilityAnalyticsSeriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityAnalyticsSeriesDto> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityAnalyticsSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityAnalyticsSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityAnalyticsSeriesDto-objects as value to a dart map
  static Map<String, List<DeliverabilityAnalyticsSeriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityAnalyticsSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityAnalyticsSeriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'since',
    'before',
    'bucket',
    'summary',
    'runs',
    'points',
  };
}


class DeliverabilityAnalyticsSeriesDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityAnalyticsSeriesDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INBOX = DeliverabilityAnalyticsSeriesDtoScopeEnum._(r'INBOX');
  static const PHONE = DeliverabilityAnalyticsSeriesDtoScopeEnum._(r'PHONE');

  /// List of all possible values in this [enum][DeliverabilityAnalyticsSeriesDtoScopeEnum].
  static const values = <DeliverabilityAnalyticsSeriesDtoScopeEnum>[
    INBOX,
    PHONE,
  ];

  static DeliverabilityAnalyticsSeriesDtoScopeEnum? fromJson(dynamic value) => DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer().decode(value);

  static List<DeliverabilityAnalyticsSeriesDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsSeriesDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsSeriesDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityAnalyticsSeriesDtoScopeEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityAnalyticsSeriesDtoScopeEnum].
class DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer {
  factory DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer() => _instance ??= const DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer._();

  const DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer._();

  String encode(DeliverabilityAnalyticsSeriesDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityAnalyticsSeriesDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityAnalyticsSeriesDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INBOX': return DeliverabilityAnalyticsSeriesDtoScopeEnum.INBOX;
        case r'PHONE': return DeliverabilityAnalyticsSeriesDtoScopeEnum.PHONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer] instance.
  static DeliverabilityAnalyticsSeriesDtoScopeEnumTypeTransformer? _instance;
}



class DeliverabilityAnalyticsSeriesDtoBucketEnum {
  /// Instantiate a new enum with the provided [value].
  const DeliverabilityAnalyticsSeriesDtoBucketEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOUR = DeliverabilityAnalyticsSeriesDtoBucketEnum._(r'HOUR');
  static const DAY = DeliverabilityAnalyticsSeriesDtoBucketEnum._(r'DAY');

  /// List of all possible values in this [enum][DeliverabilityAnalyticsSeriesDtoBucketEnum].
  static const values = <DeliverabilityAnalyticsSeriesDtoBucketEnum>[
    HOUR,
    DAY,
  ];

  static DeliverabilityAnalyticsSeriesDtoBucketEnum? fromJson(dynamic value) => DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer().decode(value);

  static List<DeliverabilityAnalyticsSeriesDtoBucketEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityAnalyticsSeriesDtoBucketEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityAnalyticsSeriesDtoBucketEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DeliverabilityAnalyticsSeriesDtoBucketEnum] to String,
/// and [decode] dynamic data back to [DeliverabilityAnalyticsSeriesDtoBucketEnum].
class DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer {
  factory DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer() => _instance ??= const DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer._();

  const DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer._();

  String encode(DeliverabilityAnalyticsSeriesDtoBucketEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DeliverabilityAnalyticsSeriesDtoBucketEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DeliverabilityAnalyticsSeriesDtoBucketEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOUR': return DeliverabilityAnalyticsSeriesDtoBucketEnum.HOUR;
        case r'DAY': return DeliverabilityAnalyticsSeriesDtoBucketEnum.DAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer] instance.
  static DeliverabilityAnalyticsSeriesDtoBucketEnumTypeTransformer? _instance;
}


