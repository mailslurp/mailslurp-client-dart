//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageAssertionResult {
  /// Returns a new [AIMessageAssertionResult] instance.
  AIMessageAssertionResult({
    required this.id,
    required this.status,
    required this.reason,
    this.evidence = const [],
    this.confidence,
  });

  String id;

  AIMessageAssertionResultStatusEnum status;

  String reason;

  List<AIMessageEvidence> evidence;

  AIMessageConfidence? confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageAssertionResult &&
     other.id == id &&
     other.status == status &&
     other.reason == reason &&
     other.evidence == evidence &&
     other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status.hashCode) +
    (reason.hashCode) +
    (evidence.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode);

  @override
  String toString() => 'AIMessageAssertionResult[id=$id, status=$status, reason=$reason, evidence=$evidence, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'status'] = this.status;
      json[r'reason'] = this.reason;
      json[r'evidence'] = this.evidence;
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    return json;
  }

  /// Returns a new [AIMessageAssertionResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageAssertionResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageAssertionResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageAssertionResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageAssertionResult(
        id: mapValueOfType<String>(json, r'id')!,
        status: AIMessageAssertionResultStatusEnum.fromJson(json[r'status'])!,
        reason: mapValueOfType<String>(json, r'reason')!,
        evidence: AIMessageEvidence.listFromJson(json[r'evidence']),
        confidence: AIMessageConfidence.fromJson(json[r'confidence']),
      );
    }
    return null;
  }

  static List<AIMessageAssertionResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageAssertionResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageAssertionResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageAssertionResult> mapFromJson(dynamic json) {
    final map = <String, AIMessageAssertionResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageAssertionResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageAssertionResult-objects as value to a dart map
  static Map<String, List<AIMessageAssertionResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageAssertionResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageAssertionResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'status',
    'reason',
    'evidence',
  };
}


class AIMessageAssertionResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageAssertionResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PASS = AIMessageAssertionResultStatusEnum._(r'PASS');
  static const FAIL = AIMessageAssertionResultStatusEnum._(r'FAIL');
  static const INCONCLUSIVE = AIMessageAssertionResultStatusEnum._(r'INCONCLUSIVE');

  /// List of all possible values in this [enum][AIMessageAssertionResultStatusEnum].
  static const values = <AIMessageAssertionResultStatusEnum>[
    PASS,
    FAIL,
    INCONCLUSIVE,
  ];

  static AIMessageAssertionResultStatusEnum? fromJson(dynamic value) => AIMessageAssertionResultStatusEnumTypeTransformer().decode(value);

  static List<AIMessageAssertionResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageAssertionResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageAssertionResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageAssertionResultStatusEnum] to String,
/// and [decode] dynamic data back to [AIMessageAssertionResultStatusEnum].
class AIMessageAssertionResultStatusEnumTypeTransformer {
  factory AIMessageAssertionResultStatusEnumTypeTransformer() => _instance ??= const AIMessageAssertionResultStatusEnumTypeTransformer._();

  const AIMessageAssertionResultStatusEnumTypeTransformer._();

  String encode(AIMessageAssertionResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageAssertionResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageAssertionResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'PASS': return AIMessageAssertionResultStatusEnum.PASS;
        case r'FAIL': return AIMessageAssertionResultStatusEnum.FAIL;
        case r'INCONCLUSIVE': return AIMessageAssertionResultStatusEnum.INCONCLUSIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageAssertionResultStatusEnumTypeTransformer] instance.
  static AIMessageAssertionResultStatusEnumTypeTransformer? _instance;
}


