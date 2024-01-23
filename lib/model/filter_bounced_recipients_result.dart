//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FilterBouncedRecipientsResult {
  /// Returns a new [FilterBouncedRecipientsResult] instance.
  FilterBouncedRecipientsResult({
    this.filteredRecipients = const [],
  });

  List<String> filteredRecipients;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FilterBouncedRecipientsResult &&
     other.filteredRecipients == filteredRecipients;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filteredRecipients.hashCode);

  @override
  String toString() => 'FilterBouncedRecipientsResult[filteredRecipients=$filteredRecipients]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'filteredRecipients'] = this.filteredRecipients;
    return json;
  }

  /// Returns a new [FilterBouncedRecipientsResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FilterBouncedRecipientsResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FilterBouncedRecipientsResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FilterBouncedRecipientsResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FilterBouncedRecipientsResult(
        filteredRecipients: json[r'filteredRecipients'] is List
            ? (json[r'filteredRecipients'] as List).cast<String>()
            : const [],
      );
    }
    return null;
  }

  static List<FilterBouncedRecipientsResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FilterBouncedRecipientsResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FilterBouncedRecipientsResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FilterBouncedRecipientsResult> mapFromJson(dynamic json) {
    final map = <String, FilterBouncedRecipientsResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FilterBouncedRecipientsResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FilterBouncedRecipientsResult-objects as value to a dart map
  static Map<String, List<FilterBouncedRecipientsResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FilterBouncedRecipientsResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FilterBouncedRecipientsResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'filteredRecipients',
  };
}

