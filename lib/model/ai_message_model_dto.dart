//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageModelDto {
  /// Returns a new [AIMessageModelDto] instance.
  AIMessageModelDto({
    required this.model,
    required this.providerModel,
    required this.evaluatorVersion,
    required this.movingAlias,
    required this.tokenMultiplier,
    this.supportedMessageTypes = const [],
    required this.pricingVersion,
  });

  AIMessageModelDtoModelEnum model;

  String providerModel;

  String evaluatorVersion;

  bool movingAlias;

  double tokenMultiplier;

  List<AIMessageModelDtoSupportedMessageTypesEnum> supportedMessageTypes;

  String pricingVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageModelDto &&
     other.model == model &&
     other.providerModel == providerModel &&
     other.evaluatorVersion == evaluatorVersion &&
     other.movingAlias == movingAlias &&
     other.tokenMultiplier == tokenMultiplier &&
     other.supportedMessageTypes == supportedMessageTypes &&
     other.pricingVersion == pricingVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (providerModel.hashCode) +
    (evaluatorVersion.hashCode) +
    (movingAlias.hashCode) +
    (tokenMultiplier.hashCode) +
    (supportedMessageTypes.hashCode) +
    (pricingVersion.hashCode);

  @override
  String toString() => 'AIMessageModelDto[model=$model, providerModel=$providerModel, evaluatorVersion=$evaluatorVersion, movingAlias=$movingAlias, tokenMultiplier=$tokenMultiplier, supportedMessageTypes=$supportedMessageTypes, pricingVersion=$pricingVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
      json[r'providerModel'] = this.providerModel;
      json[r'evaluatorVersion'] = this.evaluatorVersion;
      json[r'movingAlias'] = this.movingAlias;
      json[r'tokenMultiplier'] = this.tokenMultiplier;
      json[r'supportedMessageTypes'] = this.supportedMessageTypes;
      json[r'pricingVersion'] = this.pricingVersion;
    return json;
  }

  /// Returns a new [AIMessageModelDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageModelDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageModelDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageModelDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageModelDto(
        model: AIMessageModelDtoModelEnum.fromJson(json[r'model'])!,
        providerModel: mapValueOfType<String>(json, r'providerModel')!,
        evaluatorVersion: mapValueOfType<String>(json, r'evaluatorVersion')!,
        movingAlias: mapValueOfType<bool>(json, r'movingAlias')!,
        tokenMultiplier: mapValueOfType<double>(json, r'tokenMultiplier')!,
        supportedMessageTypes: AIMessageModelDtoSupportedMessageTypesEnum.listFromJson(json[r'supportedMessageTypes']),
        pricingVersion: mapValueOfType<String>(json, r'pricingVersion')!,
      );
    }
    return null;
  }

  static List<AIMessageModelDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageModelDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageModelDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageModelDto> mapFromJson(dynamic json) {
    final map = <String, AIMessageModelDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageModelDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageModelDto-objects as value to a dart map
  static Map<String, List<AIMessageModelDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageModelDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageModelDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'model',
    'providerModel',
    'evaluatorVersion',
    'movingAlias',
    'tokenMultiplier',
    'supportedMessageTypes',
    'pricingVersion',
  };
}


class AIMessageModelDtoModelEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageModelDtoModelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bALANCEDV1 = AIMessageModelDtoModelEnum._(r'BALANCED_V1');
  static const FLASH_LATEST = AIMessageModelDtoModelEnum._(r'FLASH_LATEST');
  static const qUALITYV1 = AIMessageModelDtoModelEnum._(r'QUALITY_V1');

  /// List of all possible values in this [enum][AIMessageModelDtoModelEnum].
  static const values = <AIMessageModelDtoModelEnum>[
    bALANCEDV1,
    FLASH_LATEST,
    qUALITYV1,
  ];

  static AIMessageModelDtoModelEnum? fromJson(dynamic value) => AIMessageModelDtoModelEnumTypeTransformer().decode(value);

  static List<AIMessageModelDtoModelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageModelDtoModelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageModelDtoModelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageModelDtoModelEnum] to String,
/// and [decode] dynamic data back to [AIMessageModelDtoModelEnum].
class AIMessageModelDtoModelEnumTypeTransformer {
  factory AIMessageModelDtoModelEnumTypeTransformer() => _instance ??= const AIMessageModelDtoModelEnumTypeTransformer._();

  const AIMessageModelDtoModelEnumTypeTransformer._();

  String encode(AIMessageModelDtoModelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageModelDtoModelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageModelDtoModelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BALANCED_V1': return AIMessageModelDtoModelEnum.bALANCEDV1;
        case r'FLASH_LATEST': return AIMessageModelDtoModelEnum.FLASH_LATEST;
        case r'QUALITY_V1': return AIMessageModelDtoModelEnum.qUALITYV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageModelDtoModelEnumTypeTransformer] instance.
  static AIMessageModelDtoModelEnumTypeTransformer? _instance;
}



class AIMessageModelDtoSupportedMessageTypesEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageModelDtoSupportedMessageTypesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const EMAIL = AIMessageModelDtoSupportedMessageTypesEnum._(r'EMAIL');
  static const SMS = AIMessageModelDtoSupportedMessageTypesEnum._(r'SMS');

  /// List of all possible values in this [enum][AIMessageModelDtoSupportedMessageTypesEnum].
  static const values = <AIMessageModelDtoSupportedMessageTypesEnum>[
    EMAIL,
    SMS,
  ];

  static AIMessageModelDtoSupportedMessageTypesEnum? fromJson(dynamic value) => AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer().decode(value);

  static List<AIMessageModelDtoSupportedMessageTypesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageModelDtoSupportedMessageTypesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageModelDtoSupportedMessageTypesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageModelDtoSupportedMessageTypesEnum] to String,
/// and [decode] dynamic data back to [AIMessageModelDtoSupportedMessageTypesEnum].
class AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer {
  factory AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer() => _instance ??= const AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer._();

  const AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer._();

  String encode(AIMessageModelDtoSupportedMessageTypesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageModelDtoSupportedMessageTypesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageModelDtoSupportedMessageTypesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'EMAIL': return AIMessageModelDtoSupportedMessageTypesEnum.EMAIL;
        case r'SMS': return AIMessageModelDtoSupportedMessageTypesEnum.SMS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer] instance.
  static AIMessageModelDtoSupportedMessageTypesEnumTypeTransformer? _instance;
}


