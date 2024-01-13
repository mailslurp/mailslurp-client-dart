//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailPreviewUrls {
  /// Returns a new [EmailPreviewUrls] instance.
  EmailPreviewUrls({
    required this.rawSmtpMessageUrl,
    required this.plainHtmlBodyUrl,
  });

  String rawSmtpMessageUrl;

  String plainHtmlBodyUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailPreviewUrls &&
     other.rawSmtpMessageUrl == rawSmtpMessageUrl &&
     other.plainHtmlBodyUrl == plainHtmlBodyUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (rawSmtpMessageUrl.hashCode) +
    (plainHtmlBodyUrl.hashCode);

  @override
  String toString() => 'EmailPreviewUrls[rawSmtpMessageUrl=$rawSmtpMessageUrl, plainHtmlBodyUrl=$plainHtmlBodyUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'rawSmtpMessageUrl'] = this.rawSmtpMessageUrl;
      json[r'plainHtmlBodyUrl'] = this.plainHtmlBodyUrl;
    return json;
  }

  /// Returns a new [EmailPreviewUrls] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailPreviewUrls? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailPreviewUrls[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailPreviewUrls[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailPreviewUrls(
        rawSmtpMessageUrl: mapValueOfType<String>(json, r'rawSmtpMessageUrl')!,
        plainHtmlBodyUrl: mapValueOfType<String>(json, r'plainHtmlBodyUrl')!,
      );
    }
    return null;
  }

  static List<EmailPreviewUrls> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailPreviewUrls>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailPreviewUrls.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailPreviewUrls> mapFromJson(dynamic json) {
    final map = <String, EmailPreviewUrls>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailPreviewUrls.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailPreviewUrls-objects as value to a dart map
  static Map<String, List<EmailPreviewUrls>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailPreviewUrls>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailPreviewUrls.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'rawSmtpMessageUrl',
    'plainHtmlBodyUrl',
  };
}

