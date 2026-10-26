//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPermissionDto {
  /// Returns a new [UserPermissionDto] instance.
  UserPermissionDto({
    required this.id,
    this.userId,
    this.organizationId,
    this.roleId,
    required this.permissionType,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? userId;

  String? organizationId;

  String? roleId;

  UserPermissionDtoPermissionTypeEnum permissionType;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPermissionDto &&
     other.id == id &&
     other.userId == userId &&
     other.organizationId == organizationId &&
     other.roleId == roleId &&
     other.permissionType == permissionType &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (organizationId == null ? 0 : organizationId!.hashCode) +
    (roleId == null ? 0 : roleId!.hashCode) +
    (permissionType.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'UserPermissionDto[id=$id, userId=$userId, organizationId=$organizationId, roleId=$roleId, permissionType=$permissionType, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.organizationId != null) {
      json[r'organizationId'] = this.organizationId;
    } else {
      json[r'organizationId'] = null;
    }
    if (this.roleId != null) {
      json[r'roleId'] = this.roleId;
    } else {
      json[r'roleId'] = null;
    }
      json[r'permissionType'] = this.permissionType;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [UserPermissionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPermissionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPermissionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPermissionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPermissionDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        organizationId: mapValueOfType<String>(json, r'organizationId'),
        roleId: mapValueOfType<String>(json, r'roleId'),
        permissionType: UserPermissionDtoPermissionTypeEnum.fromJson(json[r'permissionType'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<UserPermissionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPermissionDto> mapFromJson(dynamic json) {
    final map = <String, UserPermissionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPermissionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPermissionDto-objects as value to a dart map
  static Map<String, List<UserPermissionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPermissionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserPermissionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'permissionType',
    'createdAt',
    'updatedAt',
  };
}


class UserPermissionDtoPermissionTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const UserPermissionDtoPermissionTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATE_INBOX = UserPermissionDtoPermissionTypeEnum._(r'CREATE_INBOX');
  static const DELETE_INBOX = UserPermissionDtoPermissionTypeEnum._(r'DELETE_INBOX');
  static const DELETE_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'DELETE_EMAIL');
  static const DELETE_ATTACHMENT = UserPermissionDtoPermissionTypeEnum._(r'DELETE_ATTACHMENT');
  static const DELETE_SMS = UserPermissionDtoPermissionTypeEnum._(r'DELETE_SMS');
  static const UPDATE_INBOX = UserPermissionDtoPermissionTypeEnum._(r'UPDATE_INBOX');
  static const READ_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'READ_EMAIL');
  static const READ_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'READ_EMAIL_DRAFT');
  static const READ_SMS = UserPermissionDtoPermissionTypeEnum._(r'READ_SMS');
  static const REPLY_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'REPLY_EMAIL');
  static const CREATE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'CREATE_EMAIL_DRAFT');
  static const UPDATE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'UPDATE_EMAIL_DRAFT');
  static const DELETE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'DELETE_EMAIL_DRAFT');
  static const SEND_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'SEND_EMAIL_DRAFT');
  static const AGENT_READ_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'AGENT_READ_EMAIL');
  static const AGENT_REPLY_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'AGENT_REPLY_EMAIL');
  static const AGENT_READ_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'AGENT_READ_EMAIL_DRAFT');
  static const AGENT_CREATE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'AGENT_CREATE_EMAIL_DRAFT');
  static const AGENT_UPDATE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'AGENT_UPDATE_EMAIL_DRAFT');
  static const AGENT_DELETE_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'AGENT_DELETE_EMAIL_DRAFT');
  static const AGENT_SEND_EMAIL_DRAFT = UserPermissionDtoPermissionTypeEnum._(r'AGENT_SEND_EMAIL_DRAFT');
  static const AGENT_CREATE_INBOX = UserPermissionDtoPermissionTypeEnum._(r'AGENT_CREATE_INBOX');
  static const AGENT_UPDATE_INBOX = UserPermissionDtoPermissionTypeEnum._(r'AGENT_UPDATE_INBOX');
  static const AGENT_READ_TOTP_DEVICE = UserPermissionDtoPermissionTypeEnum._(r'AGENT_READ_TOTP_DEVICE');
  static const AGENT_CREATE_TOTP_DEVICE = UserPermissionDtoPermissionTypeEnum._(r'AGENT_CREATE_TOTP_DEVICE');
  static const AGENT_UPDATE_TOTP_DEVICE = UserPermissionDtoPermissionTypeEnum._(r'AGENT_UPDATE_TOTP_DEVICE');
  static const AGENT_DELETE_TOTP_DEVICE = UserPermissionDtoPermissionTypeEnum._(r'AGENT_DELETE_TOTP_DEVICE');
  static const AGENT_GENERATE_TOTP_CODE = UserPermissionDtoPermissionTypeEnum._(r'AGENT_GENERATE_TOTP_CODE');
  static const AGENT_READ_SMS = UserPermissionDtoPermissionTypeEnum._(r'AGENT_READ_SMS');
  static const AGENT_SEND_SMS = UserPermissionDtoPermissionTypeEnum._(r'AGENT_SEND_SMS');
  static const REPLY_SMS = UserPermissionDtoPermissionTypeEnum._(r'REPLY_SMS');
  static const ACCESS_EMAIL = UserPermissionDtoPermissionTypeEnum._(r'ACCESS_EMAIL');
  static const ACCESS_SMS = UserPermissionDtoPermissionTypeEnum._(r'ACCESS_SMS');
  static const ACCESS_EMAIL_SMS = UserPermissionDtoPermissionTypeEnum._(r'ACCESS_EMAIL_SMS');
  static const CREATE_TEAM_USER = UserPermissionDtoPermissionTypeEnum._(r'CREATE_TEAM_USER');
  static const READ_TEAM_USER = UserPermissionDtoPermissionTypeEnum._(r'READ_TEAM_USER');
  static const DELETE_TEAM_USER = UserPermissionDtoPermissionTypeEnum._(r'DELETE_TEAM_USER');
  static const UPDATE_TEAM_USER = UserPermissionDtoPermissionTypeEnum._(r'UPDATE_TEAM_USER');
  static const MANAGE_ORGANIZATION = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_ORGANIZATION');
  static const MANAGE_ORGANIZATION_SETTINGS = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_ORGANIZATION_SETTINGS');
  static const MANAGE_ORGANIZATION_SAML = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_ORGANIZATION_SAML');
  static const MANAGE_ACCOUNT_SETTINGS = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_ACCOUNT_SETTINGS');
  static const MANAGE_BILLING = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_BILLING');
  static const MANAGE_API_KEYS = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_API_KEYS');
  static const MANAGE_EXPORTS = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_EXPORTS');
  static const MANAGE_NOTIFICATIONS = UserPermissionDtoPermissionTypeEnum._(r'MANAGE_NOTIFICATIONS');

  /// List of all possible values in this [enum][UserPermissionDtoPermissionTypeEnum].
  static const values = <UserPermissionDtoPermissionTypeEnum>[
    CREATE_INBOX,
    DELETE_INBOX,
    DELETE_EMAIL,
    DELETE_ATTACHMENT,
    DELETE_SMS,
    UPDATE_INBOX,
    READ_EMAIL,
    READ_EMAIL_DRAFT,
    READ_SMS,
    REPLY_EMAIL,
    CREATE_EMAIL_DRAFT,
    UPDATE_EMAIL_DRAFT,
    DELETE_EMAIL_DRAFT,
    SEND_EMAIL_DRAFT,
    AGENT_READ_EMAIL,
    AGENT_REPLY_EMAIL,
    AGENT_READ_EMAIL_DRAFT,
    AGENT_CREATE_EMAIL_DRAFT,
    AGENT_UPDATE_EMAIL_DRAFT,
    AGENT_DELETE_EMAIL_DRAFT,
    AGENT_SEND_EMAIL_DRAFT,
    AGENT_CREATE_INBOX,
    AGENT_UPDATE_INBOX,
    AGENT_READ_TOTP_DEVICE,
    AGENT_CREATE_TOTP_DEVICE,
    AGENT_UPDATE_TOTP_DEVICE,
    AGENT_DELETE_TOTP_DEVICE,
    AGENT_GENERATE_TOTP_CODE,
    AGENT_READ_SMS,
    AGENT_SEND_SMS,
    REPLY_SMS,
    ACCESS_EMAIL,
    ACCESS_SMS,
    ACCESS_EMAIL_SMS,
    CREATE_TEAM_USER,
    READ_TEAM_USER,
    DELETE_TEAM_USER,
    UPDATE_TEAM_USER,
    MANAGE_ORGANIZATION,
    MANAGE_ORGANIZATION_SETTINGS,
    MANAGE_ORGANIZATION_SAML,
    MANAGE_ACCOUNT_SETTINGS,
    MANAGE_BILLING,
    MANAGE_API_KEYS,
    MANAGE_EXPORTS,
    MANAGE_NOTIFICATIONS,
  ];

  static UserPermissionDtoPermissionTypeEnum? fromJson(dynamic value) => UserPermissionDtoPermissionTypeEnumTypeTransformer().decode(value);

  static List<UserPermissionDtoPermissionTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPermissionDtoPermissionTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPermissionDtoPermissionTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UserPermissionDtoPermissionTypeEnum] to String,
