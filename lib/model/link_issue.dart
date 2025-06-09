//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LinkIssue {
  /// Returns a new [LinkIssue] instance.
  LinkIssue({
    required this.url,
    this.responseStatus,
    required this.severity,
    required this.message,
  });

  String url;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? responseStatus;

  LinkIssueSeverityEnum severity;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LinkIssue &&
     other.url == url &&
     other.responseStatus == responseStatus &&
     other.severity == severity &&
     other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (url.hashCode) +
    (responseStatus == null ? 0 : responseStatus!.hashCode) +
    (severity.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'LinkIssue[url=$url, responseStatus=$responseStatus, severity=$severity, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'url'] = this.url;
    if (this.responseStatus != null) {
      json[r'responseStatus'] = this.responseStatus;
    } else {
      json[r'responseStatus'] = null;
    }
      json[r'severity'] = this.severity;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [LinkIssue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LinkIssue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "LinkIssue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "LinkIssue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return LinkIssue(
        url: mapValueOfType<String>(json, r'url')!,
        responseStatus: mapValueOfType<int>(json, r'responseStatus'),
        severity: LinkIssueSeverityEnum.fromJson(json[r'severity'])!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<LinkIssue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkIssue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkIssue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LinkIssue> mapFromJson(dynamic json) {
    final map = <String, LinkIssue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LinkIssue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LinkIssue-objects as value to a dart map
  static Map<String, List<LinkIssue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LinkIssue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LinkIssue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'url',
    'severity',
    'message',
  };
}


class LinkIssueSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const LinkIssueSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const warning = LinkIssueSeverityEnum._(r'Warning');
  static const error = LinkIssueSeverityEnum._(r'Error');

  /// List of all possible values in this [enum][LinkIssueSeverityEnum].
  static const values = <LinkIssueSeverityEnum>[
    warning,
    error,
  ];

  static LinkIssueSeverityEnum? fromJson(dynamic value) => LinkIssueSeverityEnumTypeTransformer().decode(value);

  static List<LinkIssueSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LinkIssueSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LinkIssueSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [LinkIssueSeverityEnum] to String,
/// and [decode] dynamic data back to [LinkIssueSeverityEnum].
class LinkIssueSeverityEnumTypeTransformer {
  factory LinkIssueSeverityEnumTypeTransformer() => _instance ??= const LinkIssueSeverityEnumTypeTransformer._();

  const LinkIssueSeverityEnumTypeTransformer._();

  String encode(LinkIssueSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a LinkIssueSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  LinkIssueSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Warning': return LinkIssueSeverityEnum.warning;
        case r'Error': return LinkIssueSeverityEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [LinkIssueSeverityEnumTypeTransformer] instance.
  static LinkIssueSeverityEnumTypeTransformer? _instance;
}


