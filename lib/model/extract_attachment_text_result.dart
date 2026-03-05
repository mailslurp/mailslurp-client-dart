//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractAttachmentTextResult {
  /// Returns a new [ExtractAttachmentTextResult] instance.
  ExtractAttachmentTextResult({
    required this.present,
    this.text,
    this.methodUsed,
    this.contentType,
    this.warnings = const [],
  });

  /// True if extracted text is present
  bool present;

  /// Extracted text when present
  String? text;

  /// Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction.
  ExtractAttachmentTextResultMethodUsedEnum? methodUsed;

  /// Detected attachment content type
  String? contentType;

  /// Warnings or fallback notes
  List<String> warnings;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractAttachmentTextResult &&
     other.present == present &&
     other.text == text &&
     other.methodUsed == methodUsed &&
     other.contentType == contentType &&
     other.warnings == warnings;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (present.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (methodUsed == null ? 0 : methodUsed!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (warnings.hashCode);

  @override
  String toString() => 'ExtractAttachmentTextResult[present=$present, text=$text, methodUsed=$methodUsed, contentType=$contentType, warnings=$warnings]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'present'] = this.present;
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.methodUsed != null) {
      json[r'methodUsed'] = this.methodUsed;
    } else {
      json[r'methodUsed'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
      json[r'warnings'] = this.warnings;
    return json;
  }

  /// Returns a new [ExtractAttachmentTextResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractAttachmentTextResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractAttachmentTextResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractAttachmentTextResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractAttachmentTextResult(
        present: mapValueOfType<bool>(json, r'present')!,
        text: mapValueOfType<String>(json, r'text'),
        methodUsed: ExtractAttachmentTextResultMethodUsedEnum.fromJson(json[r'methodUsed']),
        contentType: mapValueOfType<String>(json, r'contentType'),
        warnings: json[r'warnings'] is List
            ? (json[r'warnings'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<ExtractAttachmentTextResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAttachmentTextResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAttachmentTextResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractAttachmentTextResult> mapFromJson(dynamic json) {
    final map = <String, ExtractAttachmentTextResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractAttachmentTextResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractAttachmentTextResult-objects as value to a dart map
  static Map<String, List<ExtractAttachmentTextResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractAttachmentTextResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractAttachmentTextResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'present',
    'warnings',
  };
}

/// Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction.
class ExtractAttachmentTextResultMethodUsedEnum {
  /// Instantiate a new enum with the provided [value].
  const ExtractAttachmentTextResultMethodUsedEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = ExtractAttachmentTextResultMethodUsedEnum._(r'AUTO');
  static const NATIVE = ExtractAttachmentTextResultMethodUsedEnum._(r'NATIVE');
  static const OCR = ExtractAttachmentTextResultMethodUsedEnum._(r'OCR');
  static const LLM = ExtractAttachmentTextResultMethodUsedEnum._(r'LLM');
  static const OCR_THEN_LLM = ExtractAttachmentTextResultMethodUsedEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][ExtractAttachmentTextResultMethodUsedEnum].
  static const values = <ExtractAttachmentTextResultMethodUsedEnum>[
    AUTO,
    NATIVE,
    OCR,
    LLM,
    OCR_THEN_LLM,
  ];

  static ExtractAttachmentTextResultMethodUsedEnum? fromJson(dynamic value) => ExtractAttachmentTextResultMethodUsedEnumTypeTransformer().decode(value);

  static List<ExtractAttachmentTextResultMethodUsedEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAttachmentTextResultMethodUsedEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAttachmentTextResultMethodUsedEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExtractAttachmentTextResultMethodUsedEnum] to String,
/// and [decode] dynamic data back to [ExtractAttachmentTextResultMethodUsedEnum].
class ExtractAttachmentTextResultMethodUsedEnumTypeTransformer {
  factory ExtractAttachmentTextResultMethodUsedEnumTypeTransformer() => _instance ??= const ExtractAttachmentTextResultMethodUsedEnumTypeTransformer._();

  const ExtractAttachmentTextResultMethodUsedEnumTypeTransformer._();

  String encode(ExtractAttachmentTextResultMethodUsedEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExtractAttachmentTextResultMethodUsedEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExtractAttachmentTextResultMethodUsedEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return ExtractAttachmentTextResultMethodUsedEnum.AUTO;
        case r'NATIVE': return ExtractAttachmentTextResultMethodUsedEnum.NATIVE;
        case r'OCR': return ExtractAttachmentTextResultMethodUsedEnum.OCR;
        case r'LLM': return ExtractAttachmentTextResultMethodUsedEnum.LLM;
        case r'OCR_THEN_LLM': return ExtractAttachmentTextResultMethodUsedEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExtractAttachmentTextResultMethodUsedEnumTypeTransformer] instance.
  static ExtractAttachmentTextResultMethodUsedEnumTypeTransformer? _instance;
}


