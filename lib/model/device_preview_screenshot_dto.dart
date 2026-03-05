//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewScreenshotDto {
  /// Returns a new [DevicePreviewScreenshotDto] instance.
  DevicePreviewScreenshotDto({
    required this.screenshotId,
    required this.runId,
    this.targetId,
    this.variant,
    this.title,
    this.description,
    required this.isPrimary,
    required this.displayOrder,
    this.storageKey,
    this.accessUrl,
    this.liveViewUrl,
    this.sessionId,
    this.browserContextId,
    this.deepLinkUrl,
    this.width,
    this.height,
    required this.createdAt,
    required this.updatedAt,
  });

  String screenshotId;

  String runId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? variant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  bool isPrimary;

  int displayOrder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? storageKey;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? liveViewUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? browserContextId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deepLinkUrl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? width;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? height;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewScreenshotDto &&
     other.screenshotId == screenshotId &&
     other.runId == runId &&
     other.targetId == targetId &&
     other.variant == variant &&
     other.title == title &&
     other.description == description &&
     other.isPrimary == isPrimary &&
     other.displayOrder == displayOrder &&
     other.storageKey == storageKey &&
     other.accessUrl == accessUrl &&
     other.liveViewUrl == liveViewUrl &&
     other.sessionId == sessionId &&
     other.browserContextId == browserContextId &&
     other.deepLinkUrl == deepLinkUrl &&
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
    (storageKey == null ? 0 : storageKey!.hashCode) +
    (accessUrl == null ? 0 : accessUrl!.hashCode) +
    (liveViewUrl == null ? 0 : liveViewUrl!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (browserContextId == null ? 0 : browserContextId!.hashCode) +
    (deepLinkUrl == null ? 0 : deepLinkUrl!.hashCode) +
    (width == null ? 0 : width!.hashCode) +
    (height == null ? 0 : height!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DevicePreviewScreenshotDto[screenshotId=$screenshotId, runId=$runId, targetId=$targetId, variant=$variant, title=$title, description=$description, isPrimary=$isPrimary, displayOrder=$displayOrder, storageKey=$storageKey, accessUrl=$accessUrl, liveViewUrl=$liveViewUrl, sessionId=$sessionId, browserContextId=$browserContextId, deepLinkUrl=$deepLinkUrl, width=$width, height=$height, createdAt=$createdAt, updatedAt=$updatedAt]';

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
    if (this.storageKey != null) {
      json[r'storageKey'] = this.storageKey;
    } else {
      json[r'storageKey'] = null;
    }
    if (this.accessUrl != null) {
      json[r'accessUrl'] = this.accessUrl;
    } else {
      json[r'accessUrl'] = null;
    }
    if (this.liveViewUrl != null) {
      json[r'liveViewUrl'] = this.liveViewUrl;
    } else {
      json[r'liveViewUrl'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.browserContextId != null) {
      json[r'browserContextId'] = this.browserContextId;
    } else {
      json[r'browserContextId'] = null;
    }
    if (this.deepLinkUrl != null) {
      json[r'deepLinkUrl'] = this.deepLinkUrl;
    } else {
      json[r'deepLinkUrl'] = null;
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

  /// Returns a new [DevicePreviewScreenshotDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewScreenshotDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewScreenshotDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewScreenshotDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewScreenshotDto(
        screenshotId: mapValueOfType<String>(json, r'screenshotId')!,
        runId: mapValueOfType<String>(json, r'runId')!,
        targetId: mapValueOfType<String>(json, r'targetId'),
        variant: mapValueOfType<String>(json, r'variant'),
        title: mapValueOfType<String>(json, r'title'),
        description: mapValueOfType<String>(json, r'description'),
        isPrimary: mapValueOfType<bool>(json, r'isPrimary')!,
        displayOrder: mapValueOfType<int>(json, r'displayOrder')!,
        storageKey: mapValueOfType<String>(json, r'storageKey'),
        accessUrl: mapValueOfType<String>(json, r'accessUrl'),
        liveViewUrl: mapValueOfType<String>(json, r'liveViewUrl'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        browserContextId: mapValueOfType<String>(json, r'browserContextId'),
        deepLinkUrl: mapValueOfType<String>(json, r'deepLinkUrl'),
        width: mapValueOfType<int>(json, r'width'),
        height: mapValueOfType<int>(json, r'height'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DevicePreviewScreenshotDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewScreenshotDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewScreenshotDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewScreenshotDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewScreenshotDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewScreenshotDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewScreenshotDto-objects as value to a dart map
  static Map<String, List<DevicePreviewScreenshotDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewScreenshotDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewScreenshotDto.listFromJson(entry.value, growable: growable,);
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

