//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SentEmailProjection {
  /// Returns a new [SentEmailProjection] instance.
  SentEmailProjection({
    this.subject,
    required this.id,
    this.from,
    required this.userId,
    this.attachments = const [],
    required this.inboxId,
    this.to = const [],
    this.bcc = const [],
    this.cc = const [],
    required this.createdAt,
    this.bodyMD5Hash,
    required this.virtualSend,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  String userId;

  List<String> attachments;

  String inboxId;

  List<String> to;

  List<String> bcc;

  List<String> cc;

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bodyMD5Hash;

  bool virtualSend;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SentEmailProjection &&
     other.subject == subject &&
     other.id == id &&
     other.from == from &&
     other.userId == userId &&
     other.attachments == attachments &&
     other.inboxId == inboxId &&
     other.to == to &&
     other.bcc == bcc &&
     other.cc == cc &&
     other.createdAt == createdAt &&
     other.bodyMD5Hash == bodyMD5Hash &&
     other.virtualSend == virtualSend;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (id.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (userId.hashCode) +
    (attachments.hashCode) +
    (inboxId.hashCode) +
    (to.hashCode) +
    (bcc.hashCode) +
    (cc.hashCode) +
    (createdAt.hashCode) +
    (bodyMD5Hash == null ? 0 : bodyMD5Hash!.hashCode) +
    (virtualSend.hashCode);

  @override
  String toString() => 'SentEmailProjection[subject=$subject, id=$id, from=$from, userId=$userId, attachments=$attachments, inboxId=$inboxId, to=$to, bcc=$bcc, cc=$cc, createdAt=$createdAt, bodyMD5Hash=$bodyMD5Hash, virtualSend=$virtualSend]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'id'] = this.id;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
      json[r'userId'] = this.userId;
      json[r'attachments'] = this.attachments;
      json[r'inboxId'] = this.inboxId;
      json[r'to'] = this.to;
      json[r'bcc'] = this.bcc;
      json[r'cc'] = this.cc;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.bodyMD5Hash != null) {
      json[r'bodyMD5Hash'] = this.bodyMD5Hash;
    } else {
      json[r'bodyMD5Hash'] = null;
    }
      json[r'virtualSend'] = this.virtualSend;
    return json;
  }

  /// Returns a new [SentEmailProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SentEmailProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SentEmailProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SentEmailProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SentEmailProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        id: mapValueOfType<String>(json, r'id')!,
        from: mapValueOfType<String>(json, r'from'),
        userId: mapValueOfType<String>(json, r'userId')!,
        attachments: json[r'attachments'] is List
            ? (json[r'attachments'] as List).cast<String>()
            : const [],
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        bodyMD5Hash: mapValueOfType<String>(json, r'bodyMD5Hash'),
        virtualSend: mapValueOfType<bool>(json, r'virtualSend')!,
      );
    }
    return null;
  }

  static List<SentEmailProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SentEmailProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SentEmailProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SentEmailProjection> mapFromJson(dynamic json) {
    final map = <String, SentEmailProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SentEmailProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SentEmailProjection-objects as value to a dart map
  static Map<String, List<SentEmailProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SentEmailProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SentEmailProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'attachments',
    'inboxId',
    'to',
    'bcc',
    'cc',
    'createdAt',
    'virtualSend',
  };
}

