//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ThreadProjection {
  /// Returns a new [ThreadProjection] instance.
  ThreadProjection({
    this.name,
    required this.id,
    this.subject,
    required this.userId,
    required this.inboxId,
    required this.createdAt,
    required this.updatedAt,
    this.to = const [],
    this.bcc = const [],
    this.cc = const [],
    required this.aliasId,
  });

  /// Name of thread
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// ID of email thread
  String id;

  /// Thread subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// User ID
  String userId;

  /// Inbox ID
  String inboxId;

  /// Created at DateTime
  DateTime createdAt;

  /// Updated at DateTime
  DateTime updatedAt;

  /// To recipients
  List<String> to;

  /// BCC recipients
  List<String> bcc;

  /// CC recipients
  List<String> cc;

  /// Alias ID
  String aliasId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ThreadProjection &&
     other.name == name &&
     other.id == id &&
     other.subject == subject &&
     other.userId == userId &&
     other.inboxId == inboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.to == to &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.aliasId == aliasId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (userId.hashCode) +
    (inboxId.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (to.hashCode) +
    (bcc.hashCode) +
    (cc.hashCode) +
    (aliasId.hashCode);

  @override
  String toString() => 'ThreadProjection[name=$name, id=$id, subject=$subject, userId=$userId, inboxId=$inboxId, createdAt=$createdAt, updatedAt=$updatedAt, to=$to, bcc=$bcc, cc=$cc, aliasId=$aliasId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'inboxId'] = this.inboxId;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
      json[r'bcc'] = this.bcc;
      json[r'cc'] = this.cc;
      json[r'aliasId'] = this.aliasId;
    return json;
  }

  /// Returns a new [ThreadProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ThreadProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ThreadProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ThreadProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ThreadProjection(
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
        subject: mapValueOfType<String>(json, r'subject'),
        userId: mapValueOfType<String>(json, r'userId')!,
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        aliasId: mapValueOfType<String>(json, r'aliasId')!,
      );
    }
    return null;
  }

  static List<ThreadProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ThreadProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ThreadProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ThreadProjection> mapFromJson(dynamic json) {
    final map = <String, ThreadProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ThreadProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ThreadProjection-objects as value to a dart map
  static Map<String, List<ThreadProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ThreadProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ThreadProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'inboxId',
    'createdAt',
    'updatedAt',
    'to',
    'aliasId',
  };
}

