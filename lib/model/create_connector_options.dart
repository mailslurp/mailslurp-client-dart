//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateConnectorOptions {
  /// Returns a new [CreateConnectorOptions] instance.
  CreateConnectorOptions({
    @required this.connectorType,
    @required this.connectorAuthType,
    this.imapSettings,
    this.inboxId,
    @required this.syncEnabled,
    @required this.syncScheduleType,
    this.syncInterval,
  });

  CreateConnectorOptionsConnectorTypeEnum connectorType;

  CreateConnectorOptionsConnectorAuthTypeEnum connectorAuthType;

  CreateConnectorImapOptions imapSettings;

  String inboxId;

  bool syncEnabled;

  CreateConnectorOptionsSyncScheduleTypeEnum syncScheduleType;

  int syncInterval;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateConnectorOptions &&
     other.connectorType == connectorType &&
     other.connectorAuthType == connectorAuthType &&
     other.imapSettings == imapSettings &&
     other.inboxId == inboxId &&
     other.syncEnabled == syncEnabled &&
     other.syncScheduleType == syncScheduleType &&
     other.syncInterval == syncInterval;

  @override
  int get hashCode =>
    (connectorType == null ? 0 : connectorType.hashCode) +
    (connectorAuthType == null ? 0 : connectorAuthType.hashCode) +
    (imapSettings == null ? 0 : imapSettings.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (syncEnabled == null ? 0 : syncEnabled.hashCode) +
    (syncScheduleType == null ? 0 : syncScheduleType.hashCode) +
    (syncInterval == null ? 0 : syncInterval.hashCode);

  @override
  String toString() => 'CreateConnectorOptions[connectorType=$connectorType, connectorAuthType=$connectorAuthType, imapSettings=$imapSettings, inboxId=$inboxId, syncEnabled=$syncEnabled, syncScheduleType=$syncScheduleType, syncInterval=$syncInterval]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'connectorType'] = connectorType;
      json[r'connectorAuthType'] = connectorAuthType;
    if (imapSettings != null) {
      json[r'imapSettings'] = imapSettings;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
      json[r'syncEnabled'] = syncEnabled;
      json[r'syncScheduleType'] = syncScheduleType;
    if (syncInterval != null) {
      json[r'syncInterval'] = syncInterval;
    }
    return json;
  }

  /// Returns a new [CreateConnectorOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateConnectorOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateConnectorOptions(
        connectorType: CreateConnectorOptionsConnectorTypeEnum.fromJson(json[r'connectorType']),
        connectorAuthType: CreateConnectorOptionsConnectorAuthTypeEnum.fromJson(json[r'connectorAuthType']),
        imapSettings: CreateConnectorImapOptions.fromJson(json[r'imapSettings']),
        inboxId: json[r'inboxId'],
        syncEnabled: json[r'syncEnabled'],
        syncScheduleType: CreateConnectorOptionsSyncScheduleTypeEnum.fromJson(json[r'syncScheduleType']),
        syncInterval: json[r'syncInterval'],
    );

  static List<CreateConnectorOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateConnectorOptions>[]
      : json.map((v) => CreateConnectorOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateConnectorOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateConnectorOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateConnectorOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateConnectorOptions-objects as value to a dart map
  static Map<String, List<CreateConnectorOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateConnectorOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateConnectorOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static CreateConnectorOptionsConnectorTypeEnum fromJson(dynamic value) =>
    CreateConnectorOptionsConnectorTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsConnectorTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateConnectorOptionsConnectorTypeEnum>[]
      : json
          .map((value) => CreateConnectorOptionsConnectorTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsConnectorTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsConnectorTypeEnum].
class CreateConnectorOptionsConnectorTypeEnumTypeTransformer {
  const CreateConnectorOptionsConnectorTypeEnumTypeTransformer._();

  factory CreateConnectorOptionsConnectorTypeEnumTypeTransformer() => _instance ??= CreateConnectorOptionsConnectorTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsConnectorTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsConnectorTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsConnectorTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'IMAP': return CreateConnectorOptionsConnectorTypeEnum.IMAP;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsConnectorTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsConnectorTypeEnumTypeTransformer _instance;
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

  static CreateConnectorOptionsConnectorAuthTypeEnum fromJson(dynamic value) =>
    CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsConnectorAuthTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateConnectorOptionsConnectorAuthTypeEnum>[]
      : json
          .map((value) => CreateConnectorOptionsConnectorAuthTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsConnectorAuthTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsConnectorAuthTypeEnum].
class CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer {
  const CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer._();

  factory CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer() => _instance ??= CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsConnectorAuthTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsConnectorAuthTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsConnectorAuthTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'PLAIN_TEXT': return CreateConnectorOptionsConnectorAuthTypeEnum.PLAIN_TEXT;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsConnectorAuthTypeEnumTypeTransformer _instance;
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

  static CreateConnectorOptionsSyncScheduleTypeEnum fromJson(dynamic value) =>
    CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer().decode(value);

  static List<CreateConnectorOptionsSyncScheduleTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateConnectorOptionsSyncScheduleTypeEnum>[]
      : json
          .map((value) => CreateConnectorOptionsSyncScheduleTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateConnectorOptionsSyncScheduleTypeEnum] to String,
/// and [decode] dynamic data back to [CreateConnectorOptionsSyncScheduleTypeEnum].
class CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer {
  const CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer._();

  factory CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer() => _instance ??= CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer._();

  String encode(CreateConnectorOptionsSyncScheduleTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateConnectorOptionsSyncScheduleTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateConnectorOptionsSyncScheduleTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'INTERVAL': return CreateConnectorOptionsSyncScheduleTypeEnum.INTERVAL;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer] instance.
  static CreateConnectorOptionsSyncScheduleTypeEnumTypeTransformer _instance;
}

