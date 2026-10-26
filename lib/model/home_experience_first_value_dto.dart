//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HomeExperienceFirstValueDto {
  /// Returns a new [HomeExperienceFirstValueDto] instance.
  HomeExperienceFirstValueDto({
    required this.status,
    this.type,
    this.at,
  });

  HomeExperienceFirstValueDtoStatusEnum status;

  String? type;

  DateTime? at;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeExperienceFirstValueDto &&
     other.status == status &&
     other.type == type &&
     other.at == at;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (at == null ? 0 : at!.hashCode);

  @override
  String toString() => 'HomeExperienceFirstValueDto[status=$status, type=$type, at=$at]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at!.toUtc().toIso8601String();
    } else {
      json[r'at'] = null;
    }
    return json;
  }

  /// Returns a new [HomeExperienceFirstValueDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeExperienceFirstValueDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HomeExperienceFirstValueDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HomeExperienceFirstValueDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HomeExperienceFirstValueDto(
        status: HomeExperienceFirstValueDtoStatusEnum.fromJson(json[r'status'])!,
        type: mapValueOfType<String>(json, r'type'),
        at: mapDateTime(json, r'at', ''),
      );
    }
    return null;
  }

  static List<HomeExperienceFirstValueDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceFirstValueDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceFirstValueDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeExperienceFirstValueDto> mapFromJson(dynamic json) {
    final map = <String, HomeExperienceFirstValueDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeExperienceFirstValueDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeExperienceFirstValueDto-objects as value to a dart map
  static Map<String, List<HomeExperienceFirstValueDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeExperienceFirstValueDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeExperienceFirstValueDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
  };
}


class HomeExperienceFirstValueDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceFirstValueDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_REACHED = HomeExperienceFirstValueDtoStatusEnum._(r'NOT_REACHED');
  static const REACHED = HomeExperienceFirstValueDtoStatusEnum._(r'REACHED');

  /// List of all possible values in this [enum][HomeExperienceFirstValueDtoStatusEnum].
  static const values = <HomeExperienceFirstValueDtoStatusEnum>[
    NOT_REACHED,
    REACHED,
  ];

  static HomeExperienceFirstValueDtoStatusEnum? fromJson(dynamic value) => HomeExperienceFirstValueDtoStatusEnumTypeTransformer().decode(value);

  static List<HomeExperienceFirstValueDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceFirstValueDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceFirstValueDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceFirstValueDtoStatusEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceFirstValueDtoStatusEnum].
class HomeExperienceFirstValueDtoStatusEnumTypeTransformer {
  factory HomeExperienceFirstValueDtoStatusEnumTypeTransformer() => _instance ??= const HomeExperienceFirstValueDtoStatusEnumTypeTransformer._();

  const HomeExperienceFirstValueDtoStatusEnumTypeTransformer._();

  String encode(HomeExperienceFirstValueDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceFirstValueDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceFirstValueDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_REACHED': return HomeExperienceFirstValueDtoStatusEnum.NOT_REACHED;
        case r'REACHED': return HomeExperienceFirstValueDtoStatusEnum.REACHED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceFirstValueDtoStatusEnumTypeTransformer] instance.
  static HomeExperienceFirstValueDtoStatusEnumTypeTransformer? _instance;
}


