//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainRegionInformation {
  /// Returns a new [DomainRegionInformation] instance.
  DomainRegionInformation({
    required this.domainName,
    required this.verified,
    required this.domainType,
    this.accountRegion,
    required this.creationEnabled,
    required this.sendingEnabled,
    required this.active,
  });

  String domainName;

  bool verified;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainRegionInformationDomainTypeEnum domainType;

  DomainRegionInformationAccountRegionEnum? accountRegion;

  bool creationEnabled;

  bool sendingEnabled;

  bool active;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainRegionInformation &&
     other.domainName == domainName &&
     other.verified == verified &&
     other.domainType == domainType &&
     other.accountRegion == accountRegion &&
     other.creationEnabled == creationEnabled &&
     other.sendingEnabled == sendingEnabled &&
     other.active == active;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainName.hashCode) +
    (verified.hashCode) +
    (domainType.hashCode) +
    (accountRegion == null ? 0 : accountRegion!.hashCode) +
    (creationEnabled.hashCode) +
    (sendingEnabled.hashCode) +
    (active.hashCode);

  @override
  String toString() => 'DomainRegionInformation[domainName=$domainName, verified=$verified, domainType=$domainType, accountRegion=$accountRegion, creationEnabled=$creationEnabled, sendingEnabled=$sendingEnabled, active=$active]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domainName'] = this.domainName;
      json[r'verified'] = this.verified;
      json[r'domainType'] = this.domainType;
    if (this.accountRegion != null) {
      json[r'accountRegion'] = this.accountRegion;
    } else {
      json[r'accountRegion'] = null;
    }
      json[r'creationEnabled'] = this.creationEnabled;
      json[r'sendingEnabled'] = this.sendingEnabled;
      json[r'active'] = this.active;
    return json;
  }

  /// Returns a new [DomainRegionInformation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainRegionInformation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainRegionInformation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainRegionInformation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainRegionInformation(
        domainName: mapValueOfType<String>(json, r'domainName')!,
        verified: mapValueOfType<bool>(json, r'verified')!,
        domainType: DomainRegionInformationDomainTypeEnum.fromJson(json[r'domainType'])!,
        accountRegion: DomainRegionInformationAccountRegionEnum.fromJson(json[r'accountRegion']),
        creationEnabled: mapValueOfType<bool>(json, r'creationEnabled')!,
        sendingEnabled: mapValueOfType<bool>(json, r'sendingEnabled')!,
        active: mapValueOfType<bool>(json, r'active')!,
      );
    }
    return null;
  }

  static List<DomainRegionInformation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionInformation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionInformation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainRegionInformation> mapFromJson(dynamic json) {
    final map = <String, DomainRegionInformation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainRegionInformation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainRegionInformation-objects as value to a dart map
  static Map<String, List<DomainRegionInformation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainRegionInformation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainRegionInformation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domainName',
    'verified',
    'domainType',
    'creationEnabled',
    'sendingEnabled',
    'active',
  };
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class DomainRegionInformationDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainRegionInformationDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = DomainRegionInformationDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = DomainRegionInformationDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][DomainRegionInformationDomainTypeEnum].
  static const values = <DomainRegionInformationDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static DomainRegionInformationDomainTypeEnum? fromJson(dynamic value) => DomainRegionInformationDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainRegionInformationDomainTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionInformationDomainTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionInformationDomainTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainRegionInformationDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainRegionInformationDomainTypeEnum].
class DomainRegionInformationDomainTypeEnumTypeTransformer {
  factory DomainRegionInformationDomainTypeEnumTypeTransformer() => _instance ??= const DomainRegionInformationDomainTypeEnumTypeTransformer._();

  const DomainRegionInformationDomainTypeEnumTypeTransformer._();

  String encode(DomainRegionInformationDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainRegionInformationDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainRegionInformationDomainTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return DomainRegionInformationDomainTypeEnum.HTTP_INBOX;
        case r'SMTP_DOMAIN': return DomainRegionInformationDomainTypeEnum.SMTP_DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainRegionInformationDomainTypeEnumTypeTransformer] instance.
  static DomainRegionInformationDomainTypeEnumTypeTransformer? _instance;
}



class DomainRegionInformationAccountRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainRegionInformationAccountRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uSWEST2ACCOUNTSTAGING = DomainRegionInformationAccountRegionEnum._(r'US_WEST_2_ACCOUNT_STAGING');
  static const uSEAST1ACCOUNTSTAGING = DomainRegionInformationAccountRegionEnum._(r'US_EAST_1_ACCOUNT_STAGING');
  static const eUWEST1ACCOUNTSTAGING = DomainRegionInformationAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_STAGING');
  static const uSWEST2ACCOUNTSES1 = DomainRegionInformationAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_1');
  static const eUWEST1ACCOUNTSES1 = DomainRegionInformationAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_1');
  static const uSWEST2ACCOUNTSES2 = DomainRegionInformationAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_2');
  static const eUWEST1ACCOUNTSES2 = DomainRegionInformationAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_2');
  static const uSWEST2ACCOUNTBYTEWISE = DomainRegionInformationAccountRegionEnum._(r'US_WEST_2_ACCOUNT_BYTEWISE');
  static const eUWEST1ACCOUNTBYTEWISE = DomainRegionInformationAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_BYTEWISE');
  static const uSWEST2 = DomainRegionInformationAccountRegionEnum._(r'US_WEST_2');
  static const eUWEST1 = DomainRegionInformationAccountRegionEnum._(r'EU_WEST_1');
  static const uSEAST1 = DomainRegionInformationAccountRegionEnum._(r'US_EAST_1');

  /// List of all possible values in this [enum][DomainRegionInformationAccountRegionEnum].
  static const values = <DomainRegionInformationAccountRegionEnum>[
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

  static DomainRegionInformationAccountRegionEnum? fromJson(dynamic value) => DomainRegionInformationAccountRegionEnumTypeTransformer().decode(value);

  static List<DomainRegionInformationAccountRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRegionInformationAccountRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRegionInformationAccountRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainRegionInformationAccountRegionEnum] to String,
/// and [decode] dynamic data back to [DomainRegionInformationAccountRegionEnum].
class DomainRegionInformationAccountRegionEnumTypeTransformer {
  factory DomainRegionInformationAccountRegionEnumTypeTransformer() => _instance ??= const DomainRegionInformationAccountRegionEnumTypeTransformer._();

  const DomainRegionInformationAccountRegionEnumTypeTransformer._();

  String encode(DomainRegionInformationAccountRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainRegionInformationAccountRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainRegionInformationAccountRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US_WEST_2_ACCOUNT_STAGING': return DomainRegionInformationAccountRegionEnum.uSWEST2ACCOUNTSTAGING;
        case r'US_EAST_1_ACCOUNT_STAGING': return DomainRegionInformationAccountRegionEnum.uSEAST1ACCOUNTSTAGING;
        case r'EU_WEST_1_ACCOUNT_STAGING': return DomainRegionInformationAccountRegionEnum.eUWEST1ACCOUNTSTAGING;
        case r'US_WEST_2_ACCOUNT_SES_1': return DomainRegionInformationAccountRegionEnum.uSWEST2ACCOUNTSES1;
        case r'EU_WEST_1_ACCOUNT_SES_1': return DomainRegionInformationAccountRegionEnum.eUWEST1ACCOUNTSES1;
        case r'US_WEST_2_ACCOUNT_SES_2': return DomainRegionInformationAccountRegionEnum.uSWEST2ACCOUNTSES2;
        case r'EU_WEST_1_ACCOUNT_SES_2': return DomainRegionInformationAccountRegionEnum.eUWEST1ACCOUNTSES2;
        case r'US_WEST_2_ACCOUNT_BYTEWISE': return DomainRegionInformationAccountRegionEnum.uSWEST2ACCOUNTBYTEWISE;
        case r'EU_WEST_1_ACCOUNT_BYTEWISE': return DomainRegionInformationAccountRegionEnum.eUWEST1ACCOUNTBYTEWISE;
        case r'US_WEST_2': return DomainRegionInformationAccountRegionEnum.uSWEST2;
        case r'EU_WEST_1': return DomainRegionInformationAccountRegionEnum.eUWEST1;
        case r'US_EAST_1': return DomainRegionInformationAccountRegionEnum.uSEAST1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainRegionInformationAccountRegionEnumTypeTransformer] instance.
  static DomainRegionInformationAccountRegionEnumTypeTransformer? _instance;
}


