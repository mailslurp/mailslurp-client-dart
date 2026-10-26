//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateEmailWarmupProgramOptions {
  /// Returns a new [CreateEmailWarmupProgramOptions] instance.
  CreateEmailWarmupProgramOptions({
    required this.name,
    required this.connectionId,
    required this.customerIntent,
    required this.currentDailyVolume,
    required this.goalDailyVolume,
    required this.schedulePreset,
    required this.rampDurationDays,
    required this.maintenanceEnabled,
    required this.maintenanceDailyVolume,
    required this.sendWindowStart,
    required this.sendWindowEnd,
    required this.timeZone,
    required this.requestedCoverage,
    this.baselineTestId,
    required this.content,
    required this.senderOwnershipAttested,
    required this.permissionBasedSendingAttested,
  });

  String name;

  String connectionId;

  CreateEmailWarmupProgramOptionsCustomerIntentEnum customerIntent;

  /// Minimum value: 0
  /// Maximum value: 20
  int currentDailyVolume;

  /// Minimum value: 2
  /// Maximum value: 20
  int goalDailyVolume;

  CreateEmailWarmupProgramOptionsSchedulePresetEnum schedulePreset;

  /// Minimum value: 7
  /// Maximum value: 90
  int rampDurationDays;

  bool maintenanceEnabled;

  /// Minimum value: 1
  /// Maximum value: 20
  int maintenanceDailyVolume;

  String sendWindowStart;

  String sendWindowEnd;

  String timeZone;

  CreateEmailWarmupProgramOptionsRequestedCoverageEnum requestedCoverage;

  String? baselineTestId;

  EmailWarmupContentOptions content;

  bool senderOwnershipAttested;

  bool permissionBasedSendingAttested;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateEmailWarmupProgramOptions &&
     other.name == name &&
     other.connectionId == connectionId &&
     other.customerIntent == customerIntent &&
     other.currentDailyVolume == currentDailyVolume &&
     other.goalDailyVolume == goalDailyVolume &&
     other.schedulePreset == schedulePreset &&
     other.rampDurationDays == rampDurationDays &&
     other.maintenanceEnabled == maintenanceEnabled &&
     other.maintenanceDailyVolume == maintenanceDailyVolume &&
     other.sendWindowStart == sendWindowStart &&
     other.sendWindowEnd == sendWindowEnd &&
     other.timeZone == timeZone &&
     other.requestedCoverage == requestedCoverage &&
     other.baselineTestId == baselineTestId &&
     other.content == content &&
     other.senderOwnershipAttested == senderOwnershipAttested &&
     other.permissionBasedSendingAttested == permissionBasedSendingAttested;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (connectionId.hashCode) +
    (customerIntent.hashCode) +
    (currentDailyVolume.hashCode) +
    (goalDailyVolume.hashCode) +
    (schedulePreset.hashCode) +
    (rampDurationDays.hashCode) +
    (maintenanceEnabled.hashCode) +
    (maintenanceDailyVolume.hashCode) +
    (sendWindowStart.hashCode) +
    (sendWindowEnd.hashCode) +
    (timeZone.hashCode) +
    (requestedCoverage.hashCode) +
    (baselineTestId == null ? 0 : baselineTestId!.hashCode) +
    (content.hashCode) +
    (senderOwnershipAttested.hashCode) +
    (permissionBasedSendingAttested.hashCode);

  @override
  String toString() => 'CreateEmailWarmupProgramOptions[name=$name, connectionId=$connectionId, customerIntent=$customerIntent, currentDailyVolume=$currentDailyVolume, goalDailyVolume=$goalDailyVolume, schedulePreset=$schedulePreset, rampDurationDays=$rampDurationDays, maintenanceEnabled=$maintenanceEnabled, maintenanceDailyVolume=$maintenanceDailyVolume, sendWindowStart=$sendWindowStart, sendWindowEnd=$sendWindowEnd, timeZone=$timeZone, requestedCoverage=$requestedCoverage, baselineTestId=$baselineTestId, content=$content, senderOwnershipAttested=$senderOwnershipAttested, permissionBasedSendingAttested=$permissionBasedSendingAttested]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'connectionId'] = this.connectionId;
      json[r'customerIntent'] = this.customerIntent;
      json[r'currentDailyVolume'] = this.currentDailyVolume;
      json[r'goalDailyVolume'] = this.goalDailyVolume;
      json[r'schedulePreset'] = this.schedulePreset;
      json[r'rampDurationDays'] = this.rampDurationDays;
      json[r'maintenanceEnabled'] = this.maintenanceEnabled;
      json[r'maintenanceDailyVolume'] = this.maintenanceDailyVolume;
      json[r'sendWindowStart'] = this.sendWindowStart;
      json[r'sendWindowEnd'] = this.sendWindowEnd;
      json[r'timeZone'] = this.timeZone;
      json[r'requestedCoverage'] = this.requestedCoverage;
    if (this.baselineTestId != null) {
      json[r'baselineTestId'] = this.baselineTestId;
    } else {
      json[r'baselineTestId'] = null;
    }
      json[r'content'] = this.content;
      json[r'senderOwnershipAttested'] = this.senderOwnershipAttested;
      json[r'permissionBasedSendingAttested'] = this.permissionBasedSendingAttested;
    return json;
  }

  /// Returns a new [CreateEmailWarmupProgramOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateEmailWarmupProgramOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateEmailWarmupProgramOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateEmailWarmupProgramOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateEmailWarmupProgramOptions(
        name: mapValueOfType<String>(json, r'name')!,
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        customerIntent: CreateEmailWarmupProgramOptionsCustomerIntentEnum.fromJson(json[r'customerIntent'])!,
        currentDailyVolume: mapValueOfType<int>(json, r'currentDailyVolume')!,
        goalDailyVolume: mapValueOfType<int>(json, r'goalDailyVolume')!,
        schedulePreset: CreateEmailWarmupProgramOptionsSchedulePresetEnum.fromJson(json[r'schedulePreset'])!,
        rampDurationDays: mapValueOfType<int>(json, r'rampDurationDays')!,
        maintenanceEnabled: mapValueOfType<bool>(json, r'maintenanceEnabled')!,
        maintenanceDailyVolume: mapValueOfType<int>(json, r'maintenanceDailyVolume')!,
        sendWindowStart: mapValueOfType<String>(json, r'sendWindowStart')!,
        sendWindowEnd: mapValueOfType<String>(json, r'sendWindowEnd')!,
        timeZone: mapValueOfType<String>(json, r'timeZone')!,
        requestedCoverage: CreateEmailWarmupProgramOptionsRequestedCoverageEnum.fromJson(json[r'requestedCoverage'])!,
        baselineTestId: mapValueOfType<String>(json, r'baselineTestId'),
        content: EmailWarmupContentOptions.fromJson(json[r'content'])!,
        senderOwnershipAttested: mapValueOfType<bool>(json, r'senderOwnershipAttested')!,
        permissionBasedSendingAttested: mapValueOfType<bool>(json, r'permissionBasedSendingAttested')!,
      );
    }
    return null;
  }

  static List<CreateEmailWarmupProgramOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmailWarmupProgramOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmailWarmupProgramOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateEmailWarmupProgramOptions> mapFromJson(dynamic json) {
    final map = <String, CreateEmailWarmupProgramOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateEmailWarmupProgramOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateEmailWarmupProgramOptions-objects as value to a dart map
  static Map<String, List<CreateEmailWarmupProgramOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateEmailWarmupProgramOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateEmailWarmupProgramOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'connectionId',
    'customerIntent',
    'currentDailyVolume',
    'goalDailyVolume',
    'schedulePreset',
    'rampDurationDays',
    'maintenanceEnabled',
    'maintenanceDailyVolume',
    'sendWindowStart',
    'sendWindowEnd',
    'timeZone',
    'requestedCoverage',
    'content',
    'senderOwnershipAttested',
    'permissionBasedSendingAttested',
  };
}


