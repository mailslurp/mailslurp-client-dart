//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubmitPublicDeviceRenderHtmlOptions {
  /// Returns a new [SubmitPublicDeviceRenderHtmlOptions] instance.
  SubmitPublicDeviceRenderHtmlOptions({
    required this.html,
    this.subject,
    this.from,
  });

  String html;

  String? subject;

  String? from;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubmitPublicDeviceRenderHtmlOptions &&
     other.html == html &&
     other.subject == subject &&
     other.from == from;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (html.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode);

  @override
  String toString() => 'SubmitPublicDeviceRenderHtmlOptions[html=$html, subject=$subject, from=$from]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'html'] = this.html;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    return json;
  }

  /// Returns a new [SubmitPublicDeviceRenderHtmlOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubmitPublicDeviceRenderHtmlOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubmitPublicDeviceRenderHtmlOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubmitPublicDeviceRenderHtmlOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubmitPublicDeviceRenderHtmlOptions(
        html: mapValueOfType<String>(json, r'html')!,
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
      );
    }
    return null;
  }

  static List<SubmitPublicDeviceRenderHtmlOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubmitPublicDeviceRenderHtmlOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubmitPublicDeviceRenderHtmlOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubmitPublicDeviceRenderHtmlOptions> mapFromJson(dynamic json) {
    final map = <String, SubmitPublicDeviceRenderHtmlOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubmitPublicDeviceRenderHtmlOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubmitPublicDeviceRenderHtmlOptions-objects as value to a dart map
  static Map<String, List<SubmitPublicDeviceRenderHtmlOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubmitPublicDeviceRenderHtmlOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubmitPublicDeviceRenderHtmlOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'html',
  };
}

