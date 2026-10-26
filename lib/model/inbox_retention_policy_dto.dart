//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxRetentionPolicyDto {
  /// Returns a new [InboxRetentionPolicyDto] instance.
  InboxRetentionPolicyDto({
    required this.id,
    this.name,
    required this.scope,
    this.inboxId,
    this.domainId,
    required this.retentionDays,
    required this.enabled,
    this.excludedInboxIds = const [],
    this.excludedDomainIds = const [],
    this.excludedInboxEmailAddressPatterns = const [],
    this.excludedDomainNamePatterns = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? name;

  InboxRetentionPolicyDtoScopeEnum scope;

  String? inboxId;

  String? domainId;

  int retentionDays;

  bool enabled;

  List<String> excludedInboxIds;

  List<String> excludedDomainIds;

  List<String> excludedInboxEmailAddressPatterns;

  List<String> excludedDomainNamePatterns;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxRetentionPolicyDto &&
     other.id == id &&
     other.name == name &&
     other.scope == scope &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.retentionDays == retentionDays &&
     other.enabled == enabled &&
     other.excludedInboxIds == excludedInboxIds &&
     other.excludedDomainIds == excludedDomainIds &&
     other.excludedInboxEmailAddressPatterns == excludedInboxEmailAddressPatterns &&
     other.excludedDomainNamePatterns == excludedDomainNamePatterns &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (scope.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (retentionDays.hashCode) +
    (enabled.hashCode) +
    (excludedInboxIds.hashCode) +
    (excludedDomainIds.hashCode) +
    (excludedInboxEmailAddressPatterns.hashCode) +
    (excludedDomainNamePatterns.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'InboxRetentionPolicyDto[id=$id, name=$name, scope=$scope, inboxId=$inboxId, domainId=$domainId, retentionDays=$retentionDays, enabled=$enabled, excludedInboxIds=$excludedInboxIds, excludedDomainIds=$excludedDomainIds, excludedInboxEmailAddressPatterns=$excludedInboxEmailAddressPatterns, excludedDomainNamePatterns=$excludedDomainNamePatterns, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'scope'] = this.scope;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.domainId != null) {
      json[r'domainId'] = this.domainId;
    } else {
      json[r'domainId'] = null;
    }
      json[r'retentionDays'] = this.retentionDays;
      json[r'enabled'] = this.enabled;
      json[r'excludedInboxIds'] = this.excludedInboxIds;
      json[r'excludedDomainIds'] = this.excludedDomainIds;
      json[r'excludedInboxEmailAddressPatterns'] = this.excludedInboxEmailAddressPatterns;
      json[r'excludedDomainNamePatterns'] = this.excludedDomainNamePatterns;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxRetentionPolicyDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxRetentionPolicyDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxRetentionPolicyDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxRetentionPolicyDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxRetentionPolicyDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        scope: InboxRetentionPolicyDtoScopeEnum.fromJson(json[r'scope'])!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        domainId: mapValueOfType<String>(json, r'domainId'),
        retentionDays: mapValueOfType<int>(json, r'retentionDays')!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        excludedInboxIds: json[r'excludedInboxIds'] is List
            ? (json[r'excludedInboxIds'] as List).cast<String>()
            : const [],
        excludedDomainIds: json[r'excludedDomainIds'] is List
            ? (json[r'excludedDomainIds'] as List).cast<String>()
            : const [],
        excludedInboxEmailAddressPatterns: json[r'excludedInboxEmailAddressPatterns'] is List
            ? (json[r'excludedInboxEmailAddressPatterns'] as List).cast<String>()
            : const [],
        excludedDomainNamePatterns: json[r'excludedDomainNamePatterns'] is List
            ? (json[r'excludedDomainNamePatterns'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<InboxRetentionPolicyDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxRetentionPolicyDto> mapFromJson(dynamic json) {
    final map = <String, InboxRetentionPolicyDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxRetentionPolicyDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxRetentionPolicyDto-objects as value to a dart map
  static Map<String, List<InboxRetentionPolicyDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxRetentionPolicyDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxRetentionPolicyDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scope',
    'retentionDays',
    'enabled',
    'excludedInboxIds',
    'excludedDomainIds',
    'excludedInboxEmailAddressPatterns',
    'excludedDomainNamePatterns',
    'createdAt',
    'updatedAt',
  };
}


class InboxRetentionPolicyDtoScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxRetentionPolicyDtoScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCOUNT = InboxRetentionPolicyDtoScopeEnum._(r'ACCOUNT');
  static const INBOX = InboxRetentionPolicyDtoScopeEnum._(r'INBOX');
  static const DOMAIN = InboxRetentionPolicyDtoScopeEnum._(r'DOMAIN');

  /// List of all possible values in this [enum][InboxRetentionPolicyDtoScopeEnum].
  static const values = <InboxRetentionPolicyDtoScopeEnum>[
    ACCOUNT,
    INBOX,
    DOMAIN,
  ];

  static InboxRetentionPolicyDtoScopeEnum? fromJson(dynamic value) => InboxRetentionPolicyDtoScopeEnumTypeTransformer().decode(value);

  static List<InboxRetentionPolicyDtoScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxRetentionPolicyDtoScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxRetentionPolicyDtoScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [InboxRetentionPolicyDtoScopeEnum] to String,
/// and [decode] dynamic data back to [InboxRetentionPolicyDtoScopeEnum].
class InboxRetentionPolicyDtoScopeEnumTypeTransformer {
  factory InboxRetentionPolicyDtoScopeEnumTypeTransformer() => _instance ??= const InboxRetentionPolicyDtoScopeEnumTypeTransformer._();

  const InboxRetentionPolicyDtoScopeEnumTypeTransformer._();

  String encode(InboxRetentionPolicyDtoScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxRetentionPolicyDtoScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxRetentionPolicyDtoScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCOUNT': return InboxRetentionPolicyDtoScopeEnum.ACCOUNT;
        case r'INBOX': return InboxRetentionPolicyDtoScopeEnum.INBOX;
        case r'DOMAIN': return InboxRetentionPolicyDtoScopeEnum.DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [InboxRetentionPolicyDtoScopeEnumTypeTransformer] instance.
  static InboxRetentionPolicyDtoScopeEnumTypeTransformer? _instance;
}


