//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UnknownMissedEmailProjection {
  /// Returns a new [UnknownMissedEmailProjection] instance.
  UnknownMissedEmailProjection({
    required this.id,
    this.from,
    this.subject,
    required this.createdAt,
    this.to = const [],
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  DateTime createdAt;

  List<String> to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UnknownMissedEmailProjection &&
     other.id == id &&
     other.from == from &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode);

  @override
  String toString() => 'UnknownMissedEmailProjection[id=$id, from=$from, subject=$subject, createdAt=$createdAt, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [UnknownMissedEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UnknownMissedEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UnknownMissedEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UnknownMissedEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UnknownMissedEmailProjection(
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from'),
        subject: mapValueOfType<String>(json, r'subject'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<UnknownMissedEmailProjection>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UnknownMissedEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UnknownMissedEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UnknownMissedEmailProjection> mapFromJson(dynamic json) {
    final map = <String, UnknownMissedEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnknownMissedEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UnknownMissedEmailProjection-objects as value to a dart map
  static Map<String, List<UnknownMissedEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UnknownMissedEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UnknownMissedEmailProjection.listFromJson(entry.value, growable: growable,);
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
    'createdAt',
  };
}

