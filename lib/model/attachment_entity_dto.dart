//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentEntityDto {
  /// Returns a new [AttachmentEntityDto] instance.
  AttachmentEntityDto({
    required this.id,
    required this.attachmentId,
    required this.userId,
    this.contentType,
    this.contentLength,
    this.contentId,
    this.name,
    this.inboxId,
    required this.createdAt,
    required this.updatedAt,
  });

  /// The unique identifier for this attachment.
  String id;

  /// The identifier of the attachment file
  String attachmentId;

  /// The user identifier associated with this attachment.
  String userId;

  /// The content type of the attachment.
  String? contentType;

  /// The content length of the attachment in bytes.
  int? contentLength;

  /// The content identifier, which is a unique ID for the content part of the email.
  String? contentId;

  /// The name of the attachment file.
  String? name;

  /// The inbox identifier associated with this attachment.
  String? inboxId;

  /// The timestamp when this attachment was created.
  DateTime createdAt;

  /// The timestamp when this attachment was last updated.
  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentEntityDto &&
     other.id == id &&
     other.attachmentId == attachmentId &&
     other.userId == userId &&
     other.contentType == contentType &&
     other.contentLength == contentLength &&
     other.contentId == contentId &&
     other.name == name &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (attachmentId.hashCode) +
    (userId.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (contentLength == null ? 0 : contentLength!.hashCode) +
    (contentId == null ? 0 : contentId!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AttachmentEntityDto[id=$id, attachmentId=$attachmentId, userId=$userId, contentType=$contentType, contentLength=$contentLength, contentId=$contentId, name=$name, inboxId=$inboxId, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'attachmentId'] = this.attachmentId;
      json[r'userId'] = this.userId;
    if (this.contentType != null) {
      json[r'contentType'] = this.contentType;
    } else {
      json[r'contentType'] = null;
    }
    if (this.contentLength != null) {
      json[r'contentLength'] = this.contentLength;
    } else {
      json[r'contentLength'] = null;
    }
    if (this.contentId != null) {
      json[r'contentId'] = this.contentId;
    } else {
      json[r'contentId'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AttachmentEntityDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentEntityDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentEntityDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentEntityDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentEntityDto(
        id: mapValueOfType<String>(json, r'id')!,
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        contentType: mapValueOfType<String>(json, r'contentType'),
        contentLength: mapValueOfType<int>(json, r'contentLength'),
        contentId: mapValueOfType<String>(json, r'contentId'),
        name: mapValueOfType<String>(json, r'name'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AttachmentEntityDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentEntityDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentEntityDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentEntityDto> mapFromJson(dynamic json) {
    final map = <String, AttachmentEntityDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentEntityDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentEntityDto-objects as value to a dart map
  static Map<String, List<AttachmentEntityDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentEntityDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentEntityDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'attachmentId',
    'userId',
    'createdAt',
    'updatedAt',
  };
}

