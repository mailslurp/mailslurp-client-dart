//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserInfoDto {
  /// Returns a new [UserInfoDto] instance.
  UserInfoDto({
    @required this.id,
    @required this.emailAddress,
    @required this.accountState,
    this.subscriptionType,
    @required this.accountType,
    @required this.createdAt,
  });

  String id;

  String emailAddress;

  UserInfoDtoAccountStateEnum accountState;

  UserInfoDtoSubscriptionTypeEnum subscriptionType;

  UserInfoDtoAccountTypeEnum accountType;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserInfoDto &&
     other.id == id &&
     other.emailAddress == emailAddress &&
     other.accountState == accountState &&
     other.subscriptionType == subscriptionType &&
     other.accountType == accountType &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (accountState == null ? 0 : accountState.hashCode) +
    (subscriptionType == null ? 0 : subscriptionType.hashCode) +
    (accountType == null ? 0 : accountType.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'UserInfoDto[id=$id, emailAddress=$emailAddress, accountState=$accountState, subscriptionType=$subscriptionType, accountType=$accountType, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'emailAddress'] = emailAddress;
      json[r'accountState'] = accountState;
    if (subscriptionType != null) {
      json[r'subscriptionType'] = subscriptionType;
    }
      json[r'accountType'] = accountType;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserInfoDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserInfoDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserInfoDto(
        id: json[r'id'],
        emailAddress: json[r'emailAddress'],
        accountState: UserInfoDtoAccountStateEnum.fromJson(json[r'accountState']),
        subscriptionType: UserInfoDtoSubscriptionTypeEnum.fromJson(json[r'subscriptionType']),
        accountType: UserInfoDtoAccountTypeEnum.fromJson(json[r'accountType']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<UserInfoDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserInfoDto>[]
      : json.map((v) => UserInfoDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserInfoDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserInfoDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserInfoDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserInfoDto-objects as value to a dart map
  static Map<String, List<UserInfoDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserInfoDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserInfoDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class UserInfoDtoAccountStateEnum {
  /// Instantiate a new enum with the provided [value].
  const UserInfoDtoAccountStateEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const FROZEN = UserInfoDtoAccountStateEnum._(r'FROZEN');
  static const ACTIVE = UserInfoDtoAccountStateEnum._(r'ACTIVE');

  /// List of all possible values in this [enum][UserInfoDtoAccountStateEnum].
  static const values = <UserInfoDtoAccountStateEnum>[
    FROZEN,
    ACTIVE,
  ];

  static UserInfoDtoAccountStateEnum fromJson(dynamic value) =>
    UserInfoDtoAccountStateEnumTypeTransformer().decode(value);

  static List<UserInfoDtoAccountStateEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserInfoDtoAccountStateEnum>[]
      : json
          .map((value) => UserInfoDtoAccountStateEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserInfoDtoAccountStateEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoAccountStateEnum].
class UserInfoDtoAccountStateEnumTypeTransformer {
  const UserInfoDtoAccountStateEnumTypeTransformer._();

  factory UserInfoDtoAccountStateEnumTypeTransformer() => _instance ??= UserInfoDtoAccountStateEnumTypeTransformer._();

  String encode(UserInfoDtoAccountStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoAccountStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoAccountStateEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'FROZEN': return UserInfoDtoAccountStateEnum.FROZEN;
      case r'ACTIVE': return UserInfoDtoAccountStateEnum.ACTIVE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserInfoDtoAccountStateEnumTypeTransformer] instance.
  static UserInfoDtoAccountStateEnumTypeTransformer _instance;
}


class UserInfoDtoSubscriptionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserInfoDtoSubscriptionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRO_MONTHLY = UserInfoDtoSubscriptionTypeEnum._(r'PRO_MONTHLY');
  static const STARTER = UserInfoDtoSubscriptionTypeEnum._(r'STARTER');
  static const TEAM = UserInfoDtoSubscriptionTypeEnum._(r'TEAM');
  static const ENTERPRISE = UserInfoDtoSubscriptionTypeEnum._(r'ENTERPRISE');

  /// List of all possible values in this [enum][UserInfoDtoSubscriptionTypeEnum].
  static const values = <UserInfoDtoSubscriptionTypeEnum>[
    PRO_MONTHLY,
    STARTER,
    TEAM,
    ENTERPRISE,
  ];

  static UserInfoDtoSubscriptionTypeEnum fromJson(dynamic value) =>
    UserInfoDtoSubscriptionTypeEnumTypeTransformer().decode(value);

  static List<UserInfoDtoSubscriptionTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserInfoDtoSubscriptionTypeEnum>[]
      : json
          .map((value) => UserInfoDtoSubscriptionTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserInfoDtoSubscriptionTypeEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoSubscriptionTypeEnum].
class UserInfoDtoSubscriptionTypeEnumTypeTransformer {
  const UserInfoDtoSubscriptionTypeEnumTypeTransformer._();

  factory UserInfoDtoSubscriptionTypeEnumTypeTransformer() => _instance ??= UserInfoDtoSubscriptionTypeEnumTypeTransformer._();

  String encode(UserInfoDtoSubscriptionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoSubscriptionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoSubscriptionTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PRO_MONTHLY': return UserInfoDtoSubscriptionTypeEnum.PRO_MONTHLY;
      case r'STARTER': return UserInfoDtoSubscriptionTypeEnum.STARTER;
      case r'TEAM': return UserInfoDtoSubscriptionTypeEnum.TEAM;
      case r'ENTERPRISE': return UserInfoDtoSubscriptionTypeEnum.ENTERPRISE;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserInfoDtoSubscriptionTypeEnumTypeTransformer] instance.
  static UserInfoDtoSubscriptionTypeEnumTypeTransformer _instance;
}


class UserInfoDtoAccountTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserInfoDtoAccountTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SOLO = UserInfoDtoAccountTypeEnum._(r'SOLO');
  static const CHILD_SOLO = UserInfoDtoAccountTypeEnum._(r'CHILD_SOLO');
  static const CHILD_TEAM = UserInfoDtoAccountTypeEnum._(r'CHILD_TEAM');

  /// List of all possible values in this [enum][UserInfoDtoAccountTypeEnum].
  static const values = <UserInfoDtoAccountTypeEnum>[
    SOLO,
    CHILD_SOLO,
    CHILD_TEAM,
  ];

  static UserInfoDtoAccountTypeEnum fromJson(dynamic value) =>
    UserInfoDtoAccountTypeEnumTypeTransformer().decode(value);

  static List<UserInfoDtoAccountTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserInfoDtoAccountTypeEnum>[]
      : json
          .map((value) => UserInfoDtoAccountTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserInfoDtoAccountTypeEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoAccountTypeEnum].
class UserInfoDtoAccountTypeEnumTypeTransformer {
  const UserInfoDtoAccountTypeEnumTypeTransformer._();

  factory UserInfoDtoAccountTypeEnumTypeTransformer() => _instance ??= UserInfoDtoAccountTypeEnumTypeTransformer._();

  String encode(UserInfoDtoAccountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoAccountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoAccountTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'SOLO': return UserInfoDtoAccountTypeEnum.SOLO;
      case r'CHILD_SOLO': return UserInfoDtoAccountTypeEnum.CHILD_SOLO;
      case r'CHILD_TEAM': return UserInfoDtoAccountTypeEnum.CHILD_TEAM;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserInfoDtoAccountTypeEnumTypeTransformer] instance.
  static UserInfoDtoAccountTypeEnumTypeTransformer _instance;
}

