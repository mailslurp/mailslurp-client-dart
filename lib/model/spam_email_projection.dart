//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpamEmailProjection {
  /// Returns a new [SpamEmailProjection] instance.
  SpamEmailProjection({
    this.from,
    required this.id,
    required this.userId,
    required this.inboxId,
    required this.to,
    required this.createdAt,
    this.subjectSnippet,
  });

  String? from;

  String id;

  String userId;

  String inboxId;

  String to;

  DateTime createdAt;

  String? subjectSnippet;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpamEmailProjection &&
     other.from == from &&
     other.id == id &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.createdAt == createdAt &&
     other.subjectSnippet == subjectSnippet;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from == null ? 0 : from!.hashCode) +
    (id.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (to.hashCode) +
    (createdAt.hashCode) +
    (subjectSnippet == null ? 0 : subjectSnippet!.hashCode);

  @override
  String toString() => 'SpamEmailProjection[from=$from, id=$id, userId=$userId, inboxId=$inboxId, to=$to, createdAt=$createdAt, subjectSnippet=$subjectSnippet]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
      json[r'to'] = this.to;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.subjectSnippet != null) {
      json[r'subjectSnippet'] = this.subjectSnippet;
    } else {
      json[r'subjectSnippet'] = null;
    }
    return json;
  }

  /// Returns a new [SpamEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpamEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpamEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpamEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpamEmailProjection(
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        to: mapValueOfType<String>(json, r'to')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        subjectSnippet: mapValueOfType<String>(json, r'subjectSnippet'),
      );
    }
    return null;
  }

  static List<SpamEmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpamEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpamEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpamEmailProjection> mapFromJson(dynamic json) {
    final map = <String, SpamEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpamEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpamEmailProjection-objects as value to a dart map
  static Map<String, List<SpamEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpamEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpamEmailProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'to',
    'createdAt',
  };
}

