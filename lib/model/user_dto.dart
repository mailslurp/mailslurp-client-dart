//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDto {
  /// Returns a new [UserDto] instance.
  UserDto({
    required this.id,
    required this.apiKey,
    required this.emailAddress,
    required this.emailAddressMd5,
    this.created,
    this.userType,
    this.organization,
    this.verified,
    required this.hasPassword,
    required this.isFrozen,
    this.frozenMessage,
    this.addNewContacts,
    this.ssoProvider,
    this.customerId,
    this.hasOnboarded,
    this.imapUsername,
    this.imapPassword,
    this.smtpUsername,
    this.smtpPassword,
    this.chargePending,
    this.enableSms,
    this.vendorEmailAddress,
    this.unsubscribed,
    this.apiAccessToken,
    this.phoneNumber,
    this.verifiedPhone,
    this.accountRegion,
    this.name,
    this.accessLinkSendResult,
  });

  String id;

  /// Deprecate api key use entity instead
  String apiKey;

  String emailAddress;

  String emailAddressMd5;

  DateTime? created;

  UserDtoUserTypeEnum? userType;

  /// Does user belong to an organization
  String? organization;

  /// Has user accepted an organization invite
  UserDtoVerifiedEnum? verified;

  bool hasPassword;

  bool isFrozen;

  String? frozenMessage;

  bool? addNewContacts;

  String? ssoProvider;

  String? customerId;

  bool? hasOnboarded;

  String? imapUsername;

  String? imapPassword;

  String? smtpUsername;

  String? smtpPassword;

  bool? chargePending;

  bool? enableSms;

  String? vendorEmailAddress;

  bool? unsubscribed;

  TemporaryAccessKeyDto? apiAccessToken;

  String? phoneNumber;

  /// Has user accepted an organization invite
  UserDtoVerifiedPhoneEnum? verifiedPhone;

  /// Default account region
  UserDtoAccountRegionEnum? accountRegion;

  /// User display name
  String? name;

  AccessLinkSendResultDto? accessLinkSendResult;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserDto &&
     other.id == id &&
     other.apiKey == apiKey &&
     other.emailAddress == emailAddress &&
     other.emailAddressMd5 == emailAddressMd5 &&
     other.created == created &&
     other.userType == userType &&
     other.organization == organization &&
     other.verified == verified &&
     other.hasPassword == hasPassword &&
     other.isFrozen == isFrozen &&
     other.frozenMessage == frozenMessage &&
     other.addNewContacts == addNewContacts &&
     other.ssoProvider == ssoProvider &&
     other.customerId == customerId &&
     other.hasOnboarded == hasOnboarded &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword &&
     other.chargePending == chargePending &&
     other.enableSms == enableSms &&
     other.vendorEmailAddress == vendorEmailAddress &&
     other.unsubscribed == unsubscribed &&
     other.apiAccessToken == apiAccessToken &&
     other.phoneNumber == phoneNumber &&
     other.verifiedPhone == verifiedPhone &&
     other.accountRegion == accountRegion &&
     other.name == name &&
     other.accessLinkSendResult == accessLinkSendResult;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (apiKey.hashCode) +
    (emailAddress.hashCode) +
    (emailAddressMd5.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (userType == null ? 0 : userType!.hashCode) +
    (organization == null ? 0 : organization!.hashCode) +
    (verified == null ? 0 : verified!.hashCode) +
    (hasPassword.hashCode) +
    (isFrozen.hashCode) +
    (frozenMessage == null ? 0 : frozenMessage!.hashCode) +
    (addNewContacts == null ? 0 : addNewContacts!.hashCode) +
    (ssoProvider == null ? 0 : ssoProvider!.hashCode) +
    (customerId == null ? 0 : customerId!.hashCode) +
    (hasOnboarded == null ? 0 : hasOnboarded!.hashCode) +
    (imapUsername == null ? 0 : imapUsername!.hashCode) +
    (imapPassword == null ? 0 : imapPassword!.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername!.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword!.hashCode) +
    (chargePending == null ? 0 : chargePending!.hashCode) +
    (enableSms == null ? 0 : enableSms!.hashCode) +
    (vendorEmailAddress == null ? 0 : vendorEmailAddress!.hashCode) +
    (unsubscribed == null ? 0 : unsubscribed!.hashCode) +
    (apiAccessToken == null ? 0 : apiAccessToken!.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber!.hashCode) +
    (verifiedPhone == null ? 0 : verifiedPhone!.hashCode) +
    (accountRegion == null ? 0 : accountRegion!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (accessLinkSendResult == null ? 0 : accessLinkSendResult!.hashCode);

  @override
  String toString() => 'UserDto[id=$id, apiKey=$apiKey, emailAddress=$emailAddress, emailAddressMd5=$emailAddressMd5, created=$created, userType=$userType, organization=$organization, verified=$verified, hasPassword=$hasPassword, isFrozen=$isFrozen, frozenMessage=$frozenMessage, addNewContacts=$addNewContacts, ssoProvider=$ssoProvider, customerId=$customerId, hasOnboarded=$hasOnboarded, imapUsername=$imapUsername, imapPassword=$imapPassword, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword, chargePending=$chargePending, enableSms=$enableSms, vendorEmailAddress=$vendorEmailAddress, unsubscribed=$unsubscribed, apiAccessToken=$apiAccessToken, phoneNumber=$phoneNumber, verifiedPhone=$verifiedPhone, accountRegion=$accountRegion, name=$name, accessLinkSendResult=$accessLinkSendResult]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'apiKey'] = this.apiKey;
      json[r'emailAddress'] = this.emailAddress;
      json[r'emailAddressMd5'] = this.emailAddressMd5;
    if (this.created != null) {
      json[r'created'] = this.created!.toUtc().toIso8601String();
    } else {
      json[r'created'] = null;
    }
    if (this.userType != null) {
      json[r'userType'] = this.userType;
    } else {
      json[r'userType'] = null;
    }
    if (this.organization != null) {
      json[r'organization'] = this.organization;
    } else {
      json[r'organization'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
      json[r'hasPassword'] = this.hasPassword;
      json[r'isFrozen'] = this.isFrozen;
    if (this.frozenMessage != null) {
      json[r'frozenMessage'] = this.frozenMessage;
    } else {
      json[r'frozenMessage'] = null;
    }
    if (this.addNewContacts != null) {
      json[r'addNewContacts'] = this.addNewContacts;
    } else {
      json[r'addNewContacts'] = null;
    }
    if (this.ssoProvider != null) {
      json[r'ssoProvider'] = this.ssoProvider;
    } else {
      json[r'ssoProvider'] = null;
    }
    if (this.customerId != null) {
      json[r'customerId'] = this.customerId;
    } else {
      json[r'customerId'] = null;
    }
    if (this.hasOnboarded != null) {
      json[r'hasOnboarded'] = this.hasOnboarded;
    } else {
      json[r'hasOnboarded'] = null;
    }
    if (this.imapUsername != null) {
      json[r'imapUsername'] = this.imapUsername;
    } else {
      json[r'imapUsername'] = null;
    }
    if (this.imapPassword != null) {
      json[r'imapPassword'] = this.imapPassword;
    } else {
      json[r'imapPassword'] = null;
    }
    if (this.smtpUsername != null) {
      json[r'smtpUsername'] = this.smtpUsername;
    } else {
      json[r'smtpUsername'] = null;
    }
    if (this.smtpPassword != null) {
      json[r'smtpPassword'] = this.smtpPassword;
    } else {
      json[r'smtpPassword'] = null;
    }
    if (this.chargePending != null) {
      json[r'chargePending'] = this.chargePending;
    } else {
      json[r'chargePending'] = null;
    }
    if (this.enableSms != null) {
      json[r'enableSms'] = this.enableSms;
    } else {
      json[r'enableSms'] = null;
    }
    if (this.vendorEmailAddress != null) {
      json[r'vendorEmailAddress'] = this.vendorEmailAddress;
    } else {
      json[r'vendorEmailAddress'] = null;
    }
    if (this.unsubscribed != null) {
      json[r'unsubscribed'] = this.unsubscribed;
    } else {
      json[r'unsubscribed'] = null;
    }
    if (this.apiAccessToken != null) {
      json[r'apiAccessToken'] = this.apiAccessToken;
    } else {
      json[r'apiAccessToken'] = null;
    }
    if (this.phoneNumber != null) {
      json[r'phoneNumber'] = this.phoneNumber;
    } else {
      json[r'phoneNumber'] = null;
    }
    if (this.verifiedPhone != null) {
      json[r'verifiedPhone'] = this.verifiedPhone;
    } else {
      json[r'verifiedPhone'] = null;
    }
    if (this.accountRegion != null) {
      json[r'accountRegion'] = this.accountRegion;
    } else {
      json[r'accountRegion'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.accessLinkSendResult != null) {
      json[r'accessLinkSendResult'] = this.accessLinkSendResult;
    } else {
      json[r'accessLinkSendResult'] = null;
    }
    return json;
  }

  /// Returns a new [UserDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserDto(
        id: mapValueOfType<String>(json, r'id')!,
        apiKey: mapValueOfType<String>(json, r'apiKey')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        emailAddressMd5: mapValueOfType<String>(json, r'emailAddressMd5')!,
        created: mapDateTime(json, r'created', ''),
        userType: UserDtoUserTypeEnum.fromJson(json[r'userType']),
        organization: mapValueOfType<String>(json, r'organization'),
        verified: UserDtoVerifiedEnum.fromJson(json[r'verified']),
        hasPassword: mapValueOfType<bool>(json, r'hasPassword')!,
        isFrozen: mapValueOfType<bool>(json, r'isFrozen')!,
        frozenMessage: mapValueOfType<String>(json, r'frozenMessage'),
        addNewContacts: mapValueOfType<bool>(json, r'addNewContacts'),
        ssoProvider: mapValueOfType<String>(json, r'ssoProvider'),
        customerId: mapValueOfType<String>(json, r'customerId'),
        hasOnboarded: mapValueOfType<bool>(json, r'hasOnboarded'),
        imapUsername: mapValueOfType<String>(json, r'imapUsername'),
        imapPassword: mapValueOfType<String>(json, r'imapPassword'),
        smtpUsername: mapValueOfType<String>(json, r'smtpUsername'),
        smtpPassword: mapValueOfType<String>(json, r'smtpPassword'),
        chargePending: mapValueOfType<bool>(json, r'chargePending'),
        enableSms: mapValueOfType<bool>(json, r'enableSms'),
        vendorEmailAddress: mapValueOfType<String>(json, r'vendorEmailAddress'),
        unsubscribed: mapValueOfType<bool>(json, r'unsubscribed'),
        apiAccessToken: TemporaryAccessKeyDto.fromJson(json[r'apiAccessToken']),
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber'),
        verifiedPhone: UserDtoVerifiedPhoneEnum.fromJson(json[r'verifiedPhone']),
        accountRegion: UserDtoAccountRegionEnum.fromJson(json[r'accountRegion']),
        name: mapValueOfType<String>(json, r'name'),
        accessLinkSendResult: AccessLinkSendResultDto.fromJson(json[r'accessLinkSendResult']),
      );
    }
    return null;
  }

  static List<UserDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserDto> mapFromJson(dynamic json) {
    final map = <String, UserDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserDto-objects as value to a dart map
  static Map<String, List<UserDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'apiKey',
    'emailAddress',
    'emailAddressMd5',
    'hasPassword',
    'isFrozen',
  };
}


class UserDtoUserTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoUserTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SOLO = UserDtoUserTypeEnum._(r'SOLO');
  static const CHILD_SOLO = UserDtoUserTypeEnum._(r'CHILD_SOLO');
  static const CHILD_TEAM = UserDtoUserTypeEnum._(r'CHILD_TEAM');
  static const CHILD_ADMIN = UserDtoUserTypeEnum._(r'CHILD_ADMIN');

  /// List of all possible values in this [enum][UserDtoUserTypeEnum].
  static const values = <UserDtoUserTypeEnum>[
    SOLO,
    CHILD_SOLO,
    CHILD_TEAM,
    CHILD_ADMIN,
  ];

  static UserDtoUserTypeEnum? fromJson(dynamic value) => UserDtoUserTypeEnumTypeTransformer().decode(value);

  static List<UserDtoUserTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoUserTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoUserTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoUserTypeEnum] to String,
/// and [decode] dynamic data back to [UserDtoUserTypeEnum].
class UserDtoUserTypeEnumTypeTransformer {
  factory UserDtoUserTypeEnumTypeTransformer() => _instance ??= const UserDtoUserTypeEnumTypeTransformer._();

  const UserDtoUserTypeEnumTypeTransformer._();

  String encode(UserDtoUserTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoUserTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoUserTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SOLO': return UserDtoUserTypeEnum.SOLO;
        case r'CHILD_SOLO': return UserDtoUserTypeEnum.CHILD_SOLO;
        case r'CHILD_TEAM': return UserDtoUserTypeEnum.CHILD_TEAM;
        case r'CHILD_ADMIN': return UserDtoUserTypeEnum.CHILD_ADMIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoUserTypeEnumTypeTransformer] instance.
  static UserDtoUserTypeEnumTypeTransformer? _instance;
}


