//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuditLogSearchOptions {
  /// Returns a new [AuditLogSearchOptions] instance.
  AuditLogSearchOptions({
    this.since,
    this.before,
    this.action,
    this.userId,
    this.actorUserId,
    this.targetUserId,
    this.resourceType,
    this.resourceId,
    this.outcome,
    this.requestId,
    this.ipAddress,
    this.eventId,
    this.pageSize,
    this.cursor,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? since;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? before;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

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
  String? eventId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cursor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuditLogSearchOptions &&
     other.since == since &&
     other.before == before &&
     other.action == action &&
     other.userId == userId &&
     other.actorUserId == actorUserId &&
     other.targetUserId == targetUserId &&
     other.resourceType == resourceType &&
     other.resourceId == resourceId &&
     other.outcome == outcome &&
     other.requestId == requestId &&
     other.ipAddress == ipAddress &&
     other.eventId == eventId &&
     other.pageSize == pageSize &&
     other.cursor == cursor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (since == null ? 0 : since!.hashCode) +
    (before == null ? 0 : before!.hashCode) +
    (action == null ? 0 : action!.hashCode) +
    (userId == null ? 0 : userId!.hashCode) +
    (actorUserId == null ? 0 : actorUserId!.hashCode) +
    (targetUserId == null ? 0 : targetUserId!.hashCode) +
    (resourceType == null ? 0 : resourceType!.hashCode) +
    (resourceId == null ? 0 : resourceId!.hashCode) +
    (outcome == null ? 0 : outcome!.hashCode) +
    (requestId == null ? 0 : requestId!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (eventId == null ? 0 : eventId!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (cursor == null ? 0 : cursor!.hashCode);

  @override
  String toString() => 'AuditLogSearchOptions[since=$since, before=$before, action=$action, userId=$userId, actorUserId=$actorUserId, targetUserId=$targetUserId, resourceType=$resourceType, resourceId=$resourceId, outcome=$outcome, requestId=$requestId, ipAddress=$ipAddress, eventId=$eventId, pageSize=$pageSize, cursor=$cursor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.since != null) {
      json[r'since'] = this.since!.toUtc().toIso8601String();
    } else {
      json[r'since'] = null;
    }
    if (this.before != null) {
      json[r'before'] = this.before!.toUtc().toIso8601String();
    } else {
      json[r'before'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
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
    if (this.eventId != null) {
      json[r'eventId'] = this.eventId;
    } else {
      json[r'eventId'] = null;
    }
    if (this.pageSize != null) {
      json[r'pageSize'] = this.pageSize;
    } else {
      json[r'pageSize'] = null;
    }
    if (this.cursor != null) {
      json[r'cursor'] = this.cursor;
    } else {
      json[r'cursor'] = null;
    }
    return json;
  }

  /// Returns a new [AuditLogSearchOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuditLogSearchOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AuditLogSearchOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AuditLogSearchOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AuditLogSearchOptions(
        since: mapDateTime(json, r'since', ''),
        before: mapDateTime(json, r'before', ''),
        action: mapValueOfType<String>(json, r'action'),
        userId: mapValueOfType<String>(json, r'userId'),
        actorUserId: mapValueOfType<String>(json, r'actorUserId'),
        targetUserId: mapValueOfType<String>(json, r'targetUserId'),
        resourceType: mapValueOfType<String>(json, r'resourceType'),
        resourceId: mapValueOfType<String>(json, r'resourceId'),
        outcome: mapValueOfType<String>(json, r'outcome'),
        requestId: mapValueOfType<String>(json, r'requestId'),
        ipAddress: mapValueOfType<String>(json, r'ipAddress'),
        eventId: mapValueOfType<String>(json, r'eventId'),
        pageSize: mapValueOfType<int>(json, r'pageSize'),
        cursor: mapValueOfType<String>(json, r'cursor'),
      );
    }
    return null;
  }

  static List<AuditLogSearchOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuditLogSearchOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuditLogSearchOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuditLogSearchOptions> mapFromJson(dynamic json) {
    final map = <String, AuditLogSearchOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuditLogSearchOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuditLogSearchOptions-objects as value to a dart map
  static Map<String, List<AuditLogSearchOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuditLogSearchOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuditLogSearchOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

