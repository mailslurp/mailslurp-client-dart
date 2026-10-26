//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessagesResult {
  /// Returns a new [AIMessagesResult] instance.
  AIMessagesResult({
    required this.evaluationId,
    required this.status,
    this.results = const [],
    required this.usage,
    required this.elapsedMs,
    required this.summary,
    required this.successful,
    this.unsatisfiedExpectationIds = const [],
  });

  String evaluationId;

  AIMessagesResultStatusEnum status;

  List<AIMessageExpectationResult> results;

  AIMessageUsage usage;

  int elapsedMs;

  String summary;

  bool successful;

  List<String> unsatisfiedExpectationIds;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessagesResult &&
     other.evaluationId == evaluationId &&
     other.status == status &&
     other.results == results &&
     other.usage == usage &&
     other.elapsedMs == elapsedMs &&
     other.summary == summary &&
     other.successful == successful &&
     other.unsatisfiedExpectationIds == unsatisfiedExpectationIds;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (evaluationId.hashCode) +
    (status.hashCode) +
    (results.hashCode) +
    (usage.hashCode) +
    (elapsedMs.hashCode) +
    (summary.hashCode) +
    (successful.hashCode) +
    (unsatisfiedExpectationIds.hashCode);

  @override
  String toString() => 'AIMessagesResult[evaluationId=$evaluationId, status=$status, results=$results, usage=$usage, elapsedMs=$elapsedMs, summary=$summary, successful=$successful, unsatisfiedExpectationIds=$unsatisfiedExpectationIds]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'evaluationId'] = this.evaluationId;
      json[r'status'] = this.status;
      json[r'results'] = this.results;
      json[r'usage'] = this.usage;
      json[r'elapsedMs'] = this.elapsedMs;
      json[r'summary'] = this.summary;
      json[r'successful'] = this.successful;
      json[r'unsatisfiedExpectationIds'] = this.unsatisfiedExpectationIds;
    return json;
  }

  /// Returns a new [AIMessagesResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessagesResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessagesResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessagesResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessagesResult(
        evaluationId: mapValueOfType<String>(json, r'evaluationId')!,
        status: AIMessagesResultStatusEnum.fromJson(json[r'status'])!,
        results: AIMessageExpectationResult.listFromJson(json[r'results']),
        usage: AIMessageUsage.fromJson(json[r'usage'])!,
        elapsedMs: mapValueOfType<int>(json, r'elapsedMs')!,
        summary: mapValueOfType<String>(json, r'summary')!,
        successful: mapValueOfType<bool>(json, r'successful')!,
        unsatisfiedExpectationIds: json[r'unsatisfiedExpectationIds'] is List
            ? (json[r'unsatisfiedExpectationIds'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<AIMessagesResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessagesResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessagesResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessagesResult> mapFromJson(dynamic json) {
    final map = <String, AIMessagesResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessagesResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessagesResult-objects as value to a dart map
  static Map<String, List<AIMessagesResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessagesResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessagesResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'evaluationId',
    'status',
    'results',
    'usage',
    'elapsedMs',
    'summary',
    'successful',
    'unsatisfiedExpectationIds',
  };
}


class AIMessagesResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessagesResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCHED = AIMessagesResultStatusEnum._(r'MATCHED');
  static const PASS = AIMessagesResultStatusEnum._(r'PASS');
  static const FAIL = AIMessagesResultStatusEnum._(r'FAIL');
  static const EXTRACTED = AIMessagesResultStatusEnum._(r'EXTRACTED');
  static const INCONCLUSIVE = AIMessagesResultStatusEnum._(r'INCONCLUSIVE');
  static const TIMED_OUT = AIMessagesResultStatusEnum._(r'TIMED_OUT');
  static const TOKEN_LIMIT = AIMessagesResultStatusEnum._(r'TOKEN_LIMIT');
  static const CANDIDATE_LIMIT = AIMessagesResultStatusEnum._(r'CANDIDATE_LIMIT');
  static const PROVIDER_ERROR = AIMessagesResultStatusEnum._(r'PROVIDER_ERROR');
  static const PROVIDER_TIMEOUT = AIMessagesResultStatusEnum._(r'PROVIDER_TIMEOUT');
  static const INVALID_OUTPUT = AIMessagesResultStatusEnum._(r'INVALID_OUTPUT');

  /// List of all possible values in this [enum][AIMessagesResultStatusEnum].
  static const values = <AIMessagesResultStatusEnum>[
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

  static AIMessagesResultStatusEnum? fromJson(dynamic value) => AIMessagesResultStatusEnumTypeTransformer().decode(value);

  static List<AIMessagesResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessagesResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessagesResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessagesResultStatusEnum] to String,
/// and [decode] dynamic data back to [AIMessagesResultStatusEnum].
class AIMessagesResultStatusEnumTypeTransformer {
  factory AIMessagesResultStatusEnumTypeTransformer() => _instance ??= const AIMessagesResultStatusEnumTypeTransformer._();

  const AIMessagesResultStatusEnumTypeTransformer._();

  String encode(AIMessagesResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessagesResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessagesResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCHED': return AIMessagesResultStatusEnum.MATCHED;
        case r'PASS': return AIMessagesResultStatusEnum.PASS;
        case r'FAIL': return AIMessagesResultStatusEnum.FAIL;
        case r'EXTRACTED': return AIMessagesResultStatusEnum.EXTRACTED;
        case r'INCONCLUSIVE': return AIMessagesResultStatusEnum.INCONCLUSIVE;
        case r'TIMED_OUT': return AIMessagesResultStatusEnum.TIMED_OUT;
        case r'TOKEN_LIMIT': return AIMessagesResultStatusEnum.TOKEN_LIMIT;
        case r'CANDIDATE_LIMIT': return AIMessagesResultStatusEnum.CANDIDATE_LIMIT;
        case r'PROVIDER_ERROR': return AIMessagesResultStatusEnum.PROVIDER_ERROR;
        case r'PROVIDER_TIMEOUT': return AIMessagesResultStatusEnum.PROVIDER_TIMEOUT;
        case r'INVALID_OUTPUT': return AIMessagesResultStatusEnum.INVALID_OUTPUT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessagesResultStatusEnumTypeTransformer] instance.
  static AIMessagesResultStatusEnumTypeTransformer? _instance;
}


