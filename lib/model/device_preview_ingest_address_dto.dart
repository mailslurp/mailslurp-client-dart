//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewIngestAddressDto {
  /// Returns a new [DevicePreviewIngestAddressDto] instance.
  DevicePreviewIngestAddressDto({
    required this.sessionId,
    required this.emailAddress,
    required this.status,
    this.runId,
    this.sourceFrom,
    this.sourceTo = const [],
    this.sourceSubject,
    this.sourceMessageId,
    this.sourceSizeBytes,
    this.latestError,
    required this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String sessionId;

  String emailAddress;

  DevicePreviewIngestAddressDtoStatusEnum status;

  String? runId;

  String? sourceFrom;

  List<String>? sourceTo;

  String? sourceSubject;

  String? sourceMessageId;

  int? sourceSizeBytes;

  String? latestError;

  DateTime expiresAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewIngestAddressDto &&
     other.sessionId == sessionId &&
     other.emailAddress == emailAddress &&
     other.status == status &&
     other.runId == runId &&
     other.sourceFrom == sourceFrom &&
     other.sourceTo == sourceTo &&
     other.sourceSubject == sourceSubject &&
     other.sourceMessageId == sourceMessageId &&
     other.sourceSizeBytes == sourceSizeBytes &&
     other.latestError == latestError &&
     other.expiresAt == expiresAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionId.hashCode) +
    (emailAddress.hashCode) +
    (status.hashCode) +
    (runId == null ? 0 : runId!.hashCode) +
    (sourceFrom == null ? 0 : sourceFrom!.hashCode) +
    (sourceTo == null ? 0 : sourceTo!.hashCode) +
    (sourceSubject == null ? 0 : sourceSubject!.hashCode) +
    (sourceMessageId == null ? 0 : sourceMessageId!.hashCode) +
    (sourceSizeBytes == null ? 0 : sourceSizeBytes!.hashCode) +
    (latestError == null ? 0 : latestError!.hashCode) +
    (expiresAt.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewIngestAddressDto[sessionId=$sessionId, emailAddress=$emailAddress, status=$status, runId=$runId, sourceFrom=$sourceFrom, sourceTo=$sourceTo, sourceSubject=$sourceSubject, sourceMessageId=$sourceMessageId, sourceSizeBytes=$sourceSizeBytes, latestError=$latestError, expiresAt=$expiresAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sessionId'] = this.sessionId;
      json[r'emailAddress'] = this.emailAddress;
      json[r'status'] = this.status;
    if (this.runId != null) {
      json[r'runId'] = this.runId;
    } else {
      json[r'runId'] = null;
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
    if (this.latestError != null) {
      json[r'latestError'] = this.latestError;
    } else {
      json[r'latestError'] = null;
    }
      json[r'expiresAt'] = this.expiresAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewIngestAddressDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewIngestAddressDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewIngestAddressDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewIngestAddressDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewIngestAddressDto(
        sessionId: mapValueOfType<String>(json, r'sessionId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        status: DevicePreviewIngestAddressDtoStatusEnum.fromJson(json[r'status'])!,
        runId: mapValueOfType<String>(json, r'runId'),
        sourceFrom: mapValueOfType<String>(json, r'sourceFrom'),
        sourceTo: json[r'sourceTo'] is List
            ? (json[r'sourceTo'] as List).cast<String>()
            : const [],
        sourceSubject: mapValueOfType<String>(json, r'sourceSubject'),
        sourceMessageId: mapValueOfType<String>(json, r'sourceMessageId'),
        sourceSizeBytes: mapValueOfType<int>(json, r'sourceSizeBytes'),
        latestError: mapValueOfType<String>(json, r'latestError'),
        expiresAt: mapDateTime(json, r'expiresAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewIngestAddressDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewIngestAddressDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewIngestAddressDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewIngestAddressDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewIngestAddressDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewIngestAddressDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewIngestAddressDto-objects as value to a dart map
  static Map<String, List<DevicePreviewIngestAddressDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewIngestAddressDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewIngestAddressDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'sessionId',
    'emailAddress',
    'status',
    'expiresAt',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewIngestAddressDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewIngestAddressDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const WAITING_FOR_EMAIL = DevicePreviewIngestAddressDtoStatusEnum._(r'WAITING_FOR_EMAIL');
  static const RUN_CREATED = DevicePreviewIngestAddressDtoStatusEnum._(r'RUN_CREATED');
  static const EXPIRED = DevicePreviewIngestAddressDtoStatusEnum._(r'EXPIRED');
  static const FAILED = DevicePreviewIngestAddressDtoStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewIngestAddressDtoStatusEnum].
  static const values = <DevicePreviewIngestAddressDtoStatusEnum>[
    WAITING_FOR_EMAIL,
    RUN_CREATED,
    EXPIRED,
    FAILED,
  ];

  static DevicePreviewIngestAddressDtoStatusEnum? fromJson(dynamic value) => DevicePreviewIngestAddressDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewIngestAddressDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewIngestAddressDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewIngestAddressDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewIngestAddressDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewIngestAddressDtoStatusEnum].
class DevicePreviewIngestAddressDtoStatusEnumTypeTransformer {
  factory DevicePreviewIngestAddressDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewIngestAddressDtoStatusEnumTypeTransformer._();

  const DevicePreviewIngestAddressDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewIngestAddressDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewIngestAddressDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewIngestAddressDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WAITING_FOR_EMAIL': return DevicePreviewIngestAddressDtoStatusEnum.WAITING_FOR_EMAIL;
        case r'RUN_CREATED': return DevicePreviewIngestAddressDtoStatusEnum.RUN_CREATED;
        case r'EXPIRED': return DevicePreviewIngestAddressDtoStatusEnum.EXPIRED;
        case r'FAILED': return DevicePreviewIngestAddressDtoStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewIngestAddressDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewIngestAddressDtoStatusEnumTypeTransformer? _instance;
}


