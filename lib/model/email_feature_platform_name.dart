//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeaturePlatformName {
  /// Returns a new [EmailFeaturePlatformName] instance.
  EmailFeaturePlatformName({
    required this.slug,
    required this.name,
  });

  EmailFeaturePlatformNameSlugEnum slug;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeaturePlatformName &&
     other.slug == slug &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'EmailFeaturePlatformName[slug=$slug, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [EmailFeaturePlatformName] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeaturePlatformName? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeaturePlatformName[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeaturePlatformName[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeaturePlatformName(
        slug: EmailFeaturePlatformNameSlugEnum.fromJson(json[r'slug'])!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<EmailFeaturePlatformName> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeaturePlatformName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeaturePlatformName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeaturePlatformName> mapFromJson(dynamic json) {
    final map = <String, EmailFeaturePlatformName>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeaturePlatformName.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeaturePlatformName-objects as value to a dart map
  static Map<String, List<EmailFeaturePlatformName>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeaturePlatformName>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeaturePlatformName.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'slug',
    'name',
  };
}


class EmailFeaturePlatformNameSlugEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeaturePlatformNameSlugEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = EmailFeaturePlatformNameSlugEnum._(r'android');
  static const desktopApp = EmailFeaturePlatformNameSlugEnum._(r'desktop-app');
  static const desktopWebmail = EmailFeaturePlatformNameSlugEnum._(r'desktop-webmail');
  static const ios = EmailFeaturePlatformNameSlugEnum._(r'ios');
  static const macos = EmailFeaturePlatformNameSlugEnum._(r'macos');
  static const mobileWebmail = EmailFeaturePlatformNameSlugEnum._(r'mobile-webmail');
  static const outlookCom = EmailFeaturePlatformNameSlugEnum._(r'outlook-com');
  static const webmail = EmailFeaturePlatformNameSlugEnum._(r'webmail');
  static const windows = EmailFeaturePlatformNameSlugEnum._(r'windows');
  static const windowsMail = EmailFeaturePlatformNameSlugEnum._(r'windows-mail');

  /// List of all possible values in this [enum][EmailFeaturePlatformNameSlugEnum].
  static const values = <EmailFeaturePlatformNameSlugEnum>[
    android,
    desktopApp,
    desktopWebmail,
    ios,
    macos,
    mobileWebmail,
    outlookCom,
    webmail,
    windows,
    windowsMail,
  ];

  static EmailFeaturePlatformNameSlugEnum? fromJson(dynamic value) => EmailFeaturePlatformNameSlugEnumTypeTransformer().decode(value);

  static List<EmailFeaturePlatformNameSlugEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeaturePlatformNameSlugEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeaturePlatformNameSlugEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeaturePlatformNameSlugEnum] to String,
/// and [decode] dynamic data back to [EmailFeaturePlatformNameSlugEnum].
class EmailFeaturePlatformNameSlugEnumTypeTransformer {
  factory EmailFeaturePlatformNameSlugEnumTypeTransformer() => _instance ??= const EmailFeaturePlatformNameSlugEnumTypeTransformer._();

  const EmailFeaturePlatformNameSlugEnumTypeTransformer._();

  String encode(EmailFeaturePlatformNameSlugEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeaturePlatformNameSlugEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeaturePlatformNameSlugEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'android': return EmailFeaturePlatformNameSlugEnum.android;
        case r'desktop-app': return EmailFeaturePlatformNameSlugEnum.desktopApp;
        case r'desktop-webmail': return EmailFeaturePlatformNameSlugEnum.desktopWebmail;
        case r'ios': return EmailFeaturePlatformNameSlugEnum.ios;
        case r'macos': return EmailFeaturePlatformNameSlugEnum.macos;
        case r'mobile-webmail': return EmailFeaturePlatformNameSlugEnum.mobileWebmail;
        case r'outlook-com': return EmailFeaturePlatformNameSlugEnum.outlookCom;
        case r'webmail': return EmailFeaturePlatformNameSlugEnum.webmail;
        case r'windows': return EmailFeaturePlatformNameSlugEnum.windows;
        case r'windows-mail': return EmailFeaturePlatformNameSlugEnum.windowsMail;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeaturePlatformNameSlugEnumTypeTransformer] instance.
  static EmailFeaturePlatformNameSlugEnumTypeTransformer? _instance;
}


