//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementRemoteTestSummaryDto {
  /// Returns a new [InboxPlacementRemoteTestSummaryDto] instance.
  InboxPlacementRemoteTestSummaryDto({
    required this.testId,
    required this.mode,
    required this.status,
    required this.reportStatus,
    required this.requestedSegment,
    required this.seedlistProfile,
    this.senderDomain,
    this.fromEmail,
    this.subjectHint,
    this.startedAt,
    this.expiresAt,
  });

  String testId;

  String mode;

  String status;

  String reportStatus;

  String requestedSegment;

  String seedlistProfile;

  String? senderDomain;

  String? fromEmail;

  String? subjectHint;

  DateTime? startedAt;

  DateTime? expiresAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementRemoteTestSummaryDto &&
     other.testId == testId &&
     other.mode == mode &&
     other.status == status &&
     other.reportStatus == reportStatus &&
     other.requestedSegment == requestedSegment &&
     other.seedlistProfile == seedlistProfile &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.subjectHint == subjectHint &&
     other.startedAt == startedAt &&
     other.expiresAt == expiresAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (testId.hashCode) +
    (mode.hashCode) +
    (status.hashCode) +
    (reportStatus.hashCode) +
    (requestedSegment.hashCode) +
    (seedlistProfile.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (subjectHint == null ? 0 : subjectHint!.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (expiresAt == null ? 0 : expiresAt!.hashCode);

  @override
  String toString() => 'InboxPlacementRemoteTestSummaryDto[testId=$testId, mode=$mode, status=$status, reportStatus=$reportStatus, requestedSegment=$requestedSegment, seedlistProfile=$seedlistProfile, senderDomain=$senderDomain, fromEmail=$fromEmail, subjectHint=$subjectHint, startedAt=$startedAt, expiresAt=$expiresAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'testId'] = this.testId;
      json[r'mode'] = this.mode;
      json[r'status'] = this.status;
      json[r'reportStatus'] = this.reportStatus;
      json[r'requestedSegment'] = this.requestedSegment;
      json[r'seedlistProfile'] = this.seedlistProfile;
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
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.expiresAt != null) {
      json[r'expiresAt'] = this.expiresAt!.toUtc().toIso8601String();
    } else {
      json[r'expiresAt'] = null;
    }
    return json;
  }

  /// Returns a new [InboxPlacementRemoteTestSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementRemoteTestSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementRemoteTestSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementRemoteTestSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementRemoteTestSummaryDto(
        testId: mapValueOfType<String>(json, r'testId')!,
        mode: mapValueOfType<String>(json, r'mode')!,
        status: mapValueOfType<String>(json, r'status')!,
        reportStatus: mapValueOfType<String>(json, r'reportStatus')!,
        requestedSegment: mapValueOfType<String>(json, r'requestedSegment')!,
        seedlistProfile: mapValueOfType<String>(json, r'seedlistProfile')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        subjectHint: mapValueOfType<String>(json, r'subjectHint'),
        startedAt: mapDateTime(json, r'startedAt', ''),
        expiresAt: mapDateTime(json, r'expiresAt', ''),
      );
    }
    return null;
  }

  static List<InboxPlacementRemoteTestSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementRemoteTestSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementRemoteTestSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementRemoteTestSummaryDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementRemoteTestSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementRemoteTestSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementRemoteTestSummaryDto-objects as value to a dart map
  static Map<String, List<InboxPlacementRemoteTestSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementRemoteTestSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementRemoteTestSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'testId',
    'mode',
    'status',
    'reportStatus',
    'requestedSegment',
    'seedlistProfile',
  };
}

