//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageConfidence {
  /// Returns a new [AIMessageConfidence] instance.
  AIMessageConfidence({
    required this.score,
    required this.method,
    required this.calibrated,
  });

  double score;

  AIMessageConfidenceMethodEnum method;

  bool calibrated;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageConfidence &&
     other.score == score &&
     other.method == method &&
     other.calibrated == calibrated;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (score.hashCode) +
    (method.hashCode) +
    (calibrated.hashCode);

  @override
  String toString() => 'AIMessageConfidence[score=$score, method=$method, calibrated=$calibrated]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'score'] = this.score;
      json[r'method'] = this.method;
      json[r'calibrated'] = this.calibrated;
    return json;
  }

  /// Returns a new [AIMessageConfidence] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageConfidence? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageConfidence[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageConfidence[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageConfidence(
        score: mapValueOfType<double>(json, r'score')!,
        method: AIMessageConfidenceMethodEnum.fromJson(json[r'method'])!,
        calibrated: mapValueOfType<bool>(json, r'calibrated')!,
      );
    }
    return null;
  }

  static List<AIMessageConfidence> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageConfidence>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageConfidence.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageConfidence> mapFromJson(dynamic json) {
    final map = <String, AIMessageConfidence>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageConfidence.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageConfidence-objects as value to a dart map
  static Map<String, List<AIMessageConfidence>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageConfidence>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageConfidence.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'score',
    'method',
    'calibrated',
  };
}


class AIMessageConfidenceMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageConfidenceMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MODEL_REPORTED = AIMessageConfidenceMethodEnum._(r'MODEL_REPORTED');

  /// List of all possible values in this [enum][AIMessageConfidenceMethodEnum].
  static const values = <AIMessageConfidenceMethodEnum>[
    MODEL_REPORTED,
  ];

  static AIMessageConfidenceMethodEnum? fromJson(dynamic value) => AIMessageConfidenceMethodEnumTypeTransformer().decode(value);

  static List<AIMessageConfidenceMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageConfidenceMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageConfidenceMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageConfidenceMethodEnum] to String,
/// and [decode] dynamic data back to [AIMessageConfidenceMethodEnum].
class AIMessageConfidenceMethodEnumTypeTransformer {
  factory AIMessageConfidenceMethodEnumTypeTransformer() => _instance ??= const AIMessageConfidenceMethodEnumTypeTransformer._();

  const AIMessageConfidenceMethodEnumTypeTransformer._();

  String encode(AIMessageConfidenceMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageConfidenceMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageConfidenceMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'MODEL_REPORTED': return AIMessageConfidenceMethodEnum.MODEL_REPORTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageConfidenceMethodEnumTypeTransformer] instance.
  static AIMessageConfidenceMethodEnumTypeTransformer? _instance;
}