/// Has user accepted an organization invite
class UserDtoVerifiedEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoVerifiedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VERIFIED = UserDtoVerifiedEnum._(r'VERIFIED');
  static const PENDING = UserDtoVerifiedEnum._(r'PENDING');

  /// List of all possible values in this [enum][UserDtoVerifiedEnum].
  static const values = <UserDtoVerifiedEnum>[
    VERIFIED,
    PENDING,
  ];

  static UserDtoVerifiedEnum? fromJson(dynamic value) => UserDtoVerifiedEnumTypeTransformer().decode(value);

  static List<UserDtoVerifiedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoVerifiedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoVerifiedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoVerifiedEnum] to String,
/// and [decode] dynamic data back to [UserDtoVerifiedEnum].
class UserDtoVerifiedEnumTypeTransformer {
  factory UserDtoVerifiedEnumTypeTransformer() => _instance ??= const UserDtoVerifiedEnumTypeTransformer._();

  const UserDtoVerifiedEnumTypeTransformer._();

  String encode(UserDtoVerifiedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoVerifiedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoVerifiedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VERIFIED': return UserDtoVerifiedEnum.VERIFIED;
        case r'PENDING': return UserDtoVerifiedEnum.PENDING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoVerifiedEnumTypeTransformer] instance.
  static UserDtoVerifiedEnumTypeTransformer? _instance;
}


