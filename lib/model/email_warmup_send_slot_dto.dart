//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailWarmupSendSlotDto {
  /// Returns a new [EmailWarmupSendSlotDto] instance.
  EmailWarmupSendSlotDto({
    required this.id,
    required this.programId,
    required this.slotDate,
    required this.rampDay,
    required this.sequence,
    required this.scheduledFor,
    required this.status,
    required this.targetClass,
    required this.contentHash,
    required this.attemptCount,
    required this.maxAttempts,
    this.acceptedAt,
    this.observedAt,
    this.outcomeClass,
    this.failureCode,
    required this.reconciliationRequired,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String programId;

  DateTime slotDate;

  int rampDay;

  int sequence;

  DateTime scheduledFor;

  EmailWarmupSendSlotDtoStatusEnum status;

  EmailWarmupSendSlotDtoTargetClassEnum targetClass;

  String contentHash;

  int attemptCount;

  int maxAttempts;

  DateTime? acceptedAt;

  DateTime? observedAt;

  EmailWarmupSendSlotDtoOutcomeClassEnum? outcomeClass;

  String? failureCode;

  bool reconciliationRequired;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailWarmupSendSlotDto &&
     other.id == id &&
     other.programId == programId &&
     other.slotDate == slotDate &&
     other.rampDay == rampDay &&
     other.sequence == sequence &&
     other.scheduledFor == scheduledFor &&
     other.status == status &&
     other.targetClass == targetClass &&
     other.contentHash == contentHash &&
     other.attemptCount == attemptCount &&
     other.maxAttempts == maxAttempts &&
     other.acceptedAt == acceptedAt &&
     other.observedAt == observedAt &&
     other.outcomeClass == outcomeClass &&
     other.failureCode == failureCode &&
     other.reconciliationRequired == reconciliationRequired &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (programId.hashCode) +
    (slotDate.hashCode) +
    (rampDay.hashCode) +
    (sequence.hashCode) +
    (scheduledFor.hashCode) +
    (status.hashCode) +
    (targetClass.hashCode) +
    (contentHash.hashCode) +
    (attemptCount.hashCode) +
    (maxAttempts.hashCode) +
    (acceptedAt == null ? 0 : acceptedAt!.hashCode) +
    (observedAt == null ? 0 : observedAt!.hashCode) +
    (outcomeClass == null ? 0 : outcomeClass!.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (reconciliationRequired.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailWarmupSendSlotDto[id=$id, programId=$programId, slotDate=$slotDate, rampDay=$rampDay, sequence=$sequence, scheduledFor=$scheduledFor, status=$status, targetClass=$targetClass, contentHash=$contentHash, attemptCount=$attemptCount, maxAttempts=$maxAttempts, acceptedAt=$acceptedAt, observedAt=$observedAt, outcomeClass=$outcomeClass, failureCode=$failureCode, reconciliationRequired=$reconciliationRequired, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'programId'] = this.programId;
      json[r'slotDate'] = _dateFormatter.format(this.slotDate.toUtc());
      json[r'rampDay'] = this.rampDay;
      json[r'sequence'] = this.sequence;
      json[r'scheduledFor'] = this.scheduledFor.toUtc().toIso8601String();
      json[r'status'] = this.status;
      json[r'targetClass'] = this.targetClass;
      json[r'contentHash'] = this.contentHash;
      json[r'attemptCount'] = this.attemptCount;
      json[r'maxAttempts'] = this.maxAttempts;
    if (this.acceptedAt != null) {
      json[r'acceptedAt'] = this.acceptedAt!.toUtc().toIso8601String();
    } else {
      json[r'acceptedAt'] = null;
    }
    if (this.observedAt != null) {
      json[r'observedAt'] = this.observedAt!.toUtc().toIso8601String();
    } else {
      json[r'observedAt'] = null;
    }
    if (this.outcomeClass != null) {
      json[r'outcomeClass'] = this.outcomeClass;
    } else {
      json[r'outcomeClass'] = null;
    }
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
      json[r'reconciliationRequired'] = this.reconciliationRequired;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailWarmupSendSlotDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailWarmupSendSlotDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailWarmupSendSlotDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailWarmupSendSlotDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailWarmupSendSlotDto(
        id: mapValueOfType<String>(json, r'id')!,
        programId: mapValueOfType<String>(json, r'programId')!,
        slotDate: mapDateTime(json, r'slotDate', '')!,
        rampDay: mapValueOfType<int>(json, r'rampDay')!,
        sequence: mapValueOfType<int>(json, r'sequence')!,
        scheduledFor: mapDateTime(json, r'scheduledFor', '')!,
        status: EmailWarmupSendSlotDtoStatusEnum.fromJson(json[r'status'])!,
        targetClass: EmailWarmupSendSlotDtoTargetClassEnum.fromJson(json[r'targetClass'])!,
        contentHash: mapValueOfType<String>(json, r'contentHash')!,
        attemptCount: mapValueOfType<int>(json, r'attemptCount')!,
        maxAttempts: mapValueOfType<int>(json, r'maxAttempts')!,
        acceptedAt: mapDateTime(json, r'acceptedAt', ''),
        observedAt: mapDateTime(json, r'observedAt', ''),
        outcomeClass: EmailWarmupSendSlotDtoOutcomeClassEnum.fromJson(json[r'outcomeClass']),
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        reconciliationRequired: mapValueOfType<bool>(json, r'reconciliationRequired')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailWarmupSendSlotDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupSendSlotDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupSendSlotDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailWarmupSendSlotDto> mapFromJson(dynamic json) {
    final map = <String, EmailWarmupSendSlotDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailWarmupSendSlotDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailWarmupSendSlotDto-objects as value to a dart map
  static Map<String, List<EmailWarmupSendSlotDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailWarmupSendSlotDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailWarmupSendSlotDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'programId',
    'slotDate',
    'rampDay',
    'sequence',
    'scheduledFor',
    'status',
    'targetClass',
    'contentHash',
    'attemptCount',
    'maxAttempts',
    'reconciliationRequired',
    'createdAt',
    'updatedAt',
  };
}


class EmailWarmupSendSlotDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupSendSlotDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PLANNED = EmailWarmupSendSlotDtoStatusEnum._(r'PLANNED');
  static const CLAIMED = EmailWarmupSendSlotDtoStatusEnum._(r'CLAIMED');
  static const RETRYABLE = EmailWarmupSendSlotDtoStatusEnum._(r'RETRYABLE');
  static const ACCEPTED = EmailWarmupSendSlotDtoStatusEnum._(r'ACCEPTED');
  static const AMBIGUOUS = EmailWarmupSendSlotDtoStatusEnum._(r'AMBIGUOUS');
  static const FAILED = EmailWarmupSendSlotDtoStatusEnum._(r'FAILED');
  static const SKIPPED = EmailWarmupSendSlotDtoStatusEnum._(r'SKIPPED');

  /// List of all possible values in this [enum][EmailWarmupSendSlotDtoStatusEnum].
  static const values = <EmailWarmupSendSlotDtoStatusEnum>[
    PLANNED,
    CLAIMED,
    RETRYABLE,
    ACCEPTED,
    AMBIGUOUS,
    FAILED,
    SKIPPED,
  ];

  static EmailWarmupSendSlotDtoStatusEnum? fromJson(dynamic value) => EmailWarmupSendSlotDtoStatusEnumTypeTransformer().decode(value);

  static List<EmailWarmupSendSlotDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupSendSlotDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupSendSlotDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupSendSlotDtoStatusEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupSendSlotDtoStatusEnum].
class EmailWarmupSendSlotDtoStatusEnumTypeTransformer {
  factory EmailWarmupSendSlotDtoStatusEnumTypeTransformer() => _instance ??= const EmailWarmupSendSlotDtoStatusEnumTypeTransformer._();

  const EmailWarmupSendSlotDtoStatusEnumTypeTransformer._();

  String encode(EmailWarmupSendSlotDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupSendSlotDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupSendSlotDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PLANNED': return EmailWarmupSendSlotDtoStatusEnum.PLANNED;
        case r'CLAIMED': return EmailWarmupSendSlotDtoStatusEnum.CLAIMED;
        case r'RETRYABLE': return EmailWarmupSendSlotDtoStatusEnum.RETRYABLE;
        case r'ACCEPTED': return EmailWarmupSendSlotDtoStatusEnum.ACCEPTED;
        case r'AMBIGUOUS': return EmailWarmupSendSlotDtoStatusEnum.AMBIGUOUS;
        case r'FAILED': return EmailWarmupSendSlotDtoStatusEnum.FAILED;
        case r'SKIPPED': return EmailWarmupSendSlotDtoStatusEnum.SKIPPED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupSendSlotDtoStatusEnumTypeTransformer] instance.
  static EmailWarmupSendSlotDtoStatusEnumTypeTransformer? _instance;
}



class EmailWarmupSendSlotDtoTargetClassEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupSendSlotDtoTargetClassEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const mS2CONTROLLEDMX = EmailWarmupSendSlotDtoTargetClassEnum._(r'MS2_CONTROLLED_MX');
  static const PROVIDER_SEED_PASSIVE = EmailWarmupSendSlotDtoTargetClassEnum._(r'PROVIDER_SEED_PASSIVE');

  /// List of all possible values in this [enum][EmailWarmupSendSlotDtoTargetClassEnum].
  static const values = <EmailWarmupSendSlotDtoTargetClassEnum>[
    mS2CONTROLLEDMX,
    PROVIDER_SEED_PASSIVE,
  ];

  static EmailWarmupSendSlotDtoTargetClassEnum? fromJson(dynamic value) => EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer().decode(value);

  static List<EmailWarmupSendSlotDtoTargetClassEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupSendSlotDtoTargetClassEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupSendSlotDtoTargetClassEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupSendSlotDtoTargetClassEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupSendSlotDtoTargetClassEnum].
class EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer {
  factory EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer() => _instance ??= const EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer._();

  const EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer._();

  String encode(EmailWarmupSendSlotDtoTargetClassEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupSendSlotDtoTargetClassEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupSendSlotDtoTargetClassEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MS2_CONTROLLED_MX': return EmailWarmupSendSlotDtoTargetClassEnum.mS2CONTROLLEDMX;
        case r'PROVIDER_SEED_PASSIVE': return EmailWarmupSendSlotDtoTargetClassEnum.PROVIDER_SEED_PASSIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer] instance.
  static EmailWarmupSendSlotDtoTargetClassEnumTypeTransformer? _instance;
}



class EmailWarmupSendSlotDtoOutcomeClassEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailWarmupSendSlotDtoOutcomeClassEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ACCEPTED = EmailWarmupSendSlotDtoOutcomeClassEnum._(r'ACCEPTED');
  static const AMBIGUOUS = EmailWarmupSendSlotDtoOutcomeClassEnum._(r'AMBIGUOUS');
  static const RETRYABLE = EmailWarmupSendSlotDtoOutcomeClassEnum._(r'RETRYABLE');
  static const PERMANENT = EmailWarmupSendSlotDtoOutcomeClassEnum._(r'PERMANENT');
  static const SKIPPED = EmailWarmupSendSlotDtoOutcomeClassEnum._(r'SKIPPED');

  /// List of all possible values in this [enum][EmailWarmupSendSlotDtoOutcomeClassEnum].
  static const values = <EmailWarmupSendSlotDtoOutcomeClassEnum>[
    ACCEPTED,
    AMBIGUOUS,
    RETRYABLE,
    PERMANENT,
    SKIPPED,
  ];

  static EmailWarmupSendSlotDtoOutcomeClassEnum? fromJson(dynamic value) => EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer().decode(value);

  static List<EmailWarmupSendSlotDtoOutcomeClassEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailWarmupSendSlotDtoOutcomeClassEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailWarmupSendSlotDtoOutcomeClassEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailWarmupSendSlotDtoOutcomeClassEnum] to String,
/// and [decode] dynamic data back to [EmailWarmupSendSlotDtoOutcomeClassEnum].
class EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer {
  factory EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer() => _instance ??= const EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer._();

  const EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer._();

  String encode(EmailWarmupSendSlotDtoOutcomeClassEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailWarmupSendSlotDtoOutcomeClassEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailWarmupSendSlotDtoOutcomeClassEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ACCEPTED': return EmailWarmupSendSlotDtoOutcomeClassEnum.ACCEPTED;
        case r'AMBIGUOUS': return EmailWarmupSendSlotDtoOutcomeClassEnum.AMBIGUOUS;
        case r'RETRYABLE': return EmailWarmupSendSlotDtoOutcomeClassEnum.RETRYABLE;
        case r'PERMANENT': return EmailWarmupSendSlotDtoOutcomeClassEnum.PERMANENT;
        case r'SKIPPED': return EmailWarmupSendSlotDtoOutcomeClassEnum.SKIPPED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer] instance.
  static EmailWarmupSendSlotDtoOutcomeClassEnumTypeTransformer? _instance;
}


