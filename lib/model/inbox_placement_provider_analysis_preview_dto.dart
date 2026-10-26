//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPlacementProviderAnalysisPreviewDto {
  /// Returns a new [InboxPlacementProviderAnalysisPreviewDto] instance.
  InboxPlacementProviderAnalysisPreviewDto({
    required this.status,
    this.subject,
    this.fromEmail,
    this.textSnippet,
    this.htmlSnippet,
    this.details = const {},
  });

  String status;

  String? subject;

  String? fromEmail;

  String? textSnippet;

  String? htmlSnippet;

  Map<String, String> details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPlacementProviderAnalysisPreviewDto &&
     other.status == status &&
     other.subject == subject &&
     other.fromEmail == fromEmail &&
     other.textSnippet == textSnippet &&
     other.htmlSnippet == htmlSnippet &&
     other.details == details;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (fromEmail == null ? 0 : fromEmail!.hashCode) +
    (textSnippet == null ? 0 : textSnippet!.hashCode) +
    (htmlSnippet == null ? 0 : htmlSnippet!.hashCode) +
    (details.hashCode);

  @override
  String toString() => 'InboxPlacementProviderAnalysisPreviewDto[status=$status, subject=$subject, fromEmail=$fromEmail, textSnippet=$textSnippet, htmlSnippet=$htmlSnippet, details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'status'] = this.status;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.fromEmail != null) {
      json[r'fromEmail'] = this.fromEmail;
    } else {
      json[r'fromEmail'] = null;
    }
    if (this.textSnippet != null) {
      json[r'textSnippet'] = this.textSnippet;
    } else {
      json[r'textSnippet'] = null;
    }
    if (this.htmlSnippet != null) {
      json[r'htmlSnippet'] = this.htmlSnippet;
    } else {
      json[r'htmlSnippet'] = null;
    }
      json[r'details'] = this.details;
    return json;
  }

  /// Returns a new [InboxPlacementProviderAnalysisPreviewDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxPlacementProviderAnalysisPreviewDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxPlacementProviderAnalysisPreviewDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxPlacementProviderAnalysisPreviewDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxPlacementProviderAnalysisPreviewDto(
        status: mapValueOfType<String>(json, r'status')!,
        subject: mapValueOfType<String>(json, r'subject'),
        fromEmail: mapValueOfType<String>(json, r'fromEmail'),
        textSnippet: mapValueOfType<String>(json, r'textSnippet'),
        htmlSnippet: mapValueOfType<String>(json, r'htmlSnippet'),
        details: mapCastOfType<String, String>(json, r'details')!,
      );
    }
    return null;
  }

  static List<InboxPlacementProviderAnalysisPreviewDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxPlacementProviderAnalysisPreviewDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxPlacementProviderAnalysisPreviewDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxPlacementProviderAnalysisPreviewDto> mapFromJson(dynamic json) {
    final map = <String, InboxPlacementProviderAnalysisPreviewDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxPlacementProviderAnalysisPreviewDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxPlacementProviderAnalysisPreviewDto-objects as value to a dart map
  static Map<String, List<InboxPlacementProviderAnalysisPreviewDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxPlacementProviderAnalysisPreviewDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxPlacementProviderAnalysisPreviewDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'status',
    'details',
  };
}

