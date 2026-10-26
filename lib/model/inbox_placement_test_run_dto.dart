//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementTestRunDto {
  /// Returns a new [InboxPlacementTestRunDto] instance.
  InboxPlacementTestRunDto({
    required this.id,
    required this.remoteTestId,
    this.mode,
    this.status,
    this.reportStatus,
    this.requestedSegment,
    this.seedlistProfile,
    this.senderDomain,
    this.fromEmail,
    this.subjectHint,
    this.trackingToken,
    this.seedAddresses = const [],
    this.seedAddressFormats = const {},
    required this.totalTargets,
    required this.matchedTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.notReceivedTargets,
    this.startedAt,
    this.firstMatchAt,
    this.completedAt,
    this.expiresAt,
    this.lastEventAt,
    this.lastSyncedAt,
    this.billedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String remoteTestId;

  String? mode;

  String? status;

  String? reportStatus;

  String? requestedSegment;

  String? seedlistProfile;

  String? senderDomain;

  String? fromEmail;

  String? subjectHint;

  String? trackingToken;

  List<String> seedAddresses;

  Map<String, String> seedAddressFormats;

  int totalTargets;

  int matchedTargets;

  int inboxTargets;

  int spamTargets;

  int notReceivedTargets;

  DateTime? startedAt;

  DateTime? firstMatchAt;

  DateTime? completedAt;

  DateTime? expiresAt;

  DateTime? lastEventAt;

  DateTime? lastSyncedAt;

  DateTime? billedAt;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementTestRunDto &&
     other.id == id &&
     other.remoteTestId == remoteTestId &&
     other.mode == mode &&
     other.status == status &&
     other.reportStatus == reportStatus &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.subjectHint == subjectHint &&
     other.trackingToken == trackingToken &&
     other.seedAddresses == seedAddresses &&
     other.seedAddressFormats == seedAddressFormats &&
     other.totalTargets == totalTargets &&
     other.matchedTargets == matchedTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.notReceivedTargets == notReceivedTargets &&
     other.startedAt == startedAt &&
     other.firstMatchAt == firstMatchAt &&
     other.completedAt == completedAt &&
     other.expiresAt == expiresAt &&
     other.lastEventAt == lastEventAt &&
     other.lastSyncedAt == lastSyncedAt &&
     other.billedAt == billedAt &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (remoteTestId.hashCode) +
    (mode == null ? 0 : mode!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (reportStatus == null ? 0 : reportStatus!.hashCode) +
    (requestedSegment == null ? 0 : requestedSegment!.hashCode) +
    (seedlistProfile == null ? 0 : seedlistProfile!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (subjectHint == null ? 0 : subjectHint!.hashCode) +
    (trackingToken == null ? 0 : trackingToken!.hashCode) +
    (seedAddresses.hashCode) +
    (seedAddressFormats.hashCode) +
    (totalTargets.hashCode) +
    (matchedTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (notReceivedTargets.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (firstMatchAt == null ? 0 : firstMatchAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode) +
    (lastEventAt == null ? 0 : lastEventAt!.hashCode) +
    (lastSyncedAt == null ? 0 : lastSyncedAt!.hashCode) +
    (billedAt == null ? 0 : billedAt!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'InboxPlacementTestRunDto[id=$id, remoteTestId=$remoteTestId, mode=$mode, status=$status, reportStatus=$reportStatus, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, senderDomain=$senderDomain, fromEmail=$fromEmail, subjectHint=$subjectHint, trackingToken=$trackingToken, seedAddresses=$seedAddresses, seedAddressFormats=$seedAddressFormats, totalTargets=$totalTargets, matchedTargets=$matchedTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, notReceivedTargets=$notReceivedTargets, startedAt=$startedAt, firstMatchAt=$firstMatchAt, completedAt=$completedAt, expiresAt=$expiresAt, lastEventAt=$lastEventAt, lastSyncedAt=$lastSyncedAt, billedAt=$billedAt, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'remoteTestId'] = this.remoteTestId;
    if (this.mode != null) {
      json[r'mode'] = this.mode;
    } else {
      json[r'mode'] = null;
    }
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
    if (this.trackingToken != null) {
      json[r'trackingToken'] = this.trackingToken;
    } else {
      json[r'trackingToken'] = null;
    }
      json[r'seedAddresses'] = this.seedAddresses;
      json[r'seedAddressFormats'] = this.seedAddressFormats;
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
    if (this.lastEventAt != null) {
      json[r'lastEventAt'] = this.lastEventAt!.toUtc().toIso8601String();
    } else {
      json[r'lastEventAt'] = null;
    }
    if (this.lastSyncedAt != null) {
      json[r'lastSyncedAt'] = this.lastSyncedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastSyncedAt'] = null;
    }
    if (this.billedAt != null) {
      json[r'billedAt'] = this.billedAt!.toUtc().toIso8601String();
    } else {
      json[r'billedAt'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [InboxPlacementTestRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementTestRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementTestRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementTestRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementTestRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        remoteTestId: mapValueOfType<String>(json, r'remoteTestId')!,
        mode: mapValueOfType<String>(json, r'mode'),
        status: mapValueOfType<String>(json, r'status'),
        reportStatus: mapValueOfType<String>(json, r'reportStatus'),
        requestedSegment: mapValueOfType<String>(json, r'requestedSegment'),
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        subjectHint: mapValueOfType<String>(json, r'subjectHint'),
        trackingToken: mapValueOfType<String>(json, r'trackingToken'),
        seedAddresses: json[r'seedAddresses'] is List
            ? (json[r'seedAddresses'] as List).cast<String>()
            : const [],
        seedAddressFormats: mapCastOfType<String, String>(json, r'seedAddressFormats')!,
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        matchedTargets: mapValueOfType<int>(json, r'matchedTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
        startedAt: mapDateTime(json, r'startedAt', ''),
        firstMatchAt: mapDateTime(json, r'firstMatchAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
        lastEventAt: mapDateTime(json, r'lastEventAt', ''),
        lastSyncedAt: mapDateTime(json, r'lastSyncedAt', ''),
        billedAt: mapDateTime(json, r'billedAt', ''),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<InboxPlacementTestRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementTestRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementTestRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementTestRunDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementTestRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementTestRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementTestRunDto-objects as value to a dart map
  static Map<String, List<InboxPlacementTestRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementTestRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementTestRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'remoteTestId',
    'seedAddresses',
    'seedAddressFormats',
    'totalTargets',
    'matchedTargets',
    'inboxTargets',
    'spamTargets',
    'notReceivedTargets',
    'createdAt',
    'updatedAt',
  };
}

