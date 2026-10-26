//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageMatchResult {
  /// Returns a new [AIMessageMatchResult] instance.
  AIMessageMatchResult({
    required this.status,
    required this.reason,
    this.evidence = const [],
    this.confidence,
  });

  AIMessageMatchResultStatusEnum status;

  String reason;

  List<AIMessageEvidence> evidence;

  AIMessageConfidence? confidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageMatchResult &&
     other.status == status &&
     other.reason == reason &&
     other.evidence == evidence &&
     other.confidence == confidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (reason.hashCode) +
    (evidence.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode);

  @override
  String toString() => 'AIMessageMatchResult[status=$status, reason=$reason, evidence=$evidence, confidence=$confidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [AIMessageMatchResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageMatchResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageMatchResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageMatchResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageMatchResult(
        status: AIMessageMatchResultStatusEnum.fromJson(json[r'status'])!,
        reason: mapValueOfType<String>(json, r'reason')!,
        evidence: AIMessageEvidence.listFromJson(json[r'evidence']),
        confidence: AIMessageConfidence.fromJson(json[r'confidence']),
      );
    }
    return null;
  }

  static List<AIMessageMatchResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageMatchResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageMatchResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageMatchResult> mapFromJson(dynamic json) {
    final map = <String, AIMessageMatchResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageMatchResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageMatchResult-objects as value to a dart map
  static Map<String, List<AIMessageMatchResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageMatchResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageMatchResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'reason',
    'evidence',
  };
}


class AIMessageMatchResultStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageMatchResultStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MATCH = AIMessageMatchResultStatusEnum._(r'MATCH');
  static const NO_MATCH = AIMessageMatchResultStatusEnum._(r'NO_MATCH');
  static const INCONCLUSIVE = AIMessageMatchResultStatusEnum._(r'INCONCLUSIVE');

  /// List of all possible values in this [enum][AIMessageMatchResultStatusEnum].
  static const values = <AIMessageMatchResultStatusEnum>[
    MATCH,
    NO_MATCH,
    INCONCLUSIVE,
  ];

  static AIMessageMatchResultStatusEnum? fromJson(dynamic value) => AIMessageMatchResultStatusEnumTypeTransformer().decode(value);

  static List<AIMessageMatchResultStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageMatchResultStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageMatchResultStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageMatchResultStatusEnum] to String,
/// and [decode] dynamic data back to [AIMessageMatchResultStatusEnum].
class AIMessageMatchResultStatusEnumTypeTransformer {
  factory AIMessageMatchResultStatusEnumTypeTransformer() => _instance ??= const AIMessageMatchResultStatusEnumTypeTransformer._();

  const AIMessageMatchResultStatusEnumTypeTransformer._();

  String encode(AIMessageMatchResultStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageMatchResultStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageMatchResultStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MATCH': return AIMessageMatchResultStatusEnum.MATCH;
        case r'NO_MATCH': return AIMessageMatchResultStatusEnum.NO_MATCH;
        case r'INCONCLUSIVE': return AIMessageMatchResultStatusEnum.INCONCLUSIVE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageMatchResultStatusEnumTypeTransformer] instance.
  static AIMessageMatchResultStatusEnumTypeTransformer? _instance;
}


