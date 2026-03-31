//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewProviderProgressDto {
  /// Returns a new [DevicePreviewProviderProgressDto] instance.
  DevicePreviewProviderProgressDto({
    required this.run,
    required this.provider,
    required this.status,
    required this.targetCount,
    required this.readyCount,
    required this.failedCount,
    required this.capturingCount,
    required this.pendingCount,
    this.targets = const [],
    this.screenshots = const [],
  });

  DevicePreviewRunDto run;

  DevicePreviewProviderProgressDtoProviderEnum provider;

  DevicePreviewProviderProgressDtoStatusEnum status;

  int targetCount;

  int readyCount;

  int failedCount;

  int capturingCount;

  int pendingCount;

  List<DevicePreviewTargetDto> targets;

  List<DevicePreviewScreenshotDto> screenshots;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewProviderProgressDto &&
     other.run == run &&
     other.provider == provider &&
     other.status == status &&
     other.targetCount == targetCount &&
     other.readyCount == readyCount &&
     other.failedCount == failedCount &&
     other.capturingCount == capturingCount &&
     other.pendingCount == pendingCount &&
     other.targets == targets &&
     other.screenshots == screenshots;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (run.hashCode) +
    (provider.hashCode) +
    (status.hashCode) +
    (targetCount.hashCode) +
    (readyCount.hashCode) +
    (failedCount.hashCode) +
    (capturingCount.hashCode) +
    (pendingCount.hashCode) +
    (targets.hashCode) +
    (screenshots.hashCode);

  @override
  String toString() => 'DevicePreviewProviderProgressDto[run=$run, provider=$provider, status=$status, targetCount=$targetCount, readyCount=$readyCount, failedCount=$failedCount, capturingCount=$capturingCount, pendingCount=$pendingCount, targets=$targets, screenshots=$screenshots]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'run'] = this.run;
      json[r'provider'] = this.provider;
      json[r'status'] = this.status;
      json[r'targetCount'] = this.targetCount;
      json[r'readyCount'] = this.readyCount;
      json[r'failedCount'] = this.failedCount;
      json[r'capturingCount'] = this.capturingCount;
      json[r'pendingCount'] = this.pendingCount;
      json[r'targets'] = this.targets;
      json[r'screenshots'] = this.screenshots;
    return json;
  }

  /// Returns a new [DevicePreviewProviderProgressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewProviderProgressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewProviderProgressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewProviderProgressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewProviderProgressDto(
        run: DevicePreviewRunDto.fromJson(json[r'run'])!,
        provider: DevicePreviewProviderProgressDtoProviderEnum.fromJson(json[r'provider'])!,
        status: DevicePreviewProviderProgressDtoStatusEnum.fromJson(json[r'status'])!,
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        readyCount: mapValueOfType<int>(json, r'readyCount')!,
        failedCount: mapValueOfType<int>(json, r'failedCount')!,
        capturingCount: mapValueOfType<int>(json, r'capturingCount')!,
        pendingCount: mapValueOfType<int>(json, r'pendingCount')!,
        targets: DevicePreviewTargetDto.listFromJson(json[r'targets']),
        screenshots: DevicePreviewScreenshotDto.listFromJson(json[r'screenshots']),
      );
    }
    return null;
  }

  static List<DevicePreviewProviderProgressDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewProviderProgressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewProviderProgressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewProviderProgressDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewProviderProgressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewProviderProgressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewProviderProgressDto-objects as value to a dart map
  static Map<String, List<DevicePreviewProviderProgressDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewProviderProgressDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewProviderProgressDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'run',
    'provider',
    'status',
    'targetCount',
    'readyCount',
    'failedCount',
    'capturingCount',
    'pendingCount',
    'targets',
    'screenshots',
  };
}


class DevicePreviewProviderProgressDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewProviderProgressDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = DevicePreviewProviderProgressDtoProviderEnum._(r'GMAIL');
  static const OUTLOOK = DevicePreviewProviderProgressDtoProviderEnum._(r'OUTLOOK');
  static const YAHOO = DevicePreviewProviderProgressDtoProviderEnum._(r'YAHOO');

  /// List of all possible values in this [enum][DevicePreviewProviderProgressDtoProviderEnum].
  static const values = <DevicePreviewProviderProgressDtoProviderEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static DevicePreviewProviderProgressDtoProviderEnum? fromJson(dynamic value) => DevicePreviewProviderProgressDtoProviderEnumTypeTransformer().decode(value);

  static List<DevicePreviewProviderProgressDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewProviderProgressDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewProviderProgressDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewProviderProgressDtoProviderEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewProviderProgressDtoProviderEnum].
class DevicePreviewProviderProgressDtoProviderEnumTypeTransformer {
  factory DevicePreviewProviderProgressDtoProviderEnumTypeTransformer() => _instance ??= const DevicePreviewProviderProgressDtoProviderEnumTypeTransformer._();

  const DevicePreviewProviderProgressDtoProviderEnumTypeTransformer._();

  String encode(DevicePreviewProviderProgressDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewProviderProgressDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewProviderProgressDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return DevicePreviewProviderProgressDtoProviderEnum.GMAIL;
        case r'OUTLOOK': return DevicePreviewProviderProgressDtoProviderEnum.OUTLOOK;
        case r'YAHOO': return DevicePreviewProviderProgressDtoProviderEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewProviderProgressDtoProviderEnumTypeTransformer] instance.
  static DevicePreviewProviderProgressDtoProviderEnumTypeTransformer? _instance;
}



class DevicePreviewProviderProgressDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewProviderProgressDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = DevicePreviewProviderProgressDtoStatusEnum._(r'PENDING');
  static const CAPTURING = DevicePreviewProviderProgressDtoStatusEnum._(r'CAPTURING');
  static const PARTIAL_COMPLETE = DevicePreviewProviderProgressDtoStatusEnum._(r'PARTIAL_COMPLETE');
  static const COMPLETE = DevicePreviewProviderProgressDtoStatusEnum._(r'COMPLETE');
  static const FAILED = DevicePreviewProviderProgressDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewProviderProgressDtoStatusEnum].
  static const values = <DevicePreviewProviderProgressDtoStatusEnum>[
    PENDING,
    CAPTURING,
    PARTIAL_COMPLETE,
    COMPLETE,
    FAILED,
  ];

  static DevicePreviewProviderProgressDtoStatusEnum? fromJson(dynamic value) => DevicePreviewProviderProgressDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewProviderProgressDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewProviderProgressDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewProviderProgressDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewProviderProgressDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewProviderProgressDtoStatusEnum].
class DevicePreviewProviderProgressDtoStatusEnumTypeTransformer {
  factory DevicePreviewProviderProgressDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewProviderProgressDtoStatusEnumTypeTransformer._();

  const DevicePreviewProviderProgressDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewProviderProgressDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewProviderProgressDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewProviderProgressDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return DevicePreviewProviderProgressDtoStatusEnum.PENDING;
        case r'CAPTURING': return DevicePreviewProviderProgressDtoStatusEnum.CAPTURING;
        case r'PARTIAL_COMPLETE': return DevicePreviewProviderProgressDtoStatusEnum.PARTIAL_COMPLETE;
        case r'COMPLETE': return DevicePreviewProviderProgressDtoStatusEnum.COMPLETE;
        case r'FAILED': return DevicePreviewProviderProgressDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewProviderProgressDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewProviderProgressDtoStatusEnumTypeTransformer? _instance;
}


