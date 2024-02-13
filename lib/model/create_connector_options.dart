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
    required this.connectorType,
    required this.connectorAuthType,
    this.imapSettings,
    this.inboxId,
    required this.syncEnabled,
    required this.syncScheduleType,
    this.syncInterval,
    this.fetchSettings,
  });

  CreateConnectorOptionsConnectorTypeEnum connectorType;

  CreateConnectorOptionsConnectorAuthTypeEnum connectorAuthType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateConnectorImapOptions? imapSettings;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  bool syncEnabled;

  CreateConnectorOptionsSyncScheduleTypeEnum syncScheduleType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? syncInterval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateConnectorImapFetchOptions? fetchSettings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorOptions &&
     other.connectorType == connectorType &&
     other.connectorAuthType == connectorAuthType &&
     other.imapSettings == imapSettings &&
     other.inboxId == inboxId &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval &&
     other.fetchSettings == fetchSettings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectorType.hashCode) +
    (connectorAuthType.hashCode) +
    (imapSettings == null ? 0 : imapSettings!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (syncEnabled.hashCode) +
    (syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval!.hashCode) +
    (fetchSettings == null ? 0 : fetchSettings!.hashCode);

  @override
  String toString() => 'CreateConnectorOptions[connectorType=$connectorType, connectorAuthType=$connectorAuthType, imapSettings=$imapSettings, inboxId=$inboxId, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval, fetchSettings=$fetchSettings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectorType'] = this.connectorType;
      json[r'connectorAuthType'] = this.connectorAuthType;
    if (this.imapSettings != null) {
      json[r'imapSettings'] = this.imapSettings;
    } else {
      json[r'imapSettings'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'syncEnabled'] = this.syncEnabled;
      json[r'syncScheduleType'] = this.syncScheduleType;
    if (this.syncInterval != null) {
      json[r'syncInterval'] = this.syncInterval;
    } else {
      json[r'syncInterval'] = null;
    }
    if (this.fetchSettings != null) {
      json[r'fetchSettings'] = this.fetchSettings;
    } else {
      json[r'fetchSettings'] = null;
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
        connectorType: CreateConnectorOptionsConnectorTypeEnum.fromJson(json[r'connectorType'])!,
        connectorAuthType: CreateConnectorOptionsConnectorAuthTypeEnum.fromJson(json[r'connectorAuthType'])!,
        imapSettings: CreateConnectorImapOptions.fromJson(json[r'imapSettings']),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        syncEnabled: mapValueOfType<bool>(json, r'syncEnabled')!,
        syncScheduleType: CreateConnectorOptionsSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType'])!,
        syncInterval: mapValueOfType<int>(json, r'syncInterval'),
        fetchSettings: CreateConnectorImapFetchOptions.fromJson(json[r'fetchSettings']),
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
    'connectorType',
    'connectorAuthType',
    'syncEnabled',
    'syncScheduleType',
  };
}


class CreateConnectorOptionsConnectorTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateConnectorOptionsConnectorTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IMAP = CreateConnectorOptionsConnectorTypeEnum._(r'IMAP');

  /// List of all possible values in this [enum][CreateConnectorOptionsConnectorTypeEnum].
  static const values = <CreateConnectorOptionsConnectorTypeEnum>[
    IMAP,
  ];

  static CreateConnectorOptionsConnectorTypeEnum? fromJson(dynamic value) => CreateConnectorOptionsConnectorTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsConnectorTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorOptionsConnectorTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorOptionsConnectorTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsConnectorTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsConnectorTypeEnum].
class CreateConnectorOptionsConnectorTypeEnumTypeTransformer {
  factory CreateConnectorOptionsConnectorTypeEnumTypeTransformer() => _instance ??= const CreateConnectorOptionsConnectorTypeEnumTypeTransformer._();

  const CreateConnectorOptionsConnectorTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsConnectorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsConnectorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsConnectorTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'IMAP': return CreateConnectorOptionsConnectorTypeEnum.IMAP;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsConnectorTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsConnectorTypeEnumTypeTransformer? _instance;
}



class CreateConnectorOptionsConnectorAuthTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateConnectorOptionsConnectorAuthTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PLAIN_TEXT = CreateConnectorOptionsConnectorAuthTypeEnum._(r'PLAIN_TEXT');

  /// List of all possible values in this [enum][CreateConnectorOptionsConnectorAuthTypeEnum].
  static const values = <CreateConnectorOptionsConnectorAuthTypeEnum>[
    PLAIN_TEXT,
  ];

  static CreateConnectorOptionsConnectorAuthTypeEnum? fromJson(dynamic value) => CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsConnectorAuthTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateConnectorOptionsConnectorAuthTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateConnectorOptionsConnectorAuthTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsConnectorAuthTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsConnectorAuthTypeEnum].
class CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer {
  factory CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer() => _instance ??= const CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer._();

  const CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsConnectorAuthTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsConnectorAuthTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsConnectorAuthTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PLAIN_TEXT': return CreateConnectorOptionsConnectorAuthTypeEnum.PLAIN_TEXT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer? _instance;
}



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


