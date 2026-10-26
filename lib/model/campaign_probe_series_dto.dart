//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CampaignProbeSeriesDto {
  /// Returns a new [CampaignProbeSeriesDto] instance.
  CampaignProbeSeriesDto({
    required this.probeId,
    required this.since,
    required this.before,
    required this.bucket,
    this.points = const [],
  });

  String probeId;

  DateTime since;

  DateTime before;

  CampaignProbeSeriesDtoBucketEnum bucket;

  List<CampaignProbeSeriesPointDto> points;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CampaignProbeSeriesDto &&
     other.probeId == probeId &&
     other.since == since &&
     other.before == before &&
     other.bucket == bucket &&
     other.points == points;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (probeId.hashCode) +
    (since.hashCode) +
    (before.hashCode) +
    (bucket.hashCode) +
    (points.hashCode);

  @override
  String toString() => 'CampaignProbeSeriesDto[probeId=$probeId, since=$since, before=$before, bucket=$bucket, points=$points]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'probeId'] = this.probeId;
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
      json[r'bucket'] = this.bucket;
      json[r'points'] = this.points;
    return json;
  }

  /// Returns a new [CampaignProbeSeriesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CampaignProbeSeriesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CampaignProbeSeriesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CampaignProbeSeriesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CampaignProbeSeriesDto(
        probeId: mapValueOfType<String>(json, r'probeId')!,
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        bucket: CampaignProbeSeriesDtoBucketEnum.fromJson(json[r'bucket'])!,
        points: CampaignProbeSeriesPointDto.listFromJson(json[r'points']),
      );
    }
    return null;
  }

  static List<CampaignProbeSeriesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeSeriesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeSeriesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CampaignProbeSeriesDto> mapFromJson(dynamic json) {
    final map = <String, CampaignProbeSeriesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CampaignProbeSeriesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CampaignProbeSeriesDto-objects as value to a dart map
  static Map<String, List<CampaignProbeSeriesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CampaignProbeSeriesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CampaignProbeSeriesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'probeId',
    'since',
    'before',
    'bucket',
    'points',
  };
}


class CampaignProbeSeriesDtoBucketEnum {
  /// Instantiate a new enum with the provided [value].
  const CampaignProbeSeriesDtoBucketEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HOUR = CampaignProbeSeriesDtoBucketEnum._(r'HOUR');
  static const DAY = CampaignProbeSeriesDtoBucketEnum._(r'DAY');

  /// List of all possible values in this [enum][CampaignProbeSeriesDtoBucketEnum].
  static const values = <CampaignProbeSeriesDtoBucketEnum>[
    HOUR,
    DAY,
  ];

  static CampaignProbeSeriesDtoBucketEnum? fromJson(dynamic value) => CampaignProbeSeriesDtoBucketEnumTypeTransformer().decode(value);

  static List<CampaignProbeSeriesDtoBucketEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CampaignProbeSeriesDtoBucketEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CampaignProbeSeriesDtoBucketEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CampaignProbeSeriesDtoBucketEnum] to String,
/// and [decode] dynamic data back to [CampaignProbeSeriesDtoBucketEnum].
class CampaignProbeSeriesDtoBucketEnumTypeTransformer {
  factory CampaignProbeSeriesDtoBucketEnumTypeTransformer() => _instance ??= const CampaignProbeSeriesDtoBucketEnumTypeTransformer._();

  const CampaignProbeSeriesDtoBucketEnumTypeTransformer._();

  String encode(CampaignProbeSeriesDtoBucketEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CampaignProbeSeriesDtoBucketEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CampaignProbeSeriesDtoBucketEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HOUR': return CampaignProbeSeriesDtoBucketEnum.HOUR;
        case r'DAY': return CampaignProbeSeriesDtoBucketEnum.DAY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CampaignProbeSeriesDtoBucketEnumTypeTransformer] instance.
  static CampaignProbeSeriesDtoBucketEnumTypeTransformer? _instance;
}


