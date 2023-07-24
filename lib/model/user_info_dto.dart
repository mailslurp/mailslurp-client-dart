//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserInfoDto {
  /// Returns a new [UserInfoDto] instance.
  UserInfoDto({
    required this.id,
    required this.emailAddress,
    required this.accountState,
    this.subscriptionType,
    required this.accountType,
    required this.createdAt,
  });

  String id;

  String emailAddress;

  UserInfoDtoAccountStateEnum accountState;

  UserInfoDtoSubscriptionTypeEnum? subscriptionType;

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
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (emailAddress.hashCode) +
    (accountState.hashCode) +
    (subscriptionType == null ? 0 : subscriptionType!.hashCode) +
    (accountType.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'UserInfoDto[id=$id, emailAddress=$emailAddress, accountState=$accountState, subscriptionType=$subscriptionType, accountType=$accountType, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'emailAddress'] = this.emailAddress;
      json[r'accountState'] = this.accountState;
    if (this.subscriptionType != null) {
      json[r'subscriptionType'] = this.subscriptionType;
    } else {
      json[r'subscriptionType'] = null;
    }
      json[r'accountType'] = this.accountType;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserInfoDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserInfoDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserInfoDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserInfoDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserInfoDto(
        id: mapValueOfType<String>(json, r'id')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        accountState: UserInfoDtoAccountStateEnum.fromJson(json[r'accountState'])!,
        subscriptionType: UserInfoDtoSubscriptionTypeEnum.fromJson(json[r'subscriptionType']),
        accountType: UserInfoDtoAccountTypeEnum.fromJson(json[r'accountType'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<UserInfoDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfoDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfoDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserInfoDto> mapFromJson(dynamic json) {
    final map = <String, UserInfoDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserInfoDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserInfoDto-objects as value to a dart map
  static Map<String, List<UserInfoDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserInfoDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserInfoDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'emailAddress',
    'accountState',
    'accountType',
    'createdAt',
  };
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

  static UserInfoDtoAccountStateEnum? fromJson(dynamic value) => UserInfoDtoAccountStateEnumTypeTransformer().decode(value);

  static List<UserInfoDtoAccountStateEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfoDtoAccountStateEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfoDtoAccountStateEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserInfoDtoAccountStateEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoAccountStateEnum].
class UserInfoDtoAccountStateEnumTypeTransformer {
  factory UserInfoDtoAccountStateEnumTypeTransformer() => _instance ??= const UserInfoDtoAccountStateEnumTypeTransformer._();

  const UserInfoDtoAccountStateEnumTypeTransformer._();

  String encode(UserInfoDtoAccountStateEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoAccountStateEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoAccountStateEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FROZEN': return UserInfoDtoAccountStateEnum.FROZEN;
        case r'ACTIVE': return UserInfoDtoAccountStateEnum.ACTIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserInfoDtoAccountStateEnumTypeTransformer] instance.
  static UserInfoDtoAccountStateEnumTypeTransformer? _instance;
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

  static UserInfoDtoSubscriptionTypeEnum? fromJson(dynamic value) => UserInfoDtoSubscriptionTypeEnumTypeTransformer().decode(value);

  static List<UserInfoDtoSubscriptionTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfoDtoSubscriptionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfoDtoSubscriptionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserInfoDtoSubscriptionTypeEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoSubscriptionTypeEnum].
class UserInfoDtoSubscriptionTypeEnumTypeTransformer {
  factory UserInfoDtoSubscriptionTypeEnumTypeTransformer() => _instance ??= const UserInfoDtoSubscriptionTypeEnumTypeTransformer._();

  const UserInfoDtoSubscriptionTypeEnumTypeTransformer._();

  String encode(UserInfoDtoSubscriptionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoSubscriptionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoSubscriptionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PRO_MONTHLY': return UserInfoDtoSubscriptionTypeEnum.PRO_MONTHLY;
        case r'STARTER': return UserInfoDtoSubscriptionTypeEnum.STARTER;
        case r'TEAM': return UserInfoDtoSubscriptionTypeEnum.TEAM;
        case r'ENTERPRISE': return UserInfoDtoSubscriptionTypeEnum.ENTERPRISE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserInfoDtoSubscriptionTypeEnumTypeTransformer] instance.
  static UserInfoDtoSubscriptionTypeEnumTypeTransformer? _instance;
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
  static const CHILD_ADMIN = UserInfoDtoAccountTypeEnum._(r'CHILD_ADMIN');

  /// List of all possible values in this [enum][UserInfoDtoAccountTypeEnum].
  static const values = <UserInfoDtoAccountTypeEnum>[
    SOLO,
    CHILD_SOLO,
    CHILD_TEAM,
    CHILD_ADMIN,
  ];

  static UserInfoDtoAccountTypeEnum? fromJson(dynamic value) => UserInfoDtoAccountTypeEnumTypeTransformer().decode(value);

  static List<UserInfoDtoAccountTypeEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserInfoDtoAccountTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserInfoDtoAccountTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserInfoDtoAccountTypeEnum] to String,
/// and [decode] dynamic data back to [UserInfoDtoAccountTypeEnum].
class UserInfoDtoAccountTypeEnumTypeTransformer {
  factory UserInfoDtoAccountTypeEnumTypeTransformer() => _instance ??= const UserInfoDtoAccountTypeEnumTypeTransformer._();

  const UserInfoDtoAccountTypeEnumTypeTransformer._();

  String encode(UserInfoDtoAccountTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserInfoDtoAccountTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserInfoDtoAccountTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SOLO': return UserInfoDtoAccountTypeEnum.SOLO;
        case r'CHILD_SOLO': return UserInfoDtoAccountTypeEnum.CHILD_SOLO;
        case r'CHILD_TEAM': return UserInfoDtoAccountTypeEnum.CHILD_TEAM;
        case r'CHILD_ADMIN': return UserInfoDtoAccountTypeEnum.CHILD_ADMIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserInfoDtoAccountTypeEnumTypeTransformer] instance.
  static UserInfoDtoAccountTypeEnumTypeTransformer? _instance;
}


