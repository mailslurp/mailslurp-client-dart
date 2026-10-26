//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainMonitorObservedAuthSampleDto {
  /// Returns a new [DomainMonitorObservedAuthSampleDto] instance.
  DomainMonitorObservedAuthSampleDto({
    required this.id,
    required this.monitorId,
    required this.domain,
    required this.recipientAddress,
    this.sourceMessageId,
    this.messageId,
    this.fromAddress,
    this.fromDomain,
    this.returnPath,
    this.returnPathDomain,
    required this.spfStatus,
    this.spfEvaluatedDomain,
    this.spfSourceIp,
    required this.dkimStatus,
    this.dkimSignatures = const [],
    required this.dmarcStatus,
    this.dmarcAlignedIdentifier,
    this.trustedAuthenticationResultsSource,
    this.providerHints = const [],
    required this.accepted,
    this.validationError,
    required this.receivedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String monitorId;

  String domain;

  String recipientAddress;

  String? sourceMessageId;

  String? messageId;

  String? fromAddress;

  String? fromDomain;

  String? returnPath;

  String? returnPathDomain;

  DomainMonitorObservedAuthSampleDtoSpfStatusEnum spfStatus;

  String? spfEvaluatedDomain;

  String? spfSourceIp;

  DomainMonitorObservedAuthSampleDtoDkimStatusEnum dkimStatus;

  List<DomainMonitorDkimSignatureDto> dkimSignatures;

  DomainMonitorObservedAuthSampleDtoDmarcStatusEnum dmarcStatus;

  String? dmarcAlignedIdentifier;

  String? trustedAuthenticationResultsSource;

  List<String> providerHints;

  bool accepted;

  String? validationError;

  DateTime receivedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainMonitorObservedAuthSampleDto &&
     other.id == id &&
     other.monitorId == monitorId &&
     other.domain == domain &&
     other.recipientAddress == recipientAddress &&
     other.sourceMessageId == sourceMessageId &&
     other.messageId == messageId &&
     other.fromAddress == fromAddress &&
     other.fromDomain == fromDomain &&
     other.returnPath == returnPath &&
     other.returnPathDomain == returnPathDomain &&
     other.spfStatus == spfStatus &&
     other.spfEvaluatedDomain == spfEvaluatedDomain &&
     other.spfSourceIp == spfSourceIp &&
     other.dkimStatus == dkimStatus &&
     other.dkimSignatures == dkimSignatures &&
     other.dmarcStatus == dmarcStatus &&
     other.dmarcAlignedIdentifier == dmarcAlignedIdentifier &&
     other.trustedAuthenticationResultsSource == trustedAuthenticationResultsSource &&
     other.providerHints == providerHints &&
     other.accepted == accepted &&
     other.validationError == validationError &&
     other.receivedAt == receivedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (monitorId.hashCode) +
    (domain.hashCode) +
    (recipientAddress.hashCode) +
    (sourceMessageId == null ? 0 : sourceMessageId!.hashCode) +
    (messageId == null ? 0 : messageId!.hashCode) +
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (fromDomain == null ? 0 : fromDomain!.hashCode) +
    (returnPath == null ? 0 : returnPath!.hashCode) +
    (returnPathDomain == null ? 0 : returnPathDomain!.hashCode) +
    (spfStatus.hashCode) +
    (spfEvaluatedDomain == null ? 0 : spfEvaluatedDomain!.hashCode) +
    (spfSourceIp == null ? 0 : spfSourceIp!.hashCode) +
    (dkimStatus.hashCode) +
    (dkimSignatures.hashCode) +
    (dmarcStatus.hashCode) +
    (dmarcAlignedIdentifier == null ? 0 : dmarcAlignedIdentifier!.hashCode) +
    (trustedAuthenticationResultsSource == null ? 0 : trustedAuthenticationResultsSource!.hashCode) +
    (providerHints.hashCode) +
    (accepted.hashCode) +
    (validationError == null ? 0 : validationError!.hashCode) +
    (receivedAt.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DomainMonitorObservedAuthSampleDto[id=$id, monitorId=$monitorId, domain=$domain, recipientAddress=$recipientAddress, sourceMessageId=$sourceMessageId, messageId=$messageId, fromAddress=$fromAddress, fromDomain=$fromDomain, returnPath=$returnPath, returnPathDomain=$returnPathDomain, spfStatus=$spfStatus, spfEvaluatedDomain=$spfEvaluatedDomain, spfSourceIp=$spfSourceIp, dkimStatus=$dkimStatus, dkimSignatures=$dkimSignatures, dmarcStatus=$dmarcStatus, dmarcAlignedIdentifier=$dmarcAlignedIdentifier, trustedAuthenticationResultsSource=$trustedAuthenticationResultsSource, providerHints=$providerHints, accepted=$accepted, validationError=$validationError, receivedAt=$receivedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'monitorId'] = this.monitorId;
      json[r'domain'] = this.domain;
      json[r'recipientAddress'] = this.recipientAddress;
    if (this.sourceMessageId != null) {
      json[r'sourceMessageId'] = this.sourceMessageId;
    } else {
      json[r'sourceMessageId'] = null;
    }
    if (this.messageId != null) {
      json[r'messageId'] = this.messageId;
    } else {
      json[r'messageId'] = null;
    }
    if (this.fromAddress != null) {
      json[r'fromAddress'] = this.fromAddress;
    } else {
      json[r'fromAddress'] = null;
    }
    if (this.fromDomain != null) {
      json[r'fromDomain'] = this.fromDomain;
    } else {
      json[r'fromDomain'] = null;
    }
    if (this.returnPath != null) {
      json[r'returnPath'] = this.returnPath;
    } else {
      json[r'returnPath'] = null;
    }
    if (this.returnPathDomain != null) {
      json[r'returnPathDomain'] = this.returnPathDomain;
    } else {
      json[r'returnPathDomain'] = null;
    }
      json[r'spfStatus'] = this.spfStatus;
    if (this.spfEvaluatedDomain != null) {
      json[r'spfEvaluatedDomain'] = this.spfEvaluatedDomain;
    } else {
      json[r'spfEvaluatedDomain'] = null;
    }
    if (this.spfSourceIp != null) {
      json[r'spfSourceIp'] = this.spfSourceIp;
    } else {
      json[r'spfSourceIp'] = null;
    }
      json[r'dkimStatus'] = this.dkimStatus;
      json[r'dkimSignatures'] = this.dkimSignatures;
      json[r'dmarcStatus'] = this.dmarcStatus;
    if (this.dmarcAlignedIdentifier != null) {
      json[r'dmarcAlignedIdentifier'] = this.dmarcAlignedIdentifier;
    } else {
      json[r'dmarcAlignedIdentifier'] = null;
    }
    if (this.trustedAuthenticationResultsSource != null) {
      json[r'trustedAuthenticationResultsSource'] = this.trustedAuthenticationResultsSource;
    } else {
      json[r'trustedAuthenticationResultsSource'] = null;
    }
      json[r'providerHints'] = this.providerHints;
      json[r'accepted'] = this.accepted;
    if (this.validationError != null) {
      json[r'validationError'] = this.validationError;
    } else {
      json[r'validationError'] = null;
    }
      json[r'receivedAt'] = this.receivedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DomainMonitorObservedAuthSampleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainMonitorObservedAuthSampleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainMonitorObservedAuthSampleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainMonitorObservedAuthSampleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainMonitorObservedAuthSampleDto(
        id: mapValueOfType<String>(json, r'id')!,
        monitorId: mapValueOfType<String>(json, r'monitorId')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        recipientAddress: mapValueOfType<String>(json, r'recipientAddress')!,
        sourceMessageId: mapValueOfType<String>(json, r'sourceMessageId'),
        messageId: mapValueOfType<String>(json, r'messageId'),
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        fromDomain: mapValueOfType<String>(json, r'fromDomain'),
        returnPath: mapValueOfType<String>(json, r'returnPath'),
        returnPathDomain: mapValueOfType<String>(json, r'returnPathDomain'),
        spfStatus: DomainMonitorObservedAuthSampleDtoSpfStatusEnum.fromJson(json[r'spfStatus'])!,
        spfEvaluatedDomain: mapValueOfType<String>(json, r'spfEvaluatedDomain'),
        spfSourceIp: mapValueOfType<String>(json, r'spfSourceIp'),
        dkimStatus: DomainMonitorObservedAuthSampleDtoDkimStatusEnum.fromJson(json[r'dkimStatus'])!,
        dkimSignatures: DomainMonitorDkimSignatureDto.listFromJson(json[r'dkimSignatures']),
        dmarcStatus: DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.fromJson(json[r'dmarcStatus'])!,
        dmarcAlignedIdentifier: mapValueOfType<String>(json, r'dmarcAlignedIdentifier'),
        trustedAuthenticationResultsSource: mapValueOfType<String>(json, r'trustedAuthenticationResultsSource'),
        providerHints: json[r'providerHints'] is List
            ? (json[r'providerHints'] as List).cast<String>()
            : const [],
        accepted: mapValueOfType<bool>(json, r'accepted')!,
        validationError: mapValueOfType<String>(json, r'validationError'),
        receivedAt: mapDateTime(json, r'receivedAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DomainMonitorObservedAuthSampleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorObservedAuthSampleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorObservedAuthSampleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainMonitorObservedAuthSampleDto> mapFromJson(dynamic json) {
    final map = <String, DomainMonitorObservedAuthSampleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainMonitorObservedAuthSampleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainMonitorObservedAuthSampleDto-objects as value to a dart map
  static Map<String, List<DomainMonitorObservedAuthSampleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainMonitorObservedAuthSampleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainMonitorObservedAuthSampleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'monitorId',
    'domain',
    'recipientAddress',
    'spfStatus',
    'dkimStatus',
    'dkimSignatures',
    'dmarcStatus',
    'providerHints',
    'accepted',
    'receivedAt',
    'createdAt',
    'updatedAt',
  };
}


class DomainMonitorObservedAuthSampleDtoSpfStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorObservedAuthSampleDtoSpfStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorObservedAuthSampleDtoSpfStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorObservedAuthSampleDtoSpfStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorObservedAuthSampleDtoSpfStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorObservedAuthSampleDtoSpfStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorObservedAuthSampleDtoSpfStatusEnum].
  static const values = <DomainMonitorObservedAuthSampleDtoSpfStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorObservedAuthSampleDtoSpfStatusEnum? fromJson(dynamic value) => DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorObservedAuthSampleDtoSpfStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorObservedAuthSampleDtoSpfStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorObservedAuthSampleDtoSpfStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorObservedAuthSampleDtoSpfStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorObservedAuthSampleDtoSpfStatusEnum].
class DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer {
  factory DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer() => _instance ??= const DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer._();

  const DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer._();

  String encode(DomainMonitorObservedAuthSampleDtoSpfStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorObservedAuthSampleDtoSpfStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorObservedAuthSampleDtoSpfStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorObservedAuthSampleDtoSpfStatusEnum.PASS;
        case r'FAIL': return DomainMonitorObservedAuthSampleDtoSpfStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorObservedAuthSampleDtoSpfStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorObservedAuthSampleDtoSpfStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer] instance.
  static DomainMonitorObservedAuthSampleDtoSpfStatusEnumTypeTransformer? _instance;
}



class DomainMonitorObservedAuthSampleDtoDkimStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorObservedAuthSampleDtoDkimStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorObservedAuthSampleDtoDkimStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorObservedAuthSampleDtoDkimStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorObservedAuthSampleDtoDkimStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorObservedAuthSampleDtoDkimStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorObservedAuthSampleDtoDkimStatusEnum].
  static const values = <DomainMonitorObservedAuthSampleDtoDkimStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorObservedAuthSampleDtoDkimStatusEnum? fromJson(dynamic value) => DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorObservedAuthSampleDtoDkimStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorObservedAuthSampleDtoDkimStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorObservedAuthSampleDtoDkimStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorObservedAuthSampleDtoDkimStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorObservedAuthSampleDtoDkimStatusEnum].
class DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer {
  factory DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer() => _instance ??= const DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer._();

  const DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer._();

  String encode(DomainMonitorObservedAuthSampleDtoDkimStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorObservedAuthSampleDtoDkimStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorObservedAuthSampleDtoDkimStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorObservedAuthSampleDtoDkimStatusEnum.PASS;
        case r'FAIL': return DomainMonitorObservedAuthSampleDtoDkimStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorObservedAuthSampleDtoDkimStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorObservedAuthSampleDtoDkimStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer] instance.
  static DomainMonitorObservedAuthSampleDtoDkimStatusEnumTypeTransformer? _instance;
}



class DomainMonitorObservedAuthSampleDtoDmarcStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainMonitorObservedAuthSampleDtoDmarcStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = DomainMonitorObservedAuthSampleDtoDmarcStatusEnum._(r'PASS');
  static const FAIL = DomainMonitorObservedAuthSampleDtoDmarcStatusEnum._(r'FAIL');
  static const WARNING = DomainMonitorObservedAuthSampleDtoDmarcStatusEnum._(r'WARNING');
  static const NOT_CHECKED = DomainMonitorObservedAuthSampleDtoDmarcStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][DomainMonitorObservedAuthSampleDtoDmarcStatusEnum].
  static const values = <DomainMonitorObservedAuthSampleDtoDmarcStatusEnum>[
    PASS,
    FAIL,
    WARNING,
    NOT_CHECKED,
  ];

  static DomainMonitorObservedAuthSampleDtoDmarcStatusEnum? fromJson(dynamic value) => DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer().decode(value);

  static List<DomainMonitorObservedAuthSampleDtoDmarcStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainMonitorObservedAuthSampleDtoDmarcStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainMonitorObservedAuthSampleDtoDmarcStatusEnum] to String,
/// and [decode] dynamic data back to [DomainMonitorObservedAuthSampleDtoDmarcStatusEnum].
class DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer {
  factory DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer() => _instance ??= const DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer._();

  const DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer._();

  String encode(DomainMonitorObservedAuthSampleDtoDmarcStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainMonitorObservedAuthSampleDtoDmarcStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.PASS;
        case r'FAIL': return DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.FAIL;
        case r'WARNING': return DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.WARNING;
        case r'NOT_CHECKED': return DomainMonitorObservedAuthSampleDtoDmarcStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer] instance.
  static DomainMonitorObservedAuthSampleDtoDmarcStatusEnumTypeTransformer? _instance;
}


