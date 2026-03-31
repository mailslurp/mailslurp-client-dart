//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogEventDto {
  /// Returns a new [AuditLogEventDto] instance.
  AuditLogEventDto({
    required this.tenantId,
    this.dt,
    required this.eventId,
    required this.eventTs,
    required this.action,
    this.userId,
    this.actorUserId,
    this.targetUserId,
    this.resourceType,
    this.resourceId,
    this.outcome,
    this.requestId,
    this.ipAddress,
    this.metadataJson,
  });

  String tenantId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dt;

  String eventId;

  DateTime eventTs;

  String action;

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
  String? actorUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetUserId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resourceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? outcome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? metadataJson;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLogEventDto &&
     other.tenantId == tenantId &&
     other.dt == dt &&
     other.eventId == eventId &&
     other.eventTs == eventTs &&
     other.action == action &&
     other.userId == userId &&
     other.actorUserId == actorUserId &&
     other.targetUserId == targetUserId &&
     other.resourceType == resourceType &&
     other.resourceId == resourceId &&
     other.outcome == outcome &&
     other.requestId == requestId &&
     other.ipAddress == ipAddress &&
     other.metadataJson == metadataJson;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (tenantId.hashCode) +
    (dt == null ? 0 : dt!.hashCode) +
    (eventId.hashCode) +
    (eventTs.hashCode) +
    (action.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (actorUserId == null ? 0 : actorUserId!.hashCode) +
    (targetUserId == null ? 0 : targetUserId!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (outcome == null ? 0 : outcome!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (metadataJson == null ? 0 : metadataJson!.hashCode);

  @override
  String toString() => 'AuditLogEventDto[tenantId=$tenantId, dt=$dt, eventId=$eventId, eventTs=$eventTs, action=$action, userId=$userId, actorUserId=$actorUserId, targetUserId=$targetUserId, resourceType=$resourceType, resourceId=$resourceId, outcome=$outcome, requestId=$requestId, ipAddress=$ipAddress, metadataJson=$metadataJson]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'tenantId'] = this.tenantId;
    if (this.dt != null) {
      json[r'dt'] = this.dt;
    } else {
      json[r'dt'] = null;
    }
      json[r'eventId'] = this.eventId;
      json[r'eventTs'] = this.eventTs.toUtc().toIso8601String();
      json[r'action'] = this.action;
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    if (this.actorUserId != null) {
      json[r'actorUserId'] = this.actorUserId;
    } else {
      json[r'actorUserId'] = null;
    }
    if (this.targetUserId != null) {
      json[r'targetUserId'] = this.targetUserId;
    } else {
      json[r'targetUserId'] = null;
    }
    if (this.resourceType != null) {
      json[r'resourceType'] = this.resourceType;
    } else {
      json[r'resourceType'] = null;
    }
    if (this.resourceId != null) {
      json[r'resourceId'] = this.resourceId;
    } else {
      json[r'resourceId'] = null;
    }
    if (this.outcome != null) {
      json[r'outcome'] = this.outcome;
    } else {
      json[r'outcome'] = null;
    }
    if (this.requestId != null) {
      json[r'requestId'] = this.requestId;
    } else {
      json[r'requestId'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ipAddress'] = this.ipAddress;
    } else {
      json[r'ipAddress'] = null;
    }
    if (this.metadataJson != null) {
      json[r'metadataJson'] = this.metadataJson;
    } else {
      json[r'metadataJson'] = null;
    }
    return json;
  }

  /// Returns a new [AuditLogEventDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLogEventDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLogEventDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLogEventDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLogEventDto(
        tenantId: mapValueOfType<String>(json, r'tenantId')!,
        dt: mapValueOfType<String>(json, r'dt'),
        eventId: mapValueOfType<String>(json, r'eventId')!,
        eventTs: mapDateTime(json, r'eventTs', '')!,
        action: mapValueOfType<String>(json, r'action')!,
        userId: mapValueOfType<String>(json, r'userId'),
        actorUserId: mapValueOfType<String>(json, r'actorUserId'),
        targetUserId: mapValueOfType<String>(json, r'targetUserId'),
        resourceType: mapValueOfType<String>(json, r'resourceType'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
        outcome: mapValueOfType<String>(json, r'outcome'),
        requestId: mapValueOfType<String>(json, r'requestId'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        metadataJson: mapValueOfType<String>(json, r'metadataJson'),
      );
    }
    return null;
  }

  static List<AuditLogEventDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogEventDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogEventDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLogEventDto> mapFromJson(dynamic json) {
    final map = <String, AuditLogEventDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogEventDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLogEventDto-objects as value to a dart map
  static Map<String, List<AuditLogEventDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLogEventDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditLogEventDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'tenantId',
    'eventId',
    'eventTs',
    'action',
  };
}

