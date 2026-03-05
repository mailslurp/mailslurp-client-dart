//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorSeriesDto {
  /// Returns a new [DomainMonitorSeriesDto] instance.
  DomainMonitorSeriesDto({
    required this.monitorId,
    required this.since,
    required this.before,
    required this.bucket,
    this.points = const [],
  });

  String monitorId;

  DateTime since;

  DateTime before;

  DomainMonitorSeriesDtoBucketEnum bucket;

  List<DomainMonitorSeriesPointDto> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorSeriesDto &&
     other.monitorId == monitorId &&
     other.since == since &&
     other.before == before &&
     other.bucket == bucket &&
     other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (monitorId.hashCode) +
    (since.hashCode) +
    (before.hashCode) +
    (bucket.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'DomainMonitorSeriesDto[monitorId=$monitorId, since=$since, before=$before, bucket=$bucket, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'monitorId'] = this.monitorId;
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
      json[r'bucket'] = this.bucket;
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [DomainMonitorSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorSeriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorSeriesDto(
        monitorId: mapValueOfType<String>(json, r'monitorId')!,
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        bucket: DomainMonitorSeriesDtoBucketEnum.fromJson(json[r'bucket'])!,
        points: DomainMonitorSeriesPointDto.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<DomainMonitorSeriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorSeriesDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorSeriesDto-objects as value to a dart map
  static Map<String, List<DomainMonitorSeriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorSeriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'monitorId',
    'since',
    'before',
    'bucket',
    'points',
  };
}


class DomainMonitorSeriesDtoBucketEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorSeriesDtoBucketEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOUR = DomainMonitorSeriesDtoBucketEnum._(r'HOUR');
  static const DAY = DomainMonitorSeriesDtoBucketEnum._(r'DAY');

  /// List of all possible values in this [enum][DomainMonitorSeriesDtoBucketEnum].
  static const values = <DomainMonitorSeriesDtoBucketEnum>[
    HOUR,
    DAY,
  ];

  static DomainMonitorSeriesDtoBucketEnum? fromJson(dynamic value) => DomainMonitorSeriesDtoBucketEnumTypeTransformer().decode(value);

  static List<DomainMonitorSeriesDtoBucketEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorSeriesDtoBucketEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorSeriesDtoBucketEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorSeriesDtoBucketEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorSeriesDtoBucketEnum].
class DomainMonitorSeriesDtoBucketEnumTypeTransformer {
  factory DomainMonitorSeriesDtoBucketEnumTypeTransformer() => _instance ??= const DomainMonitorSeriesDtoBucketEnumTypeTransformer._();

  const DomainMonitorSeriesDtoBucketEnumTypeTransformer._();

  String encode(DomainMonitorSeriesDtoBucketEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorSeriesDtoBucketEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorSeriesDtoBucketEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOUR': return DomainMonitorSeriesDtoBucketEnum.HOUR;
        case r'DAY': return DomainMonitorSeriesDtoBucketEnum.DAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorSeriesDtoBucketEnumTypeTransformer] instance.
  static DomainMonitorSeriesDtoBucketEnumTypeTransformer? _instance;
}


