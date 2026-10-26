//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CodeCandidate {
  /// Returns a new [CodeCandidate] instance.
  CodeCandidate({
    required this.code,
    required this.confidence,
    required this.method,
    required this.source_,
    this.context,
  });

  /// Extracted code value
  String code;

  /// Relative confidence score from 0 to 1
  double confidence;

  /// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
  CodeCandidateMethodEnum method;

  /// Source fragment used for extraction, for example RAW_TEXT_PART or SMS_BODY
  String source_;

  /// Nearby text context useful for debugging extraction decisions
  String? context;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CodeCandidate &&
     other.code == code &&
     other.confidence == confidence &&
     other.method == method &&
     other.source_ == source_ &&
     other.context == context;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (confidence.hashCode) +
    (method.hashCode) +
    (source_.hashCode) +
    (context == null ? 0 : context!.hashCode);

  @override
  String toString() => 'CodeCandidate[code=$code, confidence=$confidence, method=$method, source_=$source_, context=$context]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'confidence'] = this.confidence;
      json[r'method'] = this.method;
      json[r'source'] = this.source_;
    if (this.context != null) {
      json[r'context'] = this.context;
    } else {
      json[r'context'] = null;
    }
    return json;
  }

  /// Returns a new [CodeCandidate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CodeCandidate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CodeCandidate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CodeCandidate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CodeCandidate(
        code: mapValueOfType<String>(json, r'code')!,
        confidence: mapValueOfType<double>(json, r'confidence')!,
        method: CodeCandidateMethodEnum.fromJson(json[r'method'])!,
        source_: mapValueOfType<String>(json, r'source')!,
        context: mapValueOfType<String>(json, r'context'),
      );
    }
    return null;
  }

  static List<CodeCandidate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeCandidate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeCandidate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CodeCandidate> mapFromJson(dynamic json) {
    final map = <String, CodeCandidate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CodeCandidate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CodeCandidate-objects as value to a dart map
  static Map<String, List<CodeCandidate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CodeCandidate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CodeCandidate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'confidence',
    'method',
    'source',
  };
}

/// Extraction strategy for verification codes. Unsupported strategies may fall back when allowFallback is true.
class CodeCandidateMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const CodeCandidateMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = CodeCandidateMethodEnum._(r'AUTO');
  static const PATTERN = CodeCandidateMethodEnum._(r'PATTERN');
  static const LLM = CodeCandidateMethodEnum._(r'LLM');
  static const OCR = CodeCandidateMethodEnum._(r'OCR');
  static const OCR_THEN_LLM = CodeCandidateMethodEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][CodeCandidateMethodEnum].
  static const values = <CodeCandidateMethodEnum>[
    AUTO,
    PATTERN,
    LLM,
    OCR,
    OCR_THEN_LLM,
  ];

  static CodeCandidateMethodEnum? fromJson(dynamic value) => CodeCandidateMethodEnumTypeTransformer().decode(value);

  static List<CodeCandidateMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CodeCandidateMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CodeCandidateMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CodeCandidateMethodEnum] to String,
/// and [decode] dynamic data back to [CodeCandidateMethodEnum].
class CodeCandidateMethodEnumTypeTransformer {
  factory CodeCandidateMethodEnumTypeTransformer() => _instance ??= const CodeCandidateMethodEnumTypeTransformer._();

  const CodeCandidateMethodEnumTypeTransformer._();

  String encode(CodeCandidateMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CodeCandidateMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CodeCandidateMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return CodeCandidateMethodEnum.AUTO;
        case r'PATTERN': return CodeCandidateMethodEnum.PATTERN;
        case r'LLM': return CodeCandidateMethodEnum.LLM;
        case r'OCR': return CodeCandidateMethodEnum.OCR;
        case r'OCR_THEN_LLM': return CodeCandidateMethodEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CodeCandidateMethodEnumTypeTransformer] instance.
  static CodeCandidateMethodEnumTypeTransformer? _instance;
}


