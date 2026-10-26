//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewSharedRunDto {
  /// Returns a new [DevicePreviewSharedRunDto] instance.
  DevicePreviewSharedRunDto({
    required this.runId,
    required this.sourceType,
    this.sourceAlias,
    this.sourceSubject,
    this.sourceFrom,
    this.sourceTo = const [],
    this.sourceRecipientEmailAddress,
    this.sourceRecipientLocalPart,
    this.sourceProfileLocalPart,
    this.sourceProfileDisplayName,
    required this.status,
    this.primaryScreenshotId,
    required this.targetCount,
    required this.screenshotCount,
    required this.createdAt,
    required this.updatedAt,
  });

  String runId;

  DevicePreviewSharedRunDtoSourceTypeEnum sourceType;

  String? sourceAlias;

  String? sourceSubject;

  String? sourceFrom;

  List<String>? sourceTo;

  String? sourceRecipientEmailAddress;

  String? sourceRecipientLocalPart;

  String? sourceProfileLocalPart;

  String? sourceProfileDisplayName;

  DevicePreviewSharedRunDtoStatusEnum status;

  String? primaryScreenshotId;

  int targetCount;

  int screenshotCount;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewSharedRunDto &&
     other.runId == runId &&
     other.sourceType == sourceType &&
     other.sourceAlias == sourceAlias &&
     other.sourceSubject == sourceSubject &&
     other.sourceFrom == sourceFrom &&
     other.sourceTo == sourceTo &&
     other.sourceRecipientEmailAddress == sourceRecipientEmailAddress &&
     other.sourceRecipientLocalPart == sourceRecipientLocalPart &&
     other.sourceProfileLocalPart == sourceProfileLocalPart &&
     other.sourceProfileDisplayName == sourceProfileDisplayName &&
     other.status == status &&
     other.primaryScreenshotId == primaryScreenshotId &&
     other.targetCount == targetCount &&
     other.screenshotCount == screenshotCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId.hashCode) +
    (sourceType.hashCode) +
    (sourceAlias == null ? 0 : sourceAlias!.hashCode) +
    (sourceSubject == null ? 0 : sourceSubject!.hashCode) +
    (sourceFrom == null ? 0 : sourceFrom!.hashCode) +
    (sourceTo == null ? 0 : sourceTo!.hashCode) +
    (sourceRecipientEmailAddress == null ? 0 : sourceRecipientEmailAddress!.hashCode) +
    (sourceRecipientLocalPart == null ? 0 : sourceRecipientLocalPart!.hashCode) +
    (sourceProfileLocalPart == null ? 0 : sourceProfileLocalPart!.hashCode) +
    (sourceProfileDisplayName == null ? 0 : sourceProfileDisplayName!.hashCode) +
    (status.hashCode) +
    (primaryScreenshotId == null ? 0 : primaryScreenshotId!.hashCode) +
    (targetCount.hashCode) +
    (screenshotCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewSharedRunDto[runId=$runId, sourceType=$sourceType, sourceAlias=$sourceAlias, sourceSubject=$sourceSubject, sourceFrom=$sourceFrom, sourceTo=$sourceTo, sourceRecipientEmailAddress=$sourceRecipientEmailAddress, sourceRecipientLocalPart=$sourceRecipientLocalPart, sourceProfileLocalPart=$sourceProfileLocalPart, sourceProfileDisplayName=$sourceProfileDisplayName, status=$status, primaryScreenshotId=$primaryScreenshotId, targetCount=$targetCount, screenshotCount=$screenshotCount, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runId'] = this.runId;
      json[r'sourceType'] = this.sourceType;
    if (this.sourceAlias != null) {
      json[r'sourceAlias'] = this.sourceAlias;
    } else {
      json[r'sourceAlias'] = null;
    }
    if (this.sourceSubject != null) {
      json[r'sourceSubject'] = this.sourceSubject;
    } else {
      json[r'sourceSubject'] = null;
    }
    if (this.sourceFrom != null) {
      json[r'sourceFrom'] = this.sourceFrom;
    } else {
      json[r'sourceFrom'] = null;
    }
    if (this.sourceTo != null) {
      json[r'sourceTo'] = this.sourceTo;
    } else {
      json[r'sourceTo'] = null;
    }
    if (this.sourceRecipientEmailAddress != null) {
      json[r'sourceRecipientEmailAddress'] = this.sourceRecipientEmailAddress;
    } else {
      json[r'sourceRecipientEmailAddress'] = null;
    }
    if (this.sourceRecipientLocalPart != null) {
      json[r'sourceRecipientLocalPart'] = this.sourceRecipientLocalPart;
    } else {
      json[r'sourceRecipientLocalPart'] = null;
    }
    if (this.sourceProfileLocalPart != null) {
      json[r'sourceProfileLocalPart'] = this.sourceProfileLocalPart;
    } else {
      json[r'sourceProfileLocalPart'] = null;
    }
    if (this.sourceProfileDisplayName != null) {
      json[r'sourceProfileDisplayName'] = this.sourceProfileDisplayName;
    } else {
      json[r'sourceProfileDisplayName'] = null;
    }
      json[r'status'] = this.status;
    if (this.primaryScreenshotId != null) {
      json[r'primaryScreenshotId'] = this.primaryScreenshotId;
    } else {
      json[r'primaryScreenshotId'] = null;
    }
      json[r'targetCount'] = this.targetCount;
      json[r'screenshotCount'] = this.screenshotCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewSharedRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewSharedRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewSharedRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewSharedRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewSharedRunDto(
        runId: mapValueOfType<String>(json, r'runId')!,
        sourceType: DevicePreviewSharedRunDtoSourceTypeEnum.fromJson(json[r'sourceType'])!,
        sourceAlias: mapValueOfType<String>(json, r'sourceAlias'),
        sourceSubject: mapValueOfType<String>(json, r'sourceSubject'),
        sourceFrom: mapValueOfType<String>(json, r'sourceFrom'),
        sourceTo: json[r'sourceTo'] is List
            ? (json[r'sourceTo'] as List).cast<String>()
            : const [],
        sourceRecipientEmailAddress: mapValueOfType<String>(json, r'sourceRecipientEmailAddress'),
        sourceRecipientLocalPart: mapValueOfType<String>(json, r'sourceRecipientLocalPart'),
        sourceProfileLocalPart: mapValueOfType<String>(json, r'sourceProfileLocalPart'),
        sourceProfileDisplayName: mapValueOfType<String>(json, r'sourceProfileDisplayName'),
        status: DevicePreviewSharedRunDtoStatusEnum.fromJson(json[r'status'])!,
        primaryScreenshotId: mapValueOfType<String>(json, r'primaryScreenshotId'),
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        screenshotCount: mapValueOfType<int>(json, r'screenshotCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewSharedRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewSharedRunDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewSharedRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewSharedRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewSharedRunDto-objects as value to a dart map
  static Map<String, List<DevicePreviewSharedRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewSharedRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewSharedRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'runId',
    'sourceType',
    'status',
    'targetCount',
    'screenshotCount',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewSharedRunDtoSourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewSharedRunDtoSourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STORED_EMAIL = DevicePreviewSharedRunDtoSourceTypeEnum._(r'STORED_EMAIL');
  static const RAW_UPLOAD = DevicePreviewSharedRunDtoSourceTypeEnum._(r'RAW_UPLOAD');
  static const DEVICE_PREVIEW_INGEST = DevicePreviewSharedRunDtoSourceTypeEnum._(r'DEVICE_PREVIEW_INGEST');
  static const PUBLIC_FREE_TEST = DevicePreviewSharedRunDtoSourceTypeEnum._(r'PUBLIC_FREE_TEST');
  static const GUIDED_TOUR = DevicePreviewSharedRunDtoSourceTypeEnum._(r'GUIDED_TOUR');

  /// List of all possible values in this [enum][DevicePreviewSharedRunDtoSourceTypeEnum].
  static const values = <DevicePreviewSharedRunDtoSourceTypeEnum>[
    STORED_EMAIL,
    RAW_UPLOAD,
    DEVICE_PREVIEW_INGEST,
    PUBLIC_FREE_TEST,
    GUIDED_TOUR,
  ];

  static DevicePreviewSharedRunDtoSourceTypeEnum? fromJson(dynamic value) => DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer().decode(value);

  static List<DevicePreviewSharedRunDtoSourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedRunDtoSourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedRunDtoSourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewSharedRunDtoSourceTypeEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewSharedRunDtoSourceTypeEnum].
class DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer {
  factory DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer() => _instance ??= const DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer._();

  const DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer._();

  String encode(DevicePreviewSharedRunDtoSourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewSharedRunDtoSourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewSharedRunDtoSourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STORED_EMAIL': return DevicePreviewSharedRunDtoSourceTypeEnum.STORED_EMAIL;
        case r'RAW_UPLOAD': return DevicePreviewSharedRunDtoSourceTypeEnum.RAW_UPLOAD;
        case r'DEVICE_PREVIEW_INGEST': return DevicePreviewSharedRunDtoSourceTypeEnum.DEVICE_PREVIEW_INGEST;
        case r'PUBLIC_FREE_TEST': return DevicePreviewSharedRunDtoSourceTypeEnum.PUBLIC_FREE_TEST;
        case r'GUIDED_TOUR': return DevicePreviewSharedRunDtoSourceTypeEnum.GUIDED_TOUR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer] instance.
  static DevicePreviewSharedRunDtoSourceTypeEnumTypeTransformer? _instance;
}



class DevicePreviewSharedRunDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewSharedRunDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATED = DevicePreviewSharedRunDtoStatusEnum._(r'CREATED');
  static const AWAITING_ARRIVAL = DevicePreviewSharedRunDtoStatusEnum._(r'AWAITING_ARRIVAL');
  static const CAPTURING = DevicePreviewSharedRunDtoStatusEnum._(r'CAPTURING');
  static const PARTIAL_COMPLETE = DevicePreviewSharedRunDtoStatusEnum._(r'PARTIAL_COMPLETE');
  static const COMPLETE = DevicePreviewSharedRunDtoStatusEnum._(r'COMPLETE');
  static const FAILED = DevicePreviewSharedRunDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewSharedRunDtoStatusEnum].
  static const values = <DevicePreviewSharedRunDtoStatusEnum>[
    CREATED,
    AWAITING_ARRIVAL,
    CAPTURING,
    PARTIAL_COMPLETE,
    COMPLETE,
    FAILED,
  ];

  static DevicePreviewSharedRunDtoStatusEnum? fromJson(dynamic value) => DevicePreviewSharedRunDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewSharedRunDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedRunDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedRunDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewSharedRunDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewSharedRunDtoStatusEnum].
class DevicePreviewSharedRunDtoStatusEnumTypeTransformer {
  factory DevicePreviewSharedRunDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewSharedRunDtoStatusEnumTypeTransformer._();

  const DevicePreviewSharedRunDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewSharedRunDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewSharedRunDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewSharedRunDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATED': return DevicePreviewSharedRunDtoStatusEnum.CREATED;
        case r'AWAITING_ARRIVAL': return DevicePreviewSharedRunDtoStatusEnum.AWAITING_ARRIVAL;
        case r'CAPTURING': return DevicePreviewSharedRunDtoStatusEnum.CAPTURING;
        case r'PARTIAL_COMPLETE': return DevicePreviewSharedRunDtoStatusEnum.PARTIAL_COMPLETE;
        case r'COMPLETE': return DevicePreviewSharedRunDtoStatusEnum.COMPLETE;
        case r'FAILED': return DevicePreviewSharedRunDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewSharedRunDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewSharedRunDtoStatusEnumTypeTransformer? _instance;
}


