//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDevicePreviewIngestDomainOptions {
  /// Returns a new [UpdateDevicePreviewIngestDomainOptions] instance.
  UpdateDevicePreviewIngestDomainOptions({
    required this.subdomain,
  });

  String subdomain;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDevicePreviewIngestDomainOptions &&
     other.subdomain == subdomain;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subdomain.hashCode);

  @override
  String toString() => 'UpdateDevicePreviewIngestDomainOptions[subdomain=$subdomain]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subdomain'] = this.subdomain;
    return json;
  }

  /// Returns a new [UpdateDevicePreviewIngestDomainOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDevicePreviewIngestDomainOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDevicePreviewIngestDomainOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDevicePreviewIngestDomainOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDevicePreviewIngestDomainOptions(
        subdomain: mapValueOfType<String>(json, r'subdomain')!,
      );
    }
    return null;
  }

  static List<UpdateDevicePreviewIngestDomainOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDevicePreviewIngestDomainOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDevicePreviewIngestDomainOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDevicePreviewIngestDomainOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateDevicePreviewIngestDomainOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDevicePreviewIngestDomainOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDevicePreviewIngestDomainOptions-objects as value to a dart map
  static Map<String, List<UpdateDevicePreviewIngestDomainOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDevicePreviewIngestDomainOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateDevicePreviewIngestDomainOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subdomain',
  };
}

