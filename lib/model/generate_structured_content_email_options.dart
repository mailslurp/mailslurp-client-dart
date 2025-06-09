//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateStructuredContentEmailOptions {
  /// Returns a new [GenerateStructuredContentEmailOptions] instance.
  GenerateStructuredContentEmailOptions({
    required this.emailId,
    this.contentSelector,
    this.instructions,
    this.outputSchema,
    this.transformId,
  });

  /// Email ID to read and pass to AI
  String emailId;

  /// Content selector to select part of email to operate on
  GenerateStructuredContentEmailOptionsContentSelectorEnum? contentSelector;

  /// Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints.
  String? instructions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StructuredOutputSchema? outputSchema;

  /// ID of transformer to apply
  String? transformId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateStructuredContentEmailOptions &&
     other.emailId == emailId &&
     other.contentSelector == contentSelector &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailId.hashCode) +
    (contentSelector == null ? 0 : contentSelector!.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode);

  @override
  String toString() => 'GenerateStructuredContentEmailOptions[emailId=$emailId, contentSelector=$contentSelector, instructions=$instructions, outputSchema=$outputSchema, transformId=$transformId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'emailId'] = this.emailId;
    if (this.contentSelector != null) {
      json[r'contentSelector'] = this.contentSelector;
    } else {
      json[r'contentSelector'] = null;
    }
    if (this.instructions != null) {
      json[r'instructions'] = this.instructions;
    } else {
      json[r'instructions'] = null;
    }
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
    return json;
  }

  /// Returns a new [GenerateStructuredContentEmailOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateStructuredContentEmailOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateStructuredContentEmailOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateStructuredContentEmailOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateStructuredContentEmailOptions(
        emailId: mapValueOfType<String>(json, r'emailId')!,
        contentSelector: GenerateStructuredContentEmailOptionsContentSelectorEnum.fromJson(json[r'contentSelector']),
        instructions: mapValueOfType<String>(json, r'instructions'),
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
      );
    }
    return null;
  }

  static List<GenerateStructuredContentEmailOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateStructuredContentEmailOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateStructuredContentEmailOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateStructuredContentEmailOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateStructuredContentEmailOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateStructuredContentEmailOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateStructuredContentEmailOptions-objects as value to a dart map
  static Map<String, List<GenerateStructuredContentEmailOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateStructuredContentEmailOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateStructuredContentEmailOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'emailId',
  };
}

/// Content selector to select part of email to operate on
class GenerateStructuredContentEmailOptionsContentSelectorEnum {
  /// Instantiate a new enum with the provided [value].
  const GenerateStructuredContentEmailOptionsContentSelectorEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const RAW = GenerateStructuredContentEmailOptionsContentSelectorEnum._(r'RAW');
  static const BODY = GenerateStructuredContentEmailOptionsContentSelectorEnum._(r'BODY');
  static const BODY_ATTACHMENTS = GenerateStructuredContentEmailOptionsContentSelectorEnum._(r'BODY_ATTACHMENTS');

  /// List of all possible values in this [enum][GenerateStructuredContentEmailOptionsContentSelectorEnum].
  static const values = <GenerateStructuredContentEmailOptionsContentSelectorEnum>[
    RAW,
    BODY,
    BODY_ATTACHMENTS,
  ];

  static GenerateStructuredContentEmailOptionsContentSelectorEnum? fromJson(dynamic value) => GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer().decode(value);

  static List<GenerateStructuredContentEmailOptionsContentSelectorEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateStructuredContentEmailOptionsContentSelectorEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateStructuredContentEmailOptionsContentSelectorEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GenerateStructuredContentEmailOptionsContentSelectorEnum] to String,
/// and [decode] dynamic data back to [GenerateStructuredContentEmailOptionsContentSelectorEnum].
class GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer {
  factory GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer() => _instance ??= const GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer._();

  const GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer._();

  String encode(GenerateStructuredContentEmailOptionsContentSelectorEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GenerateStructuredContentEmailOptionsContentSelectorEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GenerateStructuredContentEmailOptionsContentSelectorEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'RAW': return GenerateStructuredContentEmailOptionsContentSelectorEnum.RAW;
        case r'BODY': return GenerateStructuredContentEmailOptionsContentSelectorEnum.BODY;
        case r'BODY_ATTACHMENTS': return GenerateStructuredContentEmailOptionsContentSelectorEnum.BODY_ATTACHMENTS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer] instance.
  static GenerateStructuredContentEmailOptionsContentSelectorEnumTypeTransformer? _instance;
}


