//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewTargetDto {
  /// Returns a new [DevicePreviewTargetDto] instance.
  DevicePreviewTargetDto({
    required this.id,
    required this.runId,
    this.provider,
    this.clientProfile,
    this.deviceType,
    this.browserFamily,
    this.platform,
    this.colorScheme,
    this.status,
    this.failureCode,
    this.primaryScreenshotId,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String runId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientProfile;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? browserFamily;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? colorScheme;

  DevicePreviewTargetDtoStatusEnum? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? primaryScreenshotId;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewTargetDto &&
     other.id == id &&
     other.runId == runId &&
     other.provider == provider &&
     other.clientProfile == clientProfile &&
     other.deviceType == deviceType &&
     other.browserFamily == browserFamily &&
     other.platform == platform &&
     other.colorScheme == colorScheme &&
     other.status == status &&
     other.failureCode == failureCode &&
     other.primaryScreenshotId == primaryScreenshotId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (runId.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (clientProfile == null ? 0 : clientProfile!.hashCode) +
    (deviceType == null ? 0 : deviceType!.hashCode) +
    (browserFamily == null ? 0 : browserFamily!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (colorScheme == null ? 0 : colorScheme!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (primaryScreenshotId == null ? 0 : primaryScreenshotId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewTargetDto[id=$id, runId=$runId, provider=$provider, clientProfile=$clientProfile, deviceType=$deviceType, browserFamily=$browserFamily, platform=$platform, colorScheme=$colorScheme, status=$status, failureCode=$failureCode, primaryScreenshotId=$primaryScreenshotId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'runId'] = this.runId;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.clientProfile != null) {
      json[r'clientProfile'] = this.clientProfile;
    } else {
      json[r'clientProfile'] = null;
    }
    if (this.deviceType != null) {
      json[r'deviceType'] = this.deviceType;
    } else {
      json[r'deviceType'] = null;
    }
    if (this.browserFamily != null) {
      json[r'browserFamily'] = this.browserFamily;
    } else {
      json[r'browserFamily'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.colorScheme != null) {
      json[r'colorScheme'] = this.colorScheme;
    } else {
      json[r'colorScheme'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.primaryScreenshotId != null) {
      json[r'primaryScreenshotId'] = this.primaryScreenshotId;
    } else {
      json[r'primaryScreenshotId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewTargetDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewTargetDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewTargetDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewTargetDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewTargetDto(
        id: mapValueOfType<String>(json, r'id')!,
        runId: mapValueOfType<String>(json, r'runId')!,
        provider: mapValueOfType<String>(json, r'provider'),
        clientProfile: mapValueOfType<String>(json, r'clientProfile'),
        deviceType: mapValueOfType<String>(json, r'deviceType'),
        browserFamily: mapValueOfType<String>(json, r'browserFamily'),
        platform: mapValueOfType<String>(json, r'platform'),
        colorScheme: mapValueOfType<String>(json, r'colorScheme'),
        status: DevicePreviewTargetDtoStatusEnum.fromJson(json[r'status']),
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        primaryScreenshotId: mapValueOfType<String>(json, r'primaryScreenshotId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewTargetDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewTargetDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewTargetDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewTargetDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewTargetDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewTargetDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewTargetDto-objects as value to a dart map
  static Map<String, List<DevicePreviewTargetDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewTargetDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewTargetDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'runId',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewTargetDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewTargetDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WAITING = DevicePreviewTargetDtoStatusEnum._(r'WAITING');
  static const READY_TO_CAPTURE = DevicePreviewTargetDtoStatusEnum._(r'READY_TO_CAPTURE');
  static const CAPTURING = DevicePreviewTargetDtoStatusEnum._(r'CAPTURING');
  static const READY = DevicePreviewTargetDtoStatusEnum._(r'READY');
  static const FAILED = DevicePreviewTargetDtoStatusEnum._(r'FAILED');
  static const NEEDS_INTERVENTION = DevicePreviewTargetDtoStatusEnum._(r'NEEDS_INTERVENTION');

  /// List of all possible values in this [enum][DevicePreviewTargetDtoStatusEnum].
  static const values = <DevicePreviewTargetDtoStatusEnum>[
    WAITING,
    READY_TO_CAPTURE,
    CAPTURING,
    READY,
    FAILED,
    NEEDS_INTERVENTION,
  ];

  static DevicePreviewTargetDtoStatusEnum? fromJson(dynamic value) => DevicePreviewTargetDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewTargetDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewTargetDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewTargetDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewTargetDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewTargetDtoStatusEnum].
class DevicePreviewTargetDtoStatusEnumTypeTransformer {
  factory DevicePreviewTargetDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewTargetDtoStatusEnumTypeTransformer._();

  const DevicePreviewTargetDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewTargetDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewTargetDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewTargetDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WAITING': return DevicePreviewTargetDtoStatusEnum.WAITING;
        case r'READY_TO_CAPTURE': return DevicePreviewTargetDtoStatusEnum.READY_TO_CAPTURE;
        case r'CAPTURING': return DevicePreviewTargetDtoStatusEnum.CAPTURING;
        case r'READY': return DevicePreviewTargetDtoStatusEnum.READY;
        case r'FAILED': return DevicePreviewTargetDtoStatusEnum.FAILED;
        case r'NEEDS_INTERVENTION': return DevicePreviewTargetDtoStatusEnum.NEEDS_INTERVENTION;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewTargetDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewTargetDtoStatusEnumTypeTransformer? _instance;
}


