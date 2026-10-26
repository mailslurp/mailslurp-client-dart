//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxRetentionPolicyOptions {
  /// Returns a new [CreateInboxRetentionPolicyOptions] instance.
  CreateInboxRetentionPolicyOptions({
    this.name,
    required this.scope,
    required this.retentionDays,
    this.inboxId,
    this.domainId,
    required this.enabled,
    this.excludedInboxIds = const [],
    this.excludedDomainIds = const [],
    this.excludedInboxEmailAddressPatterns = const [],
    this.excludedDomainNamePatterns = const [],
  });

  String? name;

  CreateInboxRetentionPolicyOptionsScopeEnum scope;

  /// Minimum value: 1
  /// Maximum value: 730
  int retentionDays;

  String? inboxId;

  String? domainId;

  bool enabled;

  List<String> excludedInboxIds;

  List<String> excludedDomainIds;

  List<String> excludedInboxEmailAddressPatterns;

  List<String> excludedDomainNamePatterns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxRetentionPolicyOptions &&
     other.name == name &&
     other.scope == scope &&
     other.retentionDays == retentionDays &&
     other.inboxId == inboxId &&
     other.domainId == domainId &&
     other.enabled == enabled &&
     other.excludedInboxIds == excludedInboxIds &&
     other.excludedDomainIds == excludedDomainIds &&
     other.excludedInboxEmailAddressPatterns == excludedInboxEmailAddressPatterns &&
     other.excludedDomainNamePatterns == excludedDomainNamePatterns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (scope.hashCode) +
    (retentionDays.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (enabled.hashCode) +
    (excludedInboxIds.hashCode) +
    (excludedDomainIds.hashCode) +
    (excludedInboxEmailAddressPatterns.hashCode) +
    (excludedDomainNamePatterns.hashCode);

  @override
  String toString() => 'CreateInboxRetentionPolicyOptions[name=$name, scope=$scope, retentionDays=$retentionDays, inboxId=$inboxId, domainId=$domainId, enabled=$enabled, excludedInboxIds=$excludedInboxIds, excludedDomainIds=$excludedDomainIds, excludedInboxEmailAddressPatterns=$excludedInboxEmailAddressPatterns, excludedDomainNamePatterns=$excludedDomainNamePatterns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'scope'] = this.scope;
      json[r'retentionDays'] = this.retentionDays;
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
      json[r'enabled'] = this.enabled;
      json[r'excludedInboxIds'] = this.excludedInboxIds;
      json[r'excludedDomainIds'] = this.excludedDomainIds;
      json[r'excludedInboxEmailAddressPatterns'] = this.excludedInboxEmailAddressPatterns;
      json[r'excludedDomainNamePatterns'] = this.excludedDomainNamePatterns;
    return json;
  }

  /// Returns a new [CreateInboxRetentionPolicyOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInboxRetentionPolicyOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInboxRetentionPolicyOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInboxRetentionPolicyOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInboxRetentionPolicyOptions(
        name: mapValueOfType<String>(json, r'name'),
        scope: CreateInboxRetentionPolicyOptionsScopeEnum.fromJson(json[r'scope'])!,
        retentionDays: mapValueOfType<int>(json, r'retentionDays')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        domainId: mapValueOfType<String>(json, r'domainId'),
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
      );
    }
    return null;
  }

  static List<CreateInboxRetentionPolicyOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRetentionPolicyOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRetentionPolicyOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInboxRetentionPolicyOptions> mapFromJson(dynamic json) {
    final map = <String, CreateInboxRetentionPolicyOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInboxRetentionPolicyOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInboxRetentionPolicyOptions-objects as value to a dart map
  static Map<String, List<CreateInboxRetentionPolicyOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInboxRetentionPolicyOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInboxRetentionPolicyOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scope',
    'retentionDays',
    'enabled',
    'excludedInboxIds',
    'excludedDomainIds',
    'excludedInboxEmailAddressPatterns',
    'excludedDomainNamePatterns',
  };
}


class CreateInboxRetentionPolicyOptionsScopeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxRetentionPolicyOptionsScopeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCOUNT = CreateInboxRetentionPolicyOptionsScopeEnum._(r'ACCOUNT');
  static const INBOX = CreateInboxRetentionPolicyOptionsScopeEnum._(r'INBOX');
  static const DOMAIN = CreateInboxRetentionPolicyOptionsScopeEnum._(r'DOMAIN');

  /// List of all possible values in this [enum][CreateInboxRetentionPolicyOptionsScopeEnum].
  static const values = <CreateInboxRetentionPolicyOptionsScopeEnum>[
    ACCOUNT,
    INBOX,
    DOMAIN,
  ];

  static CreateInboxRetentionPolicyOptionsScopeEnum? fromJson(dynamic value) => CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer().decode(value);

  static List<CreateInboxRetentionPolicyOptionsScopeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInboxRetentionPolicyOptionsScopeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInboxRetentionPolicyOptionsScopeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateInboxRetentionPolicyOptionsScopeEnum] to String,
/// and [decode] dynamic data back to [CreateInboxRetentionPolicyOptionsScopeEnum].
class CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer {
  factory CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer() => _instance ??= const CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer._();

  const CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer._();

  String encode(CreateInboxRetentionPolicyOptionsScopeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxRetentionPolicyOptionsScopeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxRetentionPolicyOptionsScopeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCOUNT': return CreateInboxRetentionPolicyOptionsScopeEnum.ACCOUNT;
        case r'INBOX': return CreateInboxRetentionPolicyOptionsScopeEnum.INBOX;
        case r'DOMAIN': return CreateInboxRetentionPolicyOptionsScopeEnum.DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer] instance.
  static CreateInboxRetentionPolicyOptionsScopeEnumTypeTransformer? _instance;
}


