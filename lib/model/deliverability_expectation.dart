//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeliverabilityExpectation {
  /// Returns a new [DeliverabilityExpectation] instance.
  DeliverabilityExpectation({
    this.name,
    required this.minCount,
    this.from,
    this.to,
    this.subject,
  });

  /// Optional label for this expectation
  String? name;

  /// Minimum number of matching messages required for this expectation to pass
  ///
  /// Minimum value: 1
  int minCount;

  /// Optional sender filter. Matching is case-insensitive contains against inbound sender/from values.
  String? from;

  /// Optional recipient filter. Matching is case-insensitive contains against recipient/to values.
  String? to;

  /// Optional subject filter for INBOX scope tests. Ignored for PHONE scope tests.
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeliverabilityExpectation &&
     other.name == name &&
     other.minCount == minCount &&
     other.from == from &&
     other.to == to &&
     other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (minCount.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (to == null ? 0 : to!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'DeliverabilityExpectation[name=$name, minCount=$minCount, from=$from, to=$to, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'minCount'] = this.minCount;
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
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [DeliverabilityExpectation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeliverabilityExpectation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DeliverabilityExpectation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DeliverabilityExpectation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DeliverabilityExpectation(
        name: mapValueOfType<String>(json, r'name'),
        minCount: mapValueOfType<int>(json, r'minCount')!,
        from: mapValueOfType<String>(json, r'from'),
        to: mapValueOfType<String>(json, r'to'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<DeliverabilityExpectation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeliverabilityExpectation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeliverabilityExpectation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeliverabilityExpectation> mapFromJson(dynamic json) {
    final map = <String, DeliverabilityExpectation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeliverabilityExpectation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeliverabilityExpectation-objects as value to a dart map
  static Map<String, List<DeliverabilityExpectation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeliverabilityExpectation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeliverabilityExpectation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'minCount',
  };
}

