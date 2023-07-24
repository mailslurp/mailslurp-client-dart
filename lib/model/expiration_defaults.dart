//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ExpirationDefaults {
  /// Returns a new [ExpirationDefaults] instance.
  ExpirationDefaults({
    this.defaultExpirationMillis,
    this.maxExpirationMillis,
    this.defaultExpiresAt,
    required this.canPermanentInbox,
    required this.nextInboxAllowsPermanent,
  });

  int? defaultExpirationMillis;

  int? maxExpirationMillis;

  DateTime? defaultExpiresAt;

  bool canPermanentInbox;

  bool nextInboxAllowsPermanent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExpirationDefaults &&
     other.defaultExpirationMillis == defaultExpirationMillis &&
     other.maxExpirationMillis == maxExpirationMillis &&
     other.defaultExpiresAt == defaultExpiresAt &&
     other.canPermanentInbox == canPermanentInbox &&
     other.nextInboxAllowsPermanent == nextInboxAllowsPermanent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (defaultExpirationMillis == null ? 0 : defaultExpirationMillis!.hashCode) +
    (maxExpirationMillis == null ? 0 : maxExpirationMillis!.hashCode) +
    (defaultExpiresAt == null ? 0 : defaultExpiresAt!.hashCode) +
    (canPermanentInbox.hashCode) +
    (nextInboxAllowsPermanent.hashCode);

  @override
  String toString() => 'ExpirationDefaults[defaultExpirationMillis=$defaultExpirationMillis, maxExpirationMillis=$maxExpirationMillis, defaultExpiresAt=$defaultExpiresAt, canPermanentInbox=$canPermanentInbox, nextInboxAllowsPermanent=$nextInboxAllowsPermanent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.defaultExpirationMillis != null) {
      json[r'defaultExpirationMillis'] = this.defaultExpirationMillis;
    } else {
      json[r'defaultExpirationMillis'] = null;
    }
    if (this.maxExpirationMillis != null) {
      json[r'maxExpirationMillis'] = this.maxExpirationMillis;
    } else {
      json[r'maxExpirationMillis'] = null;
    }
    if (this.defaultExpiresAt != null) {
      json[r'defaultExpiresAt'] = this.defaultExpiresAt!.toUtc().toIso8601String();
    } else {
      json[r'defaultExpiresAt'] = null;
    }
      json[r'canPermanentInbox'] = this.canPermanentInbox;
      json[r'nextInboxAllowsPermanent'] = this.nextInboxAllowsPermanent;
    return json;
  }

  /// Returns a new [ExpirationDefaults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExpirationDefaults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExpirationDefaults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExpirationDefaults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExpirationDefaults(
        defaultExpirationMillis: mapValueOfType<int>(json, r'defaultExpirationMillis'),
        maxExpirationMillis: mapValueOfType<int>(json, r'maxExpirationMillis'),
        defaultExpiresAt: mapDateTime(json, r'defaultExpiresAt', ''),
        canPermanentInbox: mapValueOfType<bool>(json, r'canPermanentInbox')!,
        nextInboxAllowsPermanent: mapValueOfType<bool>(json, r'nextInboxAllowsPermanent')!,
      );
    }
    return null;
  }

  static List<ExpirationDefaults>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExpirationDefaults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExpirationDefaults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExpirationDefaults> mapFromJson(dynamic json) {
    final map = <String, ExpirationDefaults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpirationDefaults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExpirationDefaults-objects as value to a dart map
  static Map<String, List<ExpirationDefaults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExpirationDefaults>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExpirationDefaults.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'canPermanentInbox',
    'nextInboxAllowsPermanent',
  };
}

