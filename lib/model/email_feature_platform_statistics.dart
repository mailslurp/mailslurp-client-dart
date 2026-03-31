//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeaturePlatformStatistics {
  /// Returns a new [EmailFeaturePlatformStatistics] instance.
  EmailFeaturePlatformStatistics({
    required this.platform,
    this.versions = const [],
  });

  EmailFeaturePlatformStatisticsPlatformEnum platform;

  List<EmailFeatureVersionStatistics> versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeaturePlatformStatistics &&
     other.platform == platform &&
     other.versions == versions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (platform.hashCode) +
    (versions.hashCode);

  @override
  String toString() => 'EmailFeaturePlatformStatistics[platform=$platform, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'platform'] = this.platform;
      json[r'versions'] = this.versions;
    return json;
  }

  /// Returns a new [EmailFeaturePlatformStatistics] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeaturePlatformStatistics? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeaturePlatformStatistics[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeaturePlatformStatistics[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeaturePlatformStatistics(
        platform: EmailFeaturePlatformStatisticsPlatformEnum.fromJson(json[r'platform'])!,
        versions: EmailFeatureVersionStatistics.listFromJson(json[r'versions']),
      );
    }
    return null;
  }

  static List<EmailFeaturePlatformStatistics> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeaturePlatformStatistics>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeaturePlatformStatistics.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeaturePlatformStatistics> mapFromJson(dynamic json) {
    final map = <String, EmailFeaturePlatformStatistics>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeaturePlatformStatistics.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeaturePlatformStatistics-objects as value to a dart map
  static Map<String, List<EmailFeaturePlatformStatistics>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeaturePlatformStatistics>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeaturePlatformStatistics.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'platform',
    'versions',
  };
}


class EmailFeaturePlatformStatisticsPlatformEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeaturePlatformStatisticsPlatformEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const android = EmailFeaturePlatformStatisticsPlatformEnum._(r'android');
  static const desktopApp = EmailFeaturePlatformStatisticsPlatformEnum._(r'desktop-app');
  static const desktopWebmail = EmailFeaturePlatformStatisticsPlatformEnum._(r'desktop-webmail');
  static const ios = EmailFeaturePlatformStatisticsPlatformEnum._(r'ios');
  static const macos = EmailFeaturePlatformStatisticsPlatformEnum._(r'macos');
  static const mobileWebmail = EmailFeaturePlatformStatisticsPlatformEnum._(r'mobile-webmail');
  static const outlookCom = EmailFeaturePlatformStatisticsPlatformEnum._(r'outlook-com');
  static const webmail = EmailFeaturePlatformStatisticsPlatformEnum._(r'webmail');
  static const windows = EmailFeaturePlatformStatisticsPlatformEnum._(r'windows');
  static const windowsMail = EmailFeaturePlatformStatisticsPlatformEnum._(r'windows-mail');

  /// List of all possible values in this [enum][EmailFeaturePlatformStatisticsPlatformEnum].
  static const values = <EmailFeaturePlatformStatisticsPlatformEnum>[
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

  static EmailFeaturePlatformStatisticsPlatformEnum? fromJson(dynamic value) => EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer().decode(value);

  static List<EmailFeaturePlatformStatisticsPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeaturePlatformStatisticsPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeaturePlatformStatisticsPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeaturePlatformStatisticsPlatformEnum] to String,
/// and [decode] dynamic data back to [EmailFeaturePlatformStatisticsPlatformEnum].
class EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer {
  factory EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer() => _instance ??= const EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer._();

  const EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer._();

  String encode(EmailFeaturePlatformStatisticsPlatformEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeaturePlatformStatisticsPlatformEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeaturePlatformStatisticsPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'android': return EmailFeaturePlatformStatisticsPlatformEnum.android;
        case r'desktop-app': return EmailFeaturePlatformStatisticsPlatformEnum.desktopApp;
        case r'desktop-webmail': return EmailFeaturePlatformStatisticsPlatformEnum.desktopWebmail;
        case r'ios': return EmailFeaturePlatformStatisticsPlatformEnum.ios;
        case r'macos': return EmailFeaturePlatformStatisticsPlatformEnum.macos;
        case r'mobile-webmail': return EmailFeaturePlatformStatisticsPlatformEnum.mobileWebmail;
        case r'outlook-com': return EmailFeaturePlatformStatisticsPlatformEnum.outlookCom;
        case r'webmail': return EmailFeaturePlatformStatisticsPlatformEnum.webmail;
        case r'windows': return EmailFeaturePlatformStatisticsPlatformEnum.windows;
        case r'windows-mail': return EmailFeaturePlatformStatisticsPlatformEnum.windowsMail;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer] instance.
  static EmailFeaturePlatformStatisticsPlatformEnumTypeTransformer? _instance;
}


