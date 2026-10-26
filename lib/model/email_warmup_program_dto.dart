//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupProgramDto {
  /// Returns a new [EmailWarmupProgramDto] instance.
  EmailWarmupProgramDto({
    required this.id,
    required this.connectionId,
    required this.senderEmail,
    required this.name,
    required this.customerIntent,
    required this.executionPolicy,
    required this.programMode,
    required this.status,
    this.blockers = const {},
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
    required this.resolvedCoverage,
    this.baselineTestId,
    required this.baselineSource,
    required this.contentSource,
    required this.content,
    required this.contentHash,
    required this.senderOwnershipAttestedAt,
    required this.permissionBasedSendingAttestedAt,
    required this.attestationPolicyVersion,
    required this.policyVersion,
    required this.contentPolicyVersion,
    required this.recipientPolicyVersion,
    this.nextActionAt,
    this.startedAt,
    this.completedAt,
    this.completionCode,
    required this.version,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String connectionId;

  String senderEmail;

  String name;

  EmailWarmupProgramDtoCustomerIntentEnum customerIntent;

  EmailWarmupProgramDtoExecutionPolicyEnum executionPolicy;

  EmailWarmupProgramDtoProgramModeEnum programMode;

  EmailWarmupProgramDtoStatusEnum status;

  Set<EmailWarmupProgramDtoBlockersEnum> blockers;

  int currentDailyVolume;

  int goalDailyVolume;

  EmailWarmupProgramDtoSchedulePresetEnum schedulePreset;

  int rampDurationDays;

  bool maintenanceEnabled;

  int maintenanceDailyVolume;

  String sendWindowStart;

  String sendWindowEnd;

  String timeZone;

  EmailWarmupProgramDtoRequestedCoverageEnum requestedCoverage;

  EmailWarmupProgramDtoResolvedCoverageEnum resolvedCoverage;

  String? baselineTestId;

  EmailWarmupProgramDtoBaselineSourceEnum baselineSource;

  EmailWarmupProgramDtoContentSourceEnum contentSource;

  EmailWarmupContentOptions content;

  String contentHash;

  DateTime senderOwnershipAttestedAt;

  DateTime permissionBasedSendingAttestedAt;

  String attestationPolicyVersion;

  String policyVersion;

  String contentPolicyVersion;

  String recipientPolicyVersion;

  DateTime? nextActionAt;

  DateTime? startedAt;

  DateTime? completedAt;

  String? completionCode;

  int version;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupProgramDto &&
     other.id == id &&
     other.connectionId == connectionId &&
     other.senderEmail == senderEmail &&
     other.name == name &&
     other.customerIntent == customerIntent &&
     other.executionPolicy == executionPolicy &&
     other.programMode == programMode &&
     other.status == status &&
     other.blockers == blockers &&
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
     other.resolvedCoverage == resolvedCoverage &&
     other.baselineTestId == baselineTestId &&
     other.baselineSource == baselineSource &&
     other.contentSource == contentSource &&
     other.content == content &&
     other.contentHash == contentHash &&
     other.senderOwnershipAttestedAt == senderOwnershipAttestedAt &&
     other.permissionBasedSendingAttestedAt == permissionBasedSendingAttestedAt &&
     other.attestationPolicyVersion == attestationPolicyVersion &&
     other.policyVersion == policyVersion &&
     other.contentPolicyVersion == contentPolicyVersion &&
     other.recipientPolicyVersion == recipientPolicyVersion &&
     other.nextActionAt == nextActionAt &&
     other.startedAt == startedAt &&
     other.completedAt == completedAt &&
     other.completionCode == completionCode &&
     other.version == version &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (connectionId.hashCode) +
    (senderEmail.hashCode) +
    (name.hashCode) +
    (customerIntent.hashCode) +
    (executionPolicy.hashCode) +
    (programMode.hashCode) +
    (status.hashCode) +
    (blockers.hashCode) +
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
    (resolvedCoverage.hashCode) +
    (baselineTestId == null ? 0 : baselineTestId!.hashCode) +
    (baselineSource.hashCode) +
    (contentSource.hashCode) +
    (content.hashCode) +
    (contentHash.hashCode) +
    (senderOwnershipAttestedAt.hashCode) +
    (permissionBasedSendingAttestedAt.hashCode) +
    (attestationPolicyVersion.hashCode) +
    (policyVersion.hashCode) +
    (contentPolicyVersion.hashCode) +
    (recipientPolicyVersion.hashCode) +
    (nextActionAt == null ? 0 : nextActionAt!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (completionCode == null ? 0 : completionCode!.hashCode) +
    (version.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailWarmupProgramDto[id=$id, connectionId=$connectionId, senderEmail=$senderEmail, name=$name, customerIntent=$customerIntent, executionPolicy=$executionPolicy, programMode=$programMode, status=$status, blockers=$blockers, currentDailyVolume=$currentDailyVolume, goalDailyVolume=$goalDailyVolume, schedulePreset=$schedulePreset, rampDurationDays=$rampDurationDays, maintenanceEnabled=$maintenanceEnabled, maintenanceDailyVolume=$maintenanceDailyVolume, sendWindowStart=$sendWindowStart, sendWindowEnd=$sendWindowEnd, timeZone=$timeZone, requestedCoverage=$requestedCoverage, resolvedCoverage=$resolvedCoverage, baselineTestId=$baselineTestId, baselineSource=$baselineSource, contentSource=$contentSource, content=$content, contentHash=$contentHash, senderOwnershipAttestedAt=$senderOwnershipAttestedAt, permissionBasedSendingAttestedAt=$permissionBasedSendingAttestedAt, attestationPolicyVersion=$attestationPolicyVersion, policyVersion=$policyVersion, contentPolicyVersion=$contentPolicyVersion, recipientPolicyVersion=$recipientPolicyVersion, nextActionAt=$nextActionAt, startedAt=$startedAt, completedAt=$completedAt, completionCode=$completionCode, version=$version, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'connectionId'] = this.connectionId;
      json[r'senderEmail'] = this.senderEmail;
      json[r'name'] = this.name;
      json[r'customerIntent'] = this.customerIntent;
      json[r'executionPolicy'] = this.executionPolicy;
      json[r'programMode'] = this.programMode;
      json[r'status'] = this.status;
      json[r'blockers'] = this.blockers;
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
      json[r'resolvedCoverage'] = this.resolvedCoverage;
    if (this.baselineTestId != null) {
      json[r'baselineTestId'] = this.baselineTestId;
    } else {
      json[r'baselineTestId'] = null;
    }
      json[r'baselineSource'] = this.baselineSource;
      json[r'contentSource'] = this.contentSource;
      json[r'content'] = this.content;
      json[r'contentHash'] = this.contentHash;
      json[r'senderOwnershipAttestedAt'] = this.senderOwnershipAttestedAt.toUtc().toIso8601String();
      json[r'permissionBasedSendingAttestedAt'] = this.permissionBasedSendingAttestedAt.toUtc().toIso8601String();
      json[r'attestationPolicyVersion'] = this.attestationPolicyVersion;
      json[r'policyVersion'] = this.policyVersion;
      json[r'contentPolicyVersion'] = this.contentPolicyVersion;
      json[r'recipientPolicyVersion'] = this.recipientPolicyVersion;
    if (this.nextActionAt != null) {
      json[r'nextActionAt'] = this.nextActionAt!.toUtc().toIso8601String();
    } else {
      json[r'nextActionAt'] = null;
    }
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    if (this.completionCode != null) {
      json[r'completionCode'] = this.completionCode;
    } else {
      json[r'completionCode'] = null;
    }
      json[r'version'] = this.version;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailWarmupProgramDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupProgramDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupProgramDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupProgramDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupProgramDto(
        id: mapValueOfType<String>(json, r'id')!,
        connectionId: mapValueOfType<String>(json, r'connectionId')!,
        senderEmail: mapValueOfType<String>(json, r'senderEmail')!,
        name: mapValueOfType<String>(json, r'name')!,
        customerIntent: EmailWarmupProgramDtoCustomerIntentEnum.fromJson(json[r'customerIntent'])!,
        executionPolicy: EmailWarmupProgramDtoExecutionPolicyEnum.fromJson(json[r'executionPolicy'])!,
        programMode: EmailWarmupProgramDtoProgramModeEnum.fromJson(json[r'programMode'])!,
        status: EmailWarmupProgramDtoStatusEnum.fromJson(json[r'status'])!,
        blockers: EmailWarmupProgramDtoBlockersEnum.listFromJson(json[r'blockers']).toSet(),
        currentDailyVolume: mapValueOfType<int>(json, r'currentDailyVolume')!,
        goalDailyVolume: mapValueOfType<int>(json, r'goalDailyVolume')!,
        schedulePreset: EmailWarmupProgramDtoSchedulePresetEnum.fromJson(json[r'schedulePreset'])!,
        rampDurationDays: mapValueOfType<int>(json, r'rampDurationDays')!,
        maintenanceEnabled: mapValueOfType<bool>(json, r'maintenanceEnabled')!,
        maintenanceDailyVolume: mapValueOfType<int>(json, r'maintenanceDailyVolume')!,
        sendWindowStart: mapValueOfType<String>(json, r'sendWindowStart')!,
        sendWindowEnd: mapValueOfType<String>(json, r'sendWindowEnd')!,
        timeZone: mapValueOfType<String>(json, r'timeZone')!,
        requestedCoverage: EmailWarmupProgramDtoRequestedCoverageEnum.fromJson(json[r'requestedCoverage'])!,
        resolvedCoverage: EmailWarmupProgramDtoResolvedCoverageEnum.fromJson(json[r'resolvedCoverage'])!,
        baselineTestId: mapValueOfType<String>(json, r'baselineTestId'),
        baselineSource: EmailWarmupProgramDtoBaselineSourceEnum.fromJson(json[r'baselineSource'])!,
        contentSource: EmailWarmupProgramDtoContentSourceEnum.fromJson(json[r'contentSource'])!,
        content: EmailWarmupContentOptions.fromJson(json[r'content'])!,
        contentHash: mapValueOfType<String>(json, r'contentHash')!,
        senderOwnershipAttestedAt: mapDateTime(json, r'senderOwnershipAttestedAt', '')!,
        permissionBasedSendingAttestedAt: mapDateTime(json, r'permissionBasedSendingAttestedAt', '')!,
        attestationPolicyVersion: mapValueOfType<String>(json, r'attestationPolicyVersion')!,
        policyVersion: mapValueOfType<String>(json, r'policyVersion')!,
        contentPolicyVersion: mapValueOfType<String>(json, r'contentPolicyVersion')!,
        recipientPolicyVersion: mapValueOfType<String>(json, r'recipientPolicyVersion')!,
        nextActionAt: mapDateTime(json, r'nextActionAt', ''),
        startedAt: mapDateTime(json, r'startedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        completionCode: mapValueOfType<String>(json, r'completionCode'),
        version: mapValueOfType<int>(json, r'version')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailWarmupProgramDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupProgramDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupProgramDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupProgramDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupProgramDto-objects as value to a dart map
  static Map<String, List<EmailWarmupProgramDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupProgramDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupProgramDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'connectionId',
    'senderEmail',
    'name',
    'customerIntent',
    'executionPolicy',
    'programMode',
    'status',
    'blockers',
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
    'resolvedCoverage',
    'baselineSource',
    'contentSource',
    'content',
    'contentHash',
    'senderOwnershipAttestedAt',
    'permissionBasedSendingAttestedAt',
    'attestationPolicyVersion',
    'policyVersion',
    'contentPolicyVersion',
    'recipientPolicyVersion',
    'version',
    'createdAt',
    'updatedAt',
  };
}


class EmailWarmupProgramDtoCustomerIntentEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoCustomerIntentEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const NEW_SENDER_WARMUP = EmailWarmupProgramDtoCustomerIntentEnum._(r'NEW_SENDER_WARMUP');
  static const EXISTING_SENDER_REPAIR = EmailWarmupProgramDtoCustomerIntentEnum._(r'EXISTING_SENDER_REPAIR');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoCustomerIntentEnum].
  static const values = <EmailWarmupProgramDtoCustomerIntentEnum>[
    NEW_SENDER_WARMUP,
    EXISTING_SENDER_REPAIR,
  ];

  static EmailWarmupProgramDtoCustomerIntentEnum? fromJson(dynamic value) => EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoCustomerIntentEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoCustomerIntentEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoCustomerIntentEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoCustomerIntentEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoCustomerIntentEnum].
class EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer {
  factory EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer._();

  const EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoCustomerIntentEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoCustomerIntentEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoCustomerIntentEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NEW_SENDER_WARMUP': return EmailWarmupProgramDtoCustomerIntentEnum.NEW_SENDER_WARMUP;
        case r'EXISTING_SENDER_REPAIR': return EmailWarmupProgramDtoCustomerIntentEnum.EXISTING_SENDER_REPAIR;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoCustomerIntentEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoExecutionPolicyEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoExecutionPolicyEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const LOW_VOLUME_MAILBOX_RAMP = EmailWarmupProgramDtoExecutionPolicyEnum._(r'LOW_VOLUME_MAILBOX_RAMP');
  static const HIGH_VOLUME_INFRASTRUCTURE_RAMP = EmailWarmupProgramDtoExecutionPolicyEnum._(r'HIGH_VOLUME_INFRASTRUCTURE_RAMP');
  static const ASSISTED_CAMPAIGN_RAMP = EmailWarmupProgramDtoExecutionPolicyEnum._(r'ASSISTED_CAMPAIGN_RAMP');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoExecutionPolicyEnum].
  static const values = <EmailWarmupProgramDtoExecutionPolicyEnum>[
    LOW_VOLUME_MAILBOX_RAMP,
    HIGH_VOLUME_INFRASTRUCTURE_RAMP,
    ASSISTED_CAMPAIGN_RAMP,
  ];

  static EmailWarmupProgramDtoExecutionPolicyEnum? fromJson(dynamic value) => EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoExecutionPolicyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoExecutionPolicyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoExecutionPolicyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoExecutionPolicyEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoExecutionPolicyEnum].
class EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer {
  factory EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer._();

  const EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoExecutionPolicyEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoExecutionPolicyEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoExecutionPolicyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'LOW_VOLUME_MAILBOX_RAMP': return EmailWarmupProgramDtoExecutionPolicyEnum.LOW_VOLUME_MAILBOX_RAMP;
        case r'HIGH_VOLUME_INFRASTRUCTURE_RAMP': return EmailWarmupProgramDtoExecutionPolicyEnum.HIGH_VOLUME_INFRASTRUCTURE_RAMP;
        case r'ASSISTED_CAMPAIGN_RAMP': return EmailWarmupProgramDtoExecutionPolicyEnum.ASSISTED_CAMPAIGN_RAMP;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoExecutionPolicyEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoProgramModeEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoProgramModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASSISTED = EmailWarmupProgramDtoProgramModeEnum._(r'ASSISTED');
  static const NATIVE_SEND = EmailWarmupProgramDtoProgramModeEnum._(r'NATIVE_SEND');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoProgramModeEnum].
  static const values = <EmailWarmupProgramDtoProgramModeEnum>[
    ASSISTED,
    NATIVE_SEND,
  ];

  static EmailWarmupProgramDtoProgramModeEnum? fromJson(dynamic value) => EmailWarmupProgramDtoProgramModeEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoProgramModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoProgramModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoProgramModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoProgramModeEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoProgramModeEnum].
