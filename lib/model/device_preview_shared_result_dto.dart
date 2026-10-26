//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DevicePreviewSharedResultDto {
  /// Returns a new [DevicePreviewSharedResultDto] instance.
  DevicePreviewSharedResultDto({
    required this.share,
    required this.run,
    this.targets = const [],
    this.screenshots = const [],
    this.comments = const [],
  });

  DevicePreviewShareLinkDto share;

  DevicePreviewSharedRunDto run;

  List<DevicePreviewSharedTargetDto> targets;

  List<DevicePreviewSharedScreenshotDto> screenshots;

  List<DevicePreviewSharedCommentDto> comments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DevicePreviewSharedResultDto &&
     other.share == share &&
     other.run == run &&
     other.targets == targets &&
     other.screenshots == screenshots &&
     other.comments == comments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (share.hashCode) +
    (run.hashCode) +
    (targets.hashCode) +
    (screenshots.hashCode) +
    (comments.hashCode);

  @override
  String toString() => 'DevicePreviewSharedResultDto[share=$share, run=$run, targets=$targets, screenshots=$screenshots, comments=$comments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'share'] = this.share;
      json[r'run'] = this.run;
      json[r'targets'] = this.targets;
      json[r'screenshots'] = this.screenshots;
      json[r'comments'] = this.comments;
    return json;
  }

  /// Returns a new [DevicePreviewSharedResultDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DevicePreviewSharedResultDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DevicePreviewSharedResultDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DevicePreviewSharedResultDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DevicePreviewSharedResultDto(
        share: DevicePreviewShareLinkDto.fromJson(json[r'share'])!,
        run: DevicePreviewSharedRunDto.fromJson(json[r'run'])!,
        targets: DevicePreviewSharedTargetDto.listFromJson(json[r'targets']),
        screenshots: DevicePreviewSharedScreenshotDto.listFromJson(json[r'screenshots']),
        comments: DevicePreviewSharedCommentDto.listFromJson(json[r'comments']),
      );
    }
    return null;
  }

  static List<DevicePreviewSharedResultDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DevicePreviewSharedResultDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DevicePreviewSharedResultDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DevicePreviewSharedResultDto> mapFromJson(dynamic json) {
    final map = <String, DevicePreviewSharedResultDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DevicePreviewSharedResultDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DevicePreviewSharedResultDto-objects as value to a dart map
  static Map<String, List<DevicePreviewSharedResultDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DevicePreviewSharedResultDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DevicePreviewSharedResultDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'share',
    'run',
    'targets',
    'screenshots',
    'comments',
  };
}

