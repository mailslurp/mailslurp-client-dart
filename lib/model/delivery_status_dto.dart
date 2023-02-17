//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliveryStatusDto {
  /// Returns a new [DeliveryStatusDto] instance.
  DeliveryStatusDto({
    @required this.id,
    @required this.userId,
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
    @required this.createdAt,
    @required this.updatedAt,
  });

  String id;

  String userId;

  String sentId;

  String remoteMtaIp;

  String inboxId;

  String reportingMta;

  List<String> recipients;

  String smtpResponse;

  int smtpStatusCode;

  int processingTimeMillis;

  DateTime received;

  String subject;

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
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (sentId == null ? 0 : sentId.hashCode) +
    (remoteMtaIp == null ? 0 : remoteMtaIp.hashCode) +
    (inboxId == null ? 0 : inboxId.hashCode) +
    (reportingMta == null ? 0 : reportingMta.hashCode) +
    (recipients == null ? 0 : recipients.hashCode) +
    (smtpResponse == null ? 0 : smtpResponse.hashCode) +
    (smtpStatusCode == null ? 0 : smtpStatusCode.hashCode) +
    (processingTimeMillis == null ? 0 : processingTimeMillis.hashCode) +
    (received == null ? 0 : received.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode);

  @override
  String toString() => 'DeliveryStatusDto[id=$id, userId=$userId, sentId=$sentId, remoteMtaIp=$remoteMtaIp, inboxId=$inboxId, reportingMta=$reportingMta, recipients=$recipients, smtpResponse=$smtpResponse, smtpStatusCode=$smtpStatusCode, processingTimeMillis=$processingTimeMillis, received=$received, subject=$subject, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'userId'] = userId;
    if (sentId != null) {
      json[r'sentId'] = sentId;
    }
    if (remoteMtaIp != null) {
      json[r'remoteMtaIp'] = remoteMtaIp;
    }
    if (inboxId != null) {
      json[r'inboxId'] = inboxId;
    }
    if (reportingMta != null) {
      json[r'reportingMta'] = reportingMta;
    }
    if (recipients != null) {
      json[r'recipients'] = recipients;
    }
    if (smtpResponse != null) {
      json[r'smtpResponse'] = smtpResponse;
    }
    if (smtpStatusCode != null) {
      json[r'smtpStatusCode'] = smtpStatusCode;
    }
    if (processingTimeMillis != null) {
      json[r'processingTimeMillis'] = processingTimeMillis;
    }
    if (received != null) {
      json[r'received'] = received.toUtc().toIso8601String();
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [DeliveryStatusDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DeliveryStatusDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DeliveryStatusDto(
        id: json[r'id'],
        userId: json[r'userId'],
        sentId: json[r'sentId'],
        remoteMtaIp: json[r'remoteMtaIp'],
        inboxId: json[r'inboxId'],
        reportingMta: json[r'reportingMta'],
        recipients: json[r'recipients'] == null
          ? null
          : (json[r'recipients'] as List).cast<String>(),
        smtpResponse: json[r'smtpResponse'],
        smtpStatusCode: json[r'smtpStatusCode'],
        processingTimeMillis: json[r'processingTimeMillis'],
        received: json[r'received'] == null
          ? null
          : DateTime.parse(json[r'received']),
        subject: json[r'subject'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
    );

  static List<DeliveryStatusDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DeliveryStatusDto>[]
      : json.map((v) => DeliveryStatusDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, DeliveryStatusDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DeliveryStatusDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DeliveryStatusDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DeliveryStatusDto-objects as value to a dart map
  static Map<String, List<DeliveryStatusDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DeliveryStatusDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DeliveryStatusDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