class EmailWarmupProgramDtoProgramModeEnumTypeTransformer {
  factory EmailWarmupProgramDtoProgramModeEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoProgramModeEnumTypeTransformer._();

  const EmailWarmupProgramDtoProgramModeEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoProgramModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoProgramModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoProgramModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASSISTED': return EmailWarmupProgramDtoProgramModeEnum.ASSISTED;
        case r'NATIVE_SEND': return EmailWarmupProgramDtoProgramModeEnum.NATIVE_SEND;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoProgramModeEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoProgramModeEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const DRAFT = EmailWarmupProgramDtoStatusEnum._(r'DRAFT');
  static const ESTABLISHING_BASELINE = EmailWarmupProgramDtoStatusEnum._(r'ESTABLISHING_BASELINE');
  static const READY = EmailWarmupProgramDtoStatusEnum._(r'READY');
  static const ACTIVE = EmailWarmupProgramDtoStatusEnum._(r'ACTIVE');
  static const VERIFYING = EmailWarmupProgramDtoStatusEnum._(r'VERIFYING');
  static const PAUSED_CUSTOMER = EmailWarmupProgramDtoStatusEnum._(r'PAUSED_CUSTOMER');
  static const PAUSED_CONNECTION = EmailWarmupProgramDtoStatusEnum._(r'PAUSED_CONNECTION');
  static const PAUSED_SAFETY = EmailWarmupProgramDtoStatusEnum._(r'PAUSED_SAFETY');
  static const PAUSED_BILLING = EmailWarmupProgramDtoStatusEnum._(r'PAUSED_BILLING');
  static const PAUSED_CAPACITY = EmailWarmupProgramDtoStatusEnum._(r'PAUSED_CAPACITY');
  static const COMPLETED = EmailWarmupProgramDtoStatusEnum._(r'COMPLETED');
  static const MONITORING = EmailWarmupProgramDtoStatusEnum._(r'MONITORING');
  static const STOPPED = EmailWarmupProgramDtoStatusEnum._(r'STOPPED');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoStatusEnum].
  static const values = <EmailWarmupProgramDtoStatusEnum>[
    DRAFT,
    ESTABLISHING_BASELINE,
    READY,
    ACTIVE,
    VERIFYING,
    PAUSED_CUSTOMER,
    PAUSED_CONNECTION,
    PAUSED_SAFETY,
    PAUSED_BILLING,
    PAUSED_CAPACITY,
    COMPLETED,
    MONITORING,
    STOPPED,
  ];

  static EmailWarmupProgramDtoStatusEnum? fromJson(dynamic value) => EmailWarmupProgramDtoStatusEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoStatusEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoStatusEnum].
