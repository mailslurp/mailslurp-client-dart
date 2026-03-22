//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorSyncSettingsOptions {
  /// Returns a new [CreateConnectorSyncSettingsOptions] instance.
  CreateConnectorSyncSettingsOptions({
    this.syncEnabled,
    this.syncScheduleType,
    this.syncInterval,
  });

  /// Enable automatic background sync
  bool? syncEnabled;

  /// Sync schedule type
  CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum? syncScheduleType;

  /// Sync interval in minutes
  int? syncInterval;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorSyncSettingsOptions &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (syncEnabled == null ? 0 : syncEnabled!.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType!.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode);

  @override
  String toString() => 'CreateConnectorSyncSettingsOptions[syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval]';

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
    return json;
  }

  /// Returns a new [CreateConnectorSyncSettingsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateConnectorSyncSettingsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateConnectorSyncSettingsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateConnectorSyncSettingsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateConnectorSyncSettingsOptions(
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled'),
        syncScheduleType: CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
      );
    }
    return null;
  }

  static List<CreateConnectorSyncSettingsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorSyncSettingsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorSyncSettingsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateConnectorSyncSettingsOptions> mapFromJson(dynamic json) {
    final map = <String, CreateConnectorSyncSettingsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateConnectorSyncSettingsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorSyncSettingsOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorSyncSettingsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateConnectorSyncSettingsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateConnectorSyncSettingsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Sync schedule type
class CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum].
  static const values = <CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum? fromJson(dynamic value) => CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum].
class CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer {
  factory CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer() => _instance ??= const CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer._();

  const CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer._();

  String encode(CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer] instance.
  static CreateConnectorSyncSettingsOptionsSyncScheduleTypeEnumTypeTransformer? _instance;
}


