//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthBootstrapDto {
  /// Returns a new [AuthBootstrapDto] instance.
  AuthBootstrapDto({
    required this.accessToken,
    required this.account,
    this.userPermissions = const [],
    this.effectiveUserPermissions = const {},
    required this.homeExperience,
  });

  TemporaryAccessKeyDto? accessToken;

  AccountDto account;

  List<UserPermissionDto> userPermissions;

  Set<AuthBootstrapDtoEffectiveUserPermissionsEnum> effectiveUserPermissions;

  HomeExperienceDto homeExperience;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthBootstrapDto &&
     other.accessToken == accessToken &&
     other.account == account &&
     other.userPermissions == userPermissions &&
     other.effectiveUserPermissions == effectiveUserPermissions &&
     other.homeExperience == homeExperience;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken == null ? 0 : accessToken!.hashCode) +
    (account.hashCode) +
    (userPermissions.hashCode) +
    (effectiveUserPermissions.hashCode) +
    (homeExperience.hashCode);

  @override
  String toString() => 'AuthBootstrapDto[accessToken=$accessToken, account=$account, userPermissions=$userPermissions, effectiveUserPermissions=$effectiveUserPermissions, homeExperience=$homeExperience]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessToken != null) {
      json[r'accessToken'] = this.accessToken;
    } else {
      json[r'accessToken'] = null;
    }
      json[r'account'] = this.account;
      json[r'userPermissions'] = this.userPermissions;
      json[r'effectiveUserPermissions'] = this.effectiveUserPermissions;
      json[r'homeExperience'] = this.homeExperience;
    return json;
  }

  /// Returns a new [AuthBootstrapDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthBootstrapDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuthBootstrapDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuthBootstrapDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuthBootstrapDto(
        accessToken: TemporaryAccessKeyDto.fromJson(json[r'accessToken']),
        account: AccountDto.fromJson(json[r'account'])!,
        userPermissions: UserPermissionDto.listFromJson(json[r'userPermissions']),
        effectiveUserPermissions: AuthBootstrapDtoEffectiveUserPermissionsEnum.listFromJson(json[r'effectiveUserPermissions']).toSet(),
        homeExperience: HomeExperienceDto.fromJson(json[r'homeExperience'])!,
      );
    }
    return null;
  }

  static List<AuthBootstrapDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthBootstrapDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthBootstrapDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthBootstrapDto> mapFromJson(dynamic json) {
    final map = <String, AuthBootstrapDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthBootstrapDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthBootstrapDto-objects as value to a dart map
  static Map<String, List<AuthBootstrapDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthBootstrapDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthBootstrapDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accessToken',
    'account',
    'userPermissions',
    'effectiveUserPermissions',
    'homeExperience',
  };
}


class AuthBootstrapDtoEffectiveUserPermissionsEnum {
  /// Instantiate a new enum with the provided [value].
  const AuthBootstrapDtoEffectiveUserPermissionsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CREATE_INBOX = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'CREATE_INBOX');
  static const DELETE_INBOX = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_INBOX');
  static const DELETE_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_EMAIL');
  static const DELETE_ATTACHMENT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_ATTACHMENT');
  static const DELETE_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_SMS');
  static const UPDATE_INBOX = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'UPDATE_INBOX');
  static const READ_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'READ_EMAIL');
  static const READ_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'READ_EMAIL_DRAFT');
  static const READ_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'READ_SMS');
  static const REPLY_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'REPLY_EMAIL');
  static const CREATE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'CREATE_EMAIL_DRAFT');
  static const UPDATE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'UPDATE_EMAIL_DRAFT');
  static const DELETE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_EMAIL_DRAFT');
  static const SEND_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'SEND_EMAIL_DRAFT');
  static const AGENT_READ_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_READ_EMAIL');
  static const AGENT_REPLY_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_REPLY_EMAIL');
  static const AGENT_READ_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_READ_EMAIL_DRAFT');
  static const AGENT_CREATE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_CREATE_EMAIL_DRAFT');
  static const AGENT_UPDATE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_UPDATE_EMAIL_DRAFT');
  static const AGENT_DELETE_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_DELETE_EMAIL_DRAFT');
  static const AGENT_SEND_EMAIL_DRAFT = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_SEND_EMAIL_DRAFT');
  static const AGENT_CREATE_INBOX = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_CREATE_INBOX');
  static const AGENT_UPDATE_INBOX = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_UPDATE_INBOX');
  static const AGENT_READ_TOTP_DEVICE = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_READ_TOTP_DEVICE');
  static const AGENT_CREATE_TOTP_DEVICE = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_CREATE_TOTP_DEVICE');
  static const AGENT_UPDATE_TOTP_DEVICE = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_UPDATE_TOTP_DEVICE');
  static const AGENT_DELETE_TOTP_DEVICE = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_DELETE_TOTP_DEVICE');
  static const AGENT_GENERATE_TOTP_CODE = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_GENERATE_TOTP_CODE');
  static const AGENT_READ_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_READ_SMS');
  static const AGENT_SEND_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'AGENT_SEND_SMS');
  static const REPLY_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'REPLY_SMS');
  static const ACCESS_EMAIL = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'ACCESS_EMAIL');
  static const ACCESS_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'ACCESS_SMS');
  static const ACCESS_EMAIL_SMS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'ACCESS_EMAIL_SMS');
  static const CREATE_TEAM_USER = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'CREATE_TEAM_USER');
  static const READ_TEAM_USER = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'READ_TEAM_USER');
  static const DELETE_TEAM_USER = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'DELETE_TEAM_USER');
  static const UPDATE_TEAM_USER = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'UPDATE_TEAM_USER');
  static const MANAGE_ORGANIZATION = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_ORGANIZATION');
  static const MANAGE_ORGANIZATION_SETTINGS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_ORGANIZATION_SETTINGS');
  static const MANAGE_ORGANIZATION_SAML = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_ORGANIZATION_SAML');
  static const MANAGE_ACCOUNT_SETTINGS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_ACCOUNT_SETTINGS');
  static const MANAGE_BILLING = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_BILLING');
  static const MANAGE_API_KEYS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_API_KEYS');
  static const MANAGE_EXPORTS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_EXPORTS');
  static const MANAGE_NOTIFICATIONS = AuthBootstrapDtoEffectiveUserPermissionsEnum._(r'MANAGE_NOTIFICATIONS');

  /// List of all possible values in this [enum][AuthBootstrapDtoEffectiveUserPermissionsEnum].
  static const values = <AuthBootstrapDtoEffectiveUserPermissionsEnum>[
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

  static AuthBootstrapDtoEffectiveUserPermissionsEnum? fromJson(dynamic value) => AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer().decode(value);

  static List<AuthBootstrapDtoEffectiveUserPermissionsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthBootstrapDtoEffectiveUserPermissionsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthBootstrapDtoEffectiveUserPermissionsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AuthBootstrapDtoEffectiveUserPermissionsEnum] to String,
