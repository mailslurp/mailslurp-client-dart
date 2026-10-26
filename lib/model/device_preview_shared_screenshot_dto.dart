//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewSharedScreenshotDto {
  /// Returns a new [DevicePreviewSharedScreenshotDto] instance.
  DevicePreviewSharedScreenshotDto({
    required this.screenshotId,
    required this.runId,
    this.targetId,
    this.variant,
    this.title,
    this.description,
    required this.isPrimary,
    required this.displayOrder,
    this.imageUrl,
    this.width,
    this.height,
    required this.createdAt,
    required this.updatedAt,
  });

  String screenshotId;

  String runId;

  String? targetId;

  String? variant;

  String? title;

  String? description;

  bool isPrimary;

  int displayOrder;

  String? imageUrl;

  int? width;

  int? height;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewSharedScreenshotDto &&
     other.screenshotId == screenshotId &&
     other.runId == runId &&
     other.targetId == targetId &&
     other.variant == variant &&
     other.title == title &&
     other.description == description &&
     other.isPrimary == isPrimary &&
     other.displayOrder == displayOrder &&
     other.imageUrl == imageUrl &&
     other.width == width &&
     other.height == height &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (screenshotId.hashCode) +
    (runId.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode) +
    (variant == null ? 0 : variant!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (isPrimary.hashCode) +
    (displayOrder.hashCode) +
    (imageUrl == null ? 0 : imageUrl!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewSharedScreenshotDto[screenshotId=$screenshotId, runId=$runId, targetId=$targetId, variant=$variant, title=$title, description=$description, isPrimary=$isPrimary, displayOrder=$displayOrder, imageUrl=$imageUrl, width=$width, height=$height, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'screenshotId'] = this.screenshotId;
      json[r'runId'] = this.runId;
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    if (this.variant != null) {
      json[r'variant'] = this.variant;
    } else {
      json[r'variant'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'isPrimary'] = this.isPrimary;
      json[r'displayOrder'] = this.displayOrder;
    if (this.imageUrl != null) {
      json[r'imageUrl'] = this.imageUrl;
    } else {
      json[r'imageUrl'] = null;
    }
    if (this.width != null) {
      json[r'width'] = this.width;
    } else {
      json[r'width'] = null;
    }
    if (this.height != null) {
      json[r'height'] = this.height;
    } else {
      json[r'height'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DevicePreviewSharedScreenshotDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewSharedScreenshotDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewSharedScreenshotDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewSharedScreenshotDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewSharedScreenshotDto(
        screenshotId: mapValueOfType<String>(json, r'screenshotId')!,
        runId: mapValueOfType<String>(json, r'runId')!,
        targetId: mapValueOfType<String>(json, r'targetId'),
        variant: mapValueOfType<String>(json, r'variant'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        isPrimary: mapValueOfType<bool>(json, r'isPrimary')!,
        displayOrder: mapValueOfType<int>(json, r'displayOrder')!,
        imageUrl: mapValueOfType<String>(json, r'imageUrl'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewSharedScreenshotDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedScreenshotDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedScreenshotDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewSharedScreenshotDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewSharedScreenshotDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewSharedScreenshotDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewSharedScreenshotDto-objects as value to a dart map
  static Map<String, List<DevicePreviewSharedScreenshotDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewSharedScreenshotDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewSharedScreenshotDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'screenshotId',
    'runId',
    'isPrimary',
    'displayOrder',
    'createdAt',
    'updatedAt',
  };
}