/// Has user accepted an organization invite
class UserDtoVerifiedPhoneEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoVerifiedPhoneEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const VERIFIED = UserDtoVerifiedPhoneEnum._(r'VERIFIED');
  static const PENDING = UserDtoVerifiedPhoneEnum._(r'PENDING');

  /// List of all possible values in this [enum][UserDtoVerifiedPhoneEnum].
  static const values = <UserDtoVerifiedPhoneEnum>[
    VERIFIED,
    PENDING,
  ];

  static UserDtoVerifiedPhoneEnum? fromJson(dynamic value) => UserDtoVerifiedPhoneEnumTypeTransformer().decode(value);

  static List<UserDtoVerifiedPhoneEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoVerifiedPhoneEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoVerifiedPhoneEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoVerifiedPhoneEnum] to String,
/// and [decode] dynamic data back to [UserDtoVerifiedPhoneEnum].
class UserDtoVerifiedPhoneEnumTypeTransformer {
  factory UserDtoVerifiedPhoneEnumTypeTransformer() => _instance ??= const UserDtoVerifiedPhoneEnumTypeTransformer._();

  const UserDtoVerifiedPhoneEnumTypeTransformer._();

  String encode(UserDtoVerifiedPhoneEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoVerifiedPhoneEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoVerifiedPhoneEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'VERIFIED': return UserDtoVerifiedPhoneEnum.VERIFIED;
        case r'PENDING': return UserDtoVerifiedPhoneEnum.PENDING;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoVerifiedPhoneEnumTypeTransformer] instance.
  static UserDtoVerifiedPhoneEnumTypeTransformer? _instance;
}


