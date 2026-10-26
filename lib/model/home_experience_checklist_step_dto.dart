//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HomeExperienceChecklistStepDto {
  /// Returns a new [HomeExperienceChecklistStepDto] instance.
  HomeExperienceChecklistStepDto({
    required this.id,
    required this.title,
    required this.status,
    this.routeName,
    this.completedAt,
  });

  String id;

  String title;

  HomeExperienceChecklistStepDtoStatusEnum status;

  String? routeName;

  DateTime? completedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeExperienceChecklistStepDto &&
     other.id == id &&
     other.title == title &&
     other.status == status &&
     other.routeName == routeName &&
     other.completedAt == completedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (title.hashCode) +
    (status.hashCode) +
    (routeName == null ? 0 : routeName!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode);

  @override
  String toString() => 'HomeExperienceChecklistStepDto[id=$id, title=$title, status=$status, routeName=$routeName, completedAt=$completedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'title'] = this.title;
      json[r'status'] = this.status;
    if (this.routeName != null) {
      json[r'routeName'] = this.routeName;
    } else {
      json[r'routeName'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    return json;
  }

  /// Returns a new [HomeExperienceChecklistStepDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeExperienceChecklistStepDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HomeExperienceChecklistStepDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HomeExperienceChecklistStepDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HomeExperienceChecklistStepDto(
        id: mapValueOfType<String>(json, r'id')!,
        title: mapValueOfType<String>(json, r'title')!,
        status: HomeExperienceChecklistStepDtoStatusEnum.fromJson(json[r'status'])!,
        routeName: mapValueOfType<String>(json, r'routeName'),
        completedAt: mapDateTime(json, r'completedAt', ''),
      );
    }
    return null;
  }

  static List<HomeExperienceChecklistStepDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceChecklistStepDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceChecklistStepDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeExperienceChecklistStepDto> mapFromJson(dynamic json) {
    final map = <String, HomeExperienceChecklistStepDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeExperienceChecklistStepDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeExperienceChecklistStepDto-objects as value to a dart map
  static Map<String, List<HomeExperienceChecklistStepDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeExperienceChecklistStepDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeExperienceChecklistStepDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'title',
    'status',
  };
}


class HomeExperienceChecklistStepDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceChecklistStepDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const TODO = HomeExperienceChecklistStepDtoStatusEnum._(r'TODO');
  static const DONE = HomeExperienceChecklistStepDtoStatusEnum._(r'DONE');
  static const SKIPPED = HomeExperienceChecklistStepDtoStatusEnum._(r'SKIPPED');

  /// List of all possible values in this [enum][HomeExperienceChecklistStepDtoStatusEnum].
  static const values = <HomeExperienceChecklistStepDtoStatusEnum>[
    TODO,
    DONE,
    SKIPPED,
  ];

  static HomeExperienceChecklistStepDtoStatusEnum? fromJson(dynamic value) => HomeExperienceChecklistStepDtoStatusEnumTypeTransformer().decode(value);

  static List<HomeExperienceChecklistStepDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceChecklistStepDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceChecklistStepDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceChecklistStepDtoStatusEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceChecklistStepDtoStatusEnum].
class HomeExperienceChecklistStepDtoStatusEnumTypeTransformer {
  factory HomeExperienceChecklistStepDtoStatusEnumTypeTransformer() => _instance ??= const HomeExperienceChecklistStepDtoStatusEnumTypeTransformer._();

  const HomeExperienceChecklistStepDtoStatusEnumTypeTransformer._();

  String encode(HomeExperienceChecklistStepDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceChecklistStepDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceChecklistStepDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'TODO': return HomeExperienceChecklistStepDtoStatusEnum.TODO;
        case r'DONE': return HomeExperienceChecklistStepDtoStatusEnum.DONE;
        case r'SKIPPED': return HomeExperienceChecklistStepDtoStatusEnum.SKIPPED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceChecklistStepDtoStatusEnumTypeTransformer] instance.
  static HomeExperienceChecklistStepDtoStatusEnumTypeTransformer? _instance;
}


