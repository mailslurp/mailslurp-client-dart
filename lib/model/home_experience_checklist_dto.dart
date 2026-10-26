//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HomeExperienceChecklistDto {
  /// Returns a new [HomeExperienceChecklistDto] instance.
  HomeExperienceChecklistDto({
    required this.checklistId,
    required this.status,
    this.steps = const [],
  });

  String checklistId;

  HomeExperienceChecklistDtoStatusEnum status;

  List<HomeExperienceChecklistStepDto> steps;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeExperienceChecklistDto &&
     other.checklistId == checklistId &&
     other.status == status &&
     other.steps == steps;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (checklistId.hashCode) +
    (status.hashCode) +
    (steps.hashCode);

  @override
  String toString() => 'HomeExperienceChecklistDto[checklistId=$checklistId, status=$status, steps=$steps]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'checklistId'] = this.checklistId;
      json[r'status'] = this.status;
      json[r'steps'] = this.steps;
    return json;
  }

  /// Returns a new [HomeExperienceChecklistDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeExperienceChecklistDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HomeExperienceChecklistDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HomeExperienceChecklistDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HomeExperienceChecklistDto(
        checklistId: mapValueOfType<String>(json, r'checklistId')!,
        status: HomeExperienceChecklistDtoStatusEnum.fromJson(json[r'status'])!,
        steps: HomeExperienceChecklistStepDto.listFromJson(json[r'steps']),
      );
    }
    return null;
  }

  static List<HomeExperienceChecklistDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceChecklistDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceChecklistDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeExperienceChecklistDto> mapFromJson(dynamic json) {
    final map = <String, HomeExperienceChecklistDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeExperienceChecklistDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeExperienceChecklistDto-objects as value to a dart map
  static Map<String, List<HomeExperienceChecklistDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeExperienceChecklistDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeExperienceChecklistDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'checklistId',
    'status',
    'steps',
  };
}


class HomeExperienceChecklistDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceChecklistDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_STARTED = HomeExperienceChecklistDtoStatusEnum._(r'NOT_STARTED');
  static const IN_PROGRESS = HomeExperienceChecklistDtoStatusEnum._(r'IN_PROGRESS');
  static const COMPLETED = HomeExperienceChecklistDtoStatusEnum._(r'COMPLETED');
  static const SKIPPED = HomeExperienceChecklistDtoStatusEnum._(r'SKIPPED');

  /// List of all possible values in this [enum][HomeExperienceChecklistDtoStatusEnum].
  static const values = <HomeExperienceChecklistDtoStatusEnum>[
    NOT_STARTED,
    IN_PROGRESS,
    COMPLETED,
    SKIPPED,
  ];

  static HomeExperienceChecklistDtoStatusEnum? fromJson(dynamic value) => HomeExperienceChecklistDtoStatusEnumTypeTransformer().decode(value);

  static List<HomeExperienceChecklistDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceChecklistDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceChecklistDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceChecklistDtoStatusEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceChecklistDtoStatusEnum].
class HomeExperienceChecklistDtoStatusEnumTypeTransformer {
  factory HomeExperienceChecklistDtoStatusEnumTypeTransformer() => _instance ??= const HomeExperienceChecklistDtoStatusEnumTypeTransformer._();

  const HomeExperienceChecklistDtoStatusEnumTypeTransformer._();

  String encode(HomeExperienceChecklistDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceChecklistDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceChecklistDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_STARTED': return HomeExperienceChecklistDtoStatusEnum.NOT_STARTED;
        case r'IN_PROGRESS': return HomeExperienceChecklistDtoStatusEnum.IN_PROGRESS;
        case r'COMPLETED': return HomeExperienceChecklistDtoStatusEnum.COMPLETED;
        case r'SKIPPED': return HomeExperienceChecklistDtoStatusEnum.SKIPPED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceChecklistDtoStatusEnumTypeTransformer] instance.
  static HomeExperienceChecklistDtoStatusEnumTypeTransformer? _instance;
}


