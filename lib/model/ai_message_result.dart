//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageResult {
  /// Returns a new [AIMessageResult] instance.
  AIMessageResult({
    required this.evaluationId,
    required this.status,
    required this.summary,
    required this.model,
    required this.usage,
    required this.elapsedMs,
    this.message,
    this.email,
    this.sms,
    this.match,
    this.assertionStatus,
    this.assertions = const [],
    this.data,
    this.extractionEvidence = const {},
    this.candidates = const [],
    this.extractionReason,
    required this.successful,
    this.failedAssertionIds = const [],
  });

  String evaluationId;

  AIMessageResultStatusEnum status;

  String summary;

  AIMessageModelDto model;

  AIMessageUsage usage;

  int elapsedMs;

  AIMessageReference? message;

  Email? email;

  SmsDto? sms;

  AIMessageMatchResult? match;

  AIMessageResultAssertionStatusEnum? assertionStatus;

  List<AIMessageAssertionResult> assertions;

  /// Extracted JSON value conforming to the requested schema or extraction preset. Null when extraction is inconclusive or unavailable.
  Object? data;

  Map<String, List<AIMessageEvidence>> extractionEvidence;

  List<AIMessageCandidateResult> candidates;

  /// Explanation when extraction is inconclusive. May contain a model-reported explanation of missing or ambiguous fields, or a server evidence-validation failure. Diagnostic text, not a stable machine-readable status.
  String? extractionReason;

  /// True only when all requested work succeeded. Assert this in tests and use summary as the assertion failure message.
  bool successful;

  List<String> failedAssertionIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageResult &&
     other.evaluationId == evaluationId &&
     other.status == status &&
     other.summary == summary &&
     other.model == model &&
     other.usage == usage &&
     other.elapsedMs == elapsedMs &&
     other.message == message &&
     other.email == email &&
     other.sms == sms &&
     other.match == match &&
     other.assertionStatus == assertionStatus &&
     other.assertions == assertions &&
     other.data == data &&
     other.extractionEvidence == extractionEvidence &&
     other.candidates == candidates &&
     other.extractionReason == extractionReason &&
     other.successful == successful &&
     other.failedAssertionIds == failedAssertionIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationId.hashCode) +
    (status.hashCode) +
    (summary.hashCode) +
    (model.hashCode) +
    (usage.hashCode) +
    (elapsedMs.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (sms == null ? 0 : sms!.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (assertionStatus == null ? 0 : assertionStatus!.hashCode) +
    (assertions.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (extractionEvidence.hashCode) +
    (candidates.hashCode) +
    (extractionReason == null ? 0 : extractionReason!.hashCode) +
    (successful.hashCode) +
    (failedAssertionIds.hashCode);

  @override
  String toString() => 'AIMessageResult[evaluationId=$evaluationId, status=$status, summary=$summary, model=$model, usage=$usage, elapsedMs=$elapsedMs, message=$message, email=$email, sms=$sms, match=$match, assertionStatus=$assertionStatus, assertions=$assertions, data=$data, extractionEvidence=$extractionEvidence, candidates=$candidates, extractionReason=$extractionReason, successful=$successful, failedAssertionIds=$failedAssertionIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'evaluationId'] = this.evaluationId;
      json[r'status'] = this.status;
      json[r'summary'] = this.summary;
      json[r'model'] = this.model;
      json[r'usage'] = this.usage;
      json[r'elapsedMs'] = this.elapsedMs;
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.sms != null) {
      json[r'sms'] = this.sms;
    } else {
      json[r'sms'] = null;
    }
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
    if (this.assertionStatus != null) {
      json[r'assertionStatus'] = this.assertionStatus;
    } else {
      json[r'assertionStatus'] = null;
    }
      json[r'assertions'] = this.assertions;
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
      json[r'extractionEvidence'] = this.extractionEvidence;
      json[r'candidates'] = this.candidates;
    if (this.extractionReason != null) {
      json[r'extractionReason'] = this.extractionReason;
    } else {
      json[r'extractionReason'] = null;
    }
      json[r'successful'] = this.successful;
      json[r'failedAssertionIds'] = this.failedAssertionIds;
    return json;
  }

  /// Returns a new [AIMessageResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageResult(
        evaluationId: mapValueOfType<String>(json, r'evaluationId')!,
        status: AIMessageResultStatusEnum.fromJson(json[r'status'])!,
        summary: mapValueOfType<String>(json, r'summary')!,
        model: AIMessageModelDto.fromJson(json[r'model'])!,
        usage: AIMessageUsage.fromJson(json[r'usage'])!,
        elapsedMs: mapValueOfType<int>(json, r'elapsedMs')!,
        message: AIMessageReference.fromJson(json[r'message']),
        email: Email.fromJson(json[r'email']),
        sms: SmsDto.fromJson(json[r'sms']),
        match: AIMessageMatchResult.fromJson(json[r'match']),
        assertionStatus: AIMessageResultAssertionStatusEnum.fromJson(json[r'assertionStatus']),
        assertions: AIMessageAssertionResult.listFromJson(json[r'assertions']),
        data: mapValueOfType<Object>(json, r'data'),
        extractionEvidence: json[r'extractionEvidence'] == null
          ? const {}
            : AIMessageEvidence.mapListFromJson(json[r'extractionEvidence']),
        candidates: AIMessageCandidateResult.listFromJson(json[r'candidates']),
        extractionReason: mapValueOfType<String>(json, r'extractionReason'),
        successful: mapValueOfType<bool>(json, r'successful')!,
        failedAssertionIds: json[r'failedAssertionIds'] is List
            ? (json[r'failedAssertionIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AIMessageResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageResult> mapFromJson(dynamic json) {
    final map = <String, AIMessageResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageResult-objects as value to a dart map
  static Map<String, List<AIMessageResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationId',
    'status',
    'summary',
    'model',
    'usage',
    'elapsedMs',
    'assertions',
    'extractionEvidence',
    'candidates',
    'successful',
    'failedAssertionIds',
  };
}


class AIMessageResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCHED = AIMessageResultStatusEnum._(r'MATCHED');
  static const PASS = AIMessageResultStatusEnum._(r'PASS');
  static const FAIL = AIMessageResultStatusEnum._(r'FAIL');
  static const EXTRACTED = AIMessageResultStatusEnum._(r'EXTRACTED');
  static const INCONCLUSIVE = AIMessageResultStatusEnum._(r'INCONCLUSIVE');
  static const TIMED_OUT = AIMessageResultStatusEnum._(r'TIMED_OUT');
  static const TOKEN_LIMIT = AIMessageResultStatusEnum._(r'TOKEN_LIMIT');
  static const CANDIDATE_LIMIT = AIMessageResultStatusEnum._(r'CANDIDATE_LIMIT');
  static const PROVIDER_ERROR = AIMessageResultStatusEnum._(r'PROVIDER_ERROR');
  static const PROVIDER_TIMEOUT = AIMessageResultStatusEnum._(r'PROVIDER_TIMEOUT');
  static const INVALID_OUTPUT = AIMessageResultStatusEnum._(r'INVALID_OUTPUT');

  /// List of all possible values in this [enum][AIMessageResultStatusEnum].
  static const values = <AIMessageResultStatusEnum>[
    MATCHED,
    PASS,
    FAIL,
    EXTRACTED,
    INCONCLUSIVE,
    TIMED_OUT,
    TOKEN_LIMIT,
    CANDIDATE_LIMIT,
    PROVIDER_ERROR,
    PROVIDER_TIMEOUT,
    INVALID_OUTPUT,
  ];

  static AIMessageResultStatusEnum? fromJson(dynamic value) => AIMessageResultStatusEnumTypeTransformer().decode(value);

  static List<AIMessageResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageResultStatusEnum] to String,