/// and [decode] dynamic data back to [UserPermissionDtoPermissionTypeEnum].
class UserPermissionDtoPermissionTypeEnumTypeTransformer {
  factory UserPermissionDtoPermissionTypeEnumTypeTransformer() => _instance ??= const UserPermissionDtoPermissionTypeEnumTypeTransformer._();

  const UserPermissionDtoPermissionTypeEnumTypeTransformer._();

  String encode(UserPermissionDtoPermissionTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserPermissionDtoPermissionTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserPermissionDtoPermissionTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATE_INBOX': return UserPermissionDtoPermissionTypeEnum.CREATE_INBOX;
        case r'DELETE_INBOX': return UserPermissionDtoPermissionTypeEnum.DELETE_INBOX;
        case r'DELETE_EMAIL': return UserPermissionDtoPermissionTypeEnum.DELETE_EMAIL;
        case r'DELETE_ATTACHMENT': return UserPermissionDtoPermissionTypeEnum.DELETE_ATTACHMENT;
        case r'DELETE_SMS': return UserPermissionDtoPermissionTypeEnum.DELETE_SMS;
        case r'UPDATE_INBOX': return UserPermissionDtoPermissionTypeEnum.UPDATE_INBOX;
        case r'READ_EMAIL': return UserPermissionDtoPermissionTypeEnum.READ_EMAIL;
        case r'READ_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.READ_EMAIL_DRAFT;
        case r'READ_SMS': return UserPermissionDtoPermissionTypeEnum.READ_SMS;
        case r'REPLY_EMAIL': return UserPermissionDtoPermissionTypeEnum.REPLY_EMAIL;
        case r'CREATE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.CREATE_EMAIL_DRAFT;
        case r'UPDATE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.UPDATE_EMAIL_DRAFT;
        case r'DELETE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.DELETE_EMAIL_DRAFT;
        case r'SEND_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.SEND_EMAIL_DRAFT;
        case r'AGENT_READ_EMAIL': return UserPermissionDtoPermissionTypeEnum.AGENT_READ_EMAIL;
        case r'AGENT_REPLY_EMAIL': return UserPermissionDtoPermissionTypeEnum.AGENT_REPLY_EMAIL;
        case r'AGENT_READ_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.AGENT_READ_EMAIL_DRAFT;
        case r'AGENT_CREATE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.AGENT_CREATE_EMAIL_DRAFT;
        case r'AGENT_UPDATE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.AGENT_UPDATE_EMAIL_DRAFT;
        case r'AGENT_DELETE_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.AGENT_DELETE_EMAIL_DRAFT;
        case r'AGENT_SEND_EMAIL_DRAFT': return UserPermissionDtoPermissionTypeEnum.AGENT_SEND_EMAIL_DRAFT;
        case r'AGENT_CREATE_INBOX': return UserPermissionDtoPermissionTypeEnum.AGENT_CREATE_INBOX;
        case r'AGENT_UPDATE_INBOX': return UserPermissionDtoPermissionTypeEnum.AGENT_UPDATE_INBOX;
        case r'AGENT_READ_TOTP_DEVICE': return UserPermissionDtoPermissionTypeEnum.AGENT_READ_TOTP_DEVICE;
        case r'AGENT_CREATE_TOTP_DEVICE': return UserPermissionDtoPermissionTypeEnum.AGENT_CREATE_TOTP_DEVICE;
        case r'AGENT_UPDATE_TOTP_DEVICE': return UserPermissionDtoPermissionTypeEnum.AGENT_UPDATE_TOTP_DEVICE;
        case r'AGENT_DELETE_TOTP_DEVICE': return UserPermissionDtoPermissionTypeEnum.AGENT_DELETE_TOTP_DEVICE;
        case r'AGENT_GENERATE_TOTP_CODE': return UserPermissionDtoPermissionTypeEnum.AGENT_GENERATE_TOTP_CODE;
        case r'AGENT_READ_SMS': return UserPermissionDtoPermissionTypeEnum.AGENT_READ_SMS;
        case r'AGENT_SEND_SMS': return UserPermissionDtoPermissionTypeEnum.AGENT_SEND_SMS;
        case r'REPLY_SMS': return UserPermissionDtoPermissionTypeEnum.REPLY_SMS;
        case r'ACCESS_EMAIL': return UserPermissionDtoPermissionTypeEnum.ACCESS_EMAIL;
        case r'ACCESS_SMS': return UserPermissionDtoPermissionTypeEnum.ACCESS_SMS;
        case r'ACCESS_EMAIL_SMS': return UserPermissionDtoPermissionTypeEnum.ACCESS_EMAIL_SMS;
        case r'CREATE_TEAM_USER': return UserPermissionDtoPermissionTypeEnum.CREATE_TEAM_USER;
        case r'READ_TEAM_USER': return UserPermissionDtoPermissionTypeEnum.READ_TEAM_USER;
        case r'DELETE_TEAM_USER': return UserPermissionDtoPermissionTypeEnum.DELETE_TEAM_USER;
        case r'UPDATE_TEAM_USER': return UserPermissionDtoPermissionTypeEnum.UPDATE_TEAM_USER;
        case r'MANAGE_ORGANIZATION': return UserPermissionDtoPermissionTypeEnum.MANAGE_ORGANIZATION;
        case r'MANAGE_ORGANIZATION_SETTINGS': return UserPermissionDtoPermissionTypeEnum.MANAGE_ORGANIZATION_SETTINGS;
        case r'MANAGE_ORGANIZATION_SAML': return UserPermissionDtoPermissionTypeEnum.MANAGE_ORGANIZATION_SAML;
        case r'MANAGE_ACCOUNT_SETTINGS': return UserPermissionDtoPermissionTypeEnum.MANAGE_ACCOUNT_SETTINGS;
        case r'MANAGE_BILLING': return UserPermissionDtoPermissionTypeEnum.MANAGE_BILLING;
        case r'MANAGE_API_KEYS': return UserPermissionDtoPermissionTypeEnum.MANAGE_API_KEYS;
        case r'MANAGE_EXPORTS': return UserPermissionDtoPermissionTypeEnum.MANAGE_EXPORTS;
        case r'MANAGE_NOTIFICATIONS': return UserPermissionDtoPermissionTypeEnum.MANAGE_NOTIFICATIONS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [UserPermissionDtoPermissionTypeEnumTypeTransformer] instance.
  static UserPermissionDtoPermissionTypeEnumTypeTransformer? _instance;
}