/// Default account region
class UserDtoAccountRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const UserDtoAccountRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uSWEST2ACCOUNTSTAGING = UserDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_STAGING');
  static const uSEAST1ACCOUNTSTAGING = UserDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_STAGING');
  static const eUWEST1ACCOUNTSTAGING = UserDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_STAGING');
  static const uSWEST2ACCOUNTSES1 = UserDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_1');
  static const uSEAST1ACCOUNTSES1 = UserDtoAccountRegionEnum._(r'US_EAST_1_ACCOUNT_SES_1');
  static const eUWEST1ACCOUNTSES1 = UserDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_1');
  static const uSWEST2ACCOUNTSES2 = UserDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_2');
  static const eUWEST1ACCOUNTSES2 = UserDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_SES_2');
  static const uSWEST2ACCOUNTSES3 = UserDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_SES_3');
  static const uSWEST2ACCOUNTBYTEWISE = UserDtoAccountRegionEnum._(r'US_WEST_2_ACCOUNT_BYTEWISE');
  static const eUWEST1ACCOUNTBYTEWISE = UserDtoAccountRegionEnum._(r'EU_WEST_1_ACCOUNT_BYTEWISE');
  static const uSWEST2 = UserDtoAccountRegionEnum._(r'US_WEST_2');
  static const eUWEST1 = UserDtoAccountRegionEnum._(r'EU_WEST_1');
  static const uSEAST1 = UserDtoAccountRegionEnum._(r'US_EAST_1');

  /// List of all possible values in this [enum][UserDtoAccountRegionEnum].
  static const values = <UserDtoAccountRegionEnum>[
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

  static UserDtoAccountRegionEnum? fromJson(dynamic value) => UserDtoAccountRegionEnumTypeTransformer().decode(value);

  static List<UserDtoAccountRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserDtoAccountRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserDtoAccountRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserDtoAccountRegionEnum] to String,
/// and [decode] dynamic data back to [UserDtoAccountRegionEnum].
class UserDtoAccountRegionEnumTypeTransformer {
  factory UserDtoAccountRegionEnumTypeTransformer() => _instance ??= const UserDtoAccountRegionEnumTypeTransformer._();

  const UserDtoAccountRegionEnumTypeTransformer._();

  String encode(UserDtoAccountRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoAccountRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoAccountRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US_WEST_2_ACCOUNT_STAGING': return UserDtoAccountRegionEnum.uSWEST2ACCOUNTSTAGING;
        case r'US_EAST_1_ACCOUNT_STAGING': return UserDtoAccountRegionEnum.uSEAST1ACCOUNTSTAGING;
        case r'EU_WEST_1_ACCOUNT_STAGING': return UserDtoAccountRegionEnum.eUWEST1ACCOUNTSTAGING;
        case r'US_WEST_2_ACCOUNT_SES_1': return UserDtoAccountRegionEnum.uSWEST2ACCOUNTSES1;
        case r'US_EAST_1_ACCOUNT_SES_1': return UserDtoAccountRegionEnum.uSEAST1ACCOUNTSES1;
        case r'EU_WEST_1_ACCOUNT_SES_1': return UserDtoAccountRegionEnum.eUWEST1ACCOUNTSES1;
        case r'US_WEST_2_ACCOUNT_SES_2': return UserDtoAccountRegionEnum.uSWEST2ACCOUNTSES2;
        case r'EU_WEST_1_ACCOUNT_SES_2': return UserDtoAccountRegionEnum.eUWEST1ACCOUNTSES2;
        case r'US_WEST_2_ACCOUNT_SES_3': return UserDtoAccountRegionEnum.uSWEST2ACCOUNTSES3;
        case r'US_WEST_2_ACCOUNT_BYTEWISE': return UserDtoAccountRegionEnum.uSWEST2ACCOUNTBYTEWISE;
        case r'EU_WEST_1_ACCOUNT_BYTEWISE': return UserDtoAccountRegionEnum.eUWEST1ACCOUNTBYTEWISE;
        case r'US_WEST_2': return UserDtoAccountRegionEnum.uSWEST2;
        case r'EU_WEST_1': return UserDtoAccountRegionEnum.eUWEST1;
        case r'US_EAST_1': return UserDtoAccountRegionEnum.uSEAST1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserDtoAccountRegionEnumTypeTransformer] instance.
  static UserDtoAccountRegionEnumTypeTransformer? _instance;
}


