//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentSmsProjection {
  /// Returns a new [SentSmsProjection] instance.
  SentSmsProjection({
    required this.body,
    required this.createdAt,
    required this.userId,
    required this.phoneNumber,
    required this.fromNumber,
    required this.toNumber,
    this.replyToId,
    required this.id,
  });

  String body;

  DateTime createdAt;

  String userId;

  String phoneNumber;

  String fromNumber;

  String toNumber;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? replyToId;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentSmsProjection &&
     other.body == body &&
     other.createdAt == createdAt &&
     other.userId == userId &&
     other.phoneNumber == phoneNumber &&
     other.fromNumber == fromNumber &&
     other.toNumber == toNumber &&
     other.replyToId == replyToId &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (body.hashCode) +
    (createdAt.hashCode) +
    (userId.hashCode) +
    (phoneNumber.hashCode) +
    (fromNumber.hashCode) +
    (toNumber.hashCode) +
    (replyToId == null ? 0 : replyToId!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'SentSmsProjection[body=$body, createdAt=$createdAt, userId=$userId, phoneNumber=$phoneNumber, fromNumber=$fromNumber, toNumber=$toNumber, replyToId=$replyToId, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'body'] = this.body;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'userId'] = this.userId;
      json[r'phoneNumber'] = this.phoneNumber;
      json[r'fromNumber'] = this.fromNumber;
      json[r'toNumber'] = this.toNumber;
    if (this.replyToId != null) {
      json[r'replyToId'] = this.replyToId;
    } else {
      json[r'replyToId'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [SentSmsProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SentSmsProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SentSmsProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SentSmsProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SentSmsProjection(
        body: mapValueOfType<String>(json, r'body')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        phoneNumber: mapValueOfType<String>(json, r'phoneNumber')!,
        fromNumber: mapValueOfType<String>(json, r'fromNumber')!,
        toNumber: mapValueOfType<String>(json, r'toNumber')!,
        replyToId: mapValueOfType<String>(json, r'replyToId'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<SentSmsProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SentSmsProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SentSmsProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SentSmsProjection> mapFromJson(dynamic json) {
    final map = <String, SentSmsProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SentSmsProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SentSmsProjection-objects as value to a dart map
  static Map<String, List<SentSmsProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SentSmsProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SentSmsProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'body',
    'createdAt',
    'userId',
    'phoneNumber',
    'fromNumber',
    'toNumber',
    'id',
  };
}

