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
    this.emailId,
    required this.sourceType,
    this.sourceInboxId,
    this.sourceAlias,
    this.sourceExternalId,
    this.sourceFrom,
    this.sourceTo = const [],
    this.sourceSubject,
    this.sourceMessageId,
    this.sourceSizeBytes,
    this.sourceStorageProvider,
    this.sourceStorageBucket,
    this.sourceStorageObjectKey,
    this.sourceStorageRegion,
    this.sourceStorageEndpoint,
    this.sourceStoragePublicBaseUrl,
    this.sourceRecipientEmailAddress,
    this.sourceRecipientLocalPart,
    this.sourceIngestDomainId,
    this.sourceProfileId,
    this.sourceProfileLocalPart,
    this.sourceProfileDisplayName,
    required this.status,
    this.primaryScreenshotId,
    this.requestedProviders = const [],
    this.importedProviders = const [],
    this.warnings = const [],
    this.providerMessageIds = const {},
    this.latestError,
    required this.targetCount,
    required this.screenshotCount,
    required this.createdAt,
    required this.updatedAt,
    this.thumbnail,
    this.qaBundle,
    this.folderId,
  });

  String runId;

  String? emailId;

  DevicePreviewRunDtoSourceTypeEnum sourceType;

  String? sourceInboxId;

  String? sourceAlias;

  String? sourceExternalId;

  String? sourceFrom;

  List<String>? sourceTo;

  String? sourceSubject;

  String? sourceMessageId;

  int? sourceSizeBytes;

  String? sourceStorageProvider;

  String? sourceStorageBucket;

  String? sourceStorageObjectKey;

  String? sourceStorageRegion;

  String? sourceStorageEndpoint;

  String? sourceStoragePublicBaseUrl;

  String? sourceRecipientEmailAddress;

  String? sourceRecipientLocalPart;

  String? sourceIngestDomainId;

  String? sourceProfileId;

  String? sourceProfileLocalPart;

  String? sourceProfileDisplayName;

  DevicePreviewRunDtoStatusEnum status;

  String? primaryScreenshotId;

  List<String>? requestedProviders;

  List<String>? importedProviders;

  List<String>? warnings;

  Map<String, String>? providerMessageIds;

  /// Latest run-level error, if the preview run was blocked or failed after creation.
  String? latestError;

  int targetCount;

  int screenshotCount;

  DateTime createdAt;

  DateTime updatedAt;

  DevicePreviewRunThumbnailDto? thumbnail;

  DevicePreviewQaBundleDto? qaBundle;

  String? folderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewRunDto &&
     other.runId == runId &&
     other.emailId == emailId &&
     other.sourceType == sourceType &&
     other.sourceInboxId == sourceInboxId &&
     other.sourceAlias == sourceAlias &&
     other.sourceExternalId == sourceExternalId &&
     other.sourceFrom == sourceFrom &&
     other.sourceTo == sourceTo &&
     other.sourceSubject == sourceSubject &&
     other.sourceMessageId == sourceMessageId &&
     other.sourceSizeBytes == sourceSizeBytes &&
     other.sourceStorageProvider == sourceStorageProvider &&
     other.sourceStorageBucket == sourceStorageBucket &&
     other.sourceStorageObjectKey == sourceStorageObjectKey &&
     other.sourceStorageRegion == sourceStorageRegion &&
     other.sourceStorageEndpoint == sourceStorageEndpoint &&
     other.sourceStoragePublicBaseUrl == sourceStoragePublicBaseUrl &&
     other.sourceRecipientEmailAddress == sourceRecipientEmailAddress &&
     other.sourceRecipientLocalPart == sourceRecipientLocalPart &&
     other.sourceIngestDomainId == sourceIngestDomainId &&
     other.sourceProfileId == sourceProfileId &&
     other.sourceProfileLocalPart == sourceProfileLocalPart &&
     other.sourceProfileDisplayName == sourceProfileDisplayName &&
     other.status == status &&
     other.primaryScreenshotId == primaryScreenshotId &&
     other.requestedProviders == requestedProviders &&
     other.importedProviders == importedProviders &&
     other.warnings == warnings &&
     other.providerMessageIds == providerMessageIds &&
     other.latestError == latestError &&
     other.targetCount == targetCount &&
     other.screenshotCount == screenshotCount &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.thumbnail == thumbnail &&
     other.qaBundle == qaBundle &&
     other.folderId == folderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (runId.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (sourceType.hashCode) +
    (sourceInboxId == null ? 0 : sourceInboxId!.hashCode) +
    (sourceAlias == null ? 0 : sourceAlias!.hashCode) +
    (sourceExternalId == null ? 0 : sourceExternalId!.hashCode) +
    (sourceFrom == null ? 0 : sourceFrom!.hashCode) +
    (sourceTo == null ? 0 : sourceTo!.hashCode) +
    (sourceSubject == null ? 0 : sourceSubject!.hashCode) +
    (sourceMessageId == null ? 0 : sourceMessageId!.hashCode) +
    (sourceSizeBytes == null ? 0 : sourceSizeBytes!.hashCode) +
    (sourceStorageProvider == null ? 0 : sourceStorageProvider!.hashCode) +
    (sourceStorageBucket == null ? 0 : sourceStorageBucket!.hashCode) +
    (sourceStorageObjectKey == null ? 0 : sourceStorageObjectKey!.hashCode) +
    (sourceStorageRegion == null ? 0 : sourceStorageRegion!.hashCode) +
    (sourceStorageEndpoint == null ? 0 : sourceStorageEndpoint!.hashCode) +
    (sourceStoragePublicBaseUrl == null ? 0 : sourceStoragePublicBaseUrl!.hashCode) +
    (sourceRecipientEmailAddress == null ? 0 : sourceRecipientEmailAddress!.hashCode) +
    (sourceRecipientLocalPart == null ? 0 : sourceRecipientLocalPart!.hashCode) +
    (sourceIngestDomainId == null ? 0 : sourceIngestDomainId!.hashCode) +
    (sourceProfileId == null ? 0 : sourceProfileId!.hashCode) +
    (sourceProfileLocalPart == null ? 0 : sourceProfileLocalPart!.hashCode) +
    (sourceProfileDisplayName == null ? 0 : sourceProfileDisplayName!.hashCode) +
    (status.hashCode) +
    (primaryScreenshotId == null ? 0 : primaryScreenshotId!.hashCode) +
    (requestedProviders == null ? 0 : requestedProviders!.hashCode) +
    (importedProviders == null ? 0 : importedProviders!.hashCode) +
    (warnings == null ? 0 : warnings!.hashCode) +
    (providerMessageIds == null ? 0 : providerMessageIds!.hashCode) +
    (latestError == null ? 0 : latestError!.hashCode) +
    (targetCount.hashCode) +
    (screenshotCount.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (thumbnail == null ? 0 : thumbnail!.hashCode) +
    (qaBundle == null ? 0 : qaBundle!.hashCode) +
    (folderId == null ? 0 : folderId!.hashCode);

  @override
  String toString() => 'DevicePreviewRunDto[runId=$runId, emailId=$emailId, sourceType=$sourceType, sourceInboxId=$sourceInboxId, sourceAlias=$sourceAlias, sourceExternalId=$sourceExternalId, sourceFrom=$sourceFrom, sourceTo=$sourceTo, sourceSubject=$sourceSubject, sourceMessageId=$sourceMessageId, sourceSizeBytes=$sourceSizeBytes, sourceStorageProvider=$sourceStorageProvider, sourceStorageBucket=$sourceStorageBucket, sourceStorageObjectKey=$sourceStorageObjectKey, sourceStorageRegion=$sourceStorageRegion, sourceStorageEndpoint=$sourceStorageEndpoint, sourceStoragePublicBaseUrl=$sourceStoragePublicBaseUrl, sourceRecipientEmailAddress=$sourceRecipientEmailAddress, sourceRecipientLocalPart=$sourceRecipientLocalPart, sourceIngestDomainId=$sourceIngestDomainId, sourceProfileId=$sourceProfileId, sourceProfileLocalPart=$sourceProfileLocalPart, sourceProfileDisplayName=$sourceProfileDisplayName, status=$status, primaryScreenshotId=$primaryScreenshotId, requestedProviders=$requestedProviders, importedProviders=$importedProviders, warnings=$warnings, providerMessageIds=$providerMessageIds, latestError=$latestError, targetCount=$targetCount, screenshotCount=$screenshotCount, createdAt=$createdAt, updatedAt=$updatedAt, thumbnail=$thumbnail, qaBundle=$qaBundle, folderId=$folderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'runId'] = this.runId;
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
      json[r'sourceType'] = this.sourceType;
    if (this.sourceInboxId != null) {
      json[r'sourceInboxId'] = this.sourceInboxId;
    } else {
      json[r'sourceInboxId'] = null;
    }
    if (this.sourceAlias != null) {
      json[r'sourceAlias'] = this.sourceAlias;
    } else {
      json[r'sourceAlias'] = null;
    }
    if (this.sourceExternalId != null) {
      json[r'sourceExternalId'] = this.sourceExternalId;
    } else {
      json[r'sourceExternalId'] = null;
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
    if (this.sourceSubject != null) {
      json[r'sourceSubject'] = this.sourceSubject;
    } else {
      json[r'sourceSubject'] = null;
    }
    if (this.sourceMessageId != null) {
      json[r'sourceMessageId'] = this.sourceMessageId;
    } else {
      json[r'sourceMessageId'] = null;
    }
    if (this.sourceSizeBytes != null) {
      json[r'sourceSizeBytes'] = this.sourceSizeBytes;
    } else {
      json[r'sourceSizeBytes'] = null;
    }
    if (this.sourceStorageProvider != null) {
      json[r'sourceStorageProvider'] = this.sourceStorageProvider;
    } else {
      json[r'sourceStorageProvider'] = null;
    }
    if (this.sourceStorageBucket != null) {
      json[r'sourceStorageBucket'] = this.sourceStorageBucket;
    } else {
      json[r'sourceStorageBucket'] = null;
    }
    if (this.sourceStorageObjectKey != null) {
      json[r'sourceStorageObjectKey'] = this.sourceStorageObjectKey;
    } else {
      json[r'sourceStorageObjectKey'] = null;
    }
    if (this.sourceStorageRegion != null) {
      json[r'sourceStorageRegion'] = this.sourceStorageRegion;
    } else {
      json[r'sourceStorageRegion'] = null;
    }
    if (this.sourceStorageEndpoint != null) {
      json[r'sourceStorageEndpoint'] = this.sourceStorageEndpoint;
    } else {
      json[r'sourceStorageEndpoint'] = null;
    }
    if (this.sourceStoragePublicBaseUrl != null) {
      json[r'sourceStoragePublicBaseUrl'] = this.sourceStoragePublicBaseUrl;
    } else {
      json[r'sourceStoragePublicBaseUrl'] = null;
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
    if (this.sourceIngestDomainId != null) {
      json[r'sourceIngestDomainId'] = this.sourceIngestDomainId;
    } else {
      json[r'sourceIngestDomainId'] = null;
    }
    if (this.sourceProfileId != null) {
      json[r'sourceProfileId'] = this.sourceProfileId;
    } else {
      json[r'sourceProfileId'] = null;
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
    if (this.requestedProviders != null) {
      json[r'requestedProviders'] = this.requestedProviders;
    } else {
      json[r'requestedProviders'] = null;
    }
    if (this.importedProviders != null) {
      json[r'importedProviders'] = this.importedProviders;
    } else {
      json[r'importedProviders'] = null;
    }
    if (this.warnings != null) {
      json[r'warnings'] = this.warnings;
    } else {
      json[r'warnings'] = null;
    }
    if (this.providerMessageIds != null) {
      json[r'providerMessageIds'] = this.providerMessageIds;
    } else {
      json[r'providerMessageIds'] = null;
    }
    if (this.latestError != null) {
      json[r'latestError'] = this.latestError;
    } else {
      json[r'latestError'] = null;
    }
      json[r'targetCount'] = this.targetCount;
      json[r'screenshotCount'] = this.screenshotCount;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.thumbnail != null) {
      json[r'thumbnail'] = this.thumbnail;
    } else {
      json[r'thumbnail'] = null;
    }
    if (this.qaBundle != null) {
      json[r'qaBundle'] = this.qaBundle;
    } else {
      json[r'qaBundle'] = null;
    }
    if (this.folderId != null) {
      json[r'folderId'] = this.folderId;
    } else {
      json[r'folderId'] = null;
    }
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
        emailId: mapValueOfType<String>(json, r'emailId'),
        sourceType: DevicePreviewRunDtoSourceTypeEnum.fromJson(json[r'sourceType'])!,
        sourceInboxId: mapValueOfType<String>(json, r'sourceInboxId'),
        sourceAlias: mapValueOfType<String>(json, r'sourceAlias'),
        sourceExternalId: mapValueOfType<String>(json, r'sourceExternalId'),
        sourceFrom: mapValueOfType<String>(json, r'sourceFrom'),
        sourceTo: json[r'sourceTo'] is List
            ? (json[r'sourceTo'] as List).cast<String>()
            : const [],
        sourceSubject: mapValueOfType<String>(json, r'sourceSubject'),
        sourceMessageId: mapValueOfType<String>(json, r'sourceMessageId'),
        sourceSizeBytes: mapValueOfType<int>(json, r'sourceSizeBytes'),
        sourceStorageProvider: mapValueOfType<String>(json, r'sourceStorageProvider'),
        sourceStorageBucket: mapValueOfType<String>(json, r'sourceStorageBucket'),
        sourceStorageObjectKey: mapValueOfType<String>(json, r'sourceStorageObjectKey'),
        sourceStorageRegion: mapValueOfType<String>(json, r'sourceStorageRegion'),
        sourceStorageEndpoint: mapValueOfType<String>(json, r'sourceStorageEndpoint'),
        sourceStoragePublicBaseUrl: mapValueOfType<String>(json, r'sourceStoragePublicBaseUrl'),
        sourceRecipientEmailAddress: mapValueOfType<String>(json, r'sourceRecipientEmailAddress'),
        sourceRecipientLocalPart: mapValueOfType<String>(json, r'sourceRecipientLocalPart'),
        sourceIngestDomainId: mapValueOfType<String>(json, r'sourceIngestDomainId'),
        sourceProfileId: mapValueOfType<String>(json, r'sourceProfileId'),
        sourceProfileLocalPart: mapValueOfType<String>(json, r'sourceProfileLocalPart'),
        sourceProfileDisplayName: mapValueOfType<String>(json, r'sourceProfileDisplayName'),
        status: DevicePreviewRunDtoStatusEnum.fromJson(json[r'status'])!,
        primaryScreenshotId: mapValueOfType<String>(json, r'primaryScreenshotId'),
        requestedProviders: json[r'requestedProviders'] is List
            ? (json[r'requestedProviders'] as List).cast<String>()
            : const [],
        importedProviders: json[r'importedProviders'] is List
            ? (json[r'importedProviders'] as List).cast<String>()
            : const [],
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        providerMessageIds: mapCastOfType<String, String>(json, r'providerMessageIds') ?? const {},
        latestError: mapValueOfType<String>(json, r'latestError'),
        targetCount: mapValueOfType<int>(json, r'targetCount')!,
        screenshotCount: mapValueOfType<int>(json, r'screenshotCount')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        thumbnail: DevicePreviewRunThumbnailDto.fromJson(json[r'thumbnail']),
        qaBundle: DevicePreviewQaBundleDto.fromJson(json[r'qaBundle']),
        folderId: mapValueOfType<String>(json, r'folderId'),
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
    'sourceType',
    'status',
    'targetCount',
    'screenshotCount',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewRunDtoSourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewRunDtoSourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const STORED_EMAIL = DevicePreviewRunDtoSourceTypeEnum._(r'STORED_EMAIL');
  static const RAW_UPLOAD = DevicePreviewRunDtoSourceTypeEnum._(r'RAW_UPLOAD');
  static const DEVICE_PREVIEW_INGEST = DevicePreviewRunDtoSourceTypeEnum._(r'DEVICE_PREVIEW_INGEST');
  static const PUBLIC_FREE_TEST = DevicePreviewRunDtoSourceTypeEnum._(r'PUBLIC_FREE_TEST');
  static const GUIDED_TOUR = DevicePreviewRunDtoSourceTypeEnum._(r'GUIDED_TOUR');

  /// List of all possible values in this [enum][DevicePreviewRunDtoSourceTypeEnum].
  static const values = <DevicePreviewRunDtoSourceTypeEnum>[
    STORED_EMAIL,
    RAW_UPLOAD,
    DEVICE_PREVIEW_INGEST,
    PUBLIC_FREE_TEST,
    GUIDED_TOUR,
  ];

  static DevicePreviewRunDtoSourceTypeEnum? fromJson(dynamic value) => DevicePreviewRunDtoSourceTypeEnumTypeTransformer().decode(value);

  static List<DevicePreviewRunDtoSourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewRunDtoSourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewRunDtoSourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewRunDtoSourceTypeEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewRunDtoSourceTypeEnum].
class DevicePreviewRunDtoSourceTypeEnumTypeTransformer {
  factory DevicePreviewRunDtoSourceTypeEnumTypeTransformer() => _instance ??= const DevicePreviewRunDtoSourceTypeEnumTypeTransformer._();

  const DevicePreviewRunDtoSourceTypeEnumTypeTransformer._();

  String encode(DevicePreviewRunDtoSourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewRunDtoSourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewRunDtoSourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'STORED_EMAIL': return DevicePreviewRunDtoSourceTypeEnum.STORED_EMAIL;
        case r'RAW_UPLOAD': return DevicePreviewRunDtoSourceTypeEnum.RAW_UPLOAD;
        case r'DEVICE_PREVIEW_INGEST': return DevicePreviewRunDtoSourceTypeEnum.DEVICE_PREVIEW_INGEST;
        case r'PUBLIC_FREE_TEST': return DevicePreviewRunDtoSourceTypeEnum.PUBLIC_FREE_TEST;
        case r'GUIDED_TOUR': return DevicePreviewRunDtoSourceTypeEnum.GUIDED_TOUR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewRunDtoSourceTypeEnumTypeTransformer] instance.
  static DevicePreviewRunDtoSourceTypeEnumTypeTransformer? _instance;
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