class EmailWarmupProgramDtoStatusEnumTypeTransformer {
  factory EmailWarmupProgramDtoStatusEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoStatusEnumTypeTransformer._();

  const EmailWarmupProgramDtoStatusEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'DRAFT': return EmailWarmupProgramDtoStatusEnum.DRAFT;
        case r'ESTABLISHING_BASELINE': return EmailWarmupProgramDtoStatusEnum.ESTABLISHING_BASELINE;
        case r'READY': return EmailWarmupProgramDtoStatusEnum.READY;
        case r'ACTIVE': return EmailWarmupProgramDtoStatusEnum.ACTIVE;
        case r'VERIFYING': return EmailWarmupProgramDtoStatusEnum.VERIFYING;
        case r'PAUSED_CUSTOMER': return EmailWarmupProgramDtoStatusEnum.PAUSED_CUSTOMER;
        case r'PAUSED_CONNECTION': return EmailWarmupProgramDtoStatusEnum.PAUSED_CONNECTION;
        case r'PAUSED_SAFETY': return EmailWarmupProgramDtoStatusEnum.PAUSED_SAFETY;
        case r'PAUSED_BILLING': return EmailWarmupProgramDtoStatusEnum.PAUSED_BILLING;
        case r'PAUSED_CAPACITY': return EmailWarmupProgramDtoStatusEnum.PAUSED_CAPACITY;
        case r'COMPLETED': return EmailWarmupProgramDtoStatusEnum.COMPLETED;
        case r'MONITORING': return EmailWarmupProgramDtoStatusEnum.MONITORING;
        case r'STOPPED': return EmailWarmupProgramDtoStatusEnum.STOPPED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoStatusEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoStatusEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoBlockersEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoBlockersEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const API_DISABLED = EmailWarmupProgramDtoBlockersEnum._(r'API_DISABLED');
  static const PROVIDER_DISABLED = EmailWarmupProgramDtoBlockersEnum._(r'PROVIDER_DISABLED');
  static const CONNECTION_NOT_VERIFIED = EmailWarmupProgramDtoBlockersEnum._(r'CONNECTION_NOT_VERIFIED');
  static const CONNECTION_VERIFICATION_STALE = EmailWarmupProgramDtoBlockersEnum._(r'CONNECTION_VERIFICATION_STALE');
  static const SENDER_IDENTITY_CHANGED = EmailWarmupProgramDtoBlockersEnum._(r'SENDER_IDENTITY_CHANGED');
  static const CONTROLLED_MX_UNAVAILABLE = EmailWarmupProgramDtoBlockersEnum._(r'CONTROLLED_MX_UNAVAILABLE');
  static const CHECKPOINTS_DISABLED = EmailWarmupProgramDtoBlockersEnum._(r'CHECKPOINTS_DISABLED');
  static const PREMIUM_COVERAGE_REQUIRED = EmailWarmupProgramDtoBlockersEnum._(r'PREMIUM_COVERAGE_REQUIRED');
  static const EXECUTION_DISABLED = EmailWarmupProgramDtoBlockersEnum._(r'EXECUTION_DISABLED');
  static const BILLING_NOT_READY = EmailWarmupProgramDtoBlockersEnum._(r'BILLING_NOT_READY');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoBlockersEnum].
  static const values = <EmailWarmupProgramDtoBlockersEnum>[
    API_DISABLED,
    PROVIDER_DISABLED,
    CONNECTION_NOT_VERIFIED,
    CONNECTION_VERIFICATION_STALE,
    SENDER_IDENTITY_CHANGED,
    CONTROLLED_MX_UNAVAILABLE,
    CHECKPOINTS_DISABLED,
    PREMIUM_COVERAGE_REQUIRED,
    EXECUTION_DISABLED,
    BILLING_NOT_READY,
  ];

  static EmailWarmupProgramDtoBlockersEnum? fromJson(dynamic value) => EmailWarmupProgramDtoBlockersEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoBlockersEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoBlockersEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoBlockersEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoBlockersEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoBlockersEnum].