class CreateEmailWarmupProgramOptionsCustomerIntentEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateEmailWarmupProgramOptionsCustomerIntentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW_SENDER_WARMUP = CreateEmailWarmupProgramOptionsCustomerIntentEnum._(r'NEW_SENDER_WARMUP');
  static const EXISTING_SENDER_REPAIR = CreateEmailWarmupProgramOptionsCustomerIntentEnum._(r'EXISTING_SENDER_REPAIR');

  /// List of all possible values in this [enum][CreateEmailWarmupProgramOptionsCustomerIntentEnum].
  static const values = <CreateEmailWarmupProgramOptionsCustomerIntentEnum>[
    NEW_SENDER_WARMUP,
    EXISTING_SENDER_REPAIR,
  ];

  static CreateEmailWarmupProgramOptionsCustomerIntentEnum? fromJson(dynamic value) => CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer().decode(value);

  static List<CreateEmailWarmupProgramOptionsCustomerIntentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmailWarmupProgramOptionsCustomerIntentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmailWarmupProgramOptionsCustomerIntentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateEmailWarmupProgramOptionsCustomerIntentEnum] to String,
/// and [decode] dynamic data back to [CreateEmailWarmupProgramOptionsCustomerIntentEnum].
class CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer {
  factory CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer() => _instance ??= const CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer._();

  const CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer._();

