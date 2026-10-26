//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalyticsSummaryDto {
  /// Returns a new [InboxPlacementAnalyticsSummaryDto] instance.
  InboxPlacementAnalyticsSummaryDto({
    required this.totalRuns,
    required this.completedRuns,
    required this.activeRuns,
    required this.failedRuns,
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
    required this.averageDeliveredRatePercentage,
    required this.averageInboxRatePercentage,
    required this.averageSpamRatePercentage,
    required this.averagePromotionRatePercentage,
    required this.averageNotReceivedRatePercentage,
  });

  int totalRuns;

  int completedRuns;

  int activeRuns;

  int failedRuns;

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

  double averageDeliveredRatePercentage;

  double averageInboxRatePercentage;

  double averageSpamRatePercentage;

  double averagePromotionRatePercentage;

  double averageNotReceivedRatePercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalyticsSummaryDto &&
     other.totalRuns == totalRuns &&
     other.completedRuns == completedRuns &&
     other.activeRuns == activeRuns &&
     other.failedRuns == failedRuns &&
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
     other.averageDeliveredRatePercentage == averageDeliveredRatePercentage &&
     other.averageInboxRatePercentage == averageInboxRatePercentage &&
     other.averageSpamRatePercentage == averageSpamRatePercentage &&
     other.averagePromotionRatePercentage == averagePromotionRatePercentage &&
     other.averageNotReceivedRatePercentage == averageNotReceivedRatePercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalRuns.hashCode) +
    (completedRuns.hashCode) +
    (activeRuns.hashCode) +
    (failedRuns.hashCode) +
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
    (averageDeliveredRatePercentage.hashCode) +
    (averageInboxRatePercentage.hashCode) +
    (averageSpamRatePercentage.hashCode) +
    (averagePromotionRatePercentage.hashCode) +
    (averageNotReceivedRatePercentage.hashCode);

  @override
  String toString() => 'InboxPlacementAnalyticsSummaryDto[totalRuns=$totalRuns, completedRuns=$completedRuns, activeRuns=$activeRuns, failedRuns=$failedRuns, totalTargets=$totalTargets, matchedTargets=$matchedTargets, deliveredTargets=$deliveredTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, promotionTargets=$promotionTargets, socialTargets=$socialTargets, updateTargets=$updateTargets, forumTargets=$forumTargets, otherFolderTargets=$otherFolderTargets, notReceivedTargets=$notReceivedTargets, averageDeliveredRatePercentage=$averageDeliveredRatePercentage, averageInboxRatePercentage=$averageInboxRatePercentage, averageSpamRatePercentage=$averageSpamRatePercentage, averagePromotionRatePercentage=$averagePromotionRatePercentage, averageNotReceivedRatePercentage=$averageNotReceivedRatePercentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalRuns'] = this.totalRuns;
      json[r'completedRuns'] = this.completedRuns;
      json[r'activeRuns'] = this.activeRuns;
      json[r'failedRuns'] = this.failedRuns;
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
      json[r'averageDeliveredRatePercentage'] = this.averageDeliveredRatePercentage;
      json[r'averageInboxRatePercentage'] = this.averageInboxRatePercentage;
      json[r'averageSpamRatePercentage'] = this.averageSpamRatePercentage;
      json[r'averagePromotionRatePercentage'] = this.averagePromotionRatePercentage;
      json[r'averageNotReceivedRatePercentage'] = this.averageNotReceivedRatePercentage;
    return json;
  }

  /// Returns a new [InboxPlacementAnalyticsSummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalyticsSummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalyticsSummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalyticsSummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalyticsSummaryDto(
        totalRuns: mapValueOfType<int>(json, r'totalRuns')!,
        completedRuns: mapValueOfType<int>(json, r'completedRuns')!,
        activeRuns: mapValueOfType<int>(json, r'activeRuns')!,
        failedRuns: mapValueOfType<int>(json, r'failedRuns')!,
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
        averageDeliveredRatePercentage: mapValueOfType<double>(json, r'averageDeliveredRatePercentage')!,
        averageInboxRatePercentage: mapValueOfType<double>(json, r'averageInboxRatePercentage')!,
        averageSpamRatePercentage: mapValueOfType<double>(json, r'averageSpamRatePercentage')!,
        averagePromotionRatePercentage: mapValueOfType<double>(json, r'averagePromotionRatePercentage')!,
        averageNotReceivedRatePercentage: mapValueOfType<double>(json, r'averageNotReceivedRatePercentage')!,
      );
    }
    return null;
  }

  static List<InboxPlacementAnalyticsSummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsSummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsSummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalyticsSummaryDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalyticsSummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalyticsSummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalyticsSummaryDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalyticsSummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalyticsSummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalyticsSummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalRuns',
    'completedRuns',
    'activeRuns',
    'failedRuns',
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
    'averageDeliveredRatePercentage',
    'averageInboxRatePercentage',
    'averageSpamRatePercentage',
    'averagePromotionRatePercentage',
    'averageNotReceivedRatePercentage',
  };
}

