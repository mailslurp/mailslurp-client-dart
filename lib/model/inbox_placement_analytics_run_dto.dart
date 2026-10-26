//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalyticsRunDto {
  /// Returns a new [InboxPlacementAnalyticsRunDto] instance.
  InboxPlacementAnalyticsRunDto({
    required this.id,
    required this.remoteTestId,
    this.senderDomain,
    this.fromEmail,
    this.status,
    this.reportStatus,
    required this.createdAt,
    this.startedAt,
    this.completedAt,
    required this.totalTargets,
    required this.matchedTargets,
    required this.deliveredTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.promotionTargets,
    required this.socialTargets,
    required this.updateTargets,
    required this.forumTargets,
    required this.otherFolderTargets,
    required this.notReceivedTargets,
    required this.deliveredRatePercentage,
    required this.inboxRatePercentage,
    required this.spamRatePercentage,
    required this.promotionRatePercentage,
    required this.notReceivedRatePercentage,
  });

  String id;

  String remoteTestId;

  String? senderDomain;

  String? fromEmail;

  String? status;

  String? reportStatus;

  DateTime createdAt;

  DateTime? startedAt;

  DateTime? completedAt;

  int totalTargets;

  int matchedTargets;

  int deliveredTargets;

  int inboxTargets;

  int spamTargets;

  int promotionTargets;

  int socialTargets;

  int updateTargets;

  int forumTargets;

  int otherFolderTargets;

  int notReceivedTargets;

  double deliveredRatePercentage;

  double inboxRatePercentage;

  double spamRatePercentage;

  double promotionRatePercentage;

  double notReceivedRatePercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalyticsRunDto &&
     other.id == id &&
     other.remoteTestId == remoteTestId &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.status == status &&
     other.reportStatus == reportStatus &&
     other.createdAt == createdAt &&
     other.startedAt == startedAt &&
     other.completedAt == completedAt &&
     other.totalTargets == totalTargets &&
     other.matchedTargets == matchedTargets &&
     other.deliveredTargets == deliveredTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.promotionTargets == promotionTargets &&
     other.socialTargets == socialTargets &&
     other.updateTargets == updateTargets &&
     other.forumTargets == forumTargets &&
     other.otherFolderTargets == otherFolderTargets &&
     other.notReceivedTargets == notReceivedTargets &&
     other.deliveredRatePercentage == deliveredRatePercentage &&
     other.inboxRatePercentage == inboxRatePercentage &&
     other.spamRatePercentage == spamRatePercentage &&
     other.promotionRatePercentage == promotionRatePercentage &&
     other.notReceivedRatePercentage == notReceivedRatePercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (remoteTestId.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (reportStatus == null ? 0 : reportStatus!.hashCode) +
    (createdAt.hashCode) +
    (startedAt == null ? 0 : startedAt!.hashCode) +
    (completedAt == null ? 0 : completedAt!.hashCode) +
    (totalTargets.hashCode) +
    (matchedTargets.hashCode) +
    (deliveredTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (promotionTargets.hashCode) +
    (socialTargets.hashCode) +
    (updateTargets.hashCode) +
    (forumTargets.hashCode) +
    (otherFolderTargets.hashCode) +
    (notReceivedTargets.hashCode) +
    (deliveredRatePercentage.hashCode) +
    (inboxRatePercentage.hashCode) +
    (spamRatePercentage.hashCode) +
    (promotionRatePercentage.hashCode) +
    (notReceivedRatePercentage.hashCode);

  @override
  String toString() => 'InboxPlacementAnalyticsRunDto[id=$id, remoteTestId=$remoteTestId, senderDomain=$senderDomain, fromEmail=$fromEmail, status=$status, reportStatus=$reportStatus, createdAt=$createdAt, startedAt=$startedAt, completedAt=$completedAt, totalTargets=$totalTargets, matchedTargets=$matchedTargets, deliveredTargets=$deliveredTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, promotionTargets=$promotionTargets, socialTargets=$socialTargets, updateTargets=$updateTargets, forumTargets=$forumTargets, otherFolderTargets=$otherFolderTargets, notReceivedTargets=$notReceivedTargets, deliveredRatePercentage=$deliveredRatePercentage, inboxRatePercentage=$inboxRatePercentage, spamRatePercentage=$spamRatePercentage, promotionRatePercentage=$promotionRatePercentage, notReceivedRatePercentage=$notReceivedRatePercentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'remoteTestId'] = this.remoteTestId;
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
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.startedAt != null) {
      json[r'startedAt'] = this.startedAt!.toUtc().toIso8601String();
    } else {
      json[r'startedAt'] = null;
    }
    if (this.completedAt != null) {
      json[r'completedAt'] = this.completedAt!.toUtc().toIso8601String();
    } else {
      json[r'completedAt'] = null;
    }
      json[r'totalTargets'] = this.totalTargets;
      json[r'matchedTargets'] = this.matchedTargets;
      json[r'deliveredTargets'] = this.deliveredTargets;
      json[r'inboxTargets'] = this.inboxTargets;
      json[r'spamTargets'] = this.spamTargets;
      json[r'promotionTargets'] = this.promotionTargets;
      json[r'socialTargets'] = this.socialTargets;
      json[r'updateTargets'] = this.updateTargets;
      json[r'forumTargets'] = this.forumTargets;
      json[r'otherFolderTargets'] = this.otherFolderTargets;
      json[r'notReceivedTargets'] = this.notReceivedTargets;
      json[r'deliveredRatePercentage'] = this.deliveredRatePercentage;
      json[r'inboxRatePercentage'] = this.inboxRatePercentage;
      json[r'spamRatePercentage'] = this.spamRatePercentage;
      json[r'promotionRatePercentage'] = this.promotionRatePercentage;
      json[r'notReceivedRatePercentage'] = this.notReceivedRatePercentage;
    return json;
  }

  /// Returns a new [InboxPlacementAnalyticsRunDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalyticsRunDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalyticsRunDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalyticsRunDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalyticsRunDto(
        id: mapValueOfType<String>(json, r'id')!,
        remoteTestId: mapValueOfType<String>(json, r'remoteTestId')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        status: mapValueOfType<String>(json, r'status'),
        reportStatus: mapValueOfType<String>(json, r'reportStatus'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        startedAt: mapDateTime(json, r'startedAt', ''),
        completedAt: mapDateTime(json, r'completedAt', ''),
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        matchedTargets: mapValueOfType<int>(json, r'matchedTargets')!,
        deliveredTargets: mapValueOfType<int>(json, r'deliveredTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        promotionTargets: mapValueOfType<int>(json, r'promotionTargets')!,
        socialTargets: mapValueOfType<int>(json, r'socialTargets')!,
        updateTargets: mapValueOfType<int>(json, r'updateTargets')!,
        forumTargets: mapValueOfType<int>(json, r'forumTargets')!,
        otherFolderTargets: mapValueOfType<int>(json, r'otherFolderTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
        deliveredRatePercentage: mapValueOfType<double>(json, r'deliveredRatePercentage')!,
        inboxRatePercentage: mapValueOfType<double>(json, r'inboxRatePercentage')!,
        spamRatePercentage: mapValueOfType<double>(json, r'spamRatePercentage')!,
        promotionRatePercentage: mapValueOfType<double>(json, r'promotionRatePercentage')!,
        notReceivedRatePercentage: mapValueOfType<double>(json, r'notReceivedRatePercentage')!,
      );
    }
    return null;
  }

  static List<InboxPlacementAnalyticsRunDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsRunDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsRunDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalyticsRunDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalyticsRunDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalyticsRunDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalyticsRunDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalyticsRunDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalyticsRunDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalyticsRunDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'remoteTestId',
    'createdAt',
    'totalTargets',
    'matchedTargets',
    'deliveredTargets',
    'inboxTargets',
    'spamTargets',
    'promotionTargets',
    'socialTargets',
    'updateTargets',
    'forumTargets',
    'otherFolderTargets',
    'notReceivedTargets',
    'deliveredRatePercentage',
    'inboxRatePercentage',
    'spamRatePercentage',
    'promotionRatePercentage',
    'notReceivedRatePercentage',
  };
}

