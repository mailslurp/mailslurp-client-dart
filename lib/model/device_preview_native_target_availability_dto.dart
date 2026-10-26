//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewNativeTargetAvailabilityDto {
  /// Returns a new [DevicePreviewNativeTargetAvailabilityDto] instance.
  DevicePreviewNativeTargetAvailabilityDto({
    required this.target,
    required this.baseTarget,
    this.provider,
    required this.client,
    required this.surface,
    required this.platform,
    required this.formFactor,
    required this.engine,
    required this.appearance,
    required this.visible,
    required this.creditCost,
    required this.tier,
    required this.enabled,
    required this.requestQueueConfigured,
    required this.status,
    this.statusReason,
    required this.healthyWorkers,
    required this.recentWorkers,
    required this.timeoutSeconds,
    required this.availableSlots,
    required this.publicPollingWorkers,
    this.minimumWorkerReleaseVersion,
    this.desiredWorkerReleaseVersion,
    this.desiredReleaseWorkers,
    this.desiredReleasePublicPollingWorkers,
    this.releaseVersions = const {},
    required this.desiredLanes,
    required this.matchedLiveLanes,
    required this.identityMismatchLanes,
    required this.servingLanes,
    required this.spareLanes,
    required this.busyLanes,
    required this.degradedLanes,
    required this.quarantinedLanes,
    required this.zeroCapacityLanes,
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

  bool visible;

  int creditCost;

  DevicePreviewNativeTargetAvailabilityDtoTierEnum tier;

  bool enabled;

  bool requestQueueConfigured;

  DevicePreviewNativeTargetAvailabilityDtoStatusEnum status;

  String? statusReason;

  int healthyWorkers;

  int recentWorkers;

  int timeoutSeconds;

  int availableSlots;

  int publicPollingWorkers;

  String? minimumWorkerReleaseVersion;

  String? desiredWorkerReleaseVersion;

  int? desiredReleaseWorkers;

  int? desiredReleasePublicPollingWorkers;

  Map<String, int> releaseVersions;

  int desiredLanes;

  int matchedLiveLanes;

  int identityMismatchLanes;

  int servingLanes;

  int spareLanes;

  int busyLanes;

  int degradedLanes;

  int quarantinedLanes;

  int zeroCapacityLanes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewNativeTargetAvailabilityDto &&
     other.target == target &&
     other.baseTarget == baseTarget &&
     other.provider == provider &&
     other.client == client &&
     other.surface == surface &&
     other.platform == platform &&
     other.formFactor == formFactor &&
     other.engine == engine &&
     other.appearance == appearance &&
     other.visible == visible &&
     other.creditCost == creditCost &&
     other.tier == tier &&
     other.enabled == enabled &&
     other.requestQueueConfigured == requestQueueConfigured &&
     other.status == status &&
     other.statusReason == statusReason &&
     other.healthyWorkers == healthyWorkers &&
     other.recentWorkers == recentWorkers &&
     other.timeoutSeconds == timeoutSeconds &&
     other.availableSlots == availableSlots &&
     other.publicPollingWorkers == publicPollingWorkers &&
     other.minimumWorkerReleaseVersion == minimumWorkerReleaseVersion &&
     other.desiredWorkerReleaseVersion == desiredWorkerReleaseVersion &&
     other.desiredReleaseWorkers == desiredReleaseWorkers &&
     other.desiredReleasePublicPollingWorkers == desiredReleasePublicPollingWorkers &&
     other.releaseVersions == releaseVersions &&
     other.desiredLanes == desiredLanes &&
     other.matchedLiveLanes == matchedLiveLanes &&
     other.identityMismatchLanes == identityMismatchLanes &&
     other.servingLanes == servingLanes &&
     other.spareLanes == spareLanes &&
     other.busyLanes == busyLanes &&
     other.degradedLanes == degradedLanes &&
     other.quarantinedLanes == quarantinedLanes &&
     other.zeroCapacityLanes == zeroCapacityLanes;

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
    (visible.hashCode) +
    (creditCost.hashCode) +
    (tier.hashCode) +
    (enabled.hashCode) +
    (requestQueueConfigured.hashCode) +
    (status.hashCode) +
    (statusReason == null ? 0 : statusReason!.hashCode) +
    (healthyWorkers.hashCode) +
    (recentWorkers.hashCode) +
    (timeoutSeconds.hashCode) +
    (availableSlots.hashCode) +
    (publicPollingWorkers.hashCode) +
    (minimumWorkerReleaseVersion == null ? 0 : minimumWorkerReleaseVersion!.hashCode) +
    (desiredWorkerReleaseVersion == null ? 0 : desiredWorkerReleaseVersion!.hashCode) +
    (desiredReleaseWorkers == null ? 0 : desiredReleaseWorkers!.hashCode) +
    (desiredReleasePublicPollingWorkers == null ? 0 : desiredReleasePublicPollingWorkers!.hashCode) +
    (releaseVersions.hashCode) +
    (desiredLanes.hashCode) +
    (matchedLiveLanes.hashCode) +
    (identityMismatchLanes.hashCode) +
    (servingLanes.hashCode) +
    (spareLanes.hashCode) +
    (busyLanes.hashCode) +
    (degradedLanes.hashCode) +
    (quarantinedLanes.hashCode) +
    (zeroCapacityLanes.hashCode);

  @override
  String toString() => 'DevicePreviewNativeTargetAvailabilityDto[target=$target, baseTarget=$baseTarget, provider=$provider, client=$client, surface=$surface, platform=$platform, formFactor=$formFactor, engine=$engine, appearance=$appearance, visible=$visible, creditCost=$creditCost, tier=$tier, enabled=$enabled, requestQueueConfigured=$requestQueueConfigured, status=$status, statusReason=$statusReason, healthyWorkers=$healthyWorkers, recentWorkers=$recentWorkers, timeoutSeconds=$timeoutSeconds, availableSlots=$availableSlots, publicPollingWorkers=$publicPollingWorkers, minimumWorkerReleaseVersion=$minimumWorkerReleaseVersion, desiredWorkerReleaseVersion=$desiredWorkerReleaseVersion, desiredReleaseWorkers=$desiredReleaseWorkers, desiredReleasePublicPollingWorkers=$desiredReleasePublicPollingWorkers, releaseVersions=$releaseVersions, desiredLanes=$desiredLanes, matchedLiveLanes=$matchedLiveLanes, identityMismatchLanes=$identityMismatchLanes, servingLanes=$servingLanes, spareLanes=$spareLanes, busyLanes=$busyLanes, degradedLanes=$degradedLanes, quarantinedLanes=$quarantinedLanes, zeroCapacityLanes=$zeroCapacityLanes]';

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
      json[r'visible'] = this.visible;
      json[r'creditCost'] = this.creditCost;
      json[r'tier'] = this.tier;
      json[r'enabled'] = this.enabled;
      json[r'requestQueueConfigured'] = this.requestQueueConfigured;
      json[r'status'] = this.status;
    if (this.statusReason != null) {
      json[r'statusReason'] = this.statusReason;
    } else {
      json[r'statusReason'] = null;
    }
      json[r'healthyWorkers'] = this.healthyWorkers;
      json[r'recentWorkers'] = this.recentWorkers;
      json[r'timeoutSeconds'] = this.timeoutSeconds;
      json[r'availableSlots'] = this.availableSlots;
      json[r'publicPollingWorkers'] = this.publicPollingWorkers;
    if (this.minimumWorkerReleaseVersion != null) {
      json[r'minimumWorkerReleaseVersion'] = this.minimumWorkerReleaseVersion;
    } else {
      json[r'minimumWorkerReleaseVersion'] = null;
    }
    if (this.desiredWorkerReleaseVersion != null) {
      json[r'desiredWorkerReleaseVersion'] = this.desiredWorkerReleaseVersion;
    } else {
      json[r'desiredWorkerReleaseVersion'] = null;
    }
    if (this.desiredReleaseWorkers != null) {
      json[r'desiredReleaseWorkers'] = this.desiredReleaseWorkers;
    } else {
      json[r'desiredReleaseWorkers'] = null;
    }
    if (this.desiredReleasePublicPollingWorkers != null) {
      json[r'desiredReleasePublicPollingWorkers'] = this.desiredReleasePublicPollingWorkers;
    } else {
      json[r'desiredReleasePublicPollingWorkers'] = null;
    }
      json[r'releaseVersions'] = this.releaseVersions;
      json[r'desiredLanes'] = this.desiredLanes;
      json[r'matchedLiveLanes'] = this.matchedLiveLanes;
      json[r'identityMismatchLanes'] = this.identityMismatchLanes;
      json[r'servingLanes'] = this.servingLanes;
      json[r'spareLanes'] = this.spareLanes;
      json[r'busyLanes'] = this.busyLanes;
      json[r'degradedLanes'] = this.degradedLanes;
      json[r'quarantinedLanes'] = this.quarantinedLanes;
      json[r'zeroCapacityLanes'] = this.zeroCapacityLanes;
    return json;
  }

  /// Returns a new [DevicePreviewNativeTargetAvailabilityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewNativeTargetAvailabilityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewNativeTargetAvailabilityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewNativeTargetAvailabilityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewNativeTargetAvailabilityDto(
        target: mapValueOfType<String>(json, r'target')!,
        baseTarget: mapValueOfType<String>(json, r'baseTarget')!,
        provider: mapValueOfType<String>(json, r'provider'),
        client: mapValueOfType<String>(json, r'client')!,
        surface: mapValueOfType<String>(json, r'surface')!,
        platform: mapValueOfType<String>(json, r'platform')!,
        formFactor: mapValueOfType<String>(json, r'formFactor')!,
        engine: mapValueOfType<String>(json, r'engine')!,
        appearance: mapValueOfType<String>(json, r'appearance')!,
        visible: mapValueOfType<bool>(json, r'visible')!,
        creditCost: mapValueOfType<int>(json, r'creditCost')!,
        tier: DevicePreviewNativeTargetAvailabilityDtoTierEnum.fromJson(json[r'tier'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        requestQueueConfigured: mapValueOfType<bool>(json, r'requestQueueConfigured')!,
        status: DevicePreviewNativeTargetAvailabilityDtoStatusEnum.fromJson(json[r'status'])!,
        statusReason: mapValueOfType<String>(json, r'statusReason'),
        healthyWorkers: mapValueOfType<int>(json, r'healthyWorkers')!,
        recentWorkers: mapValueOfType<int>(json, r'recentWorkers')!,
        timeoutSeconds: mapValueOfType<int>(json, r'timeoutSeconds')!,
        availableSlots: mapValueOfType<int>(json, r'availableSlots')!,
        publicPollingWorkers: mapValueOfType<int>(json, r'publicPollingWorkers')!,
        minimumWorkerReleaseVersion: mapValueOfType<String>(json, r'minimumWorkerReleaseVersion'),
        desiredWorkerReleaseVersion: mapValueOfType<String>(json, r'desiredWorkerReleaseVersion'),
        desiredReleaseWorkers: mapValueOfType<int>(json, r'desiredReleaseWorkers'),
        desiredReleasePublicPollingWorkers: mapValueOfType<int>(json, r'desiredReleasePublicPollingWorkers'),
        releaseVersions: mapCastOfType<String, int>(json, r'releaseVersions')!,
        desiredLanes: mapValueOfType<int>(json, r'desiredLanes')!,
        matchedLiveLanes: mapValueOfType<int>(json, r'matchedLiveLanes')!,
        identityMismatchLanes: mapValueOfType<int>(json, r'identityMismatchLanes')!,
        servingLanes: mapValueOfType<int>(json, r'servingLanes')!,
        spareLanes: mapValueOfType<int>(json, r'spareLanes')!,
        busyLanes: mapValueOfType<int>(json, r'busyLanes')!,
        degradedLanes: mapValueOfType<int>(json, r'degradedLanes')!,
        quarantinedLanes: mapValueOfType<int>(json, r'quarantinedLanes')!,
        zeroCapacityLanes: mapValueOfType<int>(json, r'zeroCapacityLanes')!,
      );
    }
    return null;
  }

  static List<DevicePreviewNativeTargetAvailabilityDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetAvailabilityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetAvailabilityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewNativeTargetAvailabilityDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewNativeTargetAvailabilityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewNativeTargetAvailabilityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewNativeTargetAvailabilityDto-objects as value to a dart map
  static Map<String, List<DevicePreviewNativeTargetAvailabilityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewNativeTargetAvailabilityDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewNativeTargetAvailabilityDto.listFromJson(entry.value, growable: growable,);
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
    'visible',
    'creditCost',
    'tier',
    'enabled',
    'requestQueueConfigured',
    'status',
    'healthyWorkers',
    'recentWorkers',
    'timeoutSeconds',
    'availableSlots',
    'publicPollingWorkers',
    'releaseVersions',
    'desiredLanes',
    'matchedLiveLanes',
    'identityMismatchLanes',
    'servingLanes',
    'spareLanes',
    'busyLanes',
    'degradedLanes',
    'quarantinedLanes',
    'zeroCapacityLanes',
  };
}


