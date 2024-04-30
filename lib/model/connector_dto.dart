//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorDto {
  /// Returns a new [ConnectorDto] instance.
  ConnectorDto({
    required this.id,
    this.name,
    required this.enabled,
    required this.userId,
    required this.inboxId,
    required this.syncEnabled,
    this.syncScheduleType,
    this.syncInterval,
    required this.hasImapConnection,
    required this.hasSmtpConnection,
    required this.createdAt,
  });

  String id;

  String? name;

  bool enabled;

  String userId;

  String inboxId;

  bool syncEnabled;

  ConnectorDtoSyncScheduleTypeEnum? syncScheduleType;

  int? syncInterval;

  bool hasImapConnection;

  bool hasSmtpConnection;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorDto &&
     other.id == id &&
     other.name == name &&
     other.enabled == enabled &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.hasImapConnection == hasImapConnection &&
     other.hasSmtpConnection == hasSmtpConnection &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (enabled.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (syncEnabled.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType!.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode) +
    (hasImapConnection.hashCode) +
    (hasSmtpConnection.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'ConnectorDto[id=$id, name=$name, enabled=$enabled, userId=$userId, inboxId=$inboxId, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, hasImapConnection=$hasImapConnection, hasSmtpConnection=$hasSmtpConnection, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'enabled'] = this.enabled;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
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
      json[r'hasImapConnection'] = this.hasImapConnection;
      json[r'hasSmtpConnection'] = this.hasSmtpConnection;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ConnectorDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name'),
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled')!,
        syncScheduleType: ConnectorDtoSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
        hasImapConnection: mapValueOfType<bool>(json, r'hasImapConnection')!,
        hasSmtpConnection: mapValueOfType<bool>(json, r'hasSmtpConnection')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<ConnectorDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorDto> mapFromJson(dynamic json) {
    final map = <String, ConnectorDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorDto-objects as value to a dart map
  static Map<String, List<ConnectorDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'enabled',
    'userId',
    'inboxId',
    'syncEnabled',
    'hasImapConnection',
    'hasSmtpConnection',
    'createdAt',
  };
}


class ConnectorDtoSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorDtoSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = ConnectorDtoSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][ConnectorDtoSyncScheduleTypeEnum].
  static const values = <ConnectorDtoSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static ConnectorDtoSyncScheduleTypeEnum? fromJson(dynamic value) => ConnectorDtoSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorDtoSyncScheduleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorDtoSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorDtoSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorDtoSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorDtoSyncScheduleTypeEnum].
class ConnectorDtoSyncScheduleTypeEnumTypeTransformer {
  factory ConnectorDtoSyncScheduleTypeEnumTypeTransformer() => _instance ??= const ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  const ConnectorDtoSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorDtoSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorDtoSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorDtoSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return ConnectorDtoSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorDtoSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorDtoSyncScheduleTypeEnumTypeTransformer? _instance;
}


