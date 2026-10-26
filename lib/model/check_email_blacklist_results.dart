//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CheckEmailBlacklistResults {
  /// Returns a new [CheckEmailBlacklistResults] instance.
  CheckEmailBlacklistResults({
    this.domain,
    this.requestedIpAddress,
    this.requestedMxHost,
    required this.status,
    required this.listed,
    this.checkedIpAddresses = const [],
    required this.checkedZoneCount,
    required this.totalListings,
    this.warnings = const [],
    this.errors = const [],
    required this.checkStatus,
    this.checkedDomains = const [],
    required this.checkedAt,
    required this.evidenceVersion,
  });

  String? domain;

  String? requestedIpAddress;

  String? requestedMxHost;

  CheckEmailBlacklistResultsStatusEnum status;

  bool listed;

  List<EmailBlacklistIpResult> checkedIpAddresses;

  int checkedZoneCount;

  int totalListings;

  List<String> warnings;

  List<String> errors;

  CheckEmailBlacklistResultsCheckStatusEnum checkStatus;

  List<EmailBlacklistDomainResult> checkedDomains;

  DateTime checkedAt;

  String evidenceVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CheckEmailBlacklistResults &&
     other.domain == domain &&
     other.requestedIpAddress == requestedIpAddress &&
     other.requestedMxHost == requestedMxHost &&
     other.status == status &&
     other.listed == listed &&
     other.checkedIpAddresses == checkedIpAddresses &&
     other.checkedZoneCount == checkedZoneCount &&
     other.totalListings == totalListings &&
     other.warnings == warnings &&
     other.errors == errors &&
     other.checkStatus == checkStatus &&
     other.checkedDomains == checkedDomains &&
     other.checkedAt == checkedAt &&
     other.evidenceVersion == evidenceVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (requestedIpAddress == null ? 0 : requestedIpAddress!.hashCode) +
    (requestedMxHost == null ? 0 : requestedMxHost!.hashCode) +
    (status.hashCode) +
    (listed.hashCode) +
    (checkedIpAddresses.hashCode) +
    (checkedZoneCount.hashCode) +
    (totalListings.hashCode) +
    (warnings.hashCode) +
    (errors.hashCode) +
    (checkStatus.hashCode) +
    (checkedDomains.hashCode) +
    (checkedAt.hashCode) +
    (evidenceVersion.hashCode);

  @override
  String toString() => 'CheckEmailBlacklistResults[domain=$domain, requestedIpAddress=$requestedIpAddress, requestedMxHost=$requestedMxHost, status=$status, listed=$listed, checkedIpAddresses=$checkedIpAddresses, checkedZoneCount=$checkedZoneCount, totalListings=$totalListings, warnings=$warnings, errors=$errors, checkStatus=$checkStatus, checkedDomains=$checkedDomains, checkedAt=$checkedAt, evidenceVersion=$evidenceVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.requestedIpAddress != null) {
      json[r'requestedIpAddress'] = this.requestedIpAddress;
    } else {
      json[r'requestedIpAddress'] = null;
    }
    if (this.requestedMxHost != null) {
      json[r'requestedMxHost'] = this.requestedMxHost;
    } else {
      json[r'requestedMxHost'] = null;
    }
      json[r'status'] = this.status;
      json[r'listed'] = this.listed;
      json[r'checkedIpAddresses'] = this.checkedIpAddresses;
      json[r'checkedZoneCount'] = this.checkedZoneCount;
      json[r'totalListings'] = this.totalListings;
      json[r'warnings'] = this.warnings;
      json[r'errors'] = this.errors;
      json[r'checkStatus'] = this.checkStatus;
      json[r'checkedDomains'] = this.checkedDomains;
      json[r'checkedAt'] = this.checkedAt.toUtc().toIso8601String();
      json[r'evidenceVersion'] = this.evidenceVersion;
    return json;
  }

  /// Returns a new [CheckEmailBlacklistResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CheckEmailBlacklistResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CheckEmailBlacklistResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CheckEmailBlacklistResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CheckEmailBlacklistResults(
        domain: mapValueOfType<String>(json, r'domain'),
        requestedIpAddress: mapValueOfType<String>(json, r'requestedIpAddress'),
        requestedMxHost: mapValueOfType<String>(json, r'requestedMxHost'),
        status: CheckEmailBlacklistResultsStatusEnum.fromJson(json[r'status'])!,
        listed: mapValueOfType<bool>(json, r'listed')!,
        checkedIpAddresses: EmailBlacklistIpResult.listFromJson(json[r'checkedIpAddresses']),
        checkedZoneCount: mapValueOfType<int>(json, r'checkedZoneCount')!,
        totalListings: mapValueOfType<int>(json, r'totalListings')!,
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
        errors: json[r'errors'] is List
            ? (json[r'errors'] as List).cast<String>()
            : const [],
        checkStatus: CheckEmailBlacklistResultsCheckStatusEnum.fromJson(json[r'checkStatus'])!,
        checkedDomains: EmailBlacklistDomainResult.listFromJson(json[r'checkedDomains']),
        checkedAt: mapDateTime(json, r'checkedAt', '')!,
        evidenceVersion: mapValueOfType<String>(json, r'evidenceVersion')!,
      );
    }
    return null;
  }

  static List<CheckEmailBlacklistResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBlacklistResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBlacklistResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CheckEmailBlacklistResults> mapFromJson(dynamic json) {
    final map = <String, CheckEmailBlacklistResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CheckEmailBlacklistResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CheckEmailBlacklistResults-objects as value to a dart map
  static Map<String, List<CheckEmailBlacklistResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CheckEmailBlacklistResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CheckEmailBlacklistResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'listed',
    'checkedIpAddresses',
    'checkedZoneCount',
    'totalListings',
    'warnings',
    'errors',
    'checkStatus',
    'checkedDomains',
    'checkedAt',
    'evidenceVersion',
  };
}


class CheckEmailBlacklistResultsStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckEmailBlacklistResultsStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HEALTHY = CheckEmailBlacklistResultsStatusEnum._(r'HEALTHY');
  static const DEGRADED = CheckEmailBlacklistResultsStatusEnum._(r'DEGRADED');
  static const CRITICAL = CheckEmailBlacklistResultsStatusEnum._(r'CRITICAL');
  static const FAILED = CheckEmailBlacklistResultsStatusEnum._(r'FAILED');

  /// List of all possible values in this [enum][CheckEmailBlacklistResultsStatusEnum].
  static const values = <CheckEmailBlacklistResultsStatusEnum>[
    HEALTHY,
    DEGRADED,
    CRITICAL,
    FAILED,
  ];

  static CheckEmailBlacklistResultsStatusEnum? fromJson(dynamic value) => CheckEmailBlacklistResultsStatusEnumTypeTransformer().decode(value);

  static List<CheckEmailBlacklistResultsStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBlacklistResultsStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBlacklistResultsStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckEmailBlacklistResultsStatusEnum] to String,
/// and [decode] dynamic data back to [CheckEmailBlacklistResultsStatusEnum].
class CheckEmailBlacklistResultsStatusEnumTypeTransformer {
  factory CheckEmailBlacklistResultsStatusEnumTypeTransformer() => _instance ??= const CheckEmailBlacklistResultsStatusEnumTypeTransformer._();

  const CheckEmailBlacklistResultsStatusEnumTypeTransformer._();

  String encode(CheckEmailBlacklistResultsStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckEmailBlacklistResultsStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckEmailBlacklistResultsStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HEALTHY': return CheckEmailBlacklistResultsStatusEnum.HEALTHY;
        case r'DEGRADED': return CheckEmailBlacklistResultsStatusEnum.DEGRADED;
        case r'CRITICAL': return CheckEmailBlacklistResultsStatusEnum.CRITICAL;
        case r'FAILED': return CheckEmailBlacklistResultsStatusEnum.FAILED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckEmailBlacklistResultsStatusEnumTypeTransformer] instance.
  static CheckEmailBlacklistResultsStatusEnumTypeTransformer? _instance;
}



class CheckEmailBlacklistResultsCheckStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const CheckEmailBlacklistResultsCheckStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LISTED = CheckEmailBlacklistResultsCheckStatusEnum._(r'LISTED');
  static const NOT_LISTED = CheckEmailBlacklistResultsCheckStatusEnum._(r'NOT_LISTED');
  static const ERROR = CheckEmailBlacklistResultsCheckStatusEnum._(r'ERROR');
  static const NOT_CHECKED = CheckEmailBlacklistResultsCheckStatusEnum._(r'NOT_CHECKED');

  /// List of all possible values in this [enum][CheckEmailBlacklistResultsCheckStatusEnum].
  static const values = <CheckEmailBlacklistResultsCheckStatusEnum>[
    LISTED,
    NOT_LISTED,
    ERROR,
    NOT_CHECKED,
  ];

  static CheckEmailBlacklistResultsCheckStatusEnum? fromJson(dynamic value) => CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer().decode(value);

  static List<CheckEmailBlacklistResultsCheckStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CheckEmailBlacklistResultsCheckStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CheckEmailBlacklistResultsCheckStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CheckEmailBlacklistResultsCheckStatusEnum] to String,
/// and [decode] dynamic data back to [CheckEmailBlacklistResultsCheckStatusEnum].
class CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer {
  factory CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer() => _instance ??= const CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer._();

  const CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer._();

  String encode(CheckEmailBlacklistResultsCheckStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CheckEmailBlacklistResultsCheckStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CheckEmailBlacklistResultsCheckStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LISTED': return CheckEmailBlacklistResultsCheckStatusEnum.LISTED;
        case r'NOT_LISTED': return CheckEmailBlacklistResultsCheckStatusEnum.NOT_LISTED;
        case r'ERROR': return CheckEmailBlacklistResultsCheckStatusEnum.ERROR;
        case r'NOT_CHECKED': return CheckEmailBlacklistResultsCheckStatusEnum.NOT_CHECKED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer] instance.
  static CheckEmailBlacklistResultsCheckStatusEnumTypeTransformer? _instance;
}


