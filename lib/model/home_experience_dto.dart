//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class HomeExperienceDto {
  /// Returns a new [HomeExperienceDto] instance.
  HomeExperienceDto({
    required this.version,
    required this.homeVariant,
    required this.primaryPath,
    this.secondaryPaths = const [],
    this.persona,
    this.teamSize,
    this.checklist,
    required this.firstValue,
    this.upgradeContext,
  });

  String version;

  HomeExperienceDtoHomeVariantEnum homeVariant;

  HomeExperienceDtoPrimaryPathEnum primaryPath;

  List<HomeExperienceDtoSecondaryPathsEnum>? secondaryPaths;

  HomeExperienceDtoPersonaEnum? persona;

  HomeExperienceDtoTeamSizeEnum? teamSize;

  HomeExperienceChecklistDto? checklist;

  HomeExperienceFirstValueDto firstValue;

  HomeExperienceUpgradeContextDto? upgradeContext;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeExperienceDto &&
     other.version == version &&
     other.homeVariant == homeVariant &&
     other.primaryPath == primaryPath &&
     other.secondaryPaths == secondaryPaths &&
     other.persona == persona &&
     other.teamSize == teamSize &&
     other.checklist == checklist &&
     other.firstValue == firstValue &&
     other.upgradeContext == upgradeContext;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (version.hashCode) +
    (homeVariant.hashCode) +
    (primaryPath.hashCode) +
    (secondaryPaths == null ? 0 : secondaryPaths!.hashCode) +
    (persona == null ? 0 : persona!.hashCode) +
    (teamSize == null ? 0 : teamSize!.hashCode) +
    (checklist == null ? 0 : checklist!.hashCode) +
    (firstValue.hashCode) +
    (upgradeContext == null ? 0 : upgradeContext!.hashCode);

  @override
  String toString() => 'HomeExperienceDto[version=$version, homeVariant=$homeVariant, primaryPath=$primaryPath, secondaryPaths=$secondaryPaths, persona=$persona, teamSize=$teamSize, checklist=$checklist, firstValue=$firstValue, upgradeContext=$upgradeContext]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'version'] = this.version;
      json[r'homeVariant'] = this.homeVariant;
      json[r'primaryPath'] = this.primaryPath;
    if (this.secondaryPaths != null) {
      json[r'secondaryPaths'] = this.secondaryPaths;
    } else {
      json[r'secondaryPaths'] = null;
    }
    if (this.persona != null) {
      json[r'persona'] = this.persona;
    } else {
      json[r'persona'] = null;
    }
    if (this.teamSize != null) {
      json[r'teamSize'] = this.teamSize;
    } else {
      json[r'teamSize'] = null;
    }
    if (this.checklist != null) {
      json[r'checklist'] = this.checklist;
    } else {
      json[r'checklist'] = null;
    }
      json[r'firstValue'] = this.firstValue;
    if (this.upgradeContext != null) {
      json[r'upgradeContext'] = this.upgradeContext;
    } else {
      json[r'upgradeContext'] = null;
    }
    return json;
  }

  /// Returns a new [HomeExperienceDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeExperienceDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HomeExperienceDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HomeExperienceDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HomeExperienceDto(
        version: mapValueOfType<String>(json, r'version')!,
        homeVariant: HomeExperienceDtoHomeVariantEnum.fromJson(json[r'homeVariant'])!,
        primaryPath: HomeExperienceDtoPrimaryPathEnum.fromJson(json[r'primaryPath'])!,
        secondaryPaths: HomeExperienceDtoSecondaryPathsEnum.listFromJson(json[r'secondaryPaths']),
        persona: HomeExperienceDtoPersonaEnum.fromJson(json[r'persona']),
        teamSize: HomeExperienceDtoTeamSizeEnum.fromJson(json[r'teamSize']),
        checklist: HomeExperienceChecklistDto.fromJson(json[r'checklist']),
        firstValue: HomeExperienceFirstValueDto.fromJson(json[r'firstValue'])!,
        upgradeContext: HomeExperienceUpgradeContextDto.fromJson(json[r'upgradeContext']),
      );
    }
    return null;
  }

  static List<HomeExperienceDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeExperienceDto> mapFromJson(dynamic json) {
    final map = <String, HomeExperienceDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeExperienceDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeExperienceDto-objects as value to a dart map
  static Map<String, List<HomeExperienceDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeExperienceDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeExperienceDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'version',
    'homeVariant',
    'primaryPath',
    'firstValue',
  };
}


class HomeExperienceDtoHomeVariantEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceDtoHomeVariantEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW_USER = HomeExperienceDtoHomeVariantEnum._(r'NEW_USER');
  static const RETURNING = HomeExperienceDtoHomeVariantEnum._(r'RETURNING');
  static const CHILD = HomeExperienceDtoHomeVariantEnum._(r'CHILD');

  /// List of all possible values in this [enum][HomeExperienceDtoHomeVariantEnum].
  static const values = <HomeExperienceDtoHomeVariantEnum>[
    NEW_USER,
    RETURNING,
    CHILD,
  ];

  static HomeExperienceDtoHomeVariantEnum? fromJson(dynamic value) => HomeExperienceDtoHomeVariantEnumTypeTransformer().decode(value);

  static List<HomeExperienceDtoHomeVariantEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDtoHomeVariantEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDtoHomeVariantEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceDtoHomeVariantEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceDtoHomeVariantEnum].
class HomeExperienceDtoHomeVariantEnumTypeTransformer {
  factory HomeExperienceDtoHomeVariantEnumTypeTransformer() => _instance ??= const HomeExperienceDtoHomeVariantEnumTypeTransformer._();

  const HomeExperienceDtoHomeVariantEnumTypeTransformer._();

  String encode(HomeExperienceDtoHomeVariantEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceDtoHomeVariantEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceDtoHomeVariantEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW_USER': return HomeExperienceDtoHomeVariantEnum.NEW_USER;
        case r'RETURNING': return HomeExperienceDtoHomeVariantEnum.RETURNING;
        case r'CHILD': return HomeExperienceDtoHomeVariantEnum.CHILD;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceDtoHomeVariantEnumTypeTransformer] instance.
  static HomeExperienceDtoHomeVariantEnumTypeTransformer? _instance;
}



class HomeExperienceDtoPrimaryPathEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceDtoPrimaryPathEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEVELOPERS = HomeExperienceDtoPrimaryPathEnum._(r'DEVELOPERS');
  static const EMAIL = HomeExperienceDtoPrimaryPathEnum._(r'EMAIL');
  static const TEST = HomeExperienceDtoPrimaryPathEnum._(r'TEST');
  static const PHONE = HomeExperienceDtoPrimaryPathEnum._(r'PHONE');
  static const EXTRACT = HomeExperienceDtoPrimaryPathEnum._(r'EXTRACT');
  static const AUTOMATIONS = HomeExperienceDtoPrimaryPathEnum._(r'AUTOMATIONS');
  static const OBSERVE = HomeExperienceDtoPrimaryPathEnum._(r'OBSERVE');
  static const AUTOMATIONS_AI = HomeExperienceDtoPrimaryPathEnum._(r'AUTOMATIONS_AI');
  static const UNDECIDED = HomeExperienceDtoPrimaryPathEnum._(r'UNDECIDED');

  /// List of all possible values in this [enum][HomeExperienceDtoPrimaryPathEnum].
  static const values = <HomeExperienceDtoPrimaryPathEnum>[
    DEVELOPERS,
    EMAIL,
    TEST,
    PHONE,
    EXTRACT,
    AUTOMATIONS,
    OBSERVE,
    AUTOMATIONS_AI,
    UNDECIDED,
  ];

  static HomeExperienceDtoPrimaryPathEnum? fromJson(dynamic value) => HomeExperienceDtoPrimaryPathEnumTypeTransformer().decode(value);

  static List<HomeExperienceDtoPrimaryPathEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDtoPrimaryPathEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDtoPrimaryPathEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceDtoPrimaryPathEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceDtoPrimaryPathEnum].
class HomeExperienceDtoPrimaryPathEnumTypeTransformer {
  factory HomeExperienceDtoPrimaryPathEnumTypeTransformer() => _instance ??= const HomeExperienceDtoPrimaryPathEnumTypeTransformer._();

  const HomeExperienceDtoPrimaryPathEnumTypeTransformer._();

