//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentMetaData {
  /// Returns a new [AttachmentMetaData] instance.
  AttachmentMetaData({
    required this.name,
    required this.contentType,
    required this.contentLength,
    required this.id,
    this.contentId,
  });

  /// Name of attachment if given
  String name;

  /// Content type of attachment such as `image/png`
  String contentType;

  /// Size of attachment in bytes
  int contentLength;

  /// ID of attachment. Can be used to with attachment controller endpoints to download attachment or with sending methods to attach to an email.
  String id;

  /// CID of attachment
  String? contentId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentMetaData &&
     other.name == name &&
     other.contentType == contentType &&
     other.contentLength == contentLength &&
     other.id == id &&
     other.contentId == contentId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (contentType.hashCode) +
    (contentLength.hashCode) +
    (id.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode);

  @override
  String toString() => 'AttachmentMetaData[name=$name, contentType=$contentType, contentLength=$contentLength, id=$id, contentId=$contentId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'contentType'] = this.contentType;
      json[r'contentLength'] = this.contentLength;
      json[r'id'] = this.id;
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
    return json;
  }

  /// Returns a new [AttachmentMetaData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentMetaData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentMetaData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentMetaData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentMetaData(
        name: mapValueOfType<String>(json, r'name')!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        contentLength: mapValueOfType<int>(json, r'contentLength')!,
        id: mapValueOfType<String>(json, r'id')!,
        contentId: mapValueOfType<String>(json, r'contentId'),
      );
    }
    return null;
  }

  static List<AttachmentMetaData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentMetaData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentMetaData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentMetaData> mapFromJson(dynamic json) {
    final map = <String, AttachmentMetaData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentMetaData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentMetaData-objects as value to a dart map
  static Map<String, List<AttachmentMetaData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentMetaData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentMetaData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'contentType',
    'contentLength',
    'id',
  };
}

