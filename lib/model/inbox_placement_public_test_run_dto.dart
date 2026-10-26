//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementPublicTestRunDto {
  /// Returns a new [InboxPlacementPublicTestRunDto] instance.
  InboxPlacementPublicTestRunDto({
    required this.id,
    this.status,
    this.reportStatus,
    this.requestedSegment,
    this.seedlistProfile,
    this.senderDomain,
    this.fromEmail,
    this.subjectHint,
    required this.totalTargets,
    required this.matchedTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.notReceivedTargets,
    this.startedAt,
    this.firstMatchAt,
    this.completedAt,
    this.expiresAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String? status;

  String? reportStatus;

  String? requestedSegment;

  String? seedlistProfile;

  String? senderDomain;

  String? fromEmail;

  String? subjectHint;

  int totalTargets;

  int matchedTargets;

  int inboxTargets;

  int spamTargets;

  int notReceivedTargets;

  DateTime? startedAt;

  DateTime? firstMatchAt;

  DateTime? completedAt;

  DateTime? expiresAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementPublicTestRunDto &&
     other.id == id &&
     other.status == status &&
     other.reportStatus == reportStatus &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.subjectHint == subjectHint &&
     other.totalTargets == totalTargets &&
     other.matchedTargets == matchedTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.notReceivedTargets == notReceivedTargets &&
     other.startedAt == startedAt &&
     other.firstMatchAt == firstMatchAt &&
     other.completedAt == completedAt &&
     other.expiresAt == expiresAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (reportStatus == null ? 0 : reportStatus!.hashCode) +
    (requestedSegment == null ? 0 : requestedSegment!.hashCode) +
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (subjectHint == null ? 0 : subjectHint!.hashCode) +
    (totalTargets.hashCode) +
    (matchedTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (notReceivedTargets.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (firstMatchAt == null ? 0 : firstMatchAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'InboxPlacementPublicTestRunDto[id=$id, status=$status, reportStatus=$reportStatus, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, senderDomain=$senderDomain, fromEmail=$fromEmail, subjectHint=$subjectHint, totalTargets=$totalTargets, matchedTargets=$matchedTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, notReceivedTargets=$notReceivedTargets, startedAt=$startedAt, firstMatchAt=$firstMatchAt, completedAt=$completedAt, expiresAt=$expiresAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.reportStatus != null) {
      json[r'reportStatus'] = this.reportStatus;
    } else {
      json[r'reportStatus'] = null;
    }
    if (this.requestedSegment != null) {
      json[r'requestedSegment'] = this.requestedSegment;
    } else {
      json[r'requestedSegment'] = null;
    }
    if (this.seedlistProfile != null) {
      json[r'seedlistProfile'] = this.seedlistProfile;
    } else {
      json[r'seedlistProfile'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
    if (this.subjectHint != null) {
      json[r'subjectHint'] = this.subjectHint;
    } else {
      json[r'subjectHint'] = null;
    }
      json[r'totalTargets'] = this.totalTargets;
      json[r'matchedTargets'] = this.matchedTargets;
      json[r'inboxTargets'] = this.inboxTargets;
      json[r'spamTargets'] = this.spamTargets;
      json[r'notReceivedTargets'] = this.notReceivedTargets;
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.firstMatchAt != null) {
      json[r'firstMatchAt'] = this.firstMatchAt!.toUtc().toIso8601String();
    } else {
      json[r'firstMatchAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxPlacementPublicTestRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementPublicTestRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementPublicTestRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementPublicTestRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementPublicTestRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        status: mapValueOfType<String>(json, r'status'),
        reportStatus: mapValueOfType<String>(json, r'reportStatus'),
        requestedSegment: mapValueOfType<String>(json, r'requestedSegment'),
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        subjectHint: mapValueOfType<String>(json, r'subjectHint'),
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        matchedTargets: mapValueOfType<int>(json, r'matchedTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
        startedAt: mapDateTime(json, r'startedAt', ''),
        firstMatchAt: mapDateTime(json, r'firstMatchAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<InboxPlacementPublicTestRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementPublicTestRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementPublicTestRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementPublicTestRunDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementPublicTestRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementPublicTestRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementPublicTestRunDto-objects as value to a dart map
  static Map<String, List<InboxPlacementPublicTestRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementPublicTestRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementPublicTestRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'totalTargets',
    'matchedTargets',
    'inboxTargets',
    'spamTargets',
    'notReceivedTargets',
    'createdAt',
    'updatedAt',
  };
}

