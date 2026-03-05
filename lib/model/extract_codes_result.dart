//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractCodesResult {
  /// Returns a new [ExtractCodesResult] instance.
  ExtractCodesResult({
    required this.found,
    this.code,
    this.methodUsed,
    this.candidates = const [],
    this.warnings = const [],
  });

  /// True if at least one code candidate was found
  bool found;

  /// Best candidate code when found
  String? code;

  /// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
  ExtractCodesResultMethodUsedEnum? methodUsed;

  /// Ranked code candidates
  List<CodeCandidate> candidates;

  /// Warnings or fallback notes explaining extraction behavior for debugging and QA.
  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractCodesResult &&
     other.found == found &&
     other.code == code &&
     other.methodUsed == methodUsed &&
     other.candidates == candidates &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (found.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (methodUsed == null ? 0 : methodUsed!.hashCode) +
    (candidates.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'ExtractCodesResult[found=$found, code=$code, methodUsed=$methodUsed, candidates=$candidates, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'found'] = this.found;
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.methodUsed != null) {
      json[r'methodUsed'] = this.methodUsed;
    } else {
      json[r'methodUsed'] = null;
    }
      json[r'candidates'] = this.candidates;
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [ExtractCodesResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractCodesResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractCodesResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractCodesResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractCodesResult(
        found: mapValueOfType<bool>(json, r'found')!,
        code: mapValueOfType<String>(json, r'code'),
        methodUsed: ExtractCodesResultMethodUsedEnum.fromJson(json[r'methodUsed']),
        candidates: CodeCandidate.listFromJson(json[r'candidates']),
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ExtractCodesResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractCodesResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractCodesResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractCodesResult> mapFromJson(dynamic json) {
    final map = <String, ExtractCodesResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractCodesResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractCodesResult-objects as value to a dart map
  static Map<String, List<ExtractCodesResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractCodesResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractCodesResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'found',
    'candidates',
    'warnings',
  };
}

/// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
class ExtractCodesResultMethodUsedEnum {
  /// Instantiate a new enum with the provided [value].
  const ExtractCodesResultMethodUsedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = ExtractCodesResultMethodUsedEnum._(r'AUTO');
  static const PATTERN = ExtractCodesResultMethodUsedEnum._(r'PATTERN');
  static const LLM = ExtractCodesResultMethodUsedEnum._(r'LLM');
  static const OCR = ExtractCodesResultMethodUsedEnum._(r'OCR');
  static const OCR_THEN_LLM = ExtractCodesResultMethodUsedEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][ExtractCodesResultMethodUsedEnum].
  static const values = <ExtractCodesResultMethodUsedEnum>[
    AUTO,
    PATTERN,
    LLM,
    OCR,
    OCR_THEN_LLM,
  ];

  static ExtractCodesResultMethodUsedEnum? fromJson(dynamic value) => ExtractCodesResultMethodUsedEnumTypeTransformer().decode(value);

  static List<ExtractCodesResultMethodUsedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractCodesResultMethodUsedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractCodesResultMethodUsedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExtractCodesResultMethodUsedEnum] to String,
/// and [decode] dynamic data back to [ExtractCodesResultMethodUsedEnum].
class ExtractCodesResultMethodUsedEnumTypeTransformer {
  factory ExtractCodesResultMethodUsedEnumTypeTransformer() => _instance ??= const ExtractCodesResultMethodUsedEnumTypeTransformer._();

  const ExtractCodesResultMethodUsedEnumTypeTransformer._();

  String encode(ExtractCodesResultMethodUsedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExtractCodesResultMethodUsedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExtractCodesResultMethodUsedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return ExtractCodesResultMethodUsedEnum.AUTO;
        case r'PATTERN': return ExtractCodesResultMethodUsedEnum.PATTERN;
        case r'LLM': return ExtractCodesResultMethodUsedEnum.LLM;
        case r'OCR': return ExtractCodesResultMethodUsedEnum.OCR;
        case r'OCR_THEN_LLM': return ExtractCodesResultMethodUsedEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExtractCodesResultMethodUsedEnumTypeTransformer] instance.
  static ExtractCodesResultMethodUsedEnumTypeTransformer? _instance;
}


