//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementProviderAnalysisDto {
  /// Returns a new [InboxPlacementProviderAnalysisDto] instance.
  InboxPlacementProviderAnalysisDto({
    required this.requested,
    required this.authentication,
    required this.domain,
    required this.content,
    required this.links,
    required this.blacklists,
    required this.preview,
  });

  InboxPlacementProviderAnalysisOptionsDto requested;

  InboxPlacementProviderAnalysisSectionDto authentication;

  InboxPlacementProviderAnalysisSectionDto domain;

  InboxPlacementProviderAnalysisSectionDto content;

  InboxPlacementProviderAnalysisSectionDto links;

  InboxPlacementProviderAnalysisSectionDto blacklists;

  InboxPlacementProviderAnalysisPreviewDto preview;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementProviderAnalysisDto &&
     other.requested == requested &&
     other.authentication == authentication &&
     other.domain == domain &&
     other.content == content &&
     other.links == links &&
     other.blacklists == blacklists &&
     other.preview == preview;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requested.hashCode) +
    (authentication.hashCode) +
    (domain.hashCode) +
    (content.hashCode) +
    (links.hashCode) +
    (blacklists.hashCode) +
    (preview.hashCode);

  @override
  String toString() => 'InboxPlacementProviderAnalysisDto[requested=$requested, authentication=$authentication, domain=$domain, content=$content, links=$links, blacklists=$blacklists, preview=$preview]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'requested'] = this.requested;
      json[r'authentication'] = this.authentication;
      json[r'domain'] = this.domain;
      json[r'content'] = this.content;
      json[r'links'] = this.links;
      json[r'blacklists'] = this.blacklists;
      json[r'preview'] = this.preview;
    return json;
  }

  /// Returns a new [InboxPlacementProviderAnalysisDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementProviderAnalysisDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementProviderAnalysisDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementProviderAnalysisDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementProviderAnalysisDto(
        requested: InboxPlacementProviderAnalysisOptionsDto.fromJson(json[r'requested'])!,
        authentication: InboxPlacementProviderAnalysisSectionDto.fromJson(json[r'authentication'])!,
        domain: InboxPlacementProviderAnalysisSectionDto.fromJson(json[r'domain'])!,
        content: InboxPlacementProviderAnalysisSectionDto.fromJson(json[r'content'])!,
        links: InboxPlacementProviderAnalysisSectionDto.fromJson(json[r'links'])!,
        blacklists: InboxPlacementProviderAnalysisSectionDto.fromJson(json[r'blacklists'])!,
        preview: InboxPlacementProviderAnalysisPreviewDto.fromJson(json[r'preview'])!,
      );
    }
    return null;
  }

  static List<InboxPlacementProviderAnalysisDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementProviderAnalysisDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementProviderAnalysisDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementProviderAnalysisDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementProviderAnalysisDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementProviderAnalysisDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementProviderAnalysisDto-objects as value to a dart map
  static Map<String, List<InboxPlacementProviderAnalysisDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementProviderAnalysisDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementProviderAnalysisDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'requested',
    'authentication',
    'domain',
    'content',
    'links',
    'blacklists',
    'preview',
  };
}

