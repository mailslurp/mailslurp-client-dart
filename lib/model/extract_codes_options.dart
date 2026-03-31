//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractCodesOptions {
  /// Returns a new [ExtractCodesOptions] instance.
  ExtractCodesOptions({
    this.method,
    this.allowFallback = true,
    this.minLength = 4,
    this.maxLength = 10,
    this.maxCandidates = 5,
    this.customPatterns = const [],
  });

  /// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
  ExtractCodesOptionsMethodEnum? method;

  /// Allow fallback to deterministic pattern extraction when the selected method is unavailable.
  bool allowFallback;

  /// Minimum code length to consider. Typical OTP values are between 4 and 8 characters.
  int minLength;

  /// Maximum code length to consider.
  int maxLength;

  /// Maximum number of code candidates to return. Best candidate is also returned separately.
  int maxCandidates;

  /// Optional custom regex patterns for code extraction. Each pattern should have either one capture group for the code or match the full code directly.
  List<String>? customPatterns;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractCodesOptions &&
     other.method == method &&
     other.allowFallback == allowFallback &&
     other.minLength == minLength &&
     other.maxLength == maxLength &&
     other.maxCandidates == maxCandidates &&
     other.customPatterns == customPatterns;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (method == null ? 0 : method!.hashCode) +
    (allowFallback.hashCode) +
    (minLength.hashCode) +
    (maxLength.hashCode) +
    (maxCandidates.hashCode) +
    (customPatterns == null ? 0 : customPatterns!.hashCode);

  @override
  String toString() => 'ExtractCodesOptions[method=$method, allowFallback=$allowFallback, minLength=$minLength, maxLength=$maxLength, maxCandidates=$maxCandidates, customPatterns=$customPatterns]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
      json[r'allowFallback'] = this.allowFallback;
      json[r'minLength'] = this.minLength;
      json[r'maxLength'] = this.maxLength;
      json[r'maxCandidates'] = this.maxCandidates;
    if (this.customPatterns != null) {
      json[r'customPatterns'] = this.customPatterns;
    } else {
      json[r'customPatterns'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractCodesOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractCodesOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractCodesOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractCodesOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractCodesOptions(
        method: ExtractCodesOptionsMethodEnum.fromJson(json[r'method']),
        allowFallback: mapValueOfType<bool>(json, r'allowFallback') ?? true,
        minLength: mapValueOfType<int>(json, r'minLength') ?? 4,
        maxLength: mapValueOfType<int>(json, r'maxLength') ?? 10,
        maxCandidates: mapValueOfType<int>(json, r'maxCandidates') ?? 5,
        customPatterns: json[r'customPatterns'] is List
            ? (json[r'customPatterns'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ExtractCodesOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractCodesOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractCodesOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractCodesOptions> mapFromJson(dynamic json) {
    final map = <String, ExtractCodesOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractCodesOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractCodesOptions-objects as value to a dart map
  static Map<String, List<ExtractCodesOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractCodesOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractCodesOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
class ExtractCodesOptionsMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ExtractCodesOptionsMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = ExtractCodesOptionsMethodEnum._(r'AUTO');
  static const PATTERN = ExtractCodesOptionsMethodEnum._(r'PATTERN');
  static const LLM = ExtractCodesOptionsMethodEnum._(r'LLM');
  static const OCR = ExtractCodesOptionsMethodEnum._(r'OCR');
  static const OCR_THEN_LLM = ExtractCodesOptionsMethodEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][ExtractCodesOptionsMethodEnum].
  static const values = <ExtractCodesOptionsMethodEnum>[
    AUTO,
    PATTERN,
    LLM,
    OCR,
    OCR_THEN_LLM,
  ];

  static ExtractCodesOptionsMethodEnum? fromJson(dynamic value) => ExtractCodesOptionsMethodEnumTypeTransformer().decode(value);

  static List<ExtractCodesOptionsMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractCodesOptionsMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractCodesOptionsMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExtractCodesOptionsMethodEnum] to String,
/// and [decode] dynamic data back to [ExtractCodesOptionsMethodEnum].
class ExtractCodesOptionsMethodEnumTypeTransformer {
  factory ExtractCodesOptionsMethodEnumTypeTransformer() => _instance ??= const ExtractCodesOptionsMethodEnumTypeTransformer._();

  const ExtractCodesOptionsMethodEnumTypeTransformer._();

  String encode(ExtractCodesOptionsMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExtractCodesOptionsMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExtractCodesOptionsMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return ExtractCodesOptionsMethodEnum.AUTO;
        case r'PATTERN': return ExtractCodesOptionsMethodEnum.PATTERN;
        case r'LLM': return ExtractCodesOptionsMethodEnum.LLM;
        case r'OCR': return ExtractCodesOptionsMethodEnum.OCR;
        case r'OCR_THEN_LLM': return ExtractCodesOptionsMethodEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExtractCodesOptionsMethodEnumTypeTransformer] instance.
  static ExtractCodesOptionsMethodEnumTypeTransformer? _instance;
}


