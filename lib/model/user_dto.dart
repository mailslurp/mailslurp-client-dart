//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserDto {
  /// Returns a new [UserDto] instance.
  UserDto({
    @required this.id,
    @required this.apiKey,
    @required this.emailAddress,
    @required this.emailAddressMd5,
    this.created,
    this.userType,
    this.organization,
    this.verified,
    @required this.hasPassword,
    @required this.isFrozen,
    this.addNewContacts,
    this.ssoProvider,
    this.customerId,
    this.hasOnboarded,
    this.imapUsername,
    this.imapPassword,
    this.smtpUsername,
    this.smtpPassword,
  });

  String id;

  String apiKey;

  String emailAddress;

  String emailAddressMd5;

  DateTime created;

  UserDtoUserTypeEnum userType;

  /// Does user belong to an organization
  String organization;

  /// Has user accepted an organization invite
  UserDtoVerifiedEnum verified;

  bool hasPassword;

  bool isFrozen;

  bool addNewContacts;

  String ssoProvider;

  String customerId;

  bool hasOnboarded;

  String imapUsername;

  String imapPassword;

  String smtpUsername;

  String smtpPassword;

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
     other.addNewContacts == addNewContacts &&
     other.ssoProvider == ssoProvider &&
     other.customerId == customerId &&
     other.hasOnboarded == hasOnboarded &&
     other.imapUsername == imapUsername &&
     other.imapPassword == imapPassword &&
     other.smtpUsername == smtpUsername &&
     other.smtpPassword == smtpPassword;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (apiKey == null ? 0 : apiKey.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (emailAddressMd5 == null ? 0 : emailAddressMd5.hashCode) +
    (created == null ? 0 : created.hashCode) +
    (userType == null ? 0 : userType.hashCode) +
    (organization == null ? 0 : organization.hashCode) +
    (verified == null ? 0 : verified.hashCode) +
    (hasPassword == null ? 0 : hasPassword.hashCode) +
    (isFrozen == null ? 0 : isFrozen.hashCode) +
    (addNewContacts == null ? 0 : addNewContacts.hashCode) +
    (ssoProvider == null ? 0 : ssoProvider.hashCode) +
    (customerId == null ? 0 : customerId.hashCode) +
    (hasOnboarded == null ? 0 : hasOnboarded.hashCode) +
    (imapUsername == null ? 0 : imapUsername.hashCode) +
    (imapPassword == null ? 0 : imapPassword.hashCode) +
    (smtpUsername == null ? 0 : smtpUsername.hashCode) +
    (smtpPassword == null ? 0 : smtpPassword.hashCode);

  @override
  String toString() => 'UserDto[id=$id, apiKey=$apiKey, emailAddress=$emailAddress, emailAddressMd5=$emailAddressMd5, created=$created, userType=$userType, organization=$organization, verified=$verified, hasPassword=$hasPassword, isFrozen=$isFrozen, addNewContacts=$addNewContacts, ssoProvider=$ssoProvider, customerId=$customerId, hasOnboarded=$hasOnboarded, imapUsername=$imapUsername, imapPassword=$imapPassword, smtpUsername=$smtpUsername, smtpPassword=$smtpPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'apiKey'] = apiKey;
      json[r'emailAddress'] = emailAddress;
      json[r'emailAddressMd5'] = emailAddressMd5;
    if (created != null) {
      json[r'created'] = created.toUtc().toIso8601String();
    }
    if (userType != null) {
      json[r'userType'] = userType;
    }
    if (organization != null) {
      json[r'organization'] = organization;
    }
    if (verified != null) {
      json[r'verified'] = verified;
    }
      json[r'hasPassword'] = hasPassword;
      json[r'isFrozen'] = isFrozen;
    if (addNewContacts != null) {
      json[r'addNewContacts'] = addNewContacts;
    }
    if (ssoProvider != null) {
      json[r'ssoProvider'] = ssoProvider;
    }
    if (customerId != null) {
      json[r'customerId'] = customerId;
    }
    if (hasOnboarded != null) {
      json[r'hasOnboarded'] = hasOnboarded;
    }
    if (imapUsername != null) {
      json[r'imapUsername'] = imapUsername;
    }
    if (imapPassword != null) {
      json[r'imapPassword'] = imapPassword;
    }
    if (smtpUsername != null) {
      json[r'smtpUsername'] = smtpUsername;
    }
    if (smtpPassword != null) {
      json[r'smtpPassword'] = smtpPassword;
    }
    return json;
  }

  /// Returns a new [UserDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserDto(
        id: json[r'id'],
        apiKey: json[r'apiKey'],
        emailAddress: json[r'emailAddress'],
        emailAddressMd5: json[r'emailAddressMd5'],
        created: json[r'created'] == null
          ? null
          : DateTime.parse(json[r'created']),
        userType: UserDtoUserTypeEnum.fromJson(json[r'userType']),
        organization: json[r'organization'],
        verified: UserDtoVerifiedEnum.fromJson(json[r'verified']),
        hasPassword: json[r'hasPassword'],
        isFrozen: json[r'isFrozen'],
        addNewContacts: json[r'addNewContacts'],
        ssoProvider: json[r'ssoProvider'],
        customerId: json[r'customerId'],
        hasOnboarded: json[r'hasOnboarded'],
        imapUsername: json[r'imapUsername'],
        imapPassword: json[r'imapPassword'],
        smtpUsername: json[r'smtpUsername'],
        smtpPassword: json[r'smtpPassword'],
    );

  static List<UserDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserDto>[]
      : json.map((v) => UserDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserDto-objects as value to a dart map
  static Map<String, List<UserDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  /// List of all possible values in this [enum][UserDtoUserTypeEnum].
  static const values = <UserDtoUserTypeEnum>[
    SOLO,
    CHILD_SOLO,
    CHILD_TEAM,
  ];

  static UserDtoUserTypeEnum fromJson(dynamic value) =>
    UserDtoUserTypeEnumTypeTransformer().decode(value);

  static List<UserDtoUserTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserDtoUserTypeEnum>[]
      : json
          .map((value) => UserDtoUserTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserDtoUserTypeEnum] to String,
/// and [decode] dynamic data back to [UserDtoUserTypeEnum].
class UserDtoUserTypeEnumTypeTransformer {
  const UserDtoUserTypeEnumTypeTransformer._();

  factory UserDtoUserTypeEnumTypeTransformer() => _instance ??= UserDtoUserTypeEnumTypeTransformer._();

  String encode(UserDtoUserTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoUserTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoUserTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SOLO': return UserDtoUserTypeEnum.SOLO;
      case r'CHILD_SOLO': return UserDtoUserTypeEnum.CHILD_SOLO;
      case r'CHILD_TEAM': return UserDtoUserTypeEnum.CHILD_TEAM;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserDtoUserTypeEnumTypeTransformer] instance.
  static UserDtoUserTypeEnumTypeTransformer _instance;
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

  static UserDtoVerifiedEnum fromJson(dynamic value) =>
    UserDtoVerifiedEnumTypeTransformer().decode(value);

  static List<UserDtoVerifiedEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserDtoVerifiedEnum>[]
      : json
          .map((value) => UserDtoVerifiedEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserDtoVerifiedEnum] to String,
/// and [decode] dynamic data back to [UserDtoVerifiedEnum].
class UserDtoVerifiedEnumTypeTransformer {
  const UserDtoVerifiedEnumTypeTransformer._();

  factory UserDtoVerifiedEnumTypeTransformer() => _instance ??= UserDtoVerifiedEnumTypeTransformer._();

  String encode(UserDtoVerifiedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserDtoVerifiedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserDtoVerifiedEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'VERIFIED': return UserDtoVerifiedEnum.VERIFIED;
      case r'PENDING': return UserDtoVerifiedEnum.PENDING;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserDtoVerifiedEnumTypeTransformer] instance.
  static UserDtoVerifiedEnumTypeTransformer _instance;
}

