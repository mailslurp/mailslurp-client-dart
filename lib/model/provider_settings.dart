//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProviderSettings {
  /// Returns a new [ProviderSettings] instance.
  ProviderSettings({
    required this.mailProvider,
    required this.imapHost,
    required this.imapPort,
    required this.imapSsl,
    this.imapStartTls,
    required this.smtpHost,
    required this.smtpPort,
    required this.smtpSsl,
    this.smtpStartTls,
  });

  ProviderSettingsMailProviderEnum mailProvider;

  String imapHost;

  int imapPort;

  bool imapSsl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? imapStartTls;

  String smtpHost;

  int smtpPort;

  bool smtpSsl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? smtpStartTls;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderSettings &&
     other.mailProvider == mailProvider &&
     other.imapHost == imapHost &&
     other.imapPort == imapPort &&
     other.imapSsl == imapSsl &&
     other.imapStartTls == imapStartTls &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpSsl == smtpSsl &&
     other.smtpStartTls == smtpStartTls;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mailProvider.hashCode) +
    (imapHost.hashCode) +
    (imapPort.hashCode) +
    (imapSsl.hashCode) +
    (imapStartTls == null ? 0 : imapStartTls!.hashCode) +
    (smtpHost.hashCode) +
    (smtpPort.hashCode) +
    (smtpSsl.hashCode) +
    (smtpStartTls == null ? 0 : smtpStartTls!.hashCode);

  @override
  String toString() => 'ProviderSettings[mailProvider=$mailProvider, imapHost=$imapHost, imapPort=$imapPort, imapSsl=$imapSsl, imapStartTls=$imapStartTls, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpSsl=$smtpSsl, smtpStartTls=$smtpStartTls]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mailProvider'] = this.mailProvider;
      json[r'imapHost'] = this.imapHost;
      json[r'imapPort'] = this.imapPort;
      json[r'imapSsl'] = this.imapSsl;
    if (this.imapStartTls != null) {
      json[r'imapStartTls'] = this.imapStartTls;
    } else {
      json[r'imapStartTls'] = null;
    }
      json[r'smtpHost'] = this.smtpHost;
      json[r'smtpPort'] = this.smtpPort;
      json[r'smtpSsl'] = this.smtpSsl;
    if (this.smtpStartTls != null) {
      json[r'smtpStartTls'] = this.smtpStartTls;
    } else {
      json[r'smtpStartTls'] = null;
    }
    return json;
  }

  /// Returns a new [ProviderSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderSettings[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderSettings[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderSettings(
        mailProvider: ProviderSettingsMailProviderEnum.fromJson(json[r'mailProvider'])!,
        imapHost: mapValueOfType<String>(json, r'imapHost')!,
        imapPort: mapValueOfType<int>(json, r'imapPort')!,
        imapSsl: mapValueOfType<bool>(json, r'imapSsl')!,
        imapStartTls: mapValueOfType<bool>(json, r'imapStartTls'),
        smtpHost: mapValueOfType<String>(json, r'smtpHost')!,
        smtpPort: mapValueOfType<int>(json, r'smtpPort')!,
        smtpSsl: mapValueOfType<bool>(json, r'smtpSsl')!,
        smtpStartTls: mapValueOfType<bool>(json, r'smtpStartTls'),
      );
    }
    return null;
  }

  static List<ProviderSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderSettings> mapFromJson(dynamic json) {
    final map = <String, ProviderSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderSettings-objects as value to a dart map
  static Map<String, List<ProviderSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mailProvider',
    'imapHost',
    'imapPort',
    'imapSsl',
    'smtpHost',
    'smtpPort',
    'smtpSsl',
  };
}


class ProviderSettingsMailProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const ProviderSettingsMailProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GOOGLE = ProviderSettingsMailProviderEnum._(r'GOOGLE');
  static const MICROSOFT = ProviderSettingsMailProviderEnum._(r'MICROSOFT');

  /// List of all possible values in this [enum][ProviderSettingsMailProviderEnum].
  static const values = <ProviderSettingsMailProviderEnum>[
    GOOGLE,
    MICROSOFT,
  ];

  static ProviderSettingsMailProviderEnum? fromJson(dynamic value) => ProviderSettingsMailProviderEnumTypeTransformer().decode(value);

  static List<ProviderSettingsMailProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderSettingsMailProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderSettingsMailProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProviderSettingsMailProviderEnum] to String,
/// and [decode] dynamic data back to [ProviderSettingsMailProviderEnum].
class ProviderSettingsMailProviderEnumTypeTransformer {
  factory ProviderSettingsMailProviderEnumTypeTransformer() => _instance ??= const ProviderSettingsMailProviderEnumTypeTransformer._();

  const ProviderSettingsMailProviderEnumTypeTransformer._();

  String encode(ProviderSettingsMailProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProviderSettingsMailProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProviderSettingsMailProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GOOGLE': return ProviderSettingsMailProviderEnum.GOOGLE;
        case r'MICROSOFT': return ProviderSettingsMailProviderEnum.MICROSOFT;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProviderSettingsMailProviderEnumTypeTransformer] instance.
  static ProviderSettingsMailProviderEnumTypeTransformer? _instance;
}


