//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AliasThreadProjection {
  /// Returns a new [AliasThreadProjection] instance.
  AliasThreadProjection({
    this.subject,
    required this.inboxId,
    required this.userId,
    required this.updatedAt,
    required this.createdAt,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    required this.aliasId,
    this.name,
    required this.id,
  });

  /// Thread subject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  /// Inbox ID
  String inboxId;

  /// User ID
  String userId;

  /// Updated at DateTime
  DateTime updatedAt;

  /// Created at DateTime
  DateTime createdAt;

  /// To recipients
  List<String> to;

  /// CC recipients
  List<String> cc;

  /// BCC recipients
  List<String> bcc;

  /// Alias ID
  String aliasId;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is AliasThreadProjection &&
     other.subject == subject &&
     other.inboxId == inboxId &&
     other.userId == userId &&
     other.updatedAt == updatedAt &&
     other.createdAt == createdAt &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.aliasId == aliasId &&
     other.name == name &&
     other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subject == null ? 0 : subject!.hashCode) +
    (inboxId.hashCode) +
    (userId.hashCode) +
    (updatedAt.hashCode) +
    (createdAt.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (aliasId.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (id.hashCode);

  @override
  String toString() => 'AliasThreadProjection[subject=$subject, inboxId=$inboxId, userId=$userId, updatedAt=$updatedAt, createdAt=$createdAt, to=$to, cc=$cc, bcc=$bcc, aliasId=$aliasId, name=$name, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'inboxId'] = this.inboxId;
      json[r'userId'] = this.userId;
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
      json[r'aliasId'] = this.aliasId;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'id'] = this.id;
    return json;
  }

  /// Returns a new [AliasThreadProjection] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AliasThreadProjection? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AliasThreadProjection[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AliasThreadProjection[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AliasThreadProjection(
        subject: mapValueOfType<String>(json, r'subject'),
        inboxId: mapValueOfType<String>(json, r'inboxId')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        aliasId: mapValueOfType<String>(json, r'aliasId')!,
        name: mapValueOfType<String>(json, r'name'),
        id: mapValueOfType<String>(json, r'id')!,
      );
    }
    return null;
  }

  static List<AliasThreadProjection> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AliasThreadProjection>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AliasThreadProjection.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AliasThreadProjection> mapFromJson(dynamic json) {
    final map = <String, AliasThreadProjection>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AliasThreadProjection.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AliasThreadProjection-objects as value to a dart map
  static Map<String, List<AliasThreadProjection>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AliasThreadProjection>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AliasThreadProjection.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inboxId',
    'userId',
    'updatedAt',
    'createdAt',
    'to',
    'aliasId',
    'id',
  };
}

