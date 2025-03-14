//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorSyncSettingsDto {
  /// Returns a new [ConnectorSyncSettingsDto] instance.
  ConnectorSyncSettingsDto({
    required this.id,
    required this.userId,
    required this.connectorId,
    required this.syncEnabled,
    this.syncScheduleType,
    this.syncInterval,
  });

  String id;

  String userId;

  String connectorId;

  bool syncEnabled;

  ConnectorSyncSettingsDtoSyncScheduleTypeEnum? syncScheduleType;

  int? syncInterval;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorSyncSettingsDto &&
     other.id == id &&
     other.userId == userId &&
     other.connectorId == connectorId &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (connectorId.hashCode) +
    (syncEnabled.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType!.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode);

  @override
  String toString() => 'ConnectorSyncSettingsDto[id=$id, userId=$userId, connectorId=$connectorId, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'connectorId'] = this.connectorId;
      json[r'syncEnabled'] = this.syncEnabled;
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

  /// Returns a new [ConnectorSyncSettingsDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorSyncSettingsDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorSyncSettingsDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorSyncSettingsDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorSyncSettingsDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        connectorId: mapValueOfType<String>(json, r'connectorId')!,
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled')!,
        syncScheduleType: ConnectorSyncSettingsDtoSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
      );
    }
    return null;
  }

  static List<ConnectorSyncSettingsDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncSettingsDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncSettingsDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorSyncSettingsDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorSyncSettingsDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorSyncSettingsDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorSyncSettingsDto-objects as value to a dart map
  static Map<String, List<ConnectorSyncSettingsDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorSyncSettingsDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorSyncSettingsDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'connectorId',
    'syncEnabled',
  };
}


class ConnectorSyncSettingsDtoSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorSyncSettingsDtoSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = ConnectorSyncSettingsDtoSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][ConnectorSyncSettingsDtoSyncScheduleTypeEnum].
  static const values = <ConnectorSyncSettingsDtoSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static ConnectorSyncSettingsDtoSyncScheduleTypeEnum? fromJson(dynamic value) => ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorSyncSettingsDtoSyncScheduleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorSyncSettingsDtoSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorSyncSettingsDtoSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorSyncSettingsDtoSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorSyncSettingsDtoSyncScheduleTypeEnum].
class ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer {
  factory ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer() => _instance ??= const ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer._();

  const ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorSyncSettingsDtoSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorSyncSettingsDtoSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorSyncSettingsDtoSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return ConnectorSyncSettingsDtoSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorSyncSettingsDtoSyncScheduleTypeEnumTypeTransformer? _instance;
}


