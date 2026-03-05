//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TenantReputationStatusRowDto {
  /// Returns a new [TenantReputationStatusRowDto] instance.
  TenantReputationStatusRowDto({
    required this.accountRegion,
    required this.tenantName,
    this.tenantArn,
    this.sendingStatus,
    this.reputationStatus,
    this.reputationPolicy,
    this.customerManagedSendingStatus,
    this.awsManagedSendingStatus,
    required this.findingCount,
    this.bounceRate,
    this.complaintRate,
    this.sendLastHour,
    this.metricTimestamp,
    this.error,
  });

  TenantReputationStatusRowDtoAccountRegionEnum accountRegion;

  String tenantName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenantArn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sendingStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reputationStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reputationPolicy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? customerManagedSendingStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? awsManagedSendingStatus;

  int findingCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? bounceRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? complaintRate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? sendLastHour;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? metricTimestamp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TenantReputationStatusRowDto &&
     other.accountRegion == accountRegion &&
     other.tenantName == tenantName &&
     other.tenantArn == tenantArn &&
     other.sendingStatus == sendingStatus &&
     other.reputationStatus == reputationStatus &&
     other.reputationPolicy == reputationPolicy &&
     other.customerManagedSendingStatus == customerManagedSendingStatus &&
     other.awsManagedSendingStatus == awsManagedSendingStatus &&
     other.findingCount == findingCount &&
     other.bounceRate == bounceRate &&
     other.complaintRate == complaintRate &&
     other.sendLastHour == sendLastHour &&
     other.metricTimestamp == metricTimestamp &&
     other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountRegion.hashCode) +
    (tenantName.hashCode) +
    (tenantArn == null ? 0 : tenantArn!.hashCode) +
    (sendingStatus == null ? 0 : sendingStatus!.hashCode) +
    (reputationStatus == null ? 0 : reputationStatus!.hashCode) +
    (reputationPolicy == null ? 0 : reputationPolicy!.hashCode) +
    (customerManagedSendingStatus == null ? 0 : customerManagedSendingStatus!.hashCode) +
    (awsManagedSendingStatus == null ? 0 : awsManagedSendingStatus!.hashCode) +
    (findingCount.hashCode) +
    (bounceRate == null ? 0 : bounceRate!.hashCode) +
    (complaintRate == null ? 0 : complaintRate!.hashCode) +
    (sendLastHour == null ? 0 : sendLastHour!.hashCode) +
    (metricTimestamp == null ? 0 : metricTimestamp!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'TenantReputationStatusRowDto[accountRegion=$accountRegion, tenantName=$tenantName, tenantArn=$tenantArn, sendingStatus=$sendingStatus, reputationStatus=$reputationStatus, reputationPolicy=$reputationPolicy, customerManagedSendingStatus=$customerManagedSendingStatus, awsManagedSendingStatus=$awsManagedSendingStatus, findingCount=$findingCount, bounceRate=$bounceRate, complaintRate=$complaintRate, sendLastHour=$sendLastHour, metricTimestamp=$metricTimestamp, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accountRegion'] = this.accountRegion;
      json[r'tenantName'] = this.tenantName;
    if (this.tenantArn != null) {
      json[r'tenantArn'] = this.tenantArn;
    } else {
      json[r'tenantArn'] = null;
    }
    if (this.sendingStatus != null) {
      json[r'sendingStatus'] = this.sendingStatus;
    } else {
      json[r'sendingStatus'] = null;
    }
    if (this.reputationStatus != null) {
      json[r'reputationStatus'] = this.reputationStatus;
    } else {
      json[r'reputationStatus'] = null;
    }
    if (this.reputationPolicy != null) {
      json[r'reputationPolicy'] = this.reputationPolicy;
    } else {
      json[r'reputationPolicy'] = null;
    }
    if (this.customerManagedSendingStatus != null) {
      json[r'customerManagedSendingStatus'] = this.customerManagedSendingStatus;
    } else {
      json[r'customerManagedSendingStatus'] = null;
    }
    if (this.awsManagedSendingStatus != null) {
      json[r'awsManagedSendingStatus'] = this.awsManagedSendingStatus;
    } else {
      json[r'awsManagedSendingStatus'] = null;
    }
      json[r'findingCount'] = this.findingCount;
    if (this.bounceRate != null) {
      json[r'bounceRate'] = this.bounceRate;
    } else {
      json[r'bounceRate'] = null;
    }
    if (this.complaintRate != null) {
      json[r'complaintRate'] = this.complaintRate;
    } else {
      json[r'complaintRate'] = null;
    }
    if (this.sendLastHour != null) {
      json[r'sendLastHour'] = this.sendLastHour;
    } else {
      json[r'sendLastHour'] = null;
    }
    if (this.metricTimestamp != null) {
      json[r'metricTimestamp'] = this.metricTimestamp!.toUtc().toIso8601String();
    } else {
      json[r'metricTimestamp'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [TenantReputationStatusRowDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TenantReputationStatusRowDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TenantReputationStatusRowDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TenantReputationStatusRowDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TenantReputationStatusRowDto(
        accountRegion: TenantReputationStatusRowDtoAccountRegionEnum.fromJson(json[r'accountRegion'])!,
        tenantName: mapValueOfType<String>(json, r'tenantName')!,
        tenantArn: mapValueOfType<String>(json, r'tenantArn'),
        sendingStatus: mapValueOfType<String>(json, r'sendingStatus'),
        reputationStatus: mapValueOfType<String>(json, r'reputationStatus'),
        reputationPolicy: mapValueOfType<String>(json, r'reputationPolicy'),
        customerManagedSendingStatus: mapValueOfType<String>(json, r'customerManagedSendingStatus'),
        awsManagedSendingStatus: mapValueOfType<String>(json, r'awsManagedSendingStatus'),
        findingCount: mapValueOfType<int>(json, r'findingCount')!,
        bounceRate: mapValueOfType<double>(json, r'bounceRate'),
        complaintRate: mapValueOfType<double>(json, r'complaintRate'),
        sendLastHour: mapValueOfType<double>(json, r'sendLastHour'),
        metricTimestamp: mapDateTime(json, r'metricTimestamp', ''),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<TenantReputationStatusRowDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationStatusRowDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationStatusRowDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TenantReputationStatusRowDto> mapFromJson(dynamic json) {
    final map = <String, TenantReputationStatusRowDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TenantReputationStatusRowDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TenantReputationStatusRowDto-objects as value to a dart map
  static Map<String, List<TenantReputationStatusRowDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TenantReputationStatusRowDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TenantReputationStatusRowDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accountRegion',
    'tenantName',
    'findingCount',
  };
}


class TenantReputationStatusRowDtoAccountRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const TenantReputationStatusRowDtoAccountRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uSWEST2ACCOUNTSTAGING = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_STAGING');
  static const uSEAST1ACCOUNTSTAGING = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_STAGING');
  static const eUWEST1ACCOUNTSTAGING = TenantReputationStatusRowDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_STAGING');
  static const uSWEST2ACCOUNTSES1 = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_1');
  static const eUWEST1ACCOUNTSES1 = TenantReputationStatusRowDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_1');
  static const uSWEST2ACCOUNTSES2 = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_2');
  static const eUWEST1ACCOUNTSES2 = TenantReputationStatusRowDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_2');
  static const uSWEST2ACCOUNTBYTEWISE = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_BYTEWISE');
  static const eUWEST1ACCOUNTBYTEWISE = TenantReputationStatusRowDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_BYTEWISE');
  static const uSWEST2 = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_WEST_2');
  static const eUWEST1 = TenantReputationStatusRowDtoAccountRegionEnum._(r'EU_WEST_1');
  static const uSEAST1 = TenantReputationStatusRowDtoAccountRegionEnum._(r'US_EAST_1');

  /// List of all possible values in this [enum][TenantReputationStatusRowDtoAccountRegionEnum].
  static const values = <TenantReputationStatusRowDtoAccountRegionEnum>[
    uSWEST2ACCOUNTSTAGING,
    uSEAST1ACCOUNTSTAGING,
    eUWEST1ACCOUNTSTAGING,
    uSWEST2ACCOUNTSES1,
    eUWEST1ACCOUNTSES1,
    uSWEST2ACCOUNTSES2,
    eUWEST1ACCOUNTSES2,
    uSWEST2ACCOUNTBYTEWISE,
    eUWEST1ACCOUNTBYTEWISE,
    uSWEST2,
    eUWEST1,
    uSEAST1,
  ];

  static TenantReputationStatusRowDtoAccountRegionEnum? fromJson(dynamic value) => TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer().decode(value);

  static List<TenantReputationStatusRowDtoAccountRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TenantReputationStatusRowDtoAccountRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TenantReputationStatusRowDtoAccountRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TenantReputationStatusRowDtoAccountRegionEnum] to String,
/// and [decode] dynamic data back to [TenantReputationStatusRowDtoAccountRegionEnum].
class TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer {
  factory TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer() => _instance ??= const TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer._();

  const TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer._();

  String encode(TenantReputationStatusRowDtoAccountRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a TenantReputationStatusRowDtoAccountRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TenantReputationStatusRowDtoAccountRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US_WEST_2_ACCOUNT_STAGING': return TenantReputationStatusRowDtoAccountRegionEnum.uSWEST2ACCOUNTSTAGING;
        case r'US_EAST_1_ACCOUNT_STAGING': return TenantReputationStatusRowDtoAccountRegionEnum.uSEAST1ACCOUNTSTAGING;
        case r'EU_WEST_1_ACCOUNT_STAGING': return TenantReputationStatusRowDtoAccountRegionEnum.eUWEST1ACCOUNTSTAGING;
        case r'US_WEST_2_ACCOUNT_SES_1': return TenantReputationStatusRowDtoAccountRegionEnum.uSWEST2ACCOUNTSES1;
        case r'EU_WEST_1_ACCOUNT_SES_1': return TenantReputationStatusRowDtoAccountRegionEnum.eUWEST1ACCOUNTSES1;
        case r'US_WEST_2_ACCOUNT_SES_2': return TenantReputationStatusRowDtoAccountRegionEnum.uSWEST2ACCOUNTSES2;
        case r'EU_WEST_1_ACCOUNT_SES_2': return TenantReputationStatusRowDtoAccountRegionEnum.eUWEST1ACCOUNTSES2;
        case r'US_WEST_2_ACCOUNT_BYTEWISE': return TenantReputationStatusRowDtoAccountRegionEnum.uSWEST2ACCOUNTBYTEWISE;
        case r'EU_WEST_1_ACCOUNT_BYTEWISE': return TenantReputationStatusRowDtoAccountRegionEnum.eUWEST1ACCOUNTBYTEWISE;
        case r'US_WEST_2': return TenantReputationStatusRowDtoAccountRegionEnum.uSWEST2;
        case r'EU_WEST_1': return TenantReputationStatusRowDtoAccountRegionEnum.eUWEST1;
        case r'US_EAST_1': return TenantReputationStatusRowDtoAccountRegionEnum.uSEAST1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer] instance.
  static TenantReputationStatusRowDtoAccountRegionEnumTypeTransformer? _instance;
}


