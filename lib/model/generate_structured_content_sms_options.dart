//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GenerateStructuredContentSmsOptions {
  /// Returns a new [GenerateStructuredContentSmsOptions] instance.
  GenerateStructuredContentSmsOptions({
    required this.smsId,
    this.instructions,
    this.outputSchema,
    this.transformId,
  });

  /// SMS ID to read and pass to AI
  String smsId;

  /// Optional instructions for the AI to follow. Try to be precise and clear. You can include examples and hints.
  String? instructions;

  StructuredOutputSchema? outputSchema;

  /// ID of transformer to apply
  String? transformId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GenerateStructuredContentSmsOptions &&
     other.smsId == smsId &&
     other.instructions == instructions &&
     other.outputSchema == outputSchema &&
     other.transformId == transformId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (smsId.hashCode) +
    (instructions == null ? 0 : instructions!.hashCode) +
    (outputSchema == null ? 0 : outputSchema!.hashCode) +
    (transformId == null ? 0 : transformId!.hashCode);

  @override
  String toString() => 'GenerateStructuredContentSmsOptions[smsId=$smsId, instructions=$instructions, outputSchema=$outputSchema, transformId=$transformId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'smsId'] = this.smsId;
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

  /// Returns a new [GenerateStructuredContentSmsOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GenerateStructuredContentSmsOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GenerateStructuredContentSmsOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GenerateStructuredContentSmsOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GenerateStructuredContentSmsOptions(
        smsId: mapValueOfType<String>(json, r'smsId')!,
        instructions: mapValueOfType<String>(json, r'instructions'),
        outputSchema: StructuredOutputSchema.fromJson(json[r'outputSchema']),
        transformId: mapValueOfType<String>(json, r'transformId'),
      );
    }
    return null;
  }

  static List<GenerateStructuredContentSmsOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GenerateStructuredContentSmsOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GenerateStructuredContentSmsOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GenerateStructuredContentSmsOptions> mapFromJson(dynamic json) {
    final map = <String, GenerateStructuredContentSmsOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GenerateStructuredContentSmsOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GenerateStructuredContentSmsOptions-objects as value to a dart map
  static Map<String, List<GenerateStructuredContentSmsOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GenerateStructuredContentSmsOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GenerateStructuredContentSmsOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'smsId',
  };
}