  String encode(CreateEmailWarmupProgramOptionsCustomerIntentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEmailWarmupProgramOptionsCustomerIntentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEmailWarmupProgramOptionsCustomerIntentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW_SENDER_WARMUP': return CreateEmailWarmupProgramOptionsCustomerIntentEnum.NEW_SENDER_WARMUP;
        case r'EXISTING_SENDER_REPAIR': return CreateEmailWarmupProgramOptionsCustomerIntentEnum.EXISTING_SENDER_REPAIR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer] instance.
  static CreateEmailWarmupProgramOptionsCustomerIntentEnumTypeTransformer? _instance;
}



class CreateEmailWarmupProgramOptionsSchedulePresetEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateEmailWarmupProgramOptionsSchedulePresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENTLE = CreateEmailWarmupProgramOptionsSchedulePresetEnum._(r'GENTLE');
  static const STANDARD = CreateEmailWarmupProgramOptionsSchedulePresetEnum._(r'STANDARD');
  static const REPAIR = CreateEmailWarmupProgramOptionsSchedulePresetEnum._(r'REPAIR');
  static const CUSTOM = CreateEmailWarmupProgramOptionsSchedulePresetEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][CreateEmailWarmupProgramOptionsSchedulePresetEnum].
  static const values = <CreateEmailWarmupProgramOptionsSchedulePresetEnum>[
    GENTLE,
    STANDARD,
    REPAIR,
    CUSTOM,
  ];

  static CreateEmailWarmupProgramOptionsSchedulePresetEnum? fromJson(dynamic value) => CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer().decode(value);

  static List<CreateEmailWarmupProgramOptionsSchedulePresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmailWarmupProgramOptionsSchedulePresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmailWarmupProgramOptionsSchedulePresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateEmailWarmupProgramOptionsSchedulePresetEnum] to String,
/// and [decode] dynamic data back to [CreateEmailWarmupProgramOptionsSchedulePresetEnum].
class CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer {
  factory CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer() => _instance ??= const CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer._();

  const CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer._();

  String encode(CreateEmailWarmupProgramOptionsSchedulePresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEmailWarmupProgramOptionsSchedulePresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEmailWarmupProgramOptionsSchedulePresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENTLE': return CreateEmailWarmupProgramOptionsSchedulePresetEnum.GENTLE;
        case r'STANDARD': return CreateEmailWarmupProgramOptionsSchedulePresetEnum.STANDARD;
        case r'REPAIR': return CreateEmailWarmupProgramOptionsSchedulePresetEnum.REPAIR;
        case r'CUSTOM': return CreateEmailWarmupProgramOptionsSchedulePresetEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer] instance.
  static CreateEmailWarmupProgramOptionsSchedulePresetEnumTypeTransformer? _instance;
}



class CreateEmailWarmupProgramOptionsRequestedCoverageEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateEmailWarmupProgramOptionsRequestedCoverageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = CreateEmailWarmupProgramOptionsRequestedCoverageEnum._(r'AUTO');
  static const CONTROLLED = CreateEmailWarmupProgramOptionsRequestedCoverageEnum._(r'CONTROLLED');
  static const CORE = CreateEmailWarmupProgramOptionsRequestedCoverageEnum._(r'CORE');
  static const EXPANDED = CreateEmailWarmupProgramOptionsRequestedCoverageEnum._(r'EXPANDED');

  /// List of all possible values in this [enum][CreateEmailWarmupProgramOptionsRequestedCoverageEnum].
  static const values = <CreateEmailWarmupProgramOptionsRequestedCoverageEnum>[
    AUTO,
    CONTROLLED,
    CORE,
    EXPANDED,
  ];

  static CreateEmailWarmupProgramOptionsRequestedCoverageEnum? fromJson(dynamic value) => CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer().decode(value);

  static List<CreateEmailWarmupProgramOptionsRequestedCoverageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateEmailWarmupProgramOptionsRequestedCoverageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateEmailWarmupProgramOptionsRequestedCoverageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateEmailWarmupProgramOptionsRequestedCoverageEnum] to String,
/// and [decode] dynamic data back to [CreateEmailWarmupProgramOptionsRequestedCoverageEnum].
class CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer {
  factory CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer() => _instance ??= const CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer._();

  const CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer._();

  String encode(CreateEmailWarmupProgramOptionsRequestedCoverageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateEmailWarmupProgramOptionsRequestedCoverageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateEmailWarmupProgramOptionsRequestedCoverageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return CreateEmailWarmupProgramOptionsRequestedCoverageEnum.AUTO;
        case r'CONTROLLED': return CreateEmailWarmupProgramOptionsRequestedCoverageEnum.CONTROLLED;
        case r'CORE': return CreateEmailWarmupProgramOptionsRequestedCoverageEnum.CORE;
        case r'EXPANDED': return CreateEmailWarmupProgramOptionsRequestedCoverageEnum.EXPANDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer] instance.
  static CreateEmailWarmupProgramOptionsRequestedCoverageEnumTypeTransformer? _instance;
}


