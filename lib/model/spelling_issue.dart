//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SpellingIssue {
  /// Returns a new [SpellingIssue] instance.
  SpellingIssue({
    required this.group,
    required this.suggestion,
    required this.severity,
    required this.message,
  });

  String group;

  String suggestion;

  SpellingIssueSeverityEnum severity;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SpellingIssue &&
     other.group == group &&
     other.suggestion == suggestion &&
     other.severity == severity &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (group.hashCode) +
    (suggestion.hashCode) +
    (severity.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'SpellingIssue[group=$group, suggestion=$suggestion, severity=$severity, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'group'] = this.group;
      json[r'suggestion'] = this.suggestion;
      json[r'severity'] = this.severity;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [SpellingIssue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SpellingIssue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SpellingIssue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SpellingIssue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SpellingIssue(
        group: mapValueOfType<String>(json, r'group')!,
        suggestion: mapValueOfType<String>(json, r'suggestion')!,
        severity: SpellingIssueSeverityEnum.fromJson(json[r'severity'])!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<SpellingIssue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpellingIssue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpellingIssue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SpellingIssue> mapFromJson(dynamic json) {
    final map = <String, SpellingIssue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SpellingIssue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SpellingIssue-objects as value to a dart map
  static Map<String, List<SpellingIssue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SpellingIssue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SpellingIssue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'group',
    'suggestion',
    'severity',
    'message',
  };
}


class SpellingIssueSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const SpellingIssueSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const warning = SpellingIssueSeverityEnum._(r'Warning');
  static const error = SpellingIssueSeverityEnum._(r'Error');

  /// List of all possible values in this [enum][SpellingIssueSeverityEnum].
  static const values = <SpellingIssueSeverityEnum>[
    warning,
    error,
  ];

  static SpellingIssueSeverityEnum? fromJson(dynamic value) => SpellingIssueSeverityEnumTypeTransformer().decode(value);

  static List<SpellingIssueSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SpellingIssueSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SpellingIssueSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SpellingIssueSeverityEnum] to String,
/// and [decode] dynamic data back to [SpellingIssueSeverityEnum].
class SpellingIssueSeverityEnumTypeTransformer {
  factory SpellingIssueSeverityEnumTypeTransformer() => _instance ??= const SpellingIssueSeverityEnumTypeTransformer._();

  const SpellingIssueSeverityEnumTypeTransformer._();

  String encode(SpellingIssueSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SpellingIssueSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SpellingIssueSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Warning': return SpellingIssueSeverityEnum.warning;
        case r'Error': return SpellingIssueSeverityEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SpellingIssueSeverityEnumTypeTransformer] instance.
  static SpellingIssueSeverityEnumTypeTransformer? _instance;
}


