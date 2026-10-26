//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuditDto {
  /// Returns a new [EmailAuditDto] instance.
  EmailAuditDto({
    required this.id,
    required this.userId,
    this.emailId,
    this.fromAddress,
    this.recipient,
    this.subject,
    required this.analysis,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String userId;

  String? emailId;

  String? fromAddress;

  String? recipient;

  String? subject;

  EmailAuditAnalysisResult analysis;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAuditDto &&
     other.id == id &&
     other.userId == userId &&
     other.emailId == emailId &&
     other.fromAddress == fromAddress &&
     other.recipient == recipient &&
     other.subject == subject &&
     other.analysis == analysis &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (emailId == null ? 0 : emailId!.hashCode) +
    (fromAddress == null ? 0 : fromAddress!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (analysis.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'EmailAuditDto[id=$id, userId=$userId, emailId=$emailId, fromAddress=$fromAddress, recipient=$recipient, subject=$subject, analysis=$analysis, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.emailId != null) {
      json[r'emailId'] = this.emailId;
    } else {
      json[r'emailId'] = null;
    }
    if (this.fromAddress != null) {
      json[r'fromAddress'] = this.fromAddress;
    } else {
      json[r'fromAddress'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'analysis'] = this.analysis;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [EmailAuditDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuditDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAuditDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAuditDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuditDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        emailId: mapValueOfType<String>(json, r'emailId'),
        fromAddress: mapValueOfType<String>(json, r'fromAddress'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        subject: mapValueOfType<String>(json, r'subject'),
        analysis: EmailAuditAnalysisResult.fromJson(json[r'analysis'])!,
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<EmailAuditDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuditDto> mapFromJson(dynamic json) {
    final map = <String, EmailAuditDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuditDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuditDto-objects as value to a dart map
  static Map<String, List<EmailAuditDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAuditDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuditDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'analysis',
    'createdAt',
    'updatedAt',
  };
}

