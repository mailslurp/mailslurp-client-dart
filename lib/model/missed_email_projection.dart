//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedEmailProjection {
  /// Returns a new [MissedEmailProjection] instance.
  MissedEmailProjection({
    this.subject,
    this.from,
    required this.id,
    this.userId,
    required this.createdAt,
  });

  String? subject;

  String? from;

  String id;

  String? userId;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedEmailProjection &&
     other.subject == subject &&
     other.from == from &&
     other.id == id &&
     other.userId == userId &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (createdAt.hashCode);

  @override
  String toString() => 'MissedEmailProjection[subject=$subject, from=$from, id=$id, userId=$userId, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MissedEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissedEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissedEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissedEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissedEmailProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
      );
    }
    return null;
  }

  static List<MissedEmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissedEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissedEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissedEmailProjection> mapFromJson(dynamic json) {
    final map = <String, MissedEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissedEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissedEmailProjection-objects as value to a dart map
  static Map<String, List<MissedEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissedEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MissedEmailProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'createdAt',
  };
}

