//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UpdateDomainOptions {
  /// Returns a new [UpdateDomainOptions] instance.
  UpdateDomainOptions({
    this.catchAllInboxId,
  });

  String? catchAllInboxId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateDomainOptions &&
     other.catchAllInboxId == catchAllInboxId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (catchAllInboxId == null ? 0 : catchAllInboxId!.hashCode);

  @override
  String toString() => 'UpdateDomainOptions[catchAllInboxId=$catchAllInboxId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.catchAllInboxId != null) {
      json[r'catchAllInboxId'] = this.catchAllInboxId;
    } else {
      json[r'catchAllInboxId'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateDomainOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateDomainOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpdateDomainOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpdateDomainOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpdateDomainOptions(
        catchAllInboxId: mapValueOfType<String>(json, r'catchAllInboxId'),
      );
    }
    return null;
  }

  static List<UpdateDomainOptions>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateDomainOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateDomainOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateDomainOptions> mapFromJson(dynamic json) {
    final map = <String, UpdateDomainOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDomainOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateDomainOptions-objects as value to a dart map
  static Map<String, List<UpdateDomainOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateDomainOptions>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateDomainOptions.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

