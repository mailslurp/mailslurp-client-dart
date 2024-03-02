//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendWithQueueResult {
  /// Returns a new [SendWithQueueResult] instance.
  SendWithQueueResult({
    required this.id,
    required this.userId,
    this.subject,
    this.inboxId,
    required this.headerId,
    required this.delivered,
    this.exceptionName,
    this.message,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  String headerId;

  bool delivered;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? exceptionName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendWithQueueResult &&
     other.id == id &&
     other.userId == userId &&
     other.subject == subject &&
     other.inboxId == inboxId &&
     other.headerId == headerId &&
     other.delivered == delivered &&
     other.exceptionName == exceptionName &&
     other.message == message &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (headerId.hashCode) +
    (delivered.hashCode) +
    (exceptionName == null ? 0 : exceptionName!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SendWithQueueResult[id=$id, userId=$userId, subject=$subject, inboxId=$inboxId, headerId=$headerId, delivered=$delivered, exceptionName=$exceptionName, message=$message, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'headerId'] = this.headerId;
      json[r'delivered'] = this.delivered;
    if (this.exceptionName != null) {
      json[r'exceptionName'] = this.exceptionName;
    } else {
      json[r'exceptionName'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SendWithQueueResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendWithQueueResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendWithQueueResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendWithQueueResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendWithQueueResult(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        subject: mapValueOfType<String>(json, r'subject'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        headerId: mapValueOfType<String>(json, r'headerId')!,
        delivered: mapValueOfType<bool>(json, r'delivered')!,
        exceptionName: mapValueOfType<String>(json, r'exceptionName'),
        message: mapValueOfType<String>(json, r'message'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<SendWithQueueResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendWithQueueResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendWithQueueResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendWithQueueResult> mapFromJson(dynamic json) {
    final map = <String, SendWithQueueResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendWithQueueResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendWithQueueResult-objects as value to a dart map
  static Map<String, List<SendWithQueueResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendWithQueueResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendWithQueueResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'headerId',
    'delivered',
    'createdAt',
    'updatedAt',
  };
}

