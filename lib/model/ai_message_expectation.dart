//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AIMessageExpectation {
  /// Returns a new [AIMessageExpectation] instance.
  AIMessageExpectation({
    required this.id,
    required this.scope,
    this.match,
    this.emailMatchOptions,
    this.smsMatchOptions,
    this.assertions = const [],
    this.outputSchema,
    this.transformId,
    this.instructions,
    this.extractionPreset,
  });

  String id;

  AIMessageScope scope;

  AIMessageMatchOptions? match;

  MatchOptions? emailMatchOptions;

  SmsMatchOptions? smsMatchOptions;

  List<AIMessageAssertion> assertions;

  StructuredOutputSchema? outputSchema;

  String? transformId;

  String? instructions;

  /// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
  AIMessageExpectationExtractionPresetEnum? extractionPreset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AIMessageExpectation &&
     other.id == id &&
     other.scope == scope &&
     other.match == match &&
     other.emailMatchOptions == emailMatchOptions &&
     other.smsMatchOptions == smsMatchOptions &&
     other.assertions == assertions &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId &&
     other.instructions == instructions &&
     other.extractionPreset == extractionPreset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (scope.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (emailMatchOptions == null ? 0 : emailMatchOptions!.hashCode) +
    (smsMatchOptions == null ? 0 : smsMatchOptions!.hashCode) +
    (assertions.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (extractionPreset == null ? 0 : extractionPreset!.hashCode);

  @override
  String toString() => 'AIMessageExpectation[id=$id, scope=$scope, match=$match, emailMatchOptions=$emailMatchOptions, smsMatchOptions=$smsMatchOptions, assertions=$assertions, outputSchema=$outputSchema, transformId=$transformId, instructions=$instructions, extractionPreset=$extractionPreset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'scope'] = this.scope;
    if (this.match != null) {
      json[r'match'] = this.match;
    } else {
      json[r'match'] = null;
    }
    if (this.emailMatchOptions != null) {
      json[r'emailMatchOptions'] = this.emailMatchOptions;
    } else {
      json[r'emailMatchOptions'] = null;
    }
    if (this.smsMatchOptions != null) {
      json[r'smsMatchOptions'] = this.smsMatchOptions;
    } else {
      json[r'smsMatchOptions'] = null;
    }
      json[r'assertions'] = this.assertions;
    if (this.outputSchema != null) {
      json[r'outputSchema'] = this.outputSchema;
    } else {
      json[r'outputSchema'] = null;
    }
    if (this.transformId != null) {
      json[r'transformId'] = this.transformId;
    } else {
      json[r'transformId'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
    if (this.extractionPreset != null) {
      json[r'extractionPreset'] = this.extractionPreset;
    } else {
      json[r'extractionPreset'] = null;
    }
    return json;
  }

  /// Returns a new [AIMessageExpectation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AIMessageExpectation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AIMessageExpectation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AIMessageExpectation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AIMessageExpectation(
        id: mapValueOfType<String>(json, r'id')!,
        scope: AIMessageScope.fromJson(json[r'scope'])!,
        match: AIMessageMatchOptions.fromJson(json[r'match']),
        emailMatchOptions: MatchOptions.fromJson(json[r'emailMatchOptions']),
        smsMatchOptions: SmsMatchOptions.fromJson(json[r'smsMatchOptions']),
        assertions: AIMessageAssertion.listFromJson(json[r'assertions']),
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        extractionPreset: AIMessageExpectationExtractionPresetEnum.fromJson(json[r'extractionPreset']),
      );
    }
    return null;
  }

  static List<AIMessageExpectation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageExpectation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageExpectation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AIMessageExpectation> mapFromJson(dynamic json) {
    final map = <String, AIMessageExpectation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AIMessageExpectation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AIMessageExpectation-objects as value to a dart map
  static Map<String, List<AIMessageExpectation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AIMessageExpectation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AIMessageExpectation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'scope',
    'assertions',
  };
}

/// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
class AIMessageExpectationExtractionPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const AIMessageExpectationExtractionPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OTP_CODE = AIMessageExpectationExtractionPresetEnum._(r'OTP_CODE');

  /// List of all possible values in this [enum][AIMessageExpectationExtractionPresetEnum].
  static const values = <AIMessageExpectationExtractionPresetEnum>[
    OTP_CODE,
  ];

  static AIMessageExpectationExtractionPresetEnum? fromJson(dynamic value) => AIMessageExpectationExtractionPresetEnumTypeTransformer().decode(value);

  static List<AIMessageExpectationExtractionPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AIMessageExpectationExtractionPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AIMessageExpectationExtractionPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AIMessageExpectationExtractionPresetEnum] to String,
/// and [decode] dynamic data back to [AIMessageExpectationExtractionPresetEnum].
class AIMessageExpectationExtractionPresetEnumTypeTransformer {
  factory AIMessageExpectationExtractionPresetEnumTypeTransformer() => _instance ??= const AIMessageExpectationExtractionPresetEnumTypeTransformer._();

  const AIMessageExpectationExtractionPresetEnumTypeTransformer._();

  String encode(AIMessageExpectationExtractionPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AIMessageExpectationExtractionPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AIMessageExpectationExtractionPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OTP_CODE': return AIMessageExpectationExtractionPresetEnum.OTP_CODE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AIMessageExpectationExtractionPresetEnumTypeTransformer] instance.
  static AIMessageExpectationExtractionPresetEnumTypeTransformer? _instance;
}


