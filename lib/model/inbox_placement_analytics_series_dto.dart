//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalyticsSeriesDto {
  /// Returns a new [InboxPlacementAnalyticsSeriesDto] instance.
  InboxPlacementAnalyticsSeriesDto({
    required this.since,
    required this.before,
    required this.bucket,
    required this.groupBy,
    this.senderDomain,
    this.fromEmail,
    required this.summary,
    this.runs = const [],
    this.points = const [],
    this.groups = const [],
  });

  DateTime since;

  DateTime before;

  InboxPlacementAnalyticsSeriesDtoBucketEnum bucket;

  InboxPlacementAnalyticsSeriesDtoGroupByEnum groupBy;

  String? senderDomain;

  String? fromEmail;

  InboxPlacementAnalyticsSummaryDto summary;

  List<InboxPlacementAnalyticsRunDto> runs;

  List<InboxPlacementAnalyticsSeriesPointDto> points;

  List<InboxPlacementAnalyticsGroupSeriesDto> groups;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalyticsSeriesDto &&
     other.since == since &&
     other.before == before &&
     other.bucket == bucket &&
     other.groupBy == groupBy &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.summary == summary &&
     other.runs == runs &&
     other.points == points &&
     other.groups == groups;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (since.hashCode) +
    (before.hashCode) +
    (bucket.hashCode) +
    (groupBy.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (summary.hashCode) +
    (runs.hashCode) +
    (points.hashCode) +
    (groups.hashCode);

  @override
  String toString() => 'InboxPlacementAnalyticsSeriesDto[since=$since, before=$before, bucket=$bucket, groupBy=$groupBy, senderDomain=$senderDomain, fromEmail=$fromEmail, summary=$summary, runs=$runs, points=$points, groups=$groups]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
      json[r'bucket'] = this.bucket;
      json[r'groupBy'] = this.groupBy;
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
      json[r'runs'] = this.runs;
      json[r'points'] = this.points;
      json[r'groups'] = this.groups;
    return json;
  }

  /// Returns a new [InboxPlacementAnalyticsSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalyticsSeriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalyticsSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalyticsSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalyticsSeriesDto(
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        bucket: InboxPlacementAnalyticsSeriesDtoBucketEnum.fromJson(json[r'bucket'])!,
        groupBy: InboxPlacementAnalyticsSeriesDtoGroupByEnum.fromJson(json[r'groupBy'])!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        summary: InboxPlacementAnalyticsSummaryDto.fromJson(json[r'summary'])!,
        runs: InboxPlacementAnalyticsRunDto.listFromJson(json[r'runs']),
        points: InboxPlacementAnalyticsSeriesPointDto.listFromJson(json[r'points']),
        groups: InboxPlacementAnalyticsGroupSeriesDto.listFromJson(json[r'groups']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalyticsSeriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalyticsSeriesDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalyticsSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalyticsSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalyticsSeriesDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalyticsSeriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalyticsSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalyticsSeriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'since',
    'before',
    'bucket',
    'groupBy',
    'summary',
    'runs',
    'points',
    'groups',
  };
}


class InboxPlacementAnalyticsSeriesDtoBucketEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementAnalyticsSeriesDtoBucketEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOUR = InboxPlacementAnalyticsSeriesDtoBucketEnum._(r'HOUR');
  static const DAY = InboxPlacementAnalyticsSeriesDtoBucketEnum._(r'DAY');

  /// List of all possible values in this [enum][InboxPlacementAnalyticsSeriesDtoBucketEnum].
  static const values = <InboxPlacementAnalyticsSeriesDtoBucketEnum>[
    HOUR,
    DAY,
  ];

  static InboxPlacementAnalyticsSeriesDtoBucketEnum? fromJson(dynamic value) => InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer().decode(value);

  static List<InboxPlacementAnalyticsSeriesDtoBucketEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsSeriesDtoBucketEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsSeriesDtoBucketEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementAnalyticsSeriesDtoBucketEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementAnalyticsSeriesDtoBucketEnum].
class InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer {
  factory InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer() => _instance ??= const InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer._();

  const InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer._();

  String encode(InboxPlacementAnalyticsSeriesDtoBucketEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementAnalyticsSeriesDtoBucketEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementAnalyticsSeriesDtoBucketEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOUR': return InboxPlacementAnalyticsSeriesDtoBucketEnum.HOUR;
        case r'DAY': return InboxPlacementAnalyticsSeriesDtoBucketEnum.DAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer] instance.
  static InboxPlacementAnalyticsSeriesDtoBucketEnumTypeTransformer? _instance;
}



class InboxPlacementAnalyticsSeriesDtoGroupByEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPlacementAnalyticsSeriesDtoGroupByEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = InboxPlacementAnalyticsSeriesDtoGroupByEnum._(r'NONE');
  static const SENDER_DOMAIN = InboxPlacementAnalyticsSeriesDtoGroupByEnum._(r'SENDER_DOMAIN');
  static const FROM_EMAIL = InboxPlacementAnalyticsSeriesDtoGroupByEnum._(r'FROM_EMAIL');

  /// List of all possible values in this [enum][InboxPlacementAnalyticsSeriesDtoGroupByEnum].
  static const values = <InboxPlacementAnalyticsSeriesDtoGroupByEnum>[
    NONE,
    SENDER_DOMAIN,
    FROM_EMAIL,
  ];

  static InboxPlacementAnalyticsSeriesDtoGroupByEnum? fromJson(dynamic value) => InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer().decode(value);

  static List<InboxPlacementAnalyticsSeriesDtoGroupByEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsSeriesDtoGroupByEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsSeriesDtoGroupByEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxPlacementAnalyticsSeriesDtoGroupByEnum] to String,
/// and [decode] dynamic data back to [InboxPlacementAnalyticsSeriesDtoGroupByEnum].
class InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer {
  factory InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer() => _instance ??= const InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer._();

  const InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer._();

  String encode(InboxPlacementAnalyticsSeriesDtoGroupByEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPlacementAnalyticsSeriesDtoGroupByEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPlacementAnalyticsSeriesDtoGroupByEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return InboxPlacementAnalyticsSeriesDtoGroupByEnum.NONE;
        case r'SENDER_DOMAIN': return InboxPlacementAnalyticsSeriesDtoGroupByEnum.SENDER_DOMAIN;
        case r'FROM_EMAIL': return InboxPlacementAnalyticsSeriesDtoGroupByEnum.FROM_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer] instance.
  static InboxPlacementAnalyticsSeriesDtoGroupByEnumTypeTransformer? _instance;
}


