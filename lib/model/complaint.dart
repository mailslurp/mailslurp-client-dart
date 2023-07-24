//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Complaint {
  /// Returns a new [Complaint] instance.
  Complaint({
    required this.id,
    this.userId,
    this.eventType,
    this.mailSource,
    this.mailMessageId,
    required this.complaintRecipient,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? eventType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailSource;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailMessageId;

  String complaintRecipient;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Complaint &&
     other.id == id &&
     other.userId == userId &&
     other.eventType == eventType &&
     other.mailSource == mailSource &&
     other.mailMessageId == mailMessageId &&
     other.complaintRecipient == complaintRecipient &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (eventType == null ? 0 : eventType!.hashCode) +
    (mailSource == null ? 0 : mailSource!.hashCode) +
    (mailMessageId == null ? 0 : mailMessageId!.hashCode) +
    (complaintRecipient.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'Complaint[id=$id, userId=$userId, eventType=$eventType, mailSource=$mailSource, mailMessageId=$mailMessageId, complaintRecipient=$complaintRecipient, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.eventType != null) {
      json[r'eventType'] = this.eventType;
    } else {
      json[r'eventType'] = null;
    }
    if (this.mailSource != null) {
      json[r'mailSource'] = this.mailSource;
    } else {
      json[r'mailSource'] = null;
    }
    if (this.mailMessageId != null) {
      json[r'mailMessageId'] = this.mailMessageId;
    } else {
      json[r'mailMessageId'] = null;
    }
      json[r'complaintRecipient'] = this.complaintRecipient;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [Complaint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Complaint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Complaint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Complaint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Complaint(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId'),
        eventType: mapValueOfType<String>(json, r'eventType'),
        mailSource: mapValueOfType<String>(json, r'mailSource'),
        mailMessageId: mapValueOfType<String>(json, r'mailMessageId'),
        complaintRecipient: mapValueOfType<String>(json, r'complaintRecipient')!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<Complaint>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Complaint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Complaint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Complaint> mapFromJson(dynamic json) {
    final map = <String, Complaint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Complaint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Complaint-objects as value to a dart map
  static Map<String, List<Complaint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Complaint>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Complaint.listFromJson(entry.value, growable: growable,);
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
    'complaintRecipient',
    'createdAt',
    'updatedAt',
  };
}

