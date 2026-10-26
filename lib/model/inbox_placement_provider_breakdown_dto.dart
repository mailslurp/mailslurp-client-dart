//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementProviderBreakdownDto {
  /// Returns a new [InboxPlacementProviderBreakdownDto] instance.
  InboxPlacementProviderBreakdownDto({
    required this.provider,
    required this.totalTargets,
    required this.deliveredTargets,
    required this.inboxTargets,
    required this.spamTargets,
    required this.notReceivedTargets,
    required this.deliveredRatePercentage,
    required this.inboxRatePercentage,
    required this.spamRatePercentage,
    required this.notReceivedRatePercentage,
  });

  String provider;

  int totalTargets;

  int deliveredTargets;

  int inboxTargets;

  int spamTargets;

  int notReceivedTargets;

  double deliveredRatePercentage;

  double inboxRatePercentage;

  double spamRatePercentage;

  double notReceivedRatePercentage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementProviderBreakdownDto &&
     other.provider == provider &&
     other.totalTargets == totalTargets &&
     other.deliveredTargets == deliveredTargets &&
     other.inboxTargets == inboxTargets &&
     other.spamTargets == spamTargets &&
     other.notReceivedTargets == notReceivedTargets &&
     other.deliveredRatePercentage == deliveredRatePercentage &&
     other.inboxRatePercentage == inboxRatePercentage &&
     other.spamRatePercentage == spamRatePercentage &&
     other.notReceivedRatePercentage == notReceivedRatePercentage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (provider.hashCode) +
    (totalTargets.hashCode) +
    (deliveredTargets.hashCode) +
    (inboxTargets.hashCode) +
    (spamTargets.hashCode) +
    (notReceivedTargets.hashCode) +
    (deliveredRatePercentage.hashCode) +
    (inboxRatePercentage.hashCode) +
    (spamRatePercentage.hashCode) +
    (notReceivedRatePercentage.hashCode);

  @override
  String toString() => 'InboxPlacementProviderBreakdownDto[provider=$provider, totalTargets=$totalTargets, deliveredTargets=$deliveredTargets, inboxTargets=$inboxTargets, spamTargets=$spamTargets, notReceivedTargets=$notReceivedTargets, deliveredRatePercentage=$deliveredRatePercentage, inboxRatePercentage=$inboxRatePercentage, spamRatePercentage=$spamRatePercentage, notReceivedRatePercentage=$notReceivedRatePercentage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'provider'] = this.provider;
      json[r'totalTargets'] = this.totalTargets;
      json[r'deliveredTargets'] = this.deliveredTargets;
      json[r'inboxTargets'] = this.inboxTargets;
      json[r'spamTargets'] = this.spamTargets;
      json[r'notReceivedTargets'] = this.notReceivedTargets;
      json[r'deliveredRatePercentage'] = this.deliveredRatePercentage;
      json[r'inboxRatePercentage'] = this.inboxRatePercentage;
      json[r'spamRatePercentage'] = this.spamRatePercentage;
      json[r'notReceivedRatePercentage'] = this.notReceivedRatePercentage;
    return json;
  }

  /// Returns a new [InboxPlacementProviderBreakdownDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementProviderBreakdownDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementProviderBreakdownDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementProviderBreakdownDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementProviderBreakdownDto(
        provider: mapValueOfType<String>(json, r'provider')!,
        totalTargets: mapValueOfType<int>(json, r'totalTargets')!,
        deliveredTargets: mapValueOfType<int>(json, r'deliveredTargets')!,
        inboxTargets: mapValueOfType<int>(json, r'inboxTargets')!,
        spamTargets: mapValueOfType<int>(json, r'spamTargets')!,
        notReceivedTargets: mapValueOfType<int>(json, r'notReceivedTargets')!,
        deliveredRatePercentage: mapValueOfType<double>(json, r'deliveredRatePercentage')!,
        inboxRatePercentage: mapValueOfType<double>(json, r'inboxRatePercentage')!,
        spamRatePercentage: mapValueOfType<double>(json, r'spamRatePercentage')!,
        notReceivedRatePercentage: mapValueOfType<double>(json, r'notReceivedRatePercentage')!,
      );
    }
    return null;
  }

  static List<InboxPlacementProviderBreakdownDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementProviderBreakdownDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementProviderBreakdownDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementProviderBreakdownDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementProviderBreakdownDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementProviderBreakdownDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementProviderBreakdownDto-objects as value to a dart map
  static Map<String, List<InboxPlacementProviderBreakdownDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementProviderBreakdownDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementProviderBreakdownDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'provider',
    'totalTargets',
    'deliveredTargets',
    'inboxTargets',
    'spamTargets',
    'notReceivedTargets',
    'deliveredRatePercentage',
    'inboxRatePercentage',
    'spamRatePercentage',
    'notReceivedRatePercentage',
  };
}

