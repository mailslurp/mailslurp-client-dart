//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainHealthEventDto {
  /// Returns a new [DomainHealthEventDto] instance.
  DomainHealthEventDto({
    required this.id,
    this.domainId,
    this.domainName,
    this.accountRegion,
    required this.eventType,
    required this.status,
    required this.severity,
    required this.title,
    required this.message,
    this.recommendation,
    required this.eventTime,
    required this.createdAt,
  });

  String id;

  String? domainId;

  String? domainName;

  DomainHealthEventDtoAccountRegionEnum? accountRegion;

  DomainHealthEventDtoEventTypeEnum eventType;

  DomainHealthEventDtoStatusEnum status;

  DomainHealthEventDtoSeverityEnum severity;

  String title;

  String message;

  String? recommendation;

  DateTime eventTime;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainHealthEventDto &&
     other.id == id &&
     other.domainId == domainId &&
     other.domainName == domainName &&
     other.accountRegion == accountRegion &&
     other.eventType == eventType &&
     other.status == status &&
     other.severity == severity &&
     other.title == title &&
     other.message == message &&
     other.recommendation == recommendation &&
     other.eventTime == eventTime &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (domainName == null ? 0 : domainName!.hashCode) +
    (accountRegion == null ? 0 : accountRegion!.hashCode) +
    (eventType.hashCode) +
    (status.hashCode) +
    (severity.hashCode) +
    (title.hashCode) +
    (message.hashCode) +
    (recommendation == null ? 0 : recommendation!.hashCode) +
    (eventTime.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'DomainHealthEventDto[id=$id, domainId=$domainId, domainName=$domainName, accountRegion=$accountRegion, eventType=$eventType, status=$status, severity=$severity, title=$title, message=$message, recommendation=$recommendation, eventTime=$eventTime, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
    if (this.domainName != null) {
      json[r'domainName'] = this.domainName;
    } else {
      json[r'domainName'] = null;
    }
    if (this.accountRegion != null) {
      json[r'accountRegion'] = this.accountRegion;
    } else {
      json[r'accountRegion'] = null;
    }
      json[r'eventType'] = this.eventType;
      json[r'status'] = this.status;
      json[r'severity'] = this.severity;
      json[r'title'] = this.title;
      json[r'message'] = this.message;
    if (this.recommendation != null) {
      json[r'recommendation'] = this.recommendation;
    } else {
      json[r'recommendation'] = null;
    }
      json[r'eventTime'] = this.eventTime.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainHealthEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainHealthEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainHealthEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainHealthEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainHealthEventDto(
        id: mapValueOfType<String>(json, r'id')!,
        domainId: mapValueOfType<String>(json, r'domainId'),
        domainName: mapValueOfType<String>(json, r'domainName'),
        accountRegion: DomainHealthEventDtoAccountRegionEnum.fromJson(json[r'accountRegion']),
        eventType: DomainHealthEventDtoEventTypeEnum.fromJson(json[r'eventType'])!,
        status: DomainHealthEventDtoStatusEnum.fromJson(json[r'status'])!,
        severity: DomainHealthEventDtoSeverityEnum.fromJson(json[r'severity'])!,
        title: mapValueOfType<String>(json, r'title')!,
        message: mapValueOfType<String>(json, r'message')!,
        recommendation: mapValueOfType<String>(json, r'recommendation'),
        eventTime: mapDateTime(json, r'eventTime', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<DomainHealthEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainHealthEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainHealthEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainHealthEventDto> mapFromJson(dynamic json) {
    final map = <String, DomainHealthEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainHealthEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainHealthEventDto-objects as value to a dart map
  static Map<String, List<DomainHealthEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainHealthEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainHealthEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'eventType',
    'status',
    'severity',
    'title',
    'message',
    'eventTime',
    'createdAt',
  };
}


class DomainHealthEventDtoAccountRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainHealthEventDtoAccountRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uSWEST2ACCOUNTSTAGING = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_STAGING');
  static const uSEAST1ACCOUNTSTAGING = DomainHealthEventDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_STAGING');
  static const eUWEST1ACCOUNTSTAGING = DomainHealthEventDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_STAGING');
  static const uSWEST2ACCOUNTSES1 = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_1');
  static const uSEAST1ACCOUNTSES1 = DomainHealthEventDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_SES_1');
  static const eUWEST1ACCOUNTSES1 = DomainHealthEventDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_1');
  static const uSWEST2ACCOUNTSES2 = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_2');
  static const eUWEST1ACCOUNTSES2 = DomainHealthEventDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_2');
  static const uSWEST2ACCOUNTSES3 = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_3');
  static const uSWEST2ACCOUNTBYTEWISE = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_BYTEWISE');
  static const eUWEST1ACCOUNTBYTEWISE = DomainHealthEventDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_BYTEWISE');
  static const uSWEST2 = DomainHealthEventDtoAccountRegionEnum._(r'US_WEST_2');
  static const eUWEST1 = DomainHealthEventDtoAccountRegionEnum._(r'EU_WEST_1');
  static const uSEAST1 = DomainHealthEventDtoAccountRegionEnum._(r'US_EAST_1');

  /// List of all possible values in this [enum][DomainHealthEventDtoAccountRegionEnum].
  static const values = <DomainHealthEventDtoAccountRegionEnum>[
    uSWEST2ACCOUNTSTAGING,
    uSEAST1ACCOUNTSTAGING,
    eUWEST1ACCOUNTSTAGING,
    uSWEST2ACCOUNTSES1,
    uSEAST1ACCOUNTSES1,
    eUWEST1ACCOUNTSES1,
    uSWEST2ACCOUNTSES2,
    eUWEST1ACCOUNTSES2,
    uSWEST2ACCOUNTSES3,
    uSWEST2ACCOUNTBYTEWISE,
    eUWEST1ACCOUNTBYTEWISE,
    uSWEST2,
    eUWEST1,
    uSEAST1,
  ];

  static DomainHealthEventDtoAccountRegionEnum? fromJson(dynamic value) => DomainHealthEventDtoAccountRegionEnumTypeTransformer().decode(value);

  static List<DomainHealthEventDtoAccountRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainHealthEventDtoAccountRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainHealthEventDtoAccountRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainHealthEventDtoAccountRegionEnum] to String,
/// and [decode] dynamic data back to [DomainHealthEventDtoAccountRegionEnum].
class DomainHealthEventDtoAccountRegionEnumTypeTransformer {
  factory DomainHealthEventDtoAccountRegionEnumTypeTransformer() => _instance ??= const DomainHealthEventDtoAccountRegionEnumTypeTransformer._();

  const DomainHealthEventDtoAccountRegionEnumTypeTransformer._();

  String encode(DomainHealthEventDtoAccountRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainHealthEventDtoAccountRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainHealthEventDtoAccountRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US_WEST_2_ACCOUNT_STAGING': return DomainHealthEventDtoAccountRegionEnum.uSWEST2ACCOUNTSTAGING;
        case r'US_EAST_1_ACCOUNT_STAGING': return DomainHealthEventDtoAccountRegionEnum.uSEAST1ACCOUNTSTAGING;
        case r'EU_WEST_1_ACCOUNT_STAGING': return DomainHealthEventDtoAccountRegionEnum.eUWEST1ACCOUNTSTAGING;
        case r'US_WEST_2_ACCOUNT_SES_1': return DomainHealthEventDtoAccountRegionEnum.uSWEST2ACCOUNTSES1;
        case r'US_EAST_1_ACCOUNT_SES_1': return DomainHealthEventDtoAccountRegionEnum.uSEAST1ACCOUNTSES1;
        case r'EU_WEST_1_ACCOUNT_SES_1': return DomainHealthEventDtoAccountRegionEnum.eUWEST1ACCOUNTSES1;
        case r'US_WEST_2_ACCOUNT_SES_2': return DomainHealthEventDtoAccountRegionEnum.uSWEST2ACCOUNTSES2;
        case r'EU_WEST_1_ACCOUNT_SES_2': return DomainHealthEventDtoAccountRegionEnum.eUWEST1ACCOUNTSES2;
        case r'US_WEST_2_ACCOUNT_SES_3': return DomainHealthEventDtoAccountRegionEnum.uSWEST2ACCOUNTSES3;
        case r'US_WEST_2_ACCOUNT_BYTEWISE': return DomainHealthEventDtoAccountRegionEnum.uSWEST2ACCOUNTBYTEWISE;
        case r'EU_WEST_1_ACCOUNT_BYTEWISE': return DomainHealthEventDtoAccountRegionEnum.eUWEST1ACCOUNTBYTEWISE;
        case r'US_WEST_2': return DomainHealthEventDtoAccountRegionEnum.uSWEST2;
        case r'EU_WEST_1': return DomainHealthEventDtoAccountRegionEnum.eUWEST1;
        case r'US_EAST_1': return DomainHealthEventDtoAccountRegionEnum.uSEAST1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainHealthEventDtoAccountRegionEnumTypeTransformer] instance.
  static DomainHealthEventDtoAccountRegionEnumTypeTransformer? _instance;
}



class DomainHealthEventDtoEventTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainHealthEventDtoEventTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DKIM_SETUP_REVOKED = DomainHealthEventDtoEventTypeEnum._(r'DKIM_SETUP_REVOKED');
  static const DKIM_RECORDS_MISSING = DomainHealthEventDtoEventTypeEnum._(r'DKIM_RECORDS_MISSING');
  static const DKIM_VERIFICATION_FAILED = DomainHealthEventDtoEventTypeEnum._(r'DKIM_VERIFICATION_FAILED');
  static const DMARC_RECORD_ISSUE = DomainHealthEventDtoEventTypeEnum._(r'DMARC_RECORD_ISSUE');
  static const SPF_RECORD_ISSUE = DomainHealthEventDtoEventTypeEnum._(r'SPF_RECORD_ISSUE');
  static const BIMI_RECORD_ISSUE = DomainHealthEventDtoEventTypeEnum._(r'BIMI_RECORD_ISSUE');
  static const SENDING_DISABLED = DomainHealthEventDtoEventTypeEnum._(r'SENDING_DISABLED');
  static const SENDING_ENABLED = DomainHealthEventDtoEventTypeEnum._(r'SENDING_ENABLED');
  static const DOMAIN_AUTHENTICATION_ISSUE = DomainHealthEventDtoEventTypeEnum._(r'DOMAIN_AUTHENTICATION_ISSUE');

  /// List of all possible values in this [enum][DomainHealthEventDtoEventTypeEnum].
  static const values = <DomainHealthEventDtoEventTypeEnum>[
    DKIM_SETUP_REVOKED,
    DKIM_RECORDS_MISSING,
    DKIM_VERIFICATION_FAILED,
    DMARC_RECORD_ISSUE,
    SPF_RECORD_ISSUE,
    BIMI_RECORD_ISSUE,
    SENDING_DISABLED,
    SENDING_ENABLED,
    DOMAIN_AUTHENTICATION_ISSUE,
  ];

  static DomainHealthEventDtoEventTypeEnum? fromJson(dynamic value) => DomainHealthEventDtoEventTypeEnumTypeTransformer().decode(value);

  static List<DomainHealthEventDtoEventTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainHealthEventDtoEventTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainHealthEventDtoEventTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainHealthEventDtoEventTypeEnum] to String,