/// and [decode] dynamic data back to [AuthBootstrapDtoEffectiveUserPermissionsEnum].
class AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer {
  factory AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer() => _instance ??= const AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer._();

  const AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer._();

  String encode(AuthBootstrapDtoEffectiveUserPermissionsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AuthBootstrapDtoEffectiveUserPermissionsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AuthBootstrapDtoEffectiveUserPermissionsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CREATE_INBOX': return AuthBootstrapDtoEffectiveUserPermissionsEnum.CREATE_INBOX;
        case r'DELETE_INBOX': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_INBOX;
        case r'DELETE_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_EMAIL;
        case r'DELETE_ATTACHMENT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_ATTACHMENT;
        case r'DELETE_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_SMS;
        case r'UPDATE_INBOX': return AuthBootstrapDtoEffectiveUserPermissionsEnum.UPDATE_INBOX;
        case r'READ_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.READ_EMAIL;
        case r'READ_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.READ_EMAIL_DRAFT;
        case r'READ_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.READ_SMS;
        case r'REPLY_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.REPLY_EMAIL;
        case r'CREATE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.CREATE_EMAIL_DRAFT;
        case r'UPDATE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.UPDATE_EMAIL_DRAFT;
        case r'DELETE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_EMAIL_DRAFT;
        case r'SEND_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.SEND_EMAIL_DRAFT;
        case r'AGENT_READ_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_READ_EMAIL;
        case r'AGENT_REPLY_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_REPLY_EMAIL;
        case r'AGENT_READ_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_READ_EMAIL_DRAFT;
        case r'AGENT_CREATE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_CREATE_EMAIL_DRAFT;
        case r'AGENT_UPDATE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_UPDATE_EMAIL_DRAFT;
        case r'AGENT_DELETE_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_DELETE_EMAIL_DRAFT;
        case r'AGENT_SEND_EMAIL_DRAFT': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_SEND_EMAIL_DRAFT;
        case r'AGENT_CREATE_INBOX': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_CREATE_INBOX;
        case r'AGENT_UPDATE_INBOX': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_UPDATE_INBOX;
        case r'AGENT_READ_TOTP_DEVICE': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_READ_TOTP_DEVICE;
        case r'AGENT_CREATE_TOTP_DEVICE': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_CREATE_TOTP_DEVICE;
        case r'AGENT_UPDATE_TOTP_DEVICE': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_UPDATE_TOTP_DEVICE;
        case r'AGENT_DELETE_TOTP_DEVICE': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_DELETE_TOTP_DEVICE;
        case r'AGENT_GENERATE_TOTP_CODE': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_GENERATE_TOTP_CODE;
        case r'AGENT_READ_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_READ_SMS;
        case r'AGENT_SEND_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.AGENT_SEND_SMS;
        case r'REPLY_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.REPLY_SMS;
        case r'ACCESS_EMAIL': return AuthBootstrapDtoEffectiveUserPermissionsEnum.ACCESS_EMAIL;
        case r'ACCESS_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.ACCESS_SMS;
        case r'ACCESS_EMAIL_SMS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.ACCESS_EMAIL_SMS;
        case r'CREATE_TEAM_USER': return AuthBootstrapDtoEffectiveUserPermissionsEnum.CREATE_TEAM_USER;
        case r'READ_TEAM_USER': return AuthBootstrapDtoEffectiveUserPermissionsEnum.READ_TEAM_USER;
        case r'DELETE_TEAM_USER': return AuthBootstrapDtoEffectiveUserPermissionsEnum.DELETE_TEAM_USER;
        case r'UPDATE_TEAM_USER': return AuthBootstrapDtoEffectiveUserPermissionsEnum.UPDATE_TEAM_USER;
        case r'MANAGE_ORGANIZATION': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_ORGANIZATION;
        case r'MANAGE_ORGANIZATION_SETTINGS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_ORGANIZATION_SETTINGS;
        case r'MANAGE_ORGANIZATION_SAML': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_ORGANIZATION_SAML;
        case r'MANAGE_ACCOUNT_SETTINGS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_ACCOUNT_SETTINGS;
        case r'MANAGE_BILLING': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_BILLING;
        case r'MANAGE_API_KEYS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_API_KEYS;
        case r'MANAGE_EXPORTS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_EXPORTS;
        case r'MANAGE_NOTIFICATIONS': return AuthBootstrapDtoEffectiveUserPermissionsEnum.MANAGE_NOTIFICATIONS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer] instance.
  static AuthBootstrapDtoEffectiveUserPermissionsEnumTypeTransformer? _instance;
}


