//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementAnalysisBundleDto {
  /// Returns a new [InboxPlacementAnalysisBundleDto] instance.
  InboxPlacementAnalysisBundleDto({
    required this.generatedAt,
    this.senderDomain,
    this.fromEmail,
    this.setupItems = const [],
    this.contentItems = const [],
    this.domainMonitor,
  });

  DateTime generatedAt;

  String? senderDomain;

  String? fromEmail;

  List<InboxPlacementAnalysisItemDto> setupItems;

  List<InboxPlacementAnalysisItemDto> contentItems;

  InboxPlacementDomainMonitorSummaryDto? domainMonitor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementAnalysisBundleDto &&
     other.generatedAt == generatedAt &&
     other.senderDomain == senderDomain &&
     other.fromEmail == fromEmail &&
     other.setupItems == setupItems &&
     other.contentItems == contentItems &&
     other.domainMonitor == domainMonitor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (generatedAt.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (setupItems.hashCode) +
    (contentItems.hashCode) +
    (domainMonitor == null ? 0 : domainMonitor!.hashCode);

  @override
  String toString() => 'InboxPlacementAnalysisBundleDto[generatedAt=$generatedAt, senderDomain=$senderDomain, fromEmail=$fromEmail, setupItems=$setupItems, contentItems=$contentItems, domainMonitor=$domainMonitor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'generatedAt'] = this.generatedAt.toUtc().toIso8601String();
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
      json[r'setupItems'] = this.setupItems;
      json[r'contentItems'] = this.contentItems;
    if (this.domainMonitor != null) {
      json[r'domainMonitor'] = this.domainMonitor;
    } else {
      json[r'domainMonitor'] = null;
    }
    return json;
  }

  /// Returns a new [InboxPlacementAnalysisBundleDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementAnalysisBundleDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementAnalysisBundleDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementAnalysisBundleDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementAnalysisBundleDto(
        generatedAt: mapDateTime(json, r'generatedAt', '')!,
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        setupItems: InboxPlacementAnalysisItemDto.listFromJson(json[r'setupItems']),
        contentItems: InboxPlacementAnalysisItemDto.listFromJson(json[r'contentItems']),
        domainMonitor: InboxPlacementDomainMonitorSummaryDto.fromJson(json[r'domainMonitor']),
      );
    }
    return null;
  }

  static List<InboxPlacementAnalysisBundleDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementAnalysisBundleDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementAnalysisBundleDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementAnalysisBundleDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementAnalysisBundleDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementAnalysisBundleDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementAnalysisBundleDto-objects as value to a dart map
  static Map<String, List<InboxPlacementAnalysisBundleDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementAnalysisBundleDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementAnalysisBundleDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'generatedAt',
    'setupItems',
    'contentItems',
  };
}

