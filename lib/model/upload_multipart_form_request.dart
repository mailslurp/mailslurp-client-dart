//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UploadMultipartFormRequest {
  /// Returns a new [UploadMultipartFormRequest] instance.
  UploadMultipartFormRequest({
    this.contentTypeHeader,
    required this.file,
  });

  /// Optional content type header of attachment
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentTypeHeader;

  MultipartFile file;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UploadMultipartFormRequest &&
     other.contentTypeHeader == contentTypeHeader &&
     other.file == file;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (contentTypeHeader == null ? 0 : contentTypeHeader!.hashCode) +
    (file.hashCode);

  @override
  String toString() => 'UploadMultipartFormRequest[contentTypeHeader=$contentTypeHeader, file=$file]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.contentTypeHeader != null) {
      json[r'contentTypeHeader'] = this.contentTypeHeader;
    } else {
      json[r'contentTypeHeader'] = null;
    }
      json[r'file'] = this.file;
    return json;
  }

  /// Returns a new [UploadMultipartFormRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UploadMultipartFormRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UploadMultipartFormRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UploadMultipartFormRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UploadMultipartFormRequest(
        contentTypeHeader: mapValueOfType<String>(json, r'contentTypeHeader'),
        file: null, // No support for decoding binary content from JSON
      );
    }
    return null;
  }

  static List<UploadMultipartFormRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UploadMultipartFormRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UploadMultipartFormRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UploadMultipartFormRequest> mapFromJson(dynamic json) {
    final map = <String, UploadMultipartFormRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UploadMultipartFormRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UploadMultipartFormRequest-objects as value to a dart map
  static Map<String, List<UploadMultipartFormRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UploadMultipartFormRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UploadMultipartFormRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'file',
  };
}