class DevicePreviewNativeTargetAvailabilityDtoTierEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewNativeTargetAvailabilityDtoTierEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STANDARD = DevicePreviewNativeTargetAvailabilityDtoTierEnum._(r'STANDARD');
  static const PREMIUM = DevicePreviewNativeTargetAvailabilityDtoTierEnum._(r'PREMIUM');

  /// List of all possible values in this [enum][DevicePreviewNativeTargetAvailabilityDtoTierEnum].
  static const values = <DevicePreviewNativeTargetAvailabilityDtoTierEnum>[
    STANDARD,
    PREMIUM,
  ];

  static DevicePreviewNativeTargetAvailabilityDtoTierEnum? fromJson(dynamic value) => DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer().decode(value);

  static List<DevicePreviewNativeTargetAvailabilityDtoTierEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetAvailabilityDtoTierEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetAvailabilityDtoTierEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewNativeTargetAvailabilityDtoTierEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewNativeTargetAvailabilityDtoTierEnum].
class DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer {
  factory DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer() => _instance ??= const DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer._();

  const DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer._();

  String encode(DevicePreviewNativeTargetAvailabilityDtoTierEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewNativeTargetAvailabilityDtoTierEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewNativeTargetAvailabilityDtoTierEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STANDARD': return DevicePreviewNativeTargetAvailabilityDtoTierEnum.STANDARD;
        case r'PREMIUM': return DevicePreviewNativeTargetAvailabilityDtoTierEnum.PREMIUM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer] instance.
  static DevicePreviewNativeTargetAvailabilityDtoTierEnumTypeTransformer? _instance;
}



class DevicePreviewNativeTargetAvailabilityDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'AVAILABLE');
  static const DEGRADED = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'DEGRADED');
  static const OFFLINE = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'OFFLINE');
  static const SETUP_REQUIRED = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'SETUP_REQUIRED');
  static const DISABLED = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'DISABLED');
  static const NOT_CONFIGURED = DevicePreviewNativeTargetAvailabilityDtoStatusEnum._(r'NOT_CONFIGURED');

  /// List of all possible values in this [enum][DevicePreviewNativeTargetAvailabilityDtoStatusEnum].
  static const values = <DevicePreviewNativeTargetAvailabilityDtoStatusEnum>[
    AVAILABLE,
    DEGRADED,
    OFFLINE,
    SETUP_REQUIRED,
    DISABLED,
    NOT_CONFIGURED,
  ];

  static DevicePreviewNativeTargetAvailabilityDtoStatusEnum? fromJson(dynamic value) => DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewNativeTargetAvailabilityDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewNativeTargetAvailabilityDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewNativeTargetAvailabilityDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewNativeTargetAvailabilityDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewNativeTargetAvailabilityDtoStatusEnum].
class DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer {
  factory DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer._();

  const DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewNativeTargetAvailabilityDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewNativeTargetAvailabilityDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewNativeTargetAvailabilityDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.AVAILABLE;
        case r'DEGRADED': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.DEGRADED;
        case r'OFFLINE': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.OFFLINE;
        case r'SETUP_REQUIRED': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.SETUP_REQUIRED;
        case r'DISABLED': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.DISABLED;
        case r'NOT_CONFIGURED': return DevicePreviewNativeTargetAvailabilityDtoStatusEnum.NOT_CONFIGURED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewNativeTargetAvailabilityDtoStatusEnumTypeTransformer? _instance;
}


