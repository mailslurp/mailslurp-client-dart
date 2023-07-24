//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliveryStatusDto {
  /// Returns a new [DeliveryStatusDto] instance.
  DeliveryStatusDto({
    required this.id,
    required this.userId,
    this.sentId,
    this.remoteMtaIp,
    this.inboxId,
    this.reportingMta,
    this.recipients = const [],
    this.smtpResponse,
    this.smtpStatusCode,
    this.processingTimeMillis,
    this.received,
    this.subject,
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
  String? sentId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remoteMtaIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? inboxId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reportingMta;

  List<String> recipients;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smtpResponse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? smtpStatusCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? processingTimeMillis;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? received;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliveryStatusDto &&
     other.id == id &&
     other.userId == userId &&
     other.sentId == sentId &&
     other.remoteMtaIp == remoteMtaIp &&
     other.inboxId == inboxId &&
     other.reportingMta == reportingMta &&
     other.recipients == recipients &&
     other.smtpResponse == smtpResponse &&
     other.smtpStatusCode == smtpStatusCode &&
     other.processingTimeMillis == processingTimeMillis &&
     other.received == received &&
     other.subject == subject &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (sentId == null ? 0 : sentId!.hashCode) +
    (remoteMtaIp == null ? 0 : remoteMtaIp!.hashCode) +
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (reportingMta == null ? 0 : reportingMta!.hashCode) +
    (recipients.hashCode) +
    (smtpResponse == null ? 0 : smtpResponse!.hashCode) +
    (smtpStatusCode == null ? 0 : smtpStatusCode!.hashCode) +
    (processingTimeMillis == null ? 0 : processingTimeMillis!.hashCode) +
    (received == null ? 0 : received!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'DeliveryStatusDto[id=$id, userId=$userId, sentId=$sentId, remoteMtaIp=$remoteMtaIp, inboxId=$inboxId, reportingMta=$reportingMta, recipients=$recipients, smtpResponse=$smtpResponse, smtpStatusCode=$smtpStatusCode, processingTimeMillis=$processingTimeMillis, received=$received, subject=$subject, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
    if (this.sentId != null) {
      json[r'sentId'] = this.sentId;
    } else {
      json[r'sentId'] = null;
    }
    if (this.remoteMtaIp != null) {
      json[r'remoteMtaIp'] = this.remoteMtaIp;
    } else {
      json[r'remoteMtaIp'] = null;
    }
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
    if (this.reportingMta != null) {
      json[r'reportingMta'] = this.reportingMta;
    } else {
      json[r'reportingMta'] = null;
    }
      json[r'recipients'] = this.recipients;
    if (this.smtpResponse != null) {
      json[r'smtpResponse'] = this.smtpResponse;
    } else {
      json[r'smtpResponse'] = null;
    }
    if (this.smtpStatusCode != null) {
      json[r'smtpStatusCode'] = this.smtpStatusCode;
    } else {
      json[r'smtpStatusCode'] = null;
    }
    if (this.processingTimeMillis != null) {
      json[r'processingTimeMillis'] = this.processingTimeMillis;
    } else {
      json[r'processingTimeMillis'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received!.toUtc().toIso8601String();
    } else {
      json[r'received'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeliveryStatusDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliveryStatusDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliveryStatusDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliveryStatusDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliveryStatusDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        sentId: mapValueOfType<String>(json, r'sentId'),
        remoteMtaIp: mapValueOfType<String>(json, r'remoteMtaIp'),
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        reportingMta: mapValueOfType<String>(json, r'reportingMta'),
        recipients: json[r'recipients'] is List
            ? (json[r'recipients'] as List).cast<String>()
            : const [],
        smtpResponse: mapValueOfType<String>(json, r'smtpResponse'),
        smtpStatusCode: mapValueOfType<int>(json, r'smtpStatusCode'),
        processingTimeMillis: mapValueOfType<int>(json, r'processingTimeMillis'),
        received: mapDateTime(json, r'received', ''),
        subject: mapValueOfType<String>(json, r'subject'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<DeliveryStatusDto>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliveryStatusDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliveryStatusDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliveryStatusDto> mapFromJson(dynamic json) {
    final map = <String, DeliveryStatusDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryStatusDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliveryStatusDto-objects as value to a dart map
  static Map<String, List<DeliveryStatusDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliveryStatusDto>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliveryStatusDto.listFromJson(entry.value, growable: growable,);
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
    'userId',
    'createdAt',
    'updatedAt',
  };
}

