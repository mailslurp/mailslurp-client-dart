//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AttachmentEntity {
  /// Returns a new [AttachmentEntity] instance.
  AttachmentEntity({
    this.id,
    required this.attachmentId,
    this.bucket,
    required this.userId,
    this.contentType,
    this.contentLength,
    this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  String attachmentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bucket;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? contentType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? contentLength;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentEntity &&
     other.id == id &&
     other.attachmentId == attachmentId &&
     other.bucket == bucket &&
     other.userId == userId &&
     other.contentType == contentType &&
     other.contentLength == contentLength &&
     other.name == name &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (attachmentId.hashCode) +
    (bucket == null ? 0 : bucket!.hashCode) +
    (userId.hashCode) +
    (contentType == null ? 0 : contentType!.hashCode) +
    (contentLength == null ? 0 : contentLength!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AttachmentEntity[id=$id, attachmentId=$attachmentId, bucket=$bucket, userId=$userId, contentType=$contentType, contentLength=$contentLength, name=$name, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'attachmentId'] = this.attachmentId;
    if (this.bucket != null) {
      json[r'bucket'] = this.bucket;
    } else {
      json[r'bucket'] = null;
    }
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
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [AttachmentEntity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentEntity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentEntity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentEntity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentEntity(
        id: mapValueOfType<String>(json, r'id'),
        attachmentId: mapValueOfType<String>(json, r'attachmentId')!,
        bucket: mapValueOfType<String>(json, r'bucket'),
        userId: mapValueOfType<String>(json, r'userId')!,
        contentType: mapValueOfType<String>(json, r'contentType'),
        contentLength: mapValueOfType<int>(json, r'contentLength'),
        name: mapValueOfType<String>(json, r'name'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AttachmentEntity> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentEntity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentEntity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentEntity> mapFromJson(dynamic json) {
    final map = <String, AttachmentEntity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentEntity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentEntity-objects as value to a dart map
  static Map<String, List<AttachmentEntity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentEntity>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentEntity.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'attachmentId',
    'userId',
    'createdAt',
    'updatedAt',
  };
}

