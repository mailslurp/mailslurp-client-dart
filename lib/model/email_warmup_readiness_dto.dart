//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupReadinessDto {
  /// Returns a new [EmailWarmupReadinessDto] instance.
  EmailWarmupReadinessDto({
    required this.status,
    required this.summary,
    required this.readyForDailyVolume,
    required this.goalDailyVolume,
    this.estimatedReadyAt,
    required this.today,
    required this.pacing,
    this.placementDeltas = const [],
    required this.domainHealth,
    this.postmasterSignals,
    this.recommendations = const [],
  });

  EmailWarmupReadinessDtoStatusEnum status;

  String summary;

  int readyForDailyVolume;

  int goalDailyVolume;

  DateTime? estimatedReadyAt;

  EmailWarmupTodayDto today;

  EmailWarmupPacingDto pacing;

  List<EmailWarmupPlacementDeltaDto> placementDeltas;

  EmailWarmupDomainHealthDto domainHealth;

  EmailWarmupPostmasterSignalsDto? postmasterSignals;

  List<String> recommendations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupReadinessDto &&
     other.status == status &&
     other.summary == summary &&
     other.readyForDailyVolume == readyForDailyVolume &&
     other.goalDailyVolume == goalDailyVolume &&
     other.estimatedReadyAt == estimatedReadyAt &&
     other.today == today &&
     other.pacing == pacing &&
     other.placementDeltas == placementDeltas &&
     other.domainHealth == domainHealth &&
     other.postmasterSignals == postmasterSignals &&
     other.recommendations == recommendations;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (summary.hashCode) +
    (readyForDailyVolume.hashCode) +
    (goalDailyVolume.hashCode) +
    (estimatedReadyAt == null ? 0 : estimatedReadyAt!.hashCode) +
    (today.hashCode) +
    (pacing.hashCode) +
    (placementDeltas.hashCode) +
    (domainHealth.hashCode) +
    (postmasterSignals == null ? 0 : postmasterSignals!.hashCode) +
    (recommendations.hashCode);

  @override
  String toString() => 'EmailWarmupReadinessDto[status=$status, summary=$summary, readyForDailyVolume=$readyForDailyVolume, goalDailyVolume=$goalDailyVolume, estimatedReadyAt=$estimatedReadyAt, today=$today, pacing=$pacing, placementDeltas=$placementDeltas, domainHealth=$domainHealth, postmasterSignals=$postmasterSignals, recommendations=$recommendations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
      json[r'summary'] = this.summary;
      json[r'readyForDailyVolume'] = this.readyForDailyVolume;
      json[r'goalDailyVolume'] = this.goalDailyVolume;
    if (this.estimatedReadyAt != null) {
      json[r'estimatedReadyAt'] = _dateFormatter.format(this.estimatedReadyAt!.toUtc());
    } else {
      json[r'estimatedReadyAt'] = null;
    }
      json[r'today'] = this.today;
      json[r'pacing'] = this.pacing;
      json[r'placementDeltas'] = this.placementDeltas;
      json[r'domainHealth'] = this.domainHealth;
    if (this.postmasterSignals != null) {
      json[r'postmasterSignals'] = this.postmasterSignals;
    } else {
      json[r'postmasterSignals'] = null;
    }
      json[r'recommendations'] = this.recommendations;
    return json;
  }

  /// Returns a new [EmailWarmupReadinessDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupReadinessDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupReadinessDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupReadinessDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupReadinessDto(
        status: EmailWarmupReadinessDtoStatusEnum.fromJson(json[r'status'])!,
        summary: mapValueOfType<String>(json, r'summary')!,
        readyForDailyVolume: mapValueOfType<int>(json, r'readyForDailyVolume')!,
        goalDailyVolume: mapValueOfType<int>(json, r'goalDailyVolume')!,
        estimatedReadyAt: mapDateTime(json, r'estimatedReadyAt', ''),
        today: EmailWarmupTodayDto.fromJson(json[r'today'])!,
        pacing: EmailWarmupPacingDto.fromJson(json[r'pacing'])!,
        placementDeltas: EmailWarmupPlacementDeltaDto.listFromJson(json[r'placementDeltas']),
        domainHealth: EmailWarmupDomainHealthDto.fromJson(json[r'domainHealth'])!,
        postmasterSignals: EmailWarmupPostmasterSignalsDto.fromJson(json[r'postmasterSignals']),
        recommendations: json[r'recommendations'] is List
            ? (json[r'recommendations'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<EmailWarmupReadinessDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupReadinessDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupReadinessDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupReadinessDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupReadinessDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupReadinessDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupReadinessDto-objects as value to a dart map
  static Map<String, List<EmailWarmupReadinessDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupReadinessDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupReadinessDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'summary',
    'readyForDailyVolume',
    'goalDailyVolume',
    'today',
    'pacing',
    'placementDeltas',
    'domainHealth',
    'recommendations',
  };
}


class EmailWarmupReadinessDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupReadinessDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PREPARING = EmailWarmupReadinessDtoStatusEnum._(r'PREPARING');
  static const IMPROVING = EmailWarmupReadinessDtoStatusEnum._(r'IMPROVING');
  static const READY = EmailWarmupReadinessDtoStatusEnum._(r'READY');
  static const NEEDS_ATTENTION = EmailWarmupReadinessDtoStatusEnum._(r'NEEDS_ATTENTION');

  /// List of all possible values in this [enum][EmailWarmupReadinessDtoStatusEnum].
  static const values = <EmailWarmupReadinessDtoStatusEnum>[
    PREPARING,
    IMPROVING,
    READY,
    NEEDS_ATTENTION,
  ];

  static EmailWarmupReadinessDtoStatusEnum? fromJson(dynamic value) => EmailWarmupReadinessDtoStatusEnumTypeTransformer().decode(value);

  static List<EmailWarmupReadinessDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupReadinessDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupReadinessDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupReadinessDtoStatusEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupReadinessDtoStatusEnum].
class EmailWarmupReadinessDtoStatusEnumTypeTransformer {
  factory EmailWarmupReadinessDtoStatusEnumTypeTransformer() => _instance ??= const EmailWarmupReadinessDtoStatusEnumTypeTransformer._();

  const EmailWarmupReadinessDtoStatusEnumTypeTransformer._();

  String encode(EmailWarmupReadinessDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupReadinessDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupReadinessDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PREPARING': return EmailWarmupReadinessDtoStatusEnum.PREPARING;
        case r'IMPROVING': return EmailWarmupReadinessDtoStatusEnum.IMPROVING;
        case r'READY': return EmailWarmupReadinessDtoStatusEnum.READY;
        case r'NEEDS_ATTENTION': return EmailWarmupReadinessDtoStatusEnum.NEEDS_ATTENTION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupReadinessDtoStatusEnumTypeTransformer] instance.
  static EmailWarmupReadinessDtoStatusEnumTypeTransformer? _instance;
}


