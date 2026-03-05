//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExtractAttachmentTextOptions {
  /// Returns a new [ExtractAttachmentTextOptions] instance.
  ExtractAttachmentTextOptions({
    this.method,
    this.allowFallback = true,
    this.maxBytes = 1048576,
  });

  /// Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction.
  ExtractAttachmentTextOptionsMethodEnum? method;

  /// Allow fallback to native extraction when the selected method is unavailable.
  bool allowFallback;

  /// Maximum bytes to read from attachment for native text extraction.
  int? maxBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExtractAttachmentTextOptions &&
     other.method == method &&
     other.allowFallback == allowFallback &&
     other.maxBytes == maxBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (method == null ? 0 : method!.hashCode) +
    (allowFallback.hashCode) +
    (maxBytes == null ? 0 : maxBytes!.hashCode);

  @override
  String toString() => 'ExtractAttachmentTextOptions[method=$method, allowFallback=$allowFallback, maxBytes=$maxBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
      json[r'allowFallback'] = this.allowFallback;
    if (this.maxBytes != null) {
      json[r'maxBytes'] = this.maxBytes;
    } else {
      json[r'maxBytes'] = null;
    }
    return json;
  }

  /// Returns a new [ExtractAttachmentTextOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExtractAttachmentTextOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExtractAttachmentTextOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExtractAttachmentTextOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExtractAttachmentTextOptions(
        method: ExtractAttachmentTextOptionsMethodEnum.fromJson(json[r'method']),
        allowFallback: mapValueOfType<bool>(json, r'allowFallback') ?? true,
        maxBytes: mapValueOfType<int>(json, r'maxBytes') ?? 1048576,
      );
    }
    return null;
  }

  static List<ExtractAttachmentTextOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAttachmentTextOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAttachmentTextOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExtractAttachmentTextOptions> mapFromJson(dynamic json) {
    final map = <String, ExtractAttachmentTextOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExtractAttachmentTextOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExtractAttachmentTextOptions-objects as value to a dart map
  static Map<String, List<ExtractAttachmentTextOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExtractAttachmentTextOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExtractAttachmentTextOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

/// Method for extracting text from attachments. OCR/LLM methods are reserved for advanced extraction.
class ExtractAttachmentTextOptionsMethodEnum {
  /// Instantiate a new enum with the provided [value].
  const ExtractAttachmentTextOptionsMethodEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AUTO = ExtractAttachmentTextOptionsMethodEnum._(r'AUTO');
  static const NATIVE = ExtractAttachmentTextOptionsMethodEnum._(r'NATIVE');
  static const OCR = ExtractAttachmentTextOptionsMethodEnum._(r'OCR');
  static const LLM = ExtractAttachmentTextOptionsMethodEnum._(r'LLM');
  static const OCR_THEN_LLM = ExtractAttachmentTextOptionsMethodEnum._(r'OCR_THEN_LLM');

  /// List of all possible values in this [enum][ExtractAttachmentTextOptionsMethodEnum].
  static const values = <ExtractAttachmentTextOptionsMethodEnum>[
    AUTO,
    NATIVE,
    OCR,
    LLM,
    OCR_THEN_LLM,
  ];

  static ExtractAttachmentTextOptionsMethodEnum? fromJson(dynamic value) => ExtractAttachmentTextOptionsMethodEnumTypeTransformer().decode(value);

  static List<ExtractAttachmentTextOptionsMethodEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExtractAttachmentTextOptionsMethodEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExtractAttachmentTextOptionsMethodEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ExtractAttachmentTextOptionsMethodEnum] to String,
/// and [decode] dynamic data back to [ExtractAttachmentTextOptionsMethodEnum].
class ExtractAttachmentTextOptionsMethodEnumTypeTransformer {
  factory ExtractAttachmentTextOptionsMethodEnumTypeTransformer() => _instance ??= const ExtractAttachmentTextOptionsMethodEnumTypeTransformer._();

  const ExtractAttachmentTextOptionsMethodEnumTypeTransformer._();

  String encode(ExtractAttachmentTextOptionsMethodEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ExtractAttachmentTextOptionsMethodEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ExtractAttachmentTextOptionsMethodEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AUTO': return ExtractAttachmentTextOptionsMethodEnum.AUTO;
        case r'NATIVE': return ExtractAttachmentTextOptionsMethodEnum.NATIVE;
        case r'OCR': return ExtractAttachmentTextOptionsMethodEnum.OCR;
        case r'LLM': return ExtractAttachmentTextOptionsMethodEnum.LLM;
        case r'OCR_THEN_LLM': return ExtractAttachmentTextOptionsMethodEnum.OCR_THEN_LLM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ExtractAttachmentTextOptionsMethodEnumTypeTransformer] instance.
  static ExtractAttachmentTextOptionsMethodEnumTypeTransformer? _instance;
}


