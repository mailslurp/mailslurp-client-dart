//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewRunDto {
  /// Returns a new [DevicePreviewRunDto] instance.
  DevicePreviewRunDto({
    required this.runId,
    required this.emailId,
    required this.status,
    this.primaryScreenshotId,
    this.requestedProviders = const [],
    this.importedProviders = const [],
    this.warnings = const [],
    this.providerMessageIds = const {},
    required this.targetCount,
    required this.screenshotCount,
    required this.createdAt,
    required this.updatedAt,
  });

  String runId;

  String emailId;

  DevicePreviewRunDtoStatusEnum status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? primaryScreenshotId;

  List<DevicePreviewRunDtoRequestedProvidersEnum> requestedProviders;

  List<DevicePreviewRunDtoImportedProvidersEnum> importedProviders;

  List<String> warnings;

  Map<String, String> providerMessageIds;

  int targetCount;

  int screenshotCount;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewRunDto &&
     other.runId == runId &&
     other.emailId == emailId &&
     other.status == status &&
     other.primaryScreenshotId == primaryScreenshotId &&
     other.requestedProviders == requestedProviders &&
     other.importedProviders == importedProviders &&
     other.warnings == warnings &&
     other.providerMessageIds == providerMessageIds &&
     other.targetCount == targetCount &&
     other.screenshotCount == screenshotCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId.hashCode) +
    (emailId.hashCode) +
    (status.hashCode) +
    (primaryScreenshotId == null ? 0 : primaryScreenshotId!.hashCode) +
    (requestedProviders.hashCode) +
    (importedProviders.hashCode) +
    (warnings.hashCode) +
    (providerMessageIds.hashCode) +
    (targetCount.hashCode) +
    (screenshotCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewRunDto[runId=$runId, emailId=$emailId, status=$status, primaryScreenshotId=$primaryScreenshotId, requestedProviders=$requestedProviders, importedProviders=$importedProviders, warnings=$warnings, providerMessageIds=$providerMessageIds, targetCount=$targetCount, screenshotCount=$screenshotCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runId'] = this.runId;
      json[r'emailId'] = this.emailId;
      json[r'status'] = this.status;
    if (this.primaryScreenshotId != null) {
      json[r'primaryScreenshotId'] = this.primaryScreenshotId;
    } else {
      json[r'primaryScreenshotId'] = null;
    }
      json[r'requestedProviders'] = this.requestedProviders;
      json[r'importedProviders'] = this.importedProviders;
      json[r'warnings'] = this.warnings;
      json[r'providerMessageIds'] = this.providerMessageIds;
      json[r'targetCount'] = this.targetCount;
      json[r'screenshotCount'] = this.screenshotCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewRunDto(
        runId: mapValueOfType<String>(json, r'runId')!,
        emailId: mapValueOfType<String>(json, r'emailId')!,
        status: DevicePreviewRunDtoStatusEnum.fromJson(json[r'status'])!,
        primaryScreenshotId: mapValueOfType<String>(json, r'primaryScreenshotId'),
        requestedProviders: DevicePreviewRunDtoRequestedProvidersEnum.listFromJson(json[r'requestedProviders']),
        importedProviders: DevicePreviewRunDtoImportedProvidersEnum.listFromJson(json[r'importedProviders']),
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        providerMessageIds: mapCastOfType<String, String>(json, r'providerMessageIds') ?? const {},
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        screenshotCount: mapValueOfType<int>(json, r'screenshotCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewRunDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewRunDto-objects as value to a dart map
  static Map<String, List<DevicePreviewRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'runId',
    'emailId',
    'status',
    'targetCount',
    'screenshotCount',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = DevicePreviewRunDtoStatusEnum._(r'CREATED');
  static const AWAITING_ARRIVAL = DevicePreviewRunDtoStatusEnum._(r'AWAITING_ARRIVAL');
  static const CAPTURING = DevicePreviewRunDtoStatusEnum._(r'CAPTURING');
  static const PARTIAL_COMPLETE = DevicePreviewRunDtoStatusEnum._(r'PARTIAL_COMPLETE');
  static const COMPLETE = DevicePreviewRunDtoStatusEnum._(r'COMPLETE');
  static const FAILED = DevicePreviewRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewRunDtoStatusEnum].
  static const values = <DevicePreviewRunDtoStatusEnum>[
    CREATED,
    AWAITING_ARRIVAL,
    CAPTURING,
    PARTIAL_COMPLETE,
    COMPLETE,
    FAILED,
  ];

  static DevicePreviewRunDtoStatusEnum? fromJson(dynamic value) => DevicePreviewRunDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewRunDtoStatusEnum].
class DevicePreviewRunDtoStatusEnumTypeTransformer {
  factory DevicePreviewRunDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewRunDtoStatusEnumTypeTransformer._();

  const DevicePreviewRunDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATED': return DevicePreviewRunDtoStatusEnum.CREATED;
        case r'AWAITING_ARRIVAL': return DevicePreviewRunDtoStatusEnum.AWAITING_ARRIVAL;
        case r'CAPTURING': return DevicePreviewRunDtoStatusEnum.CAPTURING;
        case r'PARTIAL_COMPLETE': return DevicePreviewRunDtoStatusEnum.PARTIAL_COMPLETE;
        case r'COMPLETE': return DevicePreviewRunDtoStatusEnum.COMPLETE;
        case r'FAILED': return DevicePreviewRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewRunDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewRunDtoStatusEnumTypeTransformer? _instance;
}



class DevicePreviewRunDtoRequestedProvidersEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewRunDtoRequestedProvidersEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = DevicePreviewRunDtoRequestedProvidersEnum._(r'GMAIL');
  static const OUTLOOK = DevicePreviewRunDtoRequestedProvidersEnum._(r'OUTLOOK');
  static const YAHOO = DevicePreviewRunDtoRequestedProvidersEnum._(r'YAHOO');

  /// List of all possible values in this [enum][DevicePreviewRunDtoRequestedProvidersEnum].
  static const values = <DevicePreviewRunDtoRequestedProvidersEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static DevicePreviewRunDtoRequestedProvidersEnum? fromJson(dynamic value) => DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer().decode(value);

  static List<DevicePreviewRunDtoRequestedProvidersEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunDtoRequestedProvidersEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunDtoRequestedProvidersEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewRunDtoRequestedProvidersEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewRunDtoRequestedProvidersEnum].
class DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer {
  factory DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer() => _instance ??= const DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer._();

  const DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer._();

  String encode(DevicePreviewRunDtoRequestedProvidersEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewRunDtoRequestedProvidersEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewRunDtoRequestedProvidersEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return DevicePreviewRunDtoRequestedProvidersEnum.GMAIL;
        case r'OUTLOOK': return DevicePreviewRunDtoRequestedProvidersEnum.OUTLOOK;
        case r'YAHOO': return DevicePreviewRunDtoRequestedProvidersEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer] instance.
  static DevicePreviewRunDtoRequestedProvidersEnumTypeTransformer? _instance;
}



class DevicePreviewRunDtoImportedProvidersEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewRunDtoImportedProvidersEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GMAIL = DevicePreviewRunDtoImportedProvidersEnum._(r'GMAIL');
  static const OUTLOOK = DevicePreviewRunDtoImportedProvidersEnum._(r'OUTLOOK');
  static const YAHOO = DevicePreviewRunDtoImportedProvidersEnum._(r'YAHOO');

  /// List of all possible values in this [enum][DevicePreviewRunDtoImportedProvidersEnum].
  static const values = <DevicePreviewRunDtoImportedProvidersEnum>[
    GMAIL,
    OUTLOOK,
    YAHOO,
  ];

  static DevicePreviewRunDtoImportedProvidersEnum? fromJson(dynamic value) => DevicePreviewRunDtoImportedProvidersEnumTypeTransformer().decode(value);

  static List<DevicePreviewRunDtoImportedProvidersEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunDtoImportedProvidersEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunDtoImportedProvidersEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewRunDtoImportedProvidersEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewRunDtoImportedProvidersEnum].
class DevicePreviewRunDtoImportedProvidersEnumTypeTransformer {
  factory DevicePreviewRunDtoImportedProvidersEnumTypeTransformer() => _instance ??= const DevicePreviewRunDtoImportedProvidersEnumTypeTransformer._();

  const DevicePreviewRunDtoImportedProvidersEnumTypeTransformer._();

  String encode(DevicePreviewRunDtoImportedProvidersEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewRunDtoImportedProvidersEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewRunDtoImportedProvidersEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GMAIL': return DevicePreviewRunDtoImportedProvidersEnum.GMAIL;
        case r'OUTLOOK': return DevicePreviewRunDtoImportedProvidersEnum.OUTLOOK;
        case r'YAHOO': return DevicePreviewRunDtoImportedProvidersEnum.YAHOO;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewRunDtoImportedProvidersEnumTypeTransformer] instance.
  static DevicePreviewRunDtoImportedProvidersEnumTypeTransformer? _instance;
}