/// and [decode] dynamic data back to [DomainHealthEventDtoEventTypeEnum].
class DomainHealthEventDtoEventTypeEnumTypeTransformer {
  factory DomainHealthEventDtoEventTypeEnumTypeTransformer() => _instance ??= const DomainHealthEventDtoEventTypeEnumTypeTransformer._();

  const DomainHealthEventDtoEventTypeEnumTypeTransformer._();

  String encode(DomainHealthEventDtoEventTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainHealthEventDtoEventTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainHealthEventDtoEventTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DKIM_SETUP_REVOKED': return DomainHealthEventDtoEventTypeEnum.DKIM_SETUP_REVOKED;
        case r'DKIM_RECORDS_MISSING': return DomainHealthEventDtoEventTypeEnum.DKIM_RECORDS_MISSING;
        case r'DKIM_VERIFICATION_FAILED': return DomainHealthEventDtoEventTypeEnum.DKIM_VERIFICATION_FAILED;
        case r'DMARC_RECORD_ISSUE': return DomainHealthEventDtoEventTypeEnum.DMARC_RECORD_ISSUE;
        case r'SPF_RECORD_ISSUE': return DomainHealthEventDtoEventTypeEnum.SPF_RECORD_ISSUE;
        case r'BIMI_RECORD_ISSUE': return DomainHealthEventDtoEventTypeEnum.BIMI_RECORD_ISSUE;
        case r'SENDING_DISABLED': return DomainHealthEventDtoEventTypeEnum.SENDING_DISABLED;
        case r'SENDING_ENABLED': return DomainHealthEventDtoEventTypeEnum.SENDING_ENABLED;
        case r'DOMAIN_AUTHENTICATION_ISSUE': return DomainHealthEventDtoEventTypeEnum.DOMAIN_AUTHENTICATION_ISSUE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainHealthEventDtoEventTypeEnumTypeTransformer] instance.
  static DomainHealthEventDtoEventTypeEnumTypeTransformer? _instance;
}



class DomainHealthEventDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainHealthEventDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = DomainHealthEventDtoStatusEnum._(r'OPEN');
  static const RESOLVED = DomainHealthEventDtoStatusEnum._(r'RESOLVED');

  /// List of all possible values in this [enum][DomainHealthEventDtoStatusEnum].
  static const values = <DomainHealthEventDtoStatusEnum>[
    OPEN,
    RESOLVED,
  ];

  static DomainHealthEventDtoStatusEnum? fromJson(dynamic value) => DomainHealthEventDtoStatusEnumTypeTransformer().decode(value);

  static List<DomainHealthEventDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainHealthEventDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainHealthEventDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainHealthEventDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DomainHealthEventDtoStatusEnum].
class DomainHealthEventDtoStatusEnumTypeTransformer {
  factory DomainHealthEventDtoStatusEnumTypeTransformer() => _instance ??= const DomainHealthEventDtoStatusEnumTypeTransformer._();

  const DomainHealthEventDtoStatusEnumTypeTransformer._();

  String encode(DomainHealthEventDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainHealthEventDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainHealthEventDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return DomainHealthEventDtoStatusEnum.OPEN;
        case r'RESOLVED': return DomainHealthEventDtoStatusEnum.RESOLVED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainHealthEventDtoStatusEnumTypeTransformer] instance.
  static DomainHealthEventDtoStatusEnumTypeTransformer? _instance;
}



class DomainHealthEventDtoSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainHealthEventDtoSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INFO = DomainHealthEventDtoSeverityEnum._(r'INFO');
  static const WARNING = DomainHealthEventDtoSeverityEnum._(r'WARNING');
  static const CRITICAL = DomainHealthEventDtoSeverityEnum._(r'CRITICAL');

  /// List of all possible values in this [enum][DomainHealthEventDtoSeverityEnum].
  static const values = <DomainHealthEventDtoSeverityEnum>[
    INFO,
    WARNING,
    CRITICAL,
  ];

  static DomainHealthEventDtoSeverityEnum? fromJson(dynamic value) => DomainHealthEventDtoSeverityEnumTypeTransformer().decode(value);

  static List<DomainHealthEventDtoSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainHealthEventDtoSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainHealthEventDtoSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainHealthEventDtoSeverityEnum] to String,
/// and [decode] dynamic data back to [DomainHealthEventDtoSeverityEnum].
class DomainHealthEventDtoSeverityEnumTypeTransformer {
  factory DomainHealthEventDtoSeverityEnumTypeTransformer() => _instance ??= const DomainHealthEventDtoSeverityEnumTypeTransformer._();

  const DomainHealthEventDtoSeverityEnumTypeTransformer._();

  String encode(DomainHealthEventDtoSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainHealthEventDtoSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainHealthEventDtoSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INFO': return DomainHealthEventDtoSeverityEnum.INFO;
        case r'WARNING': return DomainHealthEventDtoSeverityEnum.WARNING;
        case r'CRITICAL': return DomainHealthEventDtoSeverityEnum.CRITICAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainHealthEventDtoSeverityEnumTypeTransformer] instance.
  static DomainHealthEventDtoSeverityEnumTypeTransformer? _instance;
}


