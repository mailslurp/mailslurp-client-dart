//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TrackingPixelProjection {
  /// Returns a new [TrackingPixelProjection] instance.
  TrackingPixelProjection({
    this.name,
    required this.id,
    required this.userId,
    this.inboxId,
    this.sentEmailId,
    required this.createdAt,
    this.recipient,
    required this.seen,
    this.seenAt,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  String id;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sentEmailId;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  bool seen;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? seenAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrackingPixelProjection &&
     other.name == name &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.sentEmailId == sentEmailId &&
     other.createdAt == createdAt &&
     other.recipient == recipient &&
     other.seen == seen &&
     other.seenAt == seenAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (sentEmailId == null ? 0 : sentEmailId!.hashCode) +
    (createdAt.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (seen.hashCode) +
    (seenAt == null ? 0 : seenAt!.hashCode);

  @override
  String toString() => 'TrackingPixelProjection[name=$name, id=$id, userId=$userId, inboxId=$inboxId, sentEmailId=$sentEmailId, createdAt=$createdAt, recipient=$recipient, seen=$seen, seenAt=$seenAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
      json[r'seen'] = this.seen;
    if (this.seenAt != null) {
      json[r'seenAt'] = this.seenAt!.toUtc().toIso8601String();
    } else {
      json[r'seenAt'] = null;
    }
    return json;
  }

  /// Returns a new [TrackingPixelProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrackingPixelProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrackingPixelProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrackingPixelProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrackingPixelProjection(
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        sentEmailId: mapValueOfType<String>(json, r'sentEmailId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        recipient: mapValueOfType<String>(json, r'recipient'),
        seen: mapValueOfType<bool>(json, r'seen')!,
        seenAt: mapDateTime(json, r'seenAt', ''),
      );
    }
    return null;
  }

  static List<TrackingPixelProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrackingPixelProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrackingPixelProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrackingPixelProjection> mapFromJson(dynamic json) {
    final map = <String, TrackingPixelProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingPixelProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrackingPixelProjection-objects as value to a dart map
  static Map<String, List<TrackingPixelProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrackingPixelProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrackingPixelProjection.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'createdAt',
    'seen',
  };
}

