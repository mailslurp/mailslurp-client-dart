//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewQaBundleDto {
  /// Returns a new [DevicePreviewQaBundleDto] instance.
  DevicePreviewQaBundleDto({
    required this.id,
    required this.runId,
    required this.userId,
    required this.requestedEmailAudit,
    required this.requestedDomainMonitor,
    required this.status,
    required this.emailAuditStatus,
    required this.domainMonitorStatus,
    this.emailAuditId,
    this.domainMonitorId,
    this.domainMonitorRunId,
    this.senderDomain,
    this.emailAuditMessage,
    this.domainMonitorMessage,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String runId;

  String userId;

  bool requestedEmailAudit;

  bool requestedDomainMonitor;

  DevicePreviewQaBundleDtoStatusEnum status;

  DevicePreviewQaBundleDtoEmailAuditStatusEnum emailAuditStatus;

  DevicePreviewQaBundleDtoDomainMonitorStatusEnum domainMonitorStatus;

  String? emailAuditId;

  String? domainMonitorId;

  String? domainMonitorRunId;

  String? senderDomain;

  String? emailAuditMessage;

  String? domainMonitorMessage;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewQaBundleDto &&
     other.id == id &&
     other.runId == runId &&
     other.userId == userId &&
     other.requestedEmailAudit == requestedEmailAudit &&
     other.requestedDomainMonitor == requestedDomainMonitor &&
     other.status == status &&
     other.emailAuditStatus == emailAuditStatus &&
     other.domainMonitorStatus == domainMonitorStatus &&
     other.emailAuditId == emailAuditId &&
     other.domainMonitorId == domainMonitorId &&
     other.domainMonitorRunId == domainMonitorRunId &&
     other.senderDomain == senderDomain &&
     other.emailAuditMessage == emailAuditMessage &&
     other.domainMonitorMessage == domainMonitorMessage &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (runId.hashCode) +
    (userId.hashCode) +
    (requestedEmailAudit.hashCode) +
    (requestedDomainMonitor.hashCode) +
    (status.hashCode) +
    (emailAuditStatus.hashCode) +
    (domainMonitorStatus.hashCode) +
    (emailAuditId == null ? 0 : emailAuditId!.hashCode) +
    (domainMonitorId == null ? 0 : domainMonitorId!.hashCode) +
    (domainMonitorRunId == null ? 0 : domainMonitorRunId!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (emailAuditMessage == null ? 0 : emailAuditMessage!.hashCode) +
    (domainMonitorMessage == null ? 0 : domainMonitorMessage!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewQaBundleDto[id=$id, runId=$runId, userId=$userId, requestedEmailAudit=$requestedEmailAudit, requestedDomainMonitor=$requestedDomainMonitor, status=$status, emailAuditStatus=$emailAuditStatus, domainMonitorStatus=$domainMonitorStatus, emailAuditId=$emailAuditId, domainMonitorId=$domainMonitorId, domainMonitorRunId=$domainMonitorRunId, senderDomain=$senderDomain, emailAuditMessage=$emailAuditMessage, domainMonitorMessage=$domainMonitorMessage, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'runId'] = this.runId;
      json[r'userId'] = this.userId;
      json[r'requestedEmailAudit'] = this.requestedEmailAudit;
      json[r'requestedDomainMonitor'] = this.requestedDomainMonitor;
      json[r'status'] = this.status;
      json[r'emailAuditStatus'] = this.emailAuditStatus;
      json[r'domainMonitorStatus'] = this.domainMonitorStatus;
    if (this.emailAuditId != null) {
      json[r'emailAuditId'] = this.emailAuditId;
    } else {
      json[r'emailAuditId'] = null;
    }
    if (this.domainMonitorId != null) {
      json[r'domainMonitorId'] = this.domainMonitorId;
    } else {
      json[r'domainMonitorId'] = null;
    }
    if (this.domainMonitorRunId != null) {
      json[r'domainMonitorRunId'] = this.domainMonitorRunId;
    } else {
      json[r'domainMonitorRunId'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.emailAuditMessage != null) {
      json[r'emailAuditMessage'] = this.emailAuditMessage;
    } else {
      json[r'emailAuditMessage'] = null;
    }
    if (this.domainMonitorMessage != null) {
      json[r'domainMonitorMessage'] = this.domainMonitorMessage;
    } else {
      json[r'domainMonitorMessage'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewQaBundleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewQaBundleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewQaBundleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewQaBundleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewQaBundleDto(
        id: mapValueOfType<String>(json, r'id')!,
        runId: mapValueOfType<String>(json, r'runId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        requestedEmailAudit: mapValueOfType<bool>(json, r'requestedEmailAudit')!,
        requestedDomainMonitor: mapValueOfType<bool>(json, r'requestedDomainMonitor')!,
        status: DevicePreviewQaBundleDtoStatusEnum.fromJson(json[r'status'])!,
        emailAuditStatus: DevicePreviewQaBundleDtoEmailAuditStatusEnum.fromJson(json[r'emailAuditStatus'])!,
        domainMonitorStatus: DevicePreviewQaBundleDtoDomainMonitorStatusEnum.fromJson(json[r'domainMonitorStatus'])!,
        emailAuditId: mapValueOfType<String>(json, r'emailAuditId'),
        domainMonitorId: mapValueOfType<String>(json, r'domainMonitorId'),
        domainMonitorRunId: mapValueOfType<String>(json, r'domainMonitorRunId'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        emailAuditMessage: mapValueOfType<String>(json, r'emailAuditMessage'),
        domainMonitorMessage: mapValueOfType<String>(json, r'domainMonitorMessage'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewQaBundleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewQaBundleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewQaBundleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewQaBundleDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewQaBundleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewQaBundleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewQaBundleDto-objects as value to a dart map
  static Map<String, List<DevicePreviewQaBundleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewQaBundleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewQaBundleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'runId',
    'userId',
    'requestedEmailAudit',
    'requestedDomainMonitor',
    'status',
    'emailAuditStatus',
    'domainMonitorStatus',
    'createdAt',
    'updatedAt',
  };
}


class DevicePreviewQaBundleDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewQaBundleDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PENDING = DevicePreviewQaBundleDtoStatusEnum._(r'PENDING');
  static const COMPLETE = DevicePreviewQaBundleDtoStatusEnum._(r'COMPLETE');
  static const COMPLETE_WITH_SKIPS = DevicePreviewQaBundleDtoStatusEnum._(r'COMPLETE_WITH_SKIPS');
  static const COMPLETE_WITH_ERRORS = DevicePreviewQaBundleDtoStatusEnum._(r'COMPLETE_WITH_ERRORS');

  /// List of all possible values in this [enum][DevicePreviewQaBundleDtoStatusEnum].
  static const values = <DevicePreviewQaBundleDtoStatusEnum>[
    PENDING,
    COMPLETE,
    COMPLETE_WITH_SKIPS,
    COMPLETE_WITH_ERRORS,
  ];

  static DevicePreviewQaBundleDtoStatusEnum? fromJson(dynamic value) => DevicePreviewQaBundleDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewQaBundleDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewQaBundleDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewQaBundleDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewQaBundleDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewQaBundleDtoStatusEnum].
class DevicePreviewQaBundleDtoStatusEnumTypeTransformer {
  factory DevicePreviewQaBundleDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewQaBundleDtoStatusEnumTypeTransformer._();

  const DevicePreviewQaBundleDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewQaBundleDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewQaBundleDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewQaBundleDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PENDING': return DevicePreviewQaBundleDtoStatusEnum.PENDING;
        case r'COMPLETE': return DevicePreviewQaBundleDtoStatusEnum.COMPLETE;
        case r'COMPLETE_WITH_SKIPS': return DevicePreviewQaBundleDtoStatusEnum.COMPLETE_WITH_SKIPS;
        case r'COMPLETE_WITH_ERRORS': return DevicePreviewQaBundleDtoStatusEnum.COMPLETE_WITH_ERRORS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewQaBundleDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewQaBundleDtoStatusEnumTypeTransformer? _instance;
}



class DevicePreviewQaBundleDtoEmailAuditStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewQaBundleDtoEmailAuditStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_REQUESTED = DevicePreviewQaBundleDtoEmailAuditStatusEnum._(r'NOT_REQUESTED');
  static const PENDING = DevicePreviewQaBundleDtoEmailAuditStatusEnum._(r'PENDING');
  static const COMPLETE = DevicePreviewQaBundleDtoEmailAuditStatusEnum._(r'COMPLETE');
  static const SKIPPED = DevicePreviewQaBundleDtoEmailAuditStatusEnum._(r'SKIPPED');
  static const FAILED = DevicePreviewQaBundleDtoEmailAuditStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewQaBundleDtoEmailAuditStatusEnum].
  static const values = <DevicePreviewQaBundleDtoEmailAuditStatusEnum>[
    NOT_REQUESTED,
    PENDING,
    COMPLETE,
    SKIPPED,
    FAILED,
  ];

  static DevicePreviewQaBundleDtoEmailAuditStatusEnum? fromJson(dynamic value) => DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewQaBundleDtoEmailAuditStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewQaBundleDtoEmailAuditStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewQaBundleDtoEmailAuditStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewQaBundleDtoEmailAuditStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewQaBundleDtoEmailAuditStatusEnum].
class DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer {
  factory DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer() => _instance ??= const DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer._();

  const DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer._();

  String encode(DevicePreviewQaBundleDtoEmailAuditStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewQaBundleDtoEmailAuditStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewQaBundleDtoEmailAuditStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_REQUESTED': return DevicePreviewQaBundleDtoEmailAuditStatusEnum.NOT_REQUESTED;
        case r'PENDING': return DevicePreviewQaBundleDtoEmailAuditStatusEnum.PENDING;
        case r'COMPLETE': return DevicePreviewQaBundleDtoEmailAuditStatusEnum.COMPLETE;
        case r'SKIPPED': return DevicePreviewQaBundleDtoEmailAuditStatusEnum.SKIPPED;
        case r'FAILED': return DevicePreviewQaBundleDtoEmailAuditStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer] instance.
  static DevicePreviewQaBundleDtoEmailAuditStatusEnumTypeTransformer? _instance;
}



class DevicePreviewQaBundleDtoDomainMonitorStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NOT_REQUESTED = DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(r'NOT_REQUESTED');
  static const PENDING = DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(r'PENDING');
  static const COMPLETE = DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(r'COMPLETE');
  static const SKIPPED = DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(r'SKIPPED');
  static const FAILED = DevicePreviewQaBundleDtoDomainMonitorStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][DevicePreviewQaBundleDtoDomainMonitorStatusEnum].
  static const values = <DevicePreviewQaBundleDtoDomainMonitorStatusEnum>[
    NOT_REQUESTED,
    PENDING,
    COMPLETE,
    SKIPPED,
    FAILED,
  ];

  static DevicePreviewQaBundleDtoDomainMonitorStatusEnum? fromJson(dynamic value) => DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewQaBundleDtoDomainMonitorStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewQaBundleDtoDomainMonitorStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewQaBundleDtoDomainMonitorStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewQaBundleDtoDomainMonitorStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewQaBundleDtoDomainMonitorStatusEnum].
class DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer {
  factory DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer() => _instance ??= const DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer._();

  const DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer._();

  String encode(DevicePreviewQaBundleDtoDomainMonitorStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewQaBundleDtoDomainMonitorStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewQaBundleDtoDomainMonitorStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NOT_REQUESTED': return DevicePreviewQaBundleDtoDomainMonitorStatusEnum.NOT_REQUESTED;
        case r'PENDING': return DevicePreviewQaBundleDtoDomainMonitorStatusEnum.PENDING;
        case r'COMPLETE': return DevicePreviewQaBundleDtoDomainMonitorStatusEnum.COMPLETE;
        case r'SKIPPED': return DevicePreviewQaBundleDtoDomainMonitorStatusEnum.SKIPPED;
        case r'FAILED': return DevicePreviewQaBundleDtoDomainMonitorStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer] instance.
  static DevicePreviewQaBundleDtoDomainMonitorStatusEnumTypeTransformer? _instance;
}