/// and [decode] dynamic data back to [AIMessageResultStatusEnum].
class AIMessageResultStatusEnumTypeTransformer {
  factory AIMessageResultStatusEnumTypeTransformer() => _instance ??= const AIMessageResultStatusEnumTypeTransformer._();

  const AIMessageResultStatusEnumTypeTransformer._();

  String encode(AIMessageResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCHED': return AIMessageResultStatusEnum.MATCHED;
        case r'PASS': return AIMessageResultStatusEnum.PASS;
        case r'FAIL': return AIMessageResultStatusEnum.FAIL;
        case r'EXTRACTED': return AIMessageResultStatusEnum.EXTRACTED;
        case r'INCONCLUSIVE': return AIMessageResultStatusEnum.INCONCLUSIVE;
        case r'TIMED_OUT': return AIMessageResultStatusEnum.TIMED_OUT;
        case r'TOKEN_LIMIT': return AIMessageResultStatusEnum.TOKEN_LIMIT;
        case r'CANDIDATE_LIMIT': return AIMessageResultStatusEnum.CANDIDATE_LIMIT;
        case r'PROVIDER_ERROR': return AIMessageResultStatusEnum.PROVIDER_ERROR;
        case r'PROVIDER_TIMEOUT': return AIMessageResultStatusEnum.PROVIDER_TIMEOUT;
        case r'INVALID_OUTPUT': return AIMessageResultStatusEnum.INVALID_OUTPUT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageResultStatusEnumTypeTransformer] instance.
  static AIMessageResultStatusEnumTypeTransformer? _instance;
}



class AIMessageResultAssertionStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageResultAssertionStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = AIMessageResultAssertionStatusEnum._(r'PASS');
  static const FAIL = AIMessageResultAssertionStatusEnum._(r'FAIL');
  static const INCONCLUSIVE = AIMessageResultAssertionStatusEnum._(r'INCONCLUSIVE');

  /// List of all possible values in this [enum][AIMessageResultAssertionStatusEnum].
  static const values = <AIMessageResultAssertionStatusEnum>[
    PASS,
    FAIL,
    INCONCLUSIVE,
  ];

  static AIMessageResultAssertionStatusEnum? fromJson(dynamic value) => AIMessageResultAssertionStatusEnumTypeTransformer().decode(value);

  static List<AIMessageResultAssertionStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageResultAssertionStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageResultAssertionStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageResultAssertionStatusEnum] to String,
/// and [decode] dynamic data back to [AIMessageResultAssertionStatusEnum].
class AIMessageResultAssertionStatusEnumTypeTransformer {
  factory AIMessageResultAssertionStatusEnumTypeTransformer() => _instance ??= const AIMessageResultAssertionStatusEnumTypeTransformer._();

  const AIMessageResultAssertionStatusEnumTypeTransformer._();

  String encode(AIMessageResultAssertionStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageResultAssertionStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageResultAssertionStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return AIMessageResultAssertionStatusEnum.PASS;
        case r'FAIL': return AIMessageResultAssertionStatusEnum.FAIL;
        case r'INCONCLUSIVE': return AIMessageResultAssertionStatusEnum.INCONCLUSIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageResultAssertionStatusEnumTypeTransformer] instance.
  static AIMessageResultAssertionStatusEnumTypeTransformer? _instance;
}


