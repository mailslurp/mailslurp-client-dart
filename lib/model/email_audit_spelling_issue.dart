//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailAuditSpellingIssue {
  /// Returns a new [EmailAuditSpellingIssue] instance.
  EmailAuditSpellingIssue({
    this.group,
    this.suggestion,
    this.severity,
    required this.message,
  });

  String? group;

  String? suggestion;

  EmailAuditSpellingIssueSeverityEnum? severity;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailAuditSpellingIssue &&
     other.group == group &&
     other.suggestion == suggestion &&
     other.severity == severity &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (group == null ? 0 : group!.hashCode) +
    (suggestion == null ? 0 : suggestion!.hashCode) +
    (severity == null ? 0 : severity!.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'EmailAuditSpellingIssue[group=$group, suggestion=$suggestion, severity=$severity, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.group != null) {
      json[r'group'] = this.group;
    } else {
      json[r'group'] = null;
    }
    if (this.suggestion != null) {
      json[r'suggestion'] = this.suggestion;
    } else {
      json[r'suggestion'] = null;
    }
    if (this.severity != null) {
      json[r'severity'] = this.severity;
    } else {
      json[r'severity'] = null;
    }
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [EmailAuditSpellingIssue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailAuditSpellingIssue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailAuditSpellingIssue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailAuditSpellingIssue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailAuditSpellingIssue(
        group: mapValueOfType<String>(json, r'group'),
        suggestion: mapValueOfType<String>(json, r'suggestion'),
        severity: EmailAuditSpellingIssueSeverityEnum.fromJson(json[r'severity']),
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<EmailAuditSpellingIssue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditSpellingIssue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditSpellingIssue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailAuditSpellingIssue> mapFromJson(dynamic json) {
    final map = <String, EmailAuditSpellingIssue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailAuditSpellingIssue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailAuditSpellingIssue-objects as value to a dart map
  static Map<String, List<EmailAuditSpellingIssue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailAuditSpellingIssue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailAuditSpellingIssue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'message',
  };
}


class EmailAuditSpellingIssueSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailAuditSpellingIssueSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const warning = EmailAuditSpellingIssueSeverityEnum._(r'Warning');
  static const error = EmailAuditSpellingIssueSeverityEnum._(r'Error');

  /// List of all possible values in this [enum][EmailAuditSpellingIssueSeverityEnum].
  static const values = <EmailAuditSpellingIssueSeverityEnum>[
    warning,
    error,
  ];

  static EmailAuditSpellingIssueSeverityEnum? fromJson(dynamic value) => EmailAuditSpellingIssueSeverityEnumTypeTransformer().decode(value);

  static List<EmailAuditSpellingIssueSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailAuditSpellingIssueSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailAuditSpellingIssueSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailAuditSpellingIssueSeverityEnum] to String,
/// and [decode] dynamic data back to [EmailAuditSpellingIssueSeverityEnum].
class EmailAuditSpellingIssueSeverityEnumTypeTransformer {
  factory EmailAuditSpellingIssueSeverityEnumTypeTransformer() => _instance ??= const EmailAuditSpellingIssueSeverityEnumTypeTransformer._();

  const EmailAuditSpellingIssueSeverityEnumTypeTransformer._();

  String encode(EmailAuditSpellingIssueSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailAuditSpellingIssueSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailAuditSpellingIssueSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Warning': return EmailAuditSpellingIssueSeverityEnum.warning;
        case r'Error': return EmailAuditSpellingIssueSeverityEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailAuditSpellingIssueSeverityEnumTypeTransformer] instance.
  static EmailAuditSpellingIssueSeverityEnumTypeTransformer? _instance;
}


