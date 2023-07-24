//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DownloadAttachmentDto {
  /// Returns a new [DownloadAttachmentDto] instance.
  DownloadAttachmentDto({
    required this.base64FileContents,
    required this.contentType,
    required this.sizeBytes,
  });

  /// Base64 encoded string of attachment bytes. Decode the base64 encoded string to get the raw contents. If the file has a content type such as `text/html` you can read the contents directly by converting it to string using `utf-8` encoding.
  String base64FileContents;

  /// Content type of attachment. Examples are `image/png`, `application/msword`, `text/csv` etc.
  String contentType;

  /// Size in bytes of attachment content
  int sizeBytes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DownloadAttachmentDto &&
     other.base64FileContents == base64FileContents &&
     other.contentType == contentType &&
     other.sizeBytes == sizeBytes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base64FileContents.hashCode) +
    (contentType.hashCode) +
    (sizeBytes.hashCode);

  @override
  String toString() => 'DownloadAttachmentDto[base64FileContents=$base64FileContents, contentType=$contentType, sizeBytes=$sizeBytes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'base64FileContents'] = this.base64FileContents;
      json[r'contentType'] = this.contentType;
      json[r'sizeBytes'] = this.sizeBytes;
    return json;
  }

  /// Returns a new [DownloadAttachmentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DownloadAttachmentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DownloadAttachmentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DownloadAttachmentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DownloadAttachmentDto(
        base64FileContents: mapValueOfType<String>(json, r'base64FileContents')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        sizeBytes: mapValueOfType<int>(json, r'sizeBytes')!,
      );
    }
    return null;
  }

  static List<DownloadAttachmentDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DownloadAttachmentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DownloadAttachmentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DownloadAttachmentDto> mapFromJson(dynamic json) {
    final map = <String, DownloadAttachmentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DownloadAttachmentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DownloadAttachmentDto-objects as value to a dart map
  static Map<String, List<DownloadAttachmentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DownloadAttachmentDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DownloadAttachmentDto.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'base64FileContents',
    'contentType',
    'sizeBytes',
  };
}

