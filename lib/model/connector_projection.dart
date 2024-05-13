//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ConnectorProjection {
  /// Returns a new [ConnectorProjection] instance.
  ConnectorProjection({
    this.enabled,
    this.emailAddress,
    required this.inboxId,
    required this.userId,
    this.syncEnabled,
    required this.syncScheduleType,
    this.syncInterval,
    required this.createdAt,
    this.name,
    this.id,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? emailAddress;

  String inboxId;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? syncEnabled;

  ConnectorProjectionSyncScheduleTypeEnum syncScheduleType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? syncInterval;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConnectorProjection &&
     other.enabled == enabled &&
     other.emailAddress == emailAddress &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.createdAt == createdAt &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (enabled == null ? 0 : enabled!.hashCode) +
    (emailAddress == null ? 0 : emailAddress!.hashCode) +
    (inboxId.hashCode) +
    (userId.hashCode) +
    (syncEnabled == null ? 0 : syncEnabled!.hashCode) +
    (syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode) +
    (createdAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'ConnectorProjection[enabled=$enabled, emailAddress=$emailAddress, inboxId=$inboxId, userId=$userId, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, createdAt=$createdAt, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.emailAddress != null) {
      json[r'emailAddress'] = this.emailAddress;
    } else {
      json[r'emailAddress'] = null;
    }
      json[r'inboxId'] = this.inboxId;
      json[r'userId'] = this.userId;
    if (this.syncEnabled != null) {
      json[r'syncEnabled'] = this.syncEnabled;
    } else {
      json[r'syncEnabled'] = null;
    }
      json[r'syncScheduleType'] = this.syncScheduleType;
    if (this.syncInterval != null) {
      json[r'syncInterval'] = this.syncInterval;
    } else {
      json[r'syncInterval'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [ConnectorProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConnectorProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConnectorProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConnectorProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConnectorProjection(
        enabled: mapValueOfType<bool>(json, r'enabled'),
        emailAddress: mapValueOfType<String>(json, r'emailAddress'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled'),
        syncScheduleType: ConnectorProjectionSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType'])!,
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<ConnectorProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConnectorProjection> mapFromJson(dynamic json) {
    final map = <String, ConnectorProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConnectorProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConnectorProjection-objects as value to a dart map
  static Map<String, List<ConnectorProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConnectorProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConnectorProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'userId',
    'syncScheduleType',
    'createdAt',
  };
}


class ConnectorProjectionSyncScheduleTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ConnectorProjectionSyncScheduleTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const INTERVAL = ConnectorProjectionSyncScheduleTypeEnum._(r'INTERVAL');

  /// List of all possible values in this [enum][ConnectorProjectionSyncScheduleTypeEnum].
  static const values = <ConnectorProjectionSyncScheduleTypeEnum>[
    INTERVAL,
  ];

  static ConnectorProjectionSyncScheduleTypeEnum? fromJson(dynamic value) => ConnectorProjectionSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<ConnectorProjectionSyncScheduleTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConnectorProjectionSyncScheduleTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConnectorProjectionSyncScheduleTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ConnectorProjectionSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [ConnectorProjectionSyncScheduleTypeEnum].
class ConnectorProjectionSyncScheduleTypeEnumTypeTransformer {
  factory ConnectorProjectionSyncScheduleTypeEnumTypeTransformer() => _instance ??= const ConnectorProjectionSyncScheduleTypeEnumTypeTransformer._();

  const ConnectorProjectionSyncScheduleTypeEnumTypeTransformer._();

  String encode(ConnectorProjectionSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ConnectorProjectionSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ConnectorProjectionSyncScheduleTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'INTERVAL': return ConnectorProjectionSyncScheduleTypeEnum.INTERVAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ConnectorProjectionSyncScheduleTypeEnumTypeTransformer] instance.
  static ConnectorProjectionSyncScheduleTypeEnumTypeTransformer? _instance;
}


