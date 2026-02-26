//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingPixelDto {
  /// Returns a new [TrackingPixelDto] instance.
  TrackingPixelDto({
    required this.id,
    required this.seen,
    this.recipient,
    required this.html,
    required this.url,
    this.inboxId,
    this.sentEmailId,
    this.seenAt,
    required this.createdAt,
  });

  String id;

  bool seen;

  String? recipient;

  String html;

  String url;

  String? inboxId;

  String? sentEmailId;

  DateTime? seenAt;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelDto &&
     other.id == id &&
     other.seen == seen &&
     other.recipient == recipient &&
     other.html == html &&
     other.url == url &&
     other.inboxId == inboxId &&
     other.sentEmailId == sentEmailId &&
     other.seenAt == seenAt &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (seen.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (html.hashCode) +
    (url.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (seenAt == null ? 0 : seenAt!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'TrackingPixelDto[id=$id, seen=$seen, recipient=$recipient, html=$html, url=$url, inboxId=$inboxId, sentEmailId=$sentEmailId, seenAt=$seenAt, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'seen'] = this.seen;
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
      json[r'html'] = this.html;
      json[r'url'] = this.url;
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.sentEmailId != null) {
      json[r'sentEmailId'] = this.sentEmailId;
    } else {
      json[r'sentEmailId'] = null;
    }
    if (this.seenAt != null) {
      json[r'seenAt'] = this.seenAt!.toUtc().toIso8601String();
    } else {
      json[r'seenAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [TrackingPixelDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingPixelDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingPixelDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingPixelDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingPixelDto(
        id: mapValueOfType<String>(json, r'id')!,
        seen: mapValueOfType<bool>(json, r'seen')!,
        recipient: mapValueOfType<String>(json, r'recipient'),
        html: mapValueOfType<String>(json, r'html')!,
        url: mapValueOfType<String>(json, r'url')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        seenAt: mapDateTime(json, r'seenAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<TrackingPixelDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingPixelDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingPixelDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingPixelDto> mapFromJson(dynamic json) {
    final map = <String, TrackingPixelDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingPixelDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingPixelDto-objects as value to a dart map
  static Map<String, List<TrackingPixelDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingPixelDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrackingPixelDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'seen',
    'html',
    'url',
    'createdAt',
  };
}

