//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AgentCapabilitiesDto {
  /// Returns a new [AgentCapabilitiesDto] instance.
  AgentCapabilitiesDto({
    required this.connectionId,
    required this.accountId,
    required this.name,
    required this.role,
    this.permissions = const {},
    required this.scope,
    required this.features,
    required this.limits,
    required this.apiVersion,
  });

  String connectionId;

  String accountId;

  String name;

  AgentCapabilitiesDtoRoleEnum role;

  Set<String> permissions;

  AgentCapabilityScopeDto scope;

  AgentCapabilityFeaturesDto features;

  AgentCapabilityLimitsDto limits;

  String apiVersion;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AgentCapabilitiesDto &&
     other.connectionId == connectionId &&
     other.accountId == accountId &&
     other.name == name &&
     other.role == role &&
     other.permissions == permissions &&
     other.scope == scope &&
     other.features == features &&
     other.limits == limits &&
     other.apiVersion == apiVersion;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionId.hashCode) +
    (accountId.hashCode) +
    (name.hashCode) +
    (role.hashCode) +
    (permissions.hashCode) +
    (scope.hashCode) +
    (features.hashCode) +
    (limits.hashCode) +
    (apiVersion.hashCode);

  @override
  String toString() => 'AgentCapabilitiesDto[connectionId=$connectionId, accountId=$accountId, name=$name, role=$role, permissions=$permissions, scope=$scope, features=$features, limits=$limits, apiVersion=$apiVersion]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectionId'] = this.connectionId;
      json[r'accountId'] = this.accountId;
      json[r'name'] = this.name;
      json[r'role'] = this.role;
      json[r'permissions'] = this.permissions;
      json[r'scope'] = this.scope;
      json[r'features'] = this.features;
      json[r'limits'] = this.limits;
      json[r'apiVersion'] = this.apiVersion;
    return json;
  }

  /// Returns a new [AgentCapabilitiesDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AgentCapabilitiesDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AgentCapabilitiesDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AgentCapabilitiesDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AgentCapabilitiesDto(
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        accountId: mapValueOfType<String>(json, r'accountId')!,
        name: mapValueOfType<String>(json, r'name')!,
        role: AgentCapabilitiesDtoRoleEnum.fromJson(json[r'role'])!,
        permissions: json[r'permissions'] is Set
            ? (json[r'permissions'] as Set).cast<String>()
            : const {},
        scope: AgentCapabilityScopeDto.fromJson(json[r'scope'])!,
        features: AgentCapabilityFeaturesDto.fromJson(json[r'features'])!,
        limits: AgentCapabilityLimitsDto.fromJson(json[r'limits'])!,
        apiVersion: mapValueOfType<String>(json, r'apiVersion')!,
      );
    }
    return null;
  }

  static List<AgentCapabilitiesDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCapabilitiesDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCapabilitiesDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AgentCapabilitiesDto> mapFromJson(dynamic json) {
    final map = <String, AgentCapabilitiesDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AgentCapabilitiesDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AgentCapabilitiesDto-objects as value to a dart map
  static Map<String, List<AgentCapabilitiesDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AgentCapabilitiesDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AgentCapabilitiesDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'connectionId',
    'accountId',
    'name',
    'role',
    'permissions',
    'scope',
    'features',
    'limits',
    'apiVersion',
  };
}


class AgentCapabilitiesDtoRoleEnum {
  /// Instantiate a new enum with the provided [value].
  const AgentCapabilitiesDtoRoleEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const READ_ONLY = AgentCapabilitiesDtoRoleEnum._(r'AGENT_READ_ONLY');
  static const DRAFT_ONLY = AgentCapabilitiesDtoRoleEnum._(r'AGENT_DRAFT_ONLY');
  static const RESPONDER = AgentCapabilitiesDtoRoleEnum._(r'AGENT_RESPONDER');
  static const INBOX_MANAGER = AgentCapabilitiesDtoRoleEnum._(r'AGENT_INBOX_MANAGER');
  static const SUPPORT = AgentCapabilitiesDtoRoleEnum._(r'AGENT_SUPPORT');
  static const TOTP_MANAGER = AgentCapabilitiesDtoRoleEnum._(r'AGENT_TOTP_MANAGER');

  /// List of all possible values in this [enum][AgentCapabilitiesDtoRoleEnum].
  static const values = <AgentCapabilitiesDtoRoleEnum>[
    READ_ONLY,
    DRAFT_ONLY,
    RESPONDER,
    INBOX_MANAGER,
    SUPPORT,
    TOTP_MANAGER,
  ];

  static AgentCapabilitiesDtoRoleEnum? fromJson(dynamic value) => AgentCapabilitiesDtoRoleEnumTypeTransformer().decode(value);

  static List<AgentCapabilitiesDtoRoleEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AgentCapabilitiesDtoRoleEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AgentCapabilitiesDtoRoleEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AgentCapabilitiesDtoRoleEnum] to String,
/// and [decode] dynamic data back to [AgentCapabilitiesDtoRoleEnum].
class AgentCapabilitiesDtoRoleEnumTypeTransformer {
  factory AgentCapabilitiesDtoRoleEnumTypeTransformer() => _instance ??= const AgentCapabilitiesDtoRoleEnumTypeTransformer._();

  const AgentCapabilitiesDtoRoleEnumTypeTransformer._();

  String encode(AgentCapabilitiesDtoRoleEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AgentCapabilitiesDtoRoleEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AgentCapabilitiesDtoRoleEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AGENT_READ_ONLY': return AgentCapabilitiesDtoRoleEnum.READ_ONLY;
        case r'AGENT_DRAFT_ONLY': return AgentCapabilitiesDtoRoleEnum.DRAFT_ONLY;
        case r'AGENT_RESPONDER': return AgentCapabilitiesDtoRoleEnum.RESPONDER;
        case r'AGENT_INBOX_MANAGER': return AgentCapabilitiesDtoRoleEnum.INBOX_MANAGER;
        case r'AGENT_SUPPORT': return AgentCapabilitiesDtoRoleEnum.SUPPORT;
        case r'AGENT_TOTP_MANAGER': return AgentCapabilitiesDtoRoleEnum.TOTP_MANAGER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AgentCapabilitiesDtoRoleEnumTypeTransformer] instance.
  static AgentCapabilitiesDtoRoleEnumTypeTransformer? _instance;
}


