//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageAIOptions {
  /// Returns a new [AIMessageAIOptions] instance.
  AIMessageAIOptions({
    required this.model,
    required this.maxTokens,
    required this.maxCandidates,
    required this.maxOutputTokens,
    this.minimumConfidence,
  });

  AIMessageAIOptionsModelEnum model;

  /// Minimum value: 1
  /// Maximum value: 100000
  int maxTokens;

  /// Minimum value: 1
  /// Maximum value: 100
  int maxCandidates;

  /// Minimum value: 128
  /// Maximum value: 8192
  int maxOutputTokens;

  /// Optional advanced abstention threshold for model-reported confidence. Below it the decision is INCONCLUSIVE. It does not guarantee accuracy or cause reevaluation.
  ///
  /// Minimum value: 0.0
  /// Maximum value: 1.0
  double? minimumConfidence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageAIOptions &&
     other.model == model &&
     other.maxTokens == maxTokens &&
     other.maxCandidates == maxCandidates &&
     other.maxOutputTokens == maxOutputTokens &&
     other.minimumConfidence == minimumConfidence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model.hashCode) +
    (maxTokens.hashCode) +
    (maxCandidates.hashCode) +
    (maxOutputTokens.hashCode) +
    (minimumConfidence == null ? 0 : minimumConfidence!.hashCode);

  @override
  String toString() => 'AIMessageAIOptions[model=$model, maxTokens=$maxTokens, maxCandidates=$maxCandidates, maxOutputTokens=$maxOutputTokens, minimumConfidence=$minimumConfidence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'model'] = this.model;
      json[r'maxTokens'] = this.maxTokens;
      json[r'maxCandidates'] = this.maxCandidates;
      json[r'maxOutputTokens'] = this.maxOutputTokens;
    if (this.minimumConfidence != null) {
      json[r'minimumConfidence'] = this.minimumConfidence;
    } else {
      json[r'minimumConfidence'] = null;
    }
    return json;
  }

  /// Returns a new [AIMessageAIOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageAIOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageAIOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageAIOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageAIOptions(
        model: AIMessageAIOptionsModelEnum.fromJson(json[r'model'])!,
        maxTokens: mapValueOfType<int>(json, r'maxTokens')!,
        maxCandidates: mapValueOfType<int>(json, r'maxCandidates')!,
        maxOutputTokens: mapValueOfType<int>(json, r'maxOutputTokens')!,
        minimumConfidence: mapValueOfType<double>(json, r'minimumConfidence'),
      );
    }
    return null;
  }

  static List<AIMessageAIOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageAIOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageAIOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageAIOptions> mapFromJson(dynamic json) {
    final map = <String, AIMessageAIOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageAIOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageAIOptions-objects as value to a dart map
  static Map<String, List<AIMessageAIOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageAIOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageAIOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'model',
    'maxTokens',
    'maxCandidates',
    'maxOutputTokens',
  };
}


class AIMessageAIOptionsModelEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageAIOptionsModelEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const bALANCEDV1 = AIMessageAIOptionsModelEnum._(r'BALANCED_V1');
  static const FLASH_LATEST = AIMessageAIOptionsModelEnum._(r'FLASH_LATEST');
  static const qUALITYV1 = AIMessageAIOptionsModelEnum._(r'QUALITY_V1');

  /// List of all possible values in this [enum][AIMessageAIOptionsModelEnum].
  static const values = <AIMessageAIOptionsModelEnum>[
    bALANCEDV1,
    FLASH_LATEST,
    qUALITYV1,
  ];

  static AIMessageAIOptionsModelEnum? fromJson(dynamic value) => AIMessageAIOptionsModelEnumTypeTransformer().decode(value);

  static List<AIMessageAIOptionsModelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageAIOptionsModelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageAIOptionsModelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageAIOptionsModelEnum] to String,
/// and [decode] dynamic data back to [AIMessageAIOptionsModelEnum].
class AIMessageAIOptionsModelEnumTypeTransformer {
  factory AIMessageAIOptionsModelEnumTypeTransformer() => _instance ??= const AIMessageAIOptionsModelEnumTypeTransformer._();

  const AIMessageAIOptionsModelEnumTypeTransformer._();

  String encode(AIMessageAIOptionsModelEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageAIOptionsModelEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageAIOptionsModelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'BALANCED_V1': return AIMessageAIOptionsModelEnum.bALANCEDV1;
        case r'FLASH_LATEST': return AIMessageAIOptionsModelEnum.FLASH_LATEST;
        case r'QUALITY_V1': return AIMessageAIOptionsModelEnum.qUALITYV1;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageAIOptionsModelEnumTypeTransformer] instance.
  static AIMessageAIOptionsModelEnumTypeTransformer? _instance;
}


