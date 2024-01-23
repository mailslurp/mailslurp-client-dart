//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxByNameResult {
  /// Returns a new [InboxByNameResult] instance.
  InboxByNameResult({
    this.inboxId,
    required this.exists,
  });

  String? inboxId;

  bool exists;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxByNameResult &&
     other.inboxId == inboxId &&
     other.exists == exists;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inboxId == null ? 0 : inboxId!.hashCode) +
    (exists.hashCode);

  @override
  String toString() => 'InboxByNameResult[inboxId=$inboxId, exists=$exists]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.inboxId != null) {
      json[r'inboxId'] = this.inboxId;
    } else {
      json[r'inboxId'] = null;
    }
      json[r'exists'] = this.exists;
    return json;
  }

  /// Returns a new [InboxByNameResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxByNameResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxByNameResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxByNameResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxByNameResult(
        inboxId: mapValueOfType<String>(json, r'inboxId'),
        exists: mapValueOfType<bool>(json, r'exists')!,
      );
    }
    return null;
  }

  static List<InboxByNameResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxByNameResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxByNameResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxByNameResult> mapFromJson(dynamic json) {
    final map = <String, InboxByNameResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxByNameResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxByNameResult-objects as value to a dart map
  static Map<String, List<InboxByNameResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxByNameResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxByNameResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'exists',
  };
}