class EmailWarmupProgramDtoBlockersEnumTypeTransformer {
  factory EmailWarmupProgramDtoBlockersEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoBlockersEnumTypeTransformer._();

  const EmailWarmupProgramDtoBlockersEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoBlockersEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoBlockersEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoBlockersEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'API_DISABLED': return EmailWarmupProgramDtoBlockersEnum.API_DISABLED;
        case r'PROVIDER_DISABLED': return EmailWarmupProgramDtoBlockersEnum.PROVIDER_DISABLED;
        case r'CONNECTION_NOT_VERIFIED': return EmailWarmupProgramDtoBlockersEnum.CONNECTION_NOT_VERIFIED;
        case r'CONNECTION_VERIFICATION_STALE': return EmailWarmupProgramDtoBlockersEnum.CONNECTION_VERIFICATION_STALE;
        case r'SENDER_IDENTITY_CHANGED': return EmailWarmupProgramDtoBlockersEnum.SENDER_IDENTITY_CHANGED;
        case r'CONTROLLED_MX_UNAVAILABLE': return EmailWarmupProgramDtoBlockersEnum.CONTROLLED_MX_UNAVAILABLE;
        case r'CHECKPOINTS_DISABLED': return EmailWarmupProgramDtoBlockersEnum.CHECKPOINTS_DISABLED;
        case r'PREMIUM_COVERAGE_REQUIRED': return EmailWarmupProgramDtoBlockersEnum.PREMIUM_COVERAGE_REQUIRED;
        case r'EXECUTION_DISABLED': return EmailWarmupProgramDtoBlockersEnum.EXECUTION_DISABLED;
        case r'BILLING_NOT_READY': return EmailWarmupProgramDtoBlockersEnum.BILLING_NOT_READY;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoBlockersEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoBlockersEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoSchedulePresetEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoSchedulePresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENTLE = EmailWarmupProgramDtoSchedulePresetEnum._(r'GENTLE');
  static const STANDARD = EmailWarmupProgramDtoSchedulePresetEnum._(r'STANDARD');
  static const REPAIR = EmailWarmupProgramDtoSchedulePresetEnum._(r'REPAIR');
  static const CUSTOM = EmailWarmupProgramDtoSchedulePresetEnum._(r'CUSTOM');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoSchedulePresetEnum].
  static const values = <EmailWarmupProgramDtoSchedulePresetEnum>[
    GENTLE,
    STANDARD,
    REPAIR,
    CUSTOM,
  ];

  static EmailWarmupProgramDtoSchedulePresetEnum? fromJson(dynamic value) => EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoSchedulePresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoSchedulePresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoSchedulePresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoSchedulePresetEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoSchedulePresetEnum].
class EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer {
  factory EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer._();

  const EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoSchedulePresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoSchedulePresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoSchedulePresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENTLE': return EmailWarmupProgramDtoSchedulePresetEnum.GENTLE;
        case r'STANDARD': return EmailWarmupProgramDtoSchedulePresetEnum.STANDARD;
        case r'REPAIR': return EmailWarmupProgramDtoSchedulePresetEnum.REPAIR;
        case r'CUSTOM': return EmailWarmupProgramDtoSchedulePresetEnum.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoSchedulePresetEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoRequestedCoverageEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoRequestedCoverageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = EmailWarmupProgramDtoRequestedCoverageEnum._(r'AUTO');
  static const CONTROLLED = EmailWarmupProgramDtoRequestedCoverageEnum._(r'CONTROLLED');
  static const CORE = EmailWarmupProgramDtoRequestedCoverageEnum._(r'CORE');
  static const EXPANDED = EmailWarmupProgramDtoRequestedCoverageEnum._(r'EXPANDED');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoRequestedCoverageEnum].
  static const values = <EmailWarmupProgramDtoRequestedCoverageEnum>[
    AUTO,
    CONTROLLED,
    CORE,
    EXPANDED,
  ];

  static EmailWarmupProgramDtoRequestedCoverageEnum? fromJson(dynamic value) => EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoRequestedCoverageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoRequestedCoverageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoRequestedCoverageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoRequestedCoverageEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoRequestedCoverageEnum].
class EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer {
  factory EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer._();

  const EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoRequestedCoverageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoRequestedCoverageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoRequestedCoverageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return EmailWarmupProgramDtoRequestedCoverageEnum.AUTO;
        case r'CONTROLLED': return EmailWarmupProgramDtoRequestedCoverageEnum.CONTROLLED;
        case r'CORE': return EmailWarmupProgramDtoRequestedCoverageEnum.CORE;
        case r'EXPANDED': return EmailWarmupProgramDtoRequestedCoverageEnum.EXPANDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoRequestedCoverageEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoResolvedCoverageEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoResolvedCoverageEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = EmailWarmupProgramDtoResolvedCoverageEnum._(r'AUTO');
  static const CONTROLLED = EmailWarmupProgramDtoResolvedCoverageEnum._(r'CONTROLLED');
  static const CORE = EmailWarmupProgramDtoResolvedCoverageEnum._(r'CORE');
  static const EXPANDED = EmailWarmupProgramDtoResolvedCoverageEnum._(r'EXPANDED');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoResolvedCoverageEnum].
  static const values = <EmailWarmupProgramDtoResolvedCoverageEnum>[
    AUTO,
    CONTROLLED,
    CORE,
    EXPANDED,
  ];

  static EmailWarmupProgramDtoResolvedCoverageEnum? fromJson(dynamic value) => EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoResolvedCoverageEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoResolvedCoverageEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoResolvedCoverageEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoResolvedCoverageEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoResolvedCoverageEnum].
class EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer {
  factory EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer._();

  const EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoResolvedCoverageEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoResolvedCoverageEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoResolvedCoverageEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return EmailWarmupProgramDtoResolvedCoverageEnum.AUTO;
        case r'CONTROLLED': return EmailWarmupProgramDtoResolvedCoverageEnum.CONTROLLED;
        case r'CORE': return EmailWarmupProgramDtoResolvedCoverageEnum.CORE;
        case r'EXPANDED': return EmailWarmupProgramDtoResolvedCoverageEnum.EXPANDED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoResolvedCoverageEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoBaselineSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoBaselineSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SUPPLIED = EmailWarmupProgramDtoBaselineSourceEnum._(r'SUPPLIED');
  static const PROGRAM_CHECKPOINT = EmailWarmupProgramDtoBaselineSourceEnum._(r'PROGRAM_CHECKPOINT');
  static const NONE = EmailWarmupProgramDtoBaselineSourceEnum._(r'NONE');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoBaselineSourceEnum].
  static const values = <EmailWarmupProgramDtoBaselineSourceEnum>[
    SUPPLIED,
    PROGRAM_CHECKPOINT,
    NONE,
  ];

  static EmailWarmupProgramDtoBaselineSourceEnum? fromJson(dynamic value) => EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoBaselineSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoBaselineSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoBaselineSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoBaselineSourceEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoBaselineSourceEnum].
class EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer {
  factory EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer._();

  const EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoBaselineSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoBaselineSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoBaselineSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SUPPLIED': return EmailWarmupProgramDtoBaselineSourceEnum.SUPPLIED;
        case r'PROGRAM_CHECKPOINT': return EmailWarmupProgramDtoBaselineSourceEnum.PROGRAM_CHECKPOINT;
        case r'NONE': return EmailWarmupProgramDtoBaselineSourceEnum.NONE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoBaselineSourceEnumTypeTransformer? _instance;
}



class EmailWarmupProgramDtoContentSourceEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupProgramDtoContentSourceEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MANAGED_CONTROL = EmailWarmupProgramDtoContentSourceEnum._(r'MANAGED_CONTROL');
  static const CUSTOM_TEMPLATE = EmailWarmupProgramDtoContentSourceEnum._(r'CUSTOM_TEMPLATE');
  static const AI_ASSISTED_TEMPLATE = EmailWarmupProgramDtoContentSourceEnum._(r'AI_ASSISTED_TEMPLATE');

  /// List of all possible values in this [enum][EmailWarmupProgramDtoContentSourceEnum].
  static const values = <EmailWarmupProgramDtoContentSourceEnum>[
    MANAGED_CONTROL,
    CUSTOM_TEMPLATE,
    AI_ASSISTED_TEMPLATE,
  ];

  static EmailWarmupProgramDtoContentSourceEnum? fromJson(dynamic value) => EmailWarmupProgramDtoContentSourceEnumTypeTransformer().decode(value);

  static List<EmailWarmupProgramDtoContentSourceEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupProgramDtoContentSourceEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupProgramDtoContentSourceEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupProgramDtoContentSourceEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupProgramDtoContentSourceEnum].
class EmailWarmupProgramDtoContentSourceEnumTypeTransformer {
  factory EmailWarmupProgramDtoContentSourceEnumTypeTransformer() => _instance ??= const EmailWarmupProgramDtoContentSourceEnumTypeTransformer._();

  const EmailWarmupProgramDtoContentSourceEnumTypeTransformer._();

  String encode(EmailWarmupProgramDtoContentSourceEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupProgramDtoContentSourceEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupProgramDtoContentSourceEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MANAGED_CONTROL': return EmailWarmupProgramDtoContentSourceEnum.MANAGED_CONTROL;
        case r'CUSTOM_TEMPLATE': return EmailWarmupProgramDtoContentSourceEnum.CUSTOM_TEMPLATE;
        case r'AI_ASSISTED_TEMPLATE': return EmailWarmupProgramDtoContentSourceEnum.AI_ASSISTED_TEMPLATE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupProgramDtoContentSourceEnumTypeTransformer] instance.
  static EmailWarmupProgramDtoContentSourceEnumTypeTransformer? _instance;
}


