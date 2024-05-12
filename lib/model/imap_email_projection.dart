//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImapEmailProjection {
  /// Returns a new [ImapEmailProjection] instance.
  ImapEmailProjection({
    this.read,
    required this.uid,
    required this.seqNum,
    required this.createdAt,
    required this.id,
  });

  bool? read;

  int uid;

  int seqNum;

  DateTime createdAt;

  String id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImapEmailProjection &&
     other.read == read &&
     other.uid == uid &&
     other.seqNum == seqNum &&
     other.createdAt == createdAt &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (read == null ? 0 : read!.hashCode) +
    (uid.hashCode) +
    (seqNum.hashCode) +
    (createdAt.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'ImapEmailProjection[read=$read, uid=$uid, seqNum=$seqNum, createdAt=$createdAt, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.read != null) {
      json[r'read'] = this.read;
    } else {
      json[r'read'] = null;
    }
      json[r'uid'] = this.uid;
      json[r'seqNum'] = this.seqNum;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [ImapEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImapEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImapEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImapEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImapEmailProjection(
        read: mapValueOfType<bool>(json, r'read'),
        uid: mapValueOfType<int>(json, r'uid')!,
        seqNum: mapValueOfType<int>(json, r'seqNum')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<ImapEmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImapEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImapEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImapEmailProjection> mapFromJson(dynamic json) {
    final map = <String, ImapEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImapEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImapEmailProjection-objects as value to a dart map
  static Map<String, List<ImapEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImapEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImapEmailProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'uid',
    'seqNum',
    'createdAt',
    'id',
  };
}

