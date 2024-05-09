//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentProjection {
  /// Returns a new [AttachmentProjection] instance.
  AttachmentProjection({
    required this.userId,
    this.contentId,
    required this.attachmentId,
    required this.createdAt,
    required this.updatedAt,
    this.name,
    this.contentLength,
    this.contentType,
  });

  String userId;

  /// Content ID of attachment.
  String? contentId;

  /// Attachment ID
  String attachmentId;

  DateTime createdAt;

  DateTime updatedAt;

  String? name;

  /// Content length of attachment in bytes
  int? contentLength;

  /// Content type of attachment.
  String? contentType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentProjection &&
     other.userId == userId &&
     other.contentId == contentId &&
     other.attachmentId == attachmentId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.name == name &&
     other.contentLength == contentLength &&
     other.contentType == contentType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (userId.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (attachmentId.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (contentLength == null ? 0 : contentLength!.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode);

  @override
  String toString() => 'AttachmentProjection[userId=$userId, contentId=$contentId, attachmentId=$attachmentId, createdAt=$createdAt, updatedAt=$updatedAt, name=$name, contentLength=$contentLength, contentType=$contentType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'userId'] = this.userId;
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
      json[r'attachmentId'] = this.attachmentId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.contentLength != null) {
      json[r'contentLength'] = this.contentLength;
    } else {
      json[r'contentLength'] = null;
    }
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    return json;
  }

  /// Returns a new [AttachmentProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentProjection(
        userId: mapValueOfType<String>(json, r'userId')!,
        contentId: mapValueOfType<String>(json, r'contentId'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        name: mapValueOfType<String>(json, r'name'),
        contentLength: mapValueOfType<int>(json, r'contentLength'),
        contentType: mapValueOfType<String>(json, r'contentType'),
      );
    }
    return null;
  }

  static List<AttachmentProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentProjection> mapFromJson(dynamic json) {
    final map = <String, AttachmentProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentProjection-objects as value to a dart map
  static Map<String, List<AttachmentProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'userId',
    'attachmentId',
    'createdAt',
    'updatedAt',
  };
}

