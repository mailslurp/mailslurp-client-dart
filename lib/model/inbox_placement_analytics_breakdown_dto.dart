//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalyticsBreakdownDto {
  /// Returns a new [InboxPlacementAnalyticsBreakdownDto] instance.
  InboxPlacementAnalyticsBreakdownDto({
    required this.since,
    required this.before,
    this.senderDomain,
    this.fromEmail,
    required this.summary,
    this.folders = const [],
    this.providers = const [],
    this.senderDomains = const [],
    this.fromEmails = const [],
  });

  DateTime since;

  DateTime before;

  String? senderDomain;

  String? fromEmail;

  InboxPlacementAnalyticsSummaryDto summary;

  List<InboxPlacementFolderBreakdownDto> folders;

  List<InboxPlacementProviderBreakdownDto> providers;

  List<InboxPlacementSenderBreakdownDto> senderDomains;

  List<InboxPlacementSenderBreakdownDto> fromEmails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalyticsBreakdownDto &&
     other.since == since &&
     other.before == before &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.summary == summary &&
     other.folders == folders &&
     other.providers == providers &&
     other.senderDomains == senderDomains &&
     other.fromEmails == fromEmails;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (since.hashCode) +
    (before.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (summary.hashCode) +
    (folders.hashCode) +
    (providers.hashCode) +
    (senderDomains.hashCode) +
    (fromEmails.hashCode);

  @override
  String toString() => 'InboxPlacementAnalyticsBreakdownDto[since=$since, before=$before, senderDomain=$senderDomain, fromEmail=$fromEmail, summary=$summary, folders=$folders, providers=$providers, senderDomains=$senderDomains, fromEmails=$fromEmails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'since'] = this.since.toUtc().toIso8601String();
      json[r'before'] = this.before.toUtc().toIso8601String();
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
      json[r'summary'] = this.summary;
      json[r'folders'] = this.folders;
      json[r'providers'] = this.providers;
      json[r'senderDomains'] = this.senderDomains;
      json[r'fromEmails'] = this.fromEmails;
    return json;
  }

  /// Returns a new [InboxPlacementAnalyticsBreakdownDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalyticsBreakdownDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalyticsBreakdownDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalyticsBreakdownDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalyticsBreakdownDto(
        since: mapDateTime(json, r'since', '')!,
        before: mapDateTime(json, r'before', '')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        summary: InboxPlacementAnalyticsSummaryDto.fromJson(json[r'summary'])!,
        folders: InboxPlacementFolderBreakdownDto.listFromJson(json[r'folders']),
        providers: InboxPlacementProviderBreakdownDto.listFromJson(json[r'providers']),
        senderDomains: InboxPlacementSenderBreakdownDto.listFromJson(json[r'senderDomains']),
        fromEmails: InboxPlacementSenderBreakdownDto.listFromJson(json[r'fromEmails']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalyticsBreakdownDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalyticsBreakdownDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalyticsBreakdownDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalyticsBreakdownDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalyticsBreakdownDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalyticsBreakdownDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalyticsBreakdownDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalyticsBreakdownDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalyticsBreakdownDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalyticsBreakdownDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'since',
    'before',
    'summary',
    'folders',
    'providers',
    'senderDomains',
    'fromEmails',
  };
}

