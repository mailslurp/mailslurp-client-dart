//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewHtmlImportOptions {
  /// Returns a new [CreateDevicePreviewHtmlImportOptions] instance.
  CreateDevicePreviewHtmlImportOptions({
    required this.html,
    this.subject,
    this.from,
    this.to,
    this.sourceAlias,
    this.externalId,
    this.options,
  });

  /// HTML body to wrap into a minimal RFC822/MIME message before creating the device preview run.
  String html;

  /// Optional email subject for the generated MIME.
  String? subject;

  /// Optional From address for the generated MIME.
  String? from;

  /// Optional To address for the generated MIME.
  String? to;

  /// Optional source label to attach to the preview run.
  String? sourceAlias;

  /// Optional external source ID for correlating this import with another system.
  String? externalId;

  CreateDevicePreviewOptions? options;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewHtmlImportOptions &&
     other.html == html &&
     other.subject == subject &&
     other.from == from &&
     other.to == to &&
     other.sourceAlias == sourceAlias &&
     other.externalId == externalId &&
     other.options == options;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (html.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (sourceAlias == null ? 0 : sourceAlias!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (options == null ? 0 : options!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewHtmlImportOptions[html=$html, subject=$subject, from=$from, to=$to, sourceAlias=$sourceAlias, externalId=$externalId, options=$options]';

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
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    if (this.sourceAlias != null) {
      json[r'sourceAlias'] = this.sourceAlias;
    } else {
      json[r'sourceAlias'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.options != null) {
      json[r'options'] = this.options;
    } else {
      json[r'options'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewHtmlImportOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewHtmlImportOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewHtmlImportOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewHtmlImportOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewHtmlImportOptions(
        html: mapValueOfType<String>(json, r'html')!,
        subject: mapValueOfType<String>(json, r'subject'),
        from: mapValueOfType<String>(json, r'from'),
        to: mapValueOfType<String>(json, r'to'),
        sourceAlias: mapValueOfType<String>(json, r'sourceAlias'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        options: CreateDevicePreviewOptions.fromJson(json[r'options']),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewHtmlImportOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewHtmlImportOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewHtmlImportOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewHtmlImportOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewHtmlImportOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewHtmlImportOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewHtmlImportOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewHtmlImportOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewHtmlImportOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewHtmlImportOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'html',
  };
}

