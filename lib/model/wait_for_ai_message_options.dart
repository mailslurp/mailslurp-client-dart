//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class WaitForAIMessageOptions {
  /// Returns a new [WaitForAIMessageOptions] instance.
  WaitForAIMessageOptions({
    required this.scope,
    required this.since,
    required this.timeout,
    this.before,
    required this.unreadOnly,
    required this.sortDirection,
    this.match,
    this.emailMatchOptions,
    this.smsMatchOptions,
    this.assertions = const [],
    this.outputSchema,
    this.transformId,
    this.instructions,
    required this.aiOptions,
    this.extractionPreset,
  });

  AIMessageScope scope;

  DateTime since;

  /// Minimum value: 1
  /// Maximum value: 120000
  int timeout;

  DateTime? before;

  bool unreadOnly;

  WaitForAIMessageOptionsSortDirectionEnum sortDirection;

  AIMessageMatchOptions? match;

  MatchOptions? emailMatchOptions;

  SmsMatchOptions? smsMatchOptions;

  List<AIMessageAssertion> assertions;

  StructuredOutputSchema? outputSchema;

  String? transformId;

  String? instructions;

  AIMessageAIOptions aiOptions;

  /// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
  WaitForAIMessageOptionsExtractionPresetEnum? extractionPreset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WaitForAIMessageOptions &&
     other.scope == scope &&
     other.since == since &&
     other.timeout == timeout &&
     other.before == before &&
     other.unreadOnly == unreadOnly &&
     other.sortDirection == sortDirection &&
     other.match == match &&
     other.emailMatchOptions == emailMatchOptions &&
     other.smsMatchOptions == smsMatchOptions &&
     other.assertions == assertions &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId &&
     other.instructions == instructions &&
     other.aiOptions == aiOptions &&
     other.extractionPreset == extractionPreset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scope.hashCode) +
    (since.hashCode) +
    (timeout.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (unreadOnly.hashCode) +
    (sortDirection.hashCode) +
    (match == null ? 0 : match!.hashCode) +
    (emailMatchOptions == null ? 0 : emailMatchOptions!.hashCode) +
    (smsMatchOptions == null ? 0 : smsMatchOptions!.hashCode) +
    (assertions.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (aiOptions.hashCode) +
    (extractionPreset == null ? 0 : extractionPreset!.hashCode);

  @override
  String toString() => 'WaitForAIMessageOptions[scope=$scope, since=$since, timeout=$timeout, before=$before, unreadOnly=$unreadOnly, sortDirection=$sortDirection, match=$match, emailMatchOptions=$emailMatchOptions, smsMatchOptions=$smsMatchOptions, assertions=$assertions, outputSchema=$outputSchema, transformId=$transformId, instructions=$instructions, aiOptions=$aiOptions, extractionPreset=$extractionPreset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'scope'] = this.scope;
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'timeout'] = this.timeout;
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
      json[r'unreadOnly'] = this.unreadOnly;
      json[r'sortDirection'] = this.sortDirection;
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
      json[r'aiOptions'] = this.aiOptions;
    if (this.extractionPreset != null) {
      json[r'extractionPreset'] = this.extractionPreset;
    } else {
      json[r'extractionPreset'] = null;
    }
    return json;
  }

  /// Returns a new [WaitForAIMessageOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WaitForAIMessageOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WaitForAIMessageOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WaitForAIMessageOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WaitForAIMessageOptions(
        scope: AIMessageScope.fromJson(json[r'scope'])!,
        since: mapDateTime(json, r'since', '')!,
        timeout: mapValueOfType<int>(json, r'timeout')!,
        before: mapDateTime(json, r'before', ''),
        unreadOnly: mapValueOfType<bool>(json, r'unreadOnly')!,
        sortDirection: WaitForAIMessageOptionsSortDirectionEnum.fromJson(json[r'sortDirection'])!,
        match: AIMessageMatchOptions.fromJson(json[r'match']),
        emailMatchOptions: MatchOptions.fromJson(json[r'emailMatchOptions']),
        smsMatchOptions: SmsMatchOptions.fromJson(json[r'smsMatchOptions']),
        assertions: AIMessageAssertion.listFromJson(json[r'assertions']),
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
        instructions: mapValueOfType<String>(json, r'instructions'),
        aiOptions: AIMessageAIOptions.fromJson(json[r'aiOptions'])!,
        extractionPreset: WaitForAIMessageOptionsExtractionPresetEnum.fromJson(json[r'extractionPreset']),
      );
    }
    return null;
  }

  static List<WaitForAIMessageOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForAIMessageOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForAIMessageOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WaitForAIMessageOptions> mapFromJson(dynamic json) {
    final map = <String, WaitForAIMessageOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WaitForAIMessageOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WaitForAIMessageOptions-objects as value to a dart map
  static Map<String, List<WaitForAIMessageOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WaitForAIMessageOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WaitForAIMessageOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'scope',
    'since',
    'timeout',
    'unreadOnly',
    'sortDirection',
    'assertions',
    'aiOptions',
  };
}


class WaitForAIMessageOptionsSortDirectionEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForAIMessageOptionsSortDirectionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const ASC = WaitForAIMessageOptionsSortDirectionEnum._(r'ASC');
  static const DESC = WaitForAIMessageOptionsSortDirectionEnum._(r'DESC');

  /// List of all possible values in this [enum][WaitForAIMessageOptionsSortDirectionEnum].
  static const values = <WaitForAIMessageOptionsSortDirectionEnum>[
    ASC,
    DESC,
  ];

  static WaitForAIMessageOptionsSortDirectionEnum? fromJson(dynamic value) => WaitForAIMessageOptionsSortDirectionEnumTypeTransformer().decode(value);

  static List<WaitForAIMessageOptionsSortDirectionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForAIMessageOptionsSortDirectionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForAIMessageOptionsSortDirectionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForAIMessageOptionsSortDirectionEnum] to String,
/// and [decode] dynamic data back to [WaitForAIMessageOptionsSortDirectionEnum].
class WaitForAIMessageOptionsSortDirectionEnumTypeTransformer {
  factory WaitForAIMessageOptionsSortDirectionEnumTypeTransformer() => _instance ??= const WaitForAIMessageOptionsSortDirectionEnumTypeTransformer._();

  const WaitForAIMessageOptionsSortDirectionEnumTypeTransformer._();

  String encode(WaitForAIMessageOptionsSortDirectionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForAIMessageOptionsSortDirectionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForAIMessageOptionsSortDirectionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ASC': return WaitForAIMessageOptionsSortDirectionEnum.ASC;
        case r'DESC': return WaitForAIMessageOptionsSortDirectionEnum.DESC;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForAIMessageOptionsSortDirectionEnumTypeTransformer] instance.
  static WaitForAIMessageOptionsSortDirectionEnumTypeTransformer? _instance;
}


/// Built-in extraction schema. OTP_CODE returns data.code as a verbatim string, preserving leading zeros and letter case. Missing or equally eligible codes are INCONCLUSIVE.
class WaitForAIMessageOptionsExtractionPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const WaitForAIMessageOptionsExtractionPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OTP_CODE = WaitForAIMessageOptionsExtractionPresetEnum._(r'OTP_CODE');

  /// List of all possible values in this [enum][WaitForAIMessageOptionsExtractionPresetEnum].
  static const values = <WaitForAIMessageOptionsExtractionPresetEnum>[
    OTP_CODE,
  ];

  static WaitForAIMessageOptionsExtractionPresetEnum? fromJson(dynamic value) => WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer().decode(value);

  static List<WaitForAIMessageOptionsExtractionPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WaitForAIMessageOptionsExtractionPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WaitForAIMessageOptionsExtractionPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WaitForAIMessageOptionsExtractionPresetEnum] to String,
/// and [decode] dynamic data back to [WaitForAIMessageOptionsExtractionPresetEnum].
class WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer {
  factory WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer() => _instance ??= const WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer._();

  const WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer._();

  String encode(WaitForAIMessageOptionsExtractionPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WaitForAIMessageOptionsExtractionPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WaitForAIMessageOptionsExtractionPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OTP_CODE': return WaitForAIMessageOptionsExtractionPresetEnum.OTP_CODE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer] instance.
  static WaitForAIMessageOptionsExtractionPresetEnumTypeTransformer? _instance;
}


