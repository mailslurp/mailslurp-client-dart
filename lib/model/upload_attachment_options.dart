//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UploadAttachmentOptions {
  /// Returns a new [UploadAttachmentOptions] instance.
  UploadAttachmentOptions({
    this.contentType,
    this.filename,
    required this.base64Contents,
  });

  /// Optional contentType for file. For instance `application/pdf`
  String? contentType;

  /// Optional filename to save upload with. Will be the name that is shown in email clients
  String? filename;

  /// Base64 encoded string of file contents. Typically this means reading the bytes or string content of a file and then converting that to a base64 encoded string. For examples of how to do this see https://www.mailslurp.com/guides/base64-file-uploads/
  String base64Contents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadAttachmentOptions &&
     other.contentType == contentType &&
     other.filename == filename &&
     other.base64Contents == base64Contents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentType == null ? 0 : contentType!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (base64Contents.hashCode);

  @override
  String toString() => 'UploadAttachmentOptions[contentType=$contentType, filename=$filename, base64Contents=$base64Contents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
      json[r'base64Contents'] = this.base64Contents;
    return json;
  }

  /// Returns a new [UploadAttachmentOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadAttachmentOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UploadAttachmentOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UploadAttachmentOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UploadAttachmentOptions(
        contentType: mapValueOfType<String>(json, r'contentType'),
        filename: mapValueOfType<String>(json, r'filename'),
        base64Contents: mapValueOfType<String>(json, r'base64Contents')!,
      );
    }
    return null;
  }

  static List<UploadAttachmentOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadAttachmentOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadAttachmentOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadAttachmentOptions> mapFromJson(dynamic json) {
    final map = <String, UploadAttachmentOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadAttachmentOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadAttachmentOptions-objects as value to a dart map
  static Map<String, List<UploadAttachmentOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadAttachmentOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadAttachmentOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'base64Contents',
  };
}

