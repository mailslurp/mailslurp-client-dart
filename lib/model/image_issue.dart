//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ImageIssue {
  /// Returns a new [ImageIssue] instance.
  ImageIssue({
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

  ImageIssueSeverityEnum severity;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ImageIssue &&
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
  String toString() => 'ImageIssue[url=$url, responseStatus=$responseStatus, severity=$severity, message=$message]';

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

  /// Returns a new [ImageIssue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ImageIssue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ImageIssue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ImageIssue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ImageIssue(
        url: mapValueOfType<String>(json, r'url')!,
        responseStatus: mapValueOfType<int>(json, r'responseStatus'),
        severity: ImageIssueSeverityEnum.fromJson(json[r'severity'])!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<ImageIssue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageIssue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageIssue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ImageIssue> mapFromJson(dynamic json) {
    final map = <String, ImageIssue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ImageIssue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ImageIssue-objects as value to a dart map
  static Map<String, List<ImageIssue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ImageIssue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ImageIssue.listFromJson(entry.value, growable: growable,);
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


class ImageIssueSeverityEnum {
  /// Instantiate a new enum with the provided [value].
  const ImageIssueSeverityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const warning = ImageIssueSeverityEnum._(r'Warning');
  static const error = ImageIssueSeverityEnum._(r'Error');

  /// List of all possible values in this [enum][ImageIssueSeverityEnum].
  static const values = <ImageIssueSeverityEnum>[
    warning,
    error,
  ];

  static ImageIssueSeverityEnum? fromJson(dynamic value) => ImageIssueSeverityEnumTypeTransformer().decode(value);

  static List<ImageIssueSeverityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ImageIssueSeverityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ImageIssueSeverityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ImageIssueSeverityEnum] to String,
/// and [decode] dynamic data back to [ImageIssueSeverityEnum].
class ImageIssueSeverityEnumTypeTransformer {
  factory ImageIssueSeverityEnumTypeTransformer() => _instance ??= const ImageIssueSeverityEnumTypeTransformer._();

  const ImageIssueSeverityEnumTypeTransformer._();

  String encode(ImageIssueSeverityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ImageIssueSeverityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ImageIssueSeverityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Warning': return ImageIssueSeverityEnum.warning;
        case r'Error': return ImageIssueSeverityEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ImageIssueSeverityEnumTypeTransformer] instance.
  static ImageIssueSeverityEnumTypeTransformer? _instance;
}


