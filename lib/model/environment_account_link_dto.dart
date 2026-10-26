//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EnvironmentAccountLinkDto {
  /// Returns a new [EnvironmentAccountLinkDto] instance.
  EnvironmentAccountLinkDto({
    required this.id,
    required this.accountGroupId,
    required this.userId,
    required this.emailAddress,
    this.name,
    required this.role,
    this.environmentLabel,
    required this.createdAt,
  });

  String id;

  String accountGroupId;

  String userId;

  String emailAddress;

  String? name;

  EnvironmentAccountLinkDtoRoleEnum role;

  String? environmentLabel;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentAccountLinkDto &&
     other.id == id &&
     other.accountGroupId == accountGroupId &&
     other.userId == userId &&
     other.emailAddress == emailAddress &&
     other.name == name &&
     other.role == role &&
     other.environmentLabel == environmentLabel &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (accountGroupId.hashCode) +
    (userId.hashCode) +
    (emailAddress.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (role.hashCode) +
    (environmentLabel == null ? 0 : environmentLabel!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'EnvironmentAccountLinkDto[id=$id, accountGroupId=$accountGroupId, userId=$userId, emailAddress=$emailAddress, name=$name, role=$role, environmentLabel=$environmentLabel, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'accountGroupId'] = this.accountGroupId;
      json[r'userId'] = this.userId;
      json[r'emailAddress'] = this.emailAddress;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'role'] = this.role;
    if (this.environmentLabel != null) {
      json[r'environmentLabel'] = this.environmentLabel;
    } else {
      json[r'environmentLabel'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EnvironmentAccountLinkDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvironmentAccountLinkDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnvironmentAccountLinkDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnvironmentAccountLinkDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnvironmentAccountLinkDto(
        id: mapValueOfType<String>(json, r'id')!,
        accountGroupId: mapValueOfType<String>(json, r'accountGroupId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        emailAddress: mapValueOfType<String>(json, r'emailAddress')!,
        name: mapValueOfType<String>(json, r'name'),
        role: EnvironmentAccountLinkDtoRoleEnum.fromJson(json[r'role'])!,
        environmentLabel: mapValueOfType<String>(json, r'environmentLabel'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<EnvironmentAccountLinkDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentAccountLinkDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentAccountLinkDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvironmentAccountLinkDto> mapFromJson(dynamic json) {
    final map = <String, EnvironmentAccountLinkDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentAccountLinkDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvironmentAccountLinkDto-objects as value to a dart map
  static Map<String, List<EnvironmentAccountLinkDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnvironmentAccountLinkDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnvironmentAccountLinkDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'accountGroupId',
    'userId',
    'emailAddress',
    'role',
    'createdAt',
  };
}


class EnvironmentAccountLinkDtoRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const EnvironmentAccountLinkDtoRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OWNER = EnvironmentAccountLinkDtoRoleEnum._(r'OWNER');
  static const ADMIN = EnvironmentAccountLinkDtoRoleEnum._(r'ADMIN');
  static const MEMBER = EnvironmentAccountLinkDtoRoleEnum._(r'MEMBER');

  /// List of all possible values in this [enum][EnvironmentAccountLinkDtoRoleEnum].
  static const values = <EnvironmentAccountLinkDtoRoleEnum>[
    OWNER,
    ADMIN,
    MEMBER,
  ];

  static EnvironmentAccountLinkDtoRoleEnum? fromJson(dynamic value) => EnvironmentAccountLinkDtoRoleEnumTypeTransformer().decode(value);

  static List<EnvironmentAccountLinkDtoRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentAccountLinkDtoRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentAccountLinkDtoRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EnvironmentAccountLinkDtoRoleEnum] to String,
/// and [decode] dynamic data back to [EnvironmentAccountLinkDtoRoleEnum].
class EnvironmentAccountLinkDtoRoleEnumTypeTransformer {
  factory EnvironmentAccountLinkDtoRoleEnumTypeTransformer() => _instance ??= const EnvironmentAccountLinkDtoRoleEnumTypeTransformer._();

  const EnvironmentAccountLinkDtoRoleEnumTypeTransformer._();

  String encode(EnvironmentAccountLinkDtoRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EnvironmentAccountLinkDtoRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EnvironmentAccountLinkDtoRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OWNER': return EnvironmentAccountLinkDtoRoleEnum.OWNER;
        case r'ADMIN': return EnvironmentAccountLinkDtoRoleEnum.ADMIN;
        case r'MEMBER': return EnvironmentAccountLinkDtoRoleEnum.MEMBER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EnvironmentAccountLinkDtoRoleEnumTypeTransformer] instance.
  static EnvironmentAccountLinkDtoRoleEnumTypeTransformer? _instance;
}


