//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateStructuredContentAttachmentOptions {
  /// Returns a new [GenerateStructuredContentAttachmentOptions] instance.
  GenerateStructuredContentAttachmentOptions({
    required this.attachmentId,
    this.instructions,
    this.outputSchema,
    this.transformId,
    this.emailId,
  });

  /// Attachment ID to read and pass to AI
  String attachmentId;

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

  /// Optional email ID for more context
  String? emailId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateStructuredContentAttachmentOptions &&
     other.attachmentId == attachmentId &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId &&
     other.emailId == emailId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (attachmentId.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode);

  @override
  String toString() => 'GenerateStructuredContentAttachmentOptions[attachmentId=$attachmentId, instructions=$instructions, outputSchema=$outputSchema, transformId=$transformId, emailId=$emailId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'attachmentId'] = this.attachmentId;
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
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    return json;
  }

  /// Returns a new [GenerateStructuredContentAttachmentOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateStructuredContentAttachmentOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateStructuredContentAttachmentOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateStructuredContentAttachmentOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateStructuredContentAttachmentOptions(
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        instructions: mapValueOfType<String>(json, r'instructions'),
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
        emailId: mapValueOfType<String>(json, r'emailId'),
      );
    }
    return null;
  }

  static List<GenerateStructuredContentAttachmentOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateStructuredContentAttachmentOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateStructuredContentAttachmentOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateStructuredContentAttachmentOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateStructuredContentAttachmentOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateStructuredContentAttachmentOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateStructuredContentAttachmentOptions-objects as value to a dart map
  static Map<String, List<GenerateStructuredContentAttachmentOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateStructuredContentAttachmentOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateStructuredContentAttachmentOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attachmentId',
  };
}

