//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HomeExperienceUpgradeContextDto {
  /// Returns a new [HomeExperienceUpgradeContextDto] instance.
  HomeExperienceUpgradeContextDto({
    this.recommendedPlan,
    this.blockers = const [],
    this.promptStyle,
  });

  String? recommendedPlan;

  List<String>? blockers;

  HomeExperienceUpgradeContextDtoPromptStyleEnum? promptStyle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeExperienceUpgradeContextDto &&
     other.recommendedPlan == recommendedPlan &&
     other.blockers == blockers &&
     other.promptStyle == promptStyle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recommendedPlan == null ? 0 : recommendedPlan!.hashCode) +
    (blockers == null ? 0 : blockers!.hashCode) +
    (promptStyle == null ? 0 : promptStyle!.hashCode);

  @override
  String toString() => 'HomeExperienceUpgradeContextDto[recommendedPlan=$recommendedPlan, blockers=$blockers, promptStyle=$promptStyle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recommendedPlan != null) {
      json[r'recommendedPlan'] = this.recommendedPlan;
    } else {
      json[r'recommendedPlan'] = null;
    }
    if (this.blockers != null) {
      json[r'blockers'] = this.blockers;
    } else {
      json[r'blockers'] = null;
    }
    if (this.promptStyle != null) {
      json[r'promptStyle'] = this.promptStyle;
    } else {
      json[r'promptStyle'] = null;
    }
    return json;
  }

  /// Returns a new [HomeExperienceUpgradeContextDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeExperienceUpgradeContextDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HomeExperienceUpgradeContextDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HomeExperienceUpgradeContextDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HomeExperienceUpgradeContextDto(
        recommendedPlan: mapValueOfType<String>(json, r'recommendedPlan'),
        blockers: json[r'blockers'] is List
            ? (json[r'blockers'] as List).cast<String>()
            : const [],
        promptStyle: HomeExperienceUpgradeContextDtoPromptStyleEnum.fromJson(json[r'promptStyle']),
      );
    }
    return null;
  }

  static List<HomeExperienceUpgradeContextDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceUpgradeContextDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceUpgradeContextDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeExperienceUpgradeContextDto> mapFromJson(dynamic json) {
    final map = <String, HomeExperienceUpgradeContextDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeExperienceUpgradeContextDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeExperienceUpgradeContextDto-objects as value to a dart map
  static Map<String, List<HomeExperienceUpgradeContextDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeExperienceUpgradeContextDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeExperienceUpgradeContextDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class HomeExperienceUpgradeContextDtoPromptStyleEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceUpgradeContextDtoPromptStyleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NONE = HomeExperienceUpgradeContextDtoPromptStyleEnum._(r'NONE');
  static const SOFT = HomeExperienceUpgradeContextDtoPromptStyleEnum._(r'SOFT');
  static const CONTEXTUAL = HomeExperienceUpgradeContextDtoPromptStyleEnum._(r'CONTEXTUAL');
  static const URGENT = HomeExperienceUpgradeContextDtoPromptStyleEnum._(r'URGENT');

  /// List of all possible values in this [enum][HomeExperienceUpgradeContextDtoPromptStyleEnum].
  static const values = <HomeExperienceUpgradeContextDtoPromptStyleEnum>[
    NONE,
    SOFT,
    CONTEXTUAL,
    URGENT,
  ];

  static HomeExperienceUpgradeContextDtoPromptStyleEnum? fromJson(dynamic value) => HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer().decode(value);

  static List<HomeExperienceUpgradeContextDtoPromptStyleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceUpgradeContextDtoPromptStyleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceUpgradeContextDtoPromptStyleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceUpgradeContextDtoPromptStyleEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceUpgradeContextDtoPromptStyleEnum].
class HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer {
  factory HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer() => _instance ??= const HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer._();

  const HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer._();

  String encode(HomeExperienceUpgradeContextDtoPromptStyleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceUpgradeContextDtoPromptStyleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceUpgradeContextDtoPromptStyleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NONE': return HomeExperienceUpgradeContextDtoPromptStyleEnum.NONE;
        case r'SOFT': return HomeExperienceUpgradeContextDtoPromptStyleEnum.SOFT;
        case r'CONTEXTUAL': return HomeExperienceUpgradeContextDtoPromptStyleEnum.CONTEXTUAL;
        case r'URGENT': return HomeExperienceUpgradeContextDtoPromptStyleEnum.URGENT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer] instance.
  static HomeExperienceUpgradeContextDtoPromptStyleEnumTypeTransformer? _instance;
}


