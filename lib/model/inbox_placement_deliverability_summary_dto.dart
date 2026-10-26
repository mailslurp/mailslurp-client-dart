//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementDeliverabilitySummaryDto {
  /// Returns a new [InboxPlacementDeliverabilitySummaryDto] instance.
  InboxPlacementDeliverabilitySummaryDto({
    required this.totalTargets,
    required this.matchedTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.notReceivedTargets,
  });

  int totalTargets;

  int matchedTargets;

  int inboxTargets;

  int spamTargets;

  int notReceivedTargets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementDeliverabilitySummaryDto &&
     other.totalTargets == totalTargets &&
     other.matchedTargets == matchedTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.notReceivedTargets == notReceivedTargets;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (totalTargets.hashCode) +
    (matchedTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (notReceivedTargets.hashCode);

  @override
  String toString() => 'InboxPlacementDeliverabilitySummaryDto[totalTargets=$totalTargets, matchedTargets=$matchedTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, notReceivedTargets=$notReceivedTargets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'totalTargets'] = this.totalTargets;
      json[r'matchedTargets'] = this.matchedTargets;
      json[r'inboxTargets'] = this.inboxTargets;
      json[r'spamTargets'] = this.spamTargets;
      json[r'notReceivedTargets'] = this.notReceivedTargets;
    return json;
  }

  /// Returns a new [InboxPlacementDeliverabilitySummaryDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementDeliverabilitySummaryDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementDeliverabilitySummaryDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementDeliverabilitySummaryDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementDeliverabilitySummaryDto(
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        matchedTargets: mapValueOfType<int>(json, r'matchedTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
      );
    }
    return null;
  }

  static List<InboxPlacementDeliverabilitySummaryDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementDeliverabilitySummaryDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementDeliverabilitySummaryDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementDeliverabilitySummaryDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementDeliverabilitySummaryDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementDeliverabilitySummaryDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementDeliverabilitySummaryDto-objects as value to a dart map
  static Map<String, List<InboxPlacementDeliverabilitySummaryDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementDeliverabilitySummaryDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementDeliverabilitySummaryDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'totalTargets',
    'matchedTargets',
    'inboxTargets',
    'spamTargets',
    'notReceivedTargets',
  };
}

