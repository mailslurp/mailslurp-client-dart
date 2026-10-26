//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractAIMessageOptions {
  /// Returns a new [ExtractAIMessageOptions] instance.
  ExtractAIMessageOptions({
    required this.message,
    this.outputSchema,
    this.transformId,
    this.instructions,
    required this.timeout,
    required this.aiOptions,
    this.extractionPreset,
  });

  AIMessageReference message;

  StructuredOutputSchema? outputSchema;

  String? transformId;

  String? instructions;

  /// Minimum value: 1
  /// Maximum value: 120000
  int timeout;

  AIMessageAIOptions aiOptions;

  /// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
  ExtractAIMessageOptionsExtractionPresetEnum? extractionPreset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractAIMessageOptions &&
     other.message == message &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId &&
     other.instructions == instructions &&
     other.timeout == timeout &&
     other.aiOptions == aiOptions &&
     other.extractionPreset == extractionPreset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (timeout.hashCode) +
    (aiOptions.hashCode) +
    (extractionPreset == null ? 0 : extractionPreset!.hashCode);

  @override
  String toString() => 'ExtractAIMessageOptions[message=$message, outputSchema=$outputSchema, transformId=$transformId, instructions=$instructions, timeout=$timeout, aiOptions=$aiOptions, extractionPreset=$extractionPreset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'message'] = this.message;
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
      json[r'timeout'] = this.timeout;
      json[r'aiOptions'] = this.aiOptions;
    if (this.extractionPreset != null) {
      json[r'extractionPreset'] = this.extractionPreset;
    } else {
      json[r'extractionPreset'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractAIMessageOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractAIMessageOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractAIMessageOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractAIMessageOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractAIMessageOptions(
        message: AIMessageReference.fromJson(json[r'message'])!,
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        timeout: mapValueOfType<int>(json, r'timeout')!,
        aiOptions: AIMessageAIOptions.fromJson(json[r'aiOptions'])!,
        extractionPreset: ExtractAIMessageOptionsExtractionPresetEnum.fromJson(json[r'extractionPreset']),
      );
    }
    return null;
  }

  static List<ExtractAIMessageOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAIMessageOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAIMessageOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractAIMessageOptions> mapFromJson(dynamic json) {
    final map = <String, ExtractAIMessageOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractAIMessageOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractAIMessageOptions-objects as value to a dart map
  static Map<String, List<ExtractAIMessageOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractAIMessageOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractAIMessageOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
    'timeout',
    'aiOptions',
  };
}

/// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
class ExtractAIMessageOptionsExtractionPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const ExtractAIMessageOptionsExtractionPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OTP_CODE = ExtractAIMessageOptionsExtractionPresetEnum._(r'OTP_CODE');

  /// List of all possible values in this [enum][ExtractAIMessageOptionsExtractionPresetEnum].
  static const values = <ExtractAIMessageOptionsExtractionPresetEnum>[
    OTP_CODE,
  ];

  static ExtractAIMessageOptionsExtractionPresetEnum? fromJson(dynamic value) => ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer().decode(value);

  static List<ExtractAIMessageOptionsExtractionPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAIMessageOptionsExtractionPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAIMessageOptionsExtractionPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExtractAIMessageOptionsExtractionPresetEnum] to String,
/// and [decode] dynamic data back to [ExtractAIMessageOptionsExtractionPresetEnum].
class ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer {
  factory ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer() => _instance ??= const ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer._();

  const ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer._();

  String encode(ExtractAIMessageOptionsExtractionPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExtractAIMessageOptionsExtractionPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExtractAIMessageOptionsExtractionPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OTP_CODE': return ExtractAIMessageOptionsExtractionPresetEnum.OTP_CODE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer] instance.
  static ExtractAIMessageOptionsExtractionPresetEnumTypeTransformer? _instance;
}


