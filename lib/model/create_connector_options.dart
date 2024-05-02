//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorOptions {
  /// Returns a new [CreateConnectorOptions] instance.
  CreateConnectorOptions({
    this.syncEnabled,
    this.syncScheduleType,
    this.syncInterval,
    this.name,
    this.emailAddress,
    this.enabled,
  });

  /// Enable automatic background sync
  bool? syncEnabled;

  /// Sync schedule type
  CreateConnectorOptionsSyncScheduleTypeEnum? syncScheduleType;

  /// Sync interval in minutes
  int? syncInterval;

  /// Name of connector
  String? name;

  /// Email address of external inbox
  String? emailAddress;

  /// Is connector enabled
  bool? enabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorOptions &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.name == name &&
     other.emailAddress == emailAddress &&
     other.enabled == enabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncEnabled == null ? 0 : syncEnabled!.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType!.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode);

  @override
  String toString() => 'CreateConnectorOptions[syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, name=$name, emailAddress=$emailAddress, enabled=$enabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.syncEnabled != null) {
      json[r'syncEnabled'] = this.syncEnabled;
    } else {
      json[r'syncEnabled'] = null;
    }
    if (this.syncScheduleType != null) {
      json[r'syncScheduleType'] = this.syncScheduleType;
    } else {
      json[r'syncScheduleType'] = null;
    }
    if (this.syncInterval != null) {
      json[r'syncInterval'] = this.syncInterval;
    } else {
      json[r'syncInterval'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    return json;
  }

  /// Returns a new [CreateConnectorOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorOptions(
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled'),
        syncScheduleType: CreateConnectorOptionsSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
        name: mapValueOfType<String>(json, r'name'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
      );
    }
    return null;
  }

  static List<CreateConnectorOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sync schedule type
class CreateConnectorOptionsSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateConnectorOptionsSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = CreateConnectorOptionsSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][CreateConnectorOptionsSyncScheduleTypeEnum].
  static const values = <CreateConnectorOptionsSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static CreateConnectorOptionsSyncScheduleTypeEnum? fromJson(dynamic value) => CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsSyncScheduleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorOptionsSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorOptionsSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsSyncScheduleTypeEnum].
class CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer {
  factory CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer() => _instance ??= const CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer._();

  const CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return CreateConnectorOptionsSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer? _instance;
}


