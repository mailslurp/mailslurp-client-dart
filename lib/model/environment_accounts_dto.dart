//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EnvironmentAccountsDto {
  /// Returns a new [EnvironmentAccountsDto] instance.
  EnvironmentAccountsDto({
    this.accountGroupId,
    required this.ownerUserId,
    required this.callerUserId,
    required this.callerRole,
    required this.activeEnvironmentUserId,
    this.activeEnvironmentLabel,
    this.links = const [],
  });

  String? accountGroupId;

  String ownerUserId;

  String callerUserId;

  EnvironmentAccountsDtoCallerRoleEnum callerRole;

  String activeEnvironmentUserId;

  String? activeEnvironmentLabel;

  List<EnvironmentAccountLinkDto> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnvironmentAccountsDto &&
     other.accountGroupId == accountGroupId &&
     other.ownerUserId == ownerUserId &&
     other.callerUserId == callerUserId &&
     other.callerRole == callerRole &&
     other.activeEnvironmentUserId == activeEnvironmentUserId &&
     other.activeEnvironmentLabel == activeEnvironmentLabel &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountGroupId == null ? 0 : accountGroupId!.hashCode) +
    (ownerUserId.hashCode) +
    (callerUserId.hashCode) +
    (callerRole.hashCode) +
    (activeEnvironmentUserId.hashCode) +
    (activeEnvironmentLabel == null ? 0 : activeEnvironmentLabel!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'EnvironmentAccountsDto[accountGroupId=$accountGroupId, ownerUserId=$ownerUserId, callerUserId=$callerUserId, callerRole=$callerRole, activeEnvironmentUserId=$activeEnvironmentUserId, activeEnvironmentLabel=$activeEnvironmentLabel, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accountGroupId != null) {
      json[r'accountGroupId'] = this.accountGroupId;
    } else {
      json[r'accountGroupId'] = null;
    }
      json[r'ownerUserId'] = this.ownerUserId;
      json[r'callerUserId'] = this.callerUserId;
      json[r'callerRole'] = this.callerRole;
      json[r'activeEnvironmentUserId'] = this.activeEnvironmentUserId;
    if (this.activeEnvironmentLabel != null) {
      json[r'activeEnvironmentLabel'] = this.activeEnvironmentLabel;
    } else {
      json[r'activeEnvironmentLabel'] = null;
    }
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [EnvironmentAccountsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnvironmentAccountsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnvironmentAccountsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnvironmentAccountsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnvironmentAccountsDto(
        accountGroupId: mapValueOfType<String>(json, r'accountGroupId'),
        ownerUserId: mapValueOfType<String>(json, r'ownerUserId')!,
        callerUserId: mapValueOfType<String>(json, r'callerUserId')!,
        callerRole: EnvironmentAccountsDtoCallerRoleEnum.fromJson(json[r'callerRole'])!,
        activeEnvironmentUserId: mapValueOfType<String>(json, r'activeEnvironmentUserId')!,
        activeEnvironmentLabel: mapValueOfType<String>(json, r'activeEnvironmentLabel'),
        links: EnvironmentAccountLinkDto.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<EnvironmentAccountsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentAccountsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentAccountsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnvironmentAccountsDto> mapFromJson(dynamic json) {
    final map = <String, EnvironmentAccountsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnvironmentAccountsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnvironmentAccountsDto-objects as value to a dart map
  static Map<String, List<EnvironmentAccountsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnvironmentAccountsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnvironmentAccountsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ownerUserId',
    'callerUserId',
    'callerRole',
    'activeEnvironmentUserId',
    'links',
  };
}


class EnvironmentAccountsDtoCallerRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const EnvironmentAccountsDtoCallerRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OWNER = EnvironmentAccountsDtoCallerRoleEnum._(r'OWNER');
  static const ADMIN = EnvironmentAccountsDtoCallerRoleEnum._(r'ADMIN');
  static const MEMBER = EnvironmentAccountsDtoCallerRoleEnum._(r'MEMBER');

  /// List of all possible values in this [enum][EnvironmentAccountsDtoCallerRoleEnum].
  static const values = <EnvironmentAccountsDtoCallerRoleEnum>[
    OWNER,
    ADMIN,
    MEMBER,
  ];

  static EnvironmentAccountsDtoCallerRoleEnum? fromJson(dynamic value) => EnvironmentAccountsDtoCallerRoleEnumTypeTransformer().decode(value);

  static List<EnvironmentAccountsDtoCallerRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnvironmentAccountsDtoCallerRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnvironmentAccountsDtoCallerRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EnvironmentAccountsDtoCallerRoleEnum] to String,
/// and [decode] dynamic data back to [EnvironmentAccountsDtoCallerRoleEnum].
class EnvironmentAccountsDtoCallerRoleEnumTypeTransformer {
  factory EnvironmentAccountsDtoCallerRoleEnumTypeTransformer() => _instance ??= const EnvironmentAccountsDtoCallerRoleEnumTypeTransformer._();

  const EnvironmentAccountsDtoCallerRoleEnumTypeTransformer._();

  String encode(EnvironmentAccountsDtoCallerRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EnvironmentAccountsDtoCallerRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EnvironmentAccountsDtoCallerRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OWNER': return EnvironmentAccountsDtoCallerRoleEnum.OWNER;
        case r'ADMIN': return EnvironmentAccountsDtoCallerRoleEnum.ADMIN;
        case r'MEMBER': return EnvironmentAccountsDtoCallerRoleEnum.MEMBER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EnvironmentAccountsDtoCallerRoleEnumTypeTransformer] instance.
  static EnvironmentAccountsDtoCallerRoleEnumTypeTransformer? _instance;
}


