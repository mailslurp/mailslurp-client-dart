//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MissedEmailDto {
  /// Returns a new [MissedEmailDto] instance.
  MissedEmailDto({
    required this.id,
    this.userId,
    this.subject,
    this.bodyExcerpt,
    required this.attachmentCount,
    this.from,
    this.rawUrl,
    this.rawKey,
    this.rawBucket,
    this.canRestore,
    this.to = const [],
    this.cc = const [],
    this.bcc = const [],
    this.inboxIds = const [],
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? userId;

  String? subject;

  String? bodyExcerpt;

  int attachmentCount;

  String? from;

  String? rawUrl;

  String? rawKey;

  String? rawBucket;

  bool? canRestore;

  List<String> to;

  List<String> cc;

  List<String> bcc;

  List<String> inboxIds;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MissedEmailDto &&
     other.id == id &&
     other.userId == userId &&
     other.subject == subject &&
     other.bodyExcerpt == bodyExcerpt &&
     other.attachmentCount == attachmentCount &&
     other.from == from &&
     other.rawUrl == rawUrl &&
     other.rawKey == rawKey &&
     other.rawBucket == rawBucket &&
     other.canRestore == canRestore &&
     other.to == to &&
     other.cc == cc &&
     other.bcc == bcc &&
     other.inboxIds == inboxIds &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (bodyExcerpt == null ? 0 : bodyExcerpt!.hashCode) +
    (attachmentCount.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (rawUrl == null ? 0 : rawUrl!.hashCode) +
    (rawKey == null ? 0 : rawKey!.hashCode) +
    (rawBucket == null ? 0 : rawBucket!.hashCode) +
    (canRestore == null ? 0 : canRestore!.hashCode) +
    (to.hashCode) +
    (cc.hashCode) +
    (bcc.hashCode) +
    (inboxIds.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'MissedEmailDto[id=$id, userId=$userId, subject=$subject, bodyExcerpt=$bodyExcerpt, attachmentCount=$attachmentCount, from=$from, rawUrl=$rawUrl, rawKey=$rawKey, rawBucket=$rawBucket, canRestore=$canRestore, to=$to, cc=$cc, bcc=$bcc, inboxIds=$inboxIds, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.bodyExcerpt != null) {
      json[r'bodyExcerpt'] = this.bodyExcerpt;
    } else {
      json[r'bodyExcerpt'] = null;
    }
      json[r'attachmentCount'] = this.attachmentCount;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.rawUrl != null) {
      json[r'rawUrl'] = this.rawUrl;
    } else {
      json[r'rawUrl'] = null;
    }
    if (this.rawKey != null) {
      json[r'rawKey'] = this.rawKey;
    } else {
      json[r'rawKey'] = null;
    }
    if (this.rawBucket != null) {
      json[r'rawBucket'] = this.rawBucket;
    } else {
      json[r'rawBucket'] = null;
    }
    if (this.canRestore != null) {
      json[r'canRestore'] = this.canRestore;
    } else {
      json[r'canRestore'] = null;
    }
      json[r'to'] = this.to;
      json[r'cc'] = this.cc;
      json[r'bcc'] = this.bcc;
      json[r'inboxIds'] = this.inboxIds;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [MissedEmailDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MissedEmailDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MissedEmailDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MissedEmailDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MissedEmailDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        subject: mapValueOfType<String>(json, r'subject'),
        bodyExcerpt: mapValueOfType<String>(json, r'bodyExcerpt'),
        attachmentCount: mapValueOfType<int>(json, r'attachmentCount')!,
        from: mapValueOfType<String>(json, r'from'),
        rawUrl: mapValueOfType<String>(json, r'rawUrl'),
        rawKey: mapValueOfType<String>(json, r'rawKey'),
        rawBucket: mapValueOfType<String>(json, r'rawBucket'),
        canRestore: mapValueOfType<bool>(json, r'canRestore'),
        to: json[r'to'] is List
            ? (json[r'to'] as List).cast<String>()
            : const [],
        cc: json[r'cc'] is List
            ? (json[r'cc'] as List).cast<String>()
            : const [],
        bcc: json[r'bcc'] is List
            ? (json[r'bcc'] as List).cast<String>()
            : const [],
        inboxIds: json[r'inboxIds'] is List
            ? (json[r'inboxIds'] as List).cast<String>()
            : const [],
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<MissedEmailDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MissedEmailDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MissedEmailDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MissedEmailDto> mapFromJson(dynamic json) {
    final map = <String, MissedEmailDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissedEmailDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MissedEmailDto-objects as value to a dart map
  static Map<String, List<MissedEmailDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MissedEmailDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MissedEmailDto.listFromJson(entry.value, growable: growable,);
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
    'attachmentCount',
    'to',
    'cc',
    'bcc',
    'inboxIds',
    'createdAt',
    'updatedAt',
  };
}