  String encode(HomeExperienceDtoPrimaryPathEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceDtoPrimaryPathEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceDtoPrimaryPathEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEVELOPERS': return HomeExperienceDtoPrimaryPathEnum.DEVELOPERS;
        case r'EMAIL': return HomeExperienceDtoPrimaryPathEnum.EMAIL;
        case r'TEST': return HomeExperienceDtoPrimaryPathEnum.TEST;
        case r'PHONE': return HomeExperienceDtoPrimaryPathEnum.PHONE;
        case r'EXTRACT': return HomeExperienceDtoPrimaryPathEnum.EXTRACT;
        case r'AUTOMATIONS': return HomeExperienceDtoPrimaryPathEnum.AUTOMATIONS;
        case r'OBSERVE': return HomeExperienceDtoPrimaryPathEnum.OBSERVE;
        case r'AUTOMATIONS_AI': return HomeExperienceDtoPrimaryPathEnum.AUTOMATIONS_AI;
        case r'UNDECIDED': return HomeExperienceDtoPrimaryPathEnum.UNDECIDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceDtoPrimaryPathEnumTypeTransformer] instance.
  static HomeExperienceDtoPrimaryPathEnumTypeTransformer? _instance;
}



class HomeExperienceDtoSecondaryPathsEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceDtoSecondaryPathsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEVELOPERS = HomeExperienceDtoSecondaryPathsEnum._(r'DEVELOPERS');
  static const EMAIL = HomeExperienceDtoSecondaryPathsEnum._(r'EMAIL');
  static const TEST = HomeExperienceDtoSecondaryPathsEnum._(r'TEST');
  static const PHONE = HomeExperienceDtoSecondaryPathsEnum._(r'PHONE');
  static const EXTRACT = HomeExperienceDtoSecondaryPathsEnum._(r'EXTRACT');
  static const AUTOMATIONS = HomeExperienceDtoSecondaryPathsEnum._(r'AUTOMATIONS');
  static const OBSERVE = HomeExperienceDtoSecondaryPathsEnum._(r'OBSERVE');
  static const AUTOMATIONS_AI = HomeExperienceDtoSecondaryPathsEnum._(r'AUTOMATIONS_AI');
  static const UNDECIDED = HomeExperienceDtoSecondaryPathsEnum._(r'UNDECIDED');

  /// List of all possible values in this [enum][HomeExperienceDtoSecondaryPathsEnum].
  static const values = <HomeExperienceDtoSecondaryPathsEnum>[
    DEVELOPERS,
    EMAIL,
    TEST,
    PHONE,
    EXTRACT,
    AUTOMATIONS,
    OBSERVE,
    AUTOMATIONS_AI,
    UNDECIDED,
  ];

  static HomeExperienceDtoSecondaryPathsEnum? fromJson(dynamic value) => HomeExperienceDtoSecondaryPathsEnumTypeTransformer().decode(value);

  static List<HomeExperienceDtoSecondaryPathsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDtoSecondaryPathsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDtoSecondaryPathsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceDtoSecondaryPathsEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceDtoSecondaryPathsEnum].
class HomeExperienceDtoSecondaryPathsEnumTypeTransformer {
  factory HomeExperienceDtoSecondaryPathsEnumTypeTransformer() => _instance ??= const HomeExperienceDtoSecondaryPathsEnumTypeTransformer._();

  const HomeExperienceDtoSecondaryPathsEnumTypeTransformer._();

  String encode(HomeExperienceDtoSecondaryPathsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceDtoSecondaryPathsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceDtoSecondaryPathsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEVELOPERS': return HomeExperienceDtoSecondaryPathsEnum.DEVELOPERS;
        case r'EMAIL': return HomeExperienceDtoSecondaryPathsEnum.EMAIL;
        case r'TEST': return HomeExperienceDtoSecondaryPathsEnum.TEST;
        case r'PHONE': return HomeExperienceDtoSecondaryPathsEnum.PHONE;
        case r'EXTRACT': return HomeExperienceDtoSecondaryPathsEnum.EXTRACT;
        case r'AUTOMATIONS': return HomeExperienceDtoSecondaryPathsEnum.AUTOMATIONS;
        case r'OBSERVE': return HomeExperienceDtoSecondaryPathsEnum.OBSERVE;
        case r'AUTOMATIONS_AI': return HomeExperienceDtoSecondaryPathsEnum.AUTOMATIONS_AI;
        case r'UNDECIDED': return HomeExperienceDtoSecondaryPathsEnum.UNDECIDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceDtoSecondaryPathsEnumTypeTransformer] instance.
  static HomeExperienceDtoSecondaryPathsEnumTypeTransformer? _instance;
}



class HomeExperienceDtoPersonaEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceDtoPersonaEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DEVELOPER = HomeExperienceDtoPersonaEnum._(r'DEVELOPER');
  static const QA = HomeExperienceDtoPersonaEnum._(r'QA');
  static const MARKETER = HomeExperienceDtoPersonaEnum._(r'MARKETER');
  static const OPS = HomeExperienceDtoPersonaEnum._(r'OPS');
  static const SUPPORT = HomeExperienceDtoPersonaEnum._(r'SUPPORT');
  static const OTHER = HomeExperienceDtoPersonaEnum._(r'OTHER');

  /// List of all possible values in this [enum][HomeExperienceDtoPersonaEnum].
  static const values = <HomeExperienceDtoPersonaEnum>[
    DEVELOPER,
    QA,
    MARKETER,
    OPS,
    SUPPORT,
    OTHER,
  ];

  static HomeExperienceDtoPersonaEnum? fromJson(dynamic value) => HomeExperienceDtoPersonaEnumTypeTransformer().decode(value);

  static List<HomeExperienceDtoPersonaEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDtoPersonaEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDtoPersonaEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceDtoPersonaEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceDtoPersonaEnum].
class HomeExperienceDtoPersonaEnumTypeTransformer {
  factory HomeExperienceDtoPersonaEnumTypeTransformer() => _instance ??= const HomeExperienceDtoPersonaEnumTypeTransformer._();

  const HomeExperienceDtoPersonaEnumTypeTransformer._();

  String encode(HomeExperienceDtoPersonaEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceDtoPersonaEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceDtoPersonaEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DEVELOPER': return HomeExperienceDtoPersonaEnum.DEVELOPER;
        case r'QA': return HomeExperienceDtoPersonaEnum.QA;
        case r'MARKETER': return HomeExperienceDtoPersonaEnum.MARKETER;
        case r'OPS': return HomeExperienceDtoPersonaEnum.OPS;
        case r'SUPPORT': return HomeExperienceDtoPersonaEnum.SUPPORT;
        case r'OTHER': return HomeExperienceDtoPersonaEnum.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceDtoPersonaEnumTypeTransformer] instance.
  static HomeExperienceDtoPersonaEnumTypeTransformer? _instance;
}



class HomeExperienceDtoTeamSizeEnum {
  /// Instantiate a new enum with the provided [value].
  const HomeExperienceDtoTeamSizeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SOLO = HomeExperienceDtoTeamSizeEnum._(r'SOLO');
  static const TEAM = HomeExperienceDtoTeamSizeEnum._(r'TEAM');
  static const ENTERPRISE = HomeExperienceDtoTeamSizeEnum._(r'ENTERPRISE');

  /// List of all possible values in this [enum][HomeExperienceDtoTeamSizeEnum].
  static const values = <HomeExperienceDtoTeamSizeEnum>[
    SOLO,
    TEAM,
    ENTERPRISE,
  ];

  static HomeExperienceDtoTeamSizeEnum? fromJson(dynamic value) => HomeExperienceDtoTeamSizeEnumTypeTransformer().decode(value);

  static List<HomeExperienceDtoTeamSizeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeExperienceDtoTeamSizeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeExperienceDtoTeamSizeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [HomeExperienceDtoTeamSizeEnum] to String,
/// and [decode] dynamic data back to [HomeExperienceDtoTeamSizeEnum].
class HomeExperienceDtoTeamSizeEnumTypeTransformer {
  factory HomeExperienceDtoTeamSizeEnumTypeTransformer() => _instance ??= const HomeExperienceDtoTeamSizeEnumTypeTransformer._();

  const HomeExperienceDtoTeamSizeEnumTypeTransformer._();

  String encode(HomeExperienceDtoTeamSizeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a HomeExperienceDtoTeamSizeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  HomeExperienceDtoTeamSizeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SOLO': return HomeExperienceDtoTeamSizeEnum.SOLO;
        case r'TEAM': return HomeExperienceDtoTeamSizeEnum.TEAM;
        case r'ENTERPRISE': return HomeExperienceDtoTeamSizeEnum.ENTERPRISE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [HomeExperienceDtoTeamSizeEnumTypeTransformer] instance.
  static HomeExperienceDtoTeamSizeEnumTypeTransformer? _instance;
}


