//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewNativeTargetDto {
  /// Returns a new [DevicePreviewNativeTargetDto] instance.
  DevicePreviewNativeTargetDto({
    required this.target,
    required this.baseTarget,
    this.provider,
    required this.client,
    required this.surface,
    required this.platform,
    required this.formFactor,
    required this.engine,
    required this.appearance,
    required this.creditCost,
    required this.tier,
    required this.timeoutSeconds,
  });

  String target;

  String baseTarget;

  String? provider;

  String client;

  String surface;

  String platform;

  String formFactor;

  String engine;

  String appearance;

  int creditCost;

  DevicePreviewNativeTargetDtoTierEnum tier;

  int timeoutSeconds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewNativeTargetDto &&
     other.target == target &&
     other.baseTarget == baseTarget &&
     other.provider == provider &&
     other.client == client &&
     other.surface == surface &&
     other.platform == platform &&
     other.formFactor == formFactor &&
     other.engine == engine &&
     other.appearance == appearance &&
     other.creditCost == creditCost &&
     other.tier == tier &&
     other.timeoutSeconds == timeoutSeconds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (target.hashCode) +
    (baseTarget.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (client.hashCode) +
    (surface.hashCode) +
    (platform.hashCode) +
    (formFactor.hashCode) +
    (engine.hashCode) +
    (appearance.hashCode) +
    (creditCost.hashCode) +
    (tier.hashCode) +
    (timeoutSeconds.hashCode);

  @override
  String toString() => 'DevicePreviewNativeTargetDto[target=$target, baseTarget=$baseTarget, provider=$provider, client=$client, surface=$surface, platform=$platform, formFactor=$formFactor, engine=$engine, appearance=$appearance, creditCost=$creditCost, tier=$tier, timeoutSeconds=$timeoutSeconds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'target'] = this.target;
      json[r'baseTarget'] = this.baseTarget;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'client'] = this.client;
      json[r'surface'] = this.surface;
      json[r'platform'] = this.platform;
      json[r'formFactor'] = this.formFactor;
      json[r'engine'] = this.engine;
      json[r'appearance'] = this.appearance;
      json[r'creditCost'] = this.creditCost;
      json[r'tier'] = this.tier;
      json[r'timeoutSeconds'] = this.timeoutSeconds;
    return json;
  }

  /// Returns a new [DevicePreviewNativeTargetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewNativeTargetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewNativeTargetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewNativeTargetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewNativeTargetDto(
        target: mapValueOfType<String>(json, r'target')!,
        baseTarget: mapValueOfType<String>(json, r'baseTarget')!,
        provider: mapValueOfType<String>(json, r'provider'),
        client: mapValueOfType<String>(json, r'client')!,
        surface: mapValueOfType<String>(json, r'surface')!,
        platform: mapValueOfType<String>(json, r'platform')!,
        formFactor: mapValueOfType<String>(json, r'formFactor')!,
        engine: mapValueOfType<String>(json, r'engine')!,
        appearance: mapValueOfType<String>(json, r'appearance')!,
        creditCost: mapValueOfType<int>(json, r'creditCost')!,
        tier: DevicePreviewNativeTargetDtoTierEnum.fromJson(json[r'tier'])!,
        timeoutSeconds: mapValueOfType<int>(json, r'timeoutSeconds')!,
      );
    }
    return null;
  }

  static List<DevicePreviewNativeTargetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewNativeTargetDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewNativeTargetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewNativeTargetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewNativeTargetDto-objects as value to a dart map
  static Map<String, List<DevicePreviewNativeTargetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewNativeTargetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewNativeTargetDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'target',
    'baseTarget',
    'client',
    'surface',
    'platform',
    'formFactor',
    'engine',
    'appearance',
    'creditCost',
    'tier',
    'timeoutSeconds',
  };
}


class DevicePreviewNativeTargetDtoTierEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewNativeTargetDtoTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STANDARD = DevicePreviewNativeTargetDtoTierEnum._(r'STANDARD');
  static const PREMIUM = DevicePreviewNativeTargetDtoTierEnum._(r'PREMIUM');

  /// List of all possible values in this [enum][DevicePreviewNativeTargetDtoTierEnum].
  static const values = <DevicePreviewNativeTargetDtoTierEnum>[
    STANDARD,
    PREMIUM,
  ];

  static DevicePreviewNativeTargetDtoTierEnum? fromJson(dynamic value) => DevicePreviewNativeTargetDtoTierEnumTypeTransformer().decode(value);

  static List<DevicePreviewNativeTargetDtoTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetDtoTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetDtoTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewNativeTargetDtoTierEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewNativeTargetDtoTierEnum].
class DevicePreviewNativeTargetDtoTierEnumTypeTransformer {
  factory DevicePreviewNativeTargetDtoTierEnumTypeTransformer() => _instance ??= const DevicePreviewNativeTargetDtoTierEnumTypeTransformer._();

  const DevicePreviewNativeTargetDtoTierEnumTypeTransformer._();

  String encode(DevicePreviewNativeTargetDtoTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewNativeTargetDtoTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewNativeTargetDtoTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STANDARD': return DevicePreviewNativeTargetDtoTierEnum.STANDARD;
        case r'PREMIUM': return DevicePreviewNativeTargetDtoTierEnum.PREMIUM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewNativeTargetDtoTierEnumTypeTransformer] instance.
  static DevicePreviewNativeTargetDtoTierEnumTypeTransformer? _instance;
}


