//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDevicePreviewQaOptions {
  /// Returns a new [CreateDevicePreviewQaOptions] instance.
  CreateDevicePreviewQaOptions({
    this.emailAudit,
    this.domainMonitor,
    this.senderDomain,
  });

  /// Run and persist an email content audit alongside the device preview run.
  bool? emailAudit;

  /// Create or reuse a manual domain monitor for the sender domain and run it alongside the device preview run.
  bool? domainMonitor;

  /// Sender domain to use for domain monitor QA when the source email does not include a real From domain, such as HTML imports.
  String? senderDomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDevicePreviewQaOptions &&
     other.emailAudit == emailAudit &&
     other.domainMonitor == domainMonitor &&
     other.senderDomain == senderDomain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (emailAudit == null ? 0 : emailAudit!.hashCode) +
    (domainMonitor == null ? 0 : domainMonitor!.hashCode) +
    (senderDomain == null ? 0 : senderDomain!.hashCode);

  @override
  String toString() => 'CreateDevicePreviewQaOptions[emailAudit=$emailAudit, domainMonitor=$domainMonitor, senderDomain=$senderDomain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.emailAudit != null) {
      json[r'emailAudit'] = this.emailAudit;
    } else {
      json[r'emailAudit'] = null;
    }
    if (this.domainMonitor != null) {
      json[r'domainMonitor'] = this.domainMonitor;
    } else {
      json[r'domainMonitor'] = null;
    }
    if (this.senderDomain != null) {
      json[r'senderDomain'] = this.senderDomain;
    } else {
      json[r'senderDomain'] = null;
    }
    return json;
  }

  /// Returns a new [CreateDevicePreviewQaOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateDevicePreviewQaOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateDevicePreviewQaOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateDevicePreviewQaOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateDevicePreviewQaOptions(
        emailAudit: mapValueOfType<bool>(json, r'emailAudit'),
        domainMonitor: mapValueOfType<bool>(json, r'domainMonitor'),
        senderDomain: mapValueOfType<String>(json, r'senderDomain'),
      );
    }
    return null;
  }

  static List<CreateDevicePreviewQaOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateDevicePreviewQaOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateDevicePreviewQaOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateDevicePreviewQaOptions> mapFromJson(dynamic json) {
    final map = <String, CreateDevicePreviewQaOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateDevicePreviewQaOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateDevicePreviewQaOptions-objects as value to a dart map
  static Map<String, List<CreateDevicePreviewQaOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateDevicePreviewQaOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateDevicePreviewQaOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

