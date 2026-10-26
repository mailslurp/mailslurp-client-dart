//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewSharedCommentDto {
  /// Returns a new [DevicePreviewSharedCommentDto] instance.
  DevicePreviewSharedCommentDto({
    required this.commentId,
    this.targetId,
    this.screenshotId,
    required this.status,
    this.authorLabel,
    this.targetLabel,
    required this.comment,
    this.createdAt,
    this.updatedAt,
  });

  String commentId;

  String? targetId;

  String? screenshotId;

  DevicePreviewSharedCommentDtoStatusEnum status;

  String? authorLabel;

  String? targetLabel;

  String comment;

  DateTime? createdAt;

  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewSharedCommentDto &&
     other.commentId == commentId &&
     other.targetId == targetId &&
     other.screenshotId == screenshotId &&
     other.status == status &&
     other.authorLabel == authorLabel &&
     other.targetLabel == targetLabel &&
     other.comment == comment &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (commentId.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (screenshotId == null ? 0 : screenshotId!.hashCode) +
    (status.hashCode) +
    (authorLabel == null ? 0 : authorLabel!.hashCode) +
    (targetLabel == null ? 0 : targetLabel!.hashCode) +
    (comment.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'DevicePreviewSharedCommentDto[commentId=$commentId, targetId=$targetId, screenshotId=$screenshotId, status=$status, authorLabel=$authorLabel, targetLabel=$targetLabel, comment=$comment, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'commentId'] = this.commentId;
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.screenshotId != null) {
      json[r'screenshotId'] = this.screenshotId;
    } else {
      json[r'screenshotId'] = null;
    }
      json[r'status'] = this.status;
    if (this.authorLabel != null) {
      json[r'authorLabel'] = this.authorLabel;
    } else {
      json[r'authorLabel'] = null;
    }
    if (this.targetLabel != null) {
      json[r'targetLabel'] = this.targetLabel;
    } else {
      json[r'targetLabel'] = null;
    }
      json[r'comment'] = this.comment;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [DevicePreviewSharedCommentDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewSharedCommentDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewSharedCommentDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewSharedCommentDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewSharedCommentDto(
        commentId: mapValueOfType<String>(json, r'commentId')!,
        targetId: mapValueOfType<String>(json, r'targetId'),
        screenshotId: mapValueOfType<String>(json, r'screenshotId'),
        status: DevicePreviewSharedCommentDtoStatusEnum.fromJson(json[r'status'])!,
        authorLabel: mapValueOfType<String>(json, r'authorLabel'),
        targetLabel: mapValueOfType<String>(json, r'targetLabel'),
        comment: mapValueOfType<String>(json, r'comment')!,
        createdAt: mapDateTime(json, r'createdAt', ''),
        updatedAt: mapDateTime(json, r'updatedAt', ''),
      );
    }
    return null;
  }

  static List<DevicePreviewSharedCommentDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedCommentDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedCommentDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewSharedCommentDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewSharedCommentDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewSharedCommentDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewSharedCommentDto-objects as value to a dart map
  static Map<String, List<DevicePreviewSharedCommentDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewSharedCommentDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewSharedCommentDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'commentId',
    'status',
    'comment',
  };
}


class DevicePreviewSharedCommentDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const DevicePreviewSharedCommentDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const OPEN = DevicePreviewSharedCommentDtoStatusEnum._(r'OPEN');
  static const ACKNOWLEDGED = DevicePreviewSharedCommentDtoStatusEnum._(r'ACKNOWLEDGED');
  static const RESOLVED = DevicePreviewSharedCommentDtoStatusEnum._(r'RESOLVED');
  static const DISMISSED = DevicePreviewSharedCommentDtoStatusEnum._(r'DISMISSED');

  /// List of all possible values in this [enum][DevicePreviewSharedCommentDtoStatusEnum].
  static const values = <DevicePreviewSharedCommentDtoStatusEnum>[
    OPEN,
    ACKNOWLEDGED,
    RESOLVED,
    DISMISSED,
  ];

  static DevicePreviewSharedCommentDtoStatusEnum? fromJson(dynamic value) => DevicePreviewSharedCommentDtoStatusEnumTypeTransformer().decode(value);

  static List<DevicePreviewSharedCommentDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedCommentDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedCommentDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DevicePreviewSharedCommentDtoStatusEnum] to String,
/// and [decode] dynamic data back to [DevicePreviewSharedCommentDtoStatusEnum].
class DevicePreviewSharedCommentDtoStatusEnumTypeTransformer {
  factory DevicePreviewSharedCommentDtoStatusEnumTypeTransformer() => _instance ??= const DevicePreviewSharedCommentDtoStatusEnumTypeTransformer._();

  const DevicePreviewSharedCommentDtoStatusEnumTypeTransformer._();

  String encode(DevicePreviewSharedCommentDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DevicePreviewSharedCommentDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DevicePreviewSharedCommentDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OPEN': return DevicePreviewSharedCommentDtoStatusEnum.OPEN;
        case r'ACKNOWLEDGED': return DevicePreviewSharedCommentDtoStatusEnum.ACKNOWLEDGED;
        case r'RESOLVED': return DevicePreviewSharedCommentDtoStatusEnum.RESOLVED;
        case r'DISMISSED': return DevicePreviewSharedCommentDtoStatusEnum.DISMISSED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DevicePreviewSharedCommentDtoStatusEnumTypeTransformer] instance.
  static DevicePreviewSharedCommentDtoStatusEnumTypeTransformer? _instance;
}


