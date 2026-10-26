//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewImportOptions {
  /// Returns a new [CreateDevicePreviewImportOptions] instance.
  CreateDevicePreviewImportOptions({
    required this.rawEmailBase64,
    this.sourceAlias,
    this.externalId,
    this.options,
  });

  /// Base64 encoded RFC822/MIME email contents. This should be the full raw email including headers and body, such as the bytes from an `.eml` file.
  String rawEmailBase64;

  /// Optional source label to attach to the preview run.
  String? sourceAlias;

  /// Optional external source ID for correlating this import with another system.
  String? externalId;

  CreateDevicePreviewOptions? options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewImportOptions &&
     other.rawEmailBase64 == rawEmailBase64 &&
     other.sourceAlias == sourceAlias &&
     other.externalId == externalId &&
     other.options == options;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawEmailBase64.hashCode) +
    (sourceAlias == null ? 0 : sourceAlias!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (options == null ? 0 : options!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewImportOptions[rawEmailBase64=$rawEmailBase64, sourceAlias=$sourceAlias, externalId=$externalId, options=$options]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawEmailBase64'] = this.rawEmailBase64;
    if (this.sourceAlias != null) {
      json[r'sourceAlias'] = this.sourceAlias;
    } else {
      json[r'sourceAlias'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewImportOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewImportOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewImportOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewImportOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewImportOptions(
        rawEmailBase64: mapValueOfType<String>(json, r'rawEmailBase64')!,
        sourceAlias: mapValueOfType<String>(json, r'sourceAlias'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        options: CreateDevicePreviewOptions.fromJson(json[r'options']),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewImportOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewImportOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewImportOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewImportOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewImportOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewImportOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewImportOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewImportOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewImportOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewImportOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rawEmailBase64',
  };
}

