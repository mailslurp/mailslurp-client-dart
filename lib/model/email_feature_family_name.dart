//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EmailFeatureFamilyName {
  /// Returns a new [EmailFeatureFamilyName] instance.
  EmailFeatureFamilyName({
    required this.slug,
    required this.name,
  });

  EmailFeatureFamilyNameSlugEnum slug;

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EmailFeatureFamilyName &&
     other.slug == slug &&
     other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (slug.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'EmailFeatureFamilyName[slug=$slug, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'slug'] = this.slug;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [EmailFeatureFamilyName] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EmailFeatureFamilyName? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EmailFeatureFamilyName[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EmailFeatureFamilyName[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EmailFeatureFamilyName(
        slug: EmailFeatureFamilyNameSlugEnum.fromJson(json[r'slug'])!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<EmailFeatureFamilyName> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureFamilyName>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureFamilyName.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EmailFeatureFamilyName> mapFromJson(dynamic json) {
    final map = <String, EmailFeatureFamilyName>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EmailFeatureFamilyName.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EmailFeatureFamilyName-objects as value to a dart map
  static Map<String, List<EmailFeatureFamilyName>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EmailFeatureFamilyName>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EmailFeatureFamilyName.listFromJson(entry.value, growable: growable,);
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


class EmailFeatureFamilyNameSlugEnum {
  /// Instantiate a new enum with the provided [value].
  const EmailFeatureFamilyNameSlugEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const aol = EmailFeatureFamilyNameSlugEnum._(r'aol');
  static const appleMail = EmailFeatureFamilyNameSlugEnum._(r'apple-mail');
  static const fastmail = EmailFeatureFamilyNameSlugEnum._(r'fastmail');
  static const freeFr = EmailFeatureFamilyNameSlugEnum._(r'free-fr');
  static const gmail = EmailFeatureFamilyNameSlugEnum._(r'gmail');
  static const gmx = EmailFeatureFamilyNameSlugEnum._(r'gmx');
  static const hey = EmailFeatureFamilyNameSlugEnum._(r'hey');
  static const ionos1and1 = EmailFeatureFamilyNameSlugEnum._(r'ionos-1and1');
  static const laposte = EmailFeatureFamilyNameSlugEnum._(r'laposte');
  static const mailRu = EmailFeatureFamilyNameSlugEnum._(r'mail-ru');
  static const microsoft = EmailFeatureFamilyNameSlugEnum._(r'microsoft');
  static const orange = EmailFeatureFamilyNameSlugEnum._(r'orange');
  static const outlook = EmailFeatureFamilyNameSlugEnum._(r'outlook');
  static const protonmail = EmailFeatureFamilyNameSlugEnum._(r'protonmail');
  static const rainloop = EmailFeatureFamilyNameSlugEnum._(r'rainloop');
  static const samsungEmail = EmailFeatureFamilyNameSlugEnum._(r'samsung-email');
  static const sfr = EmailFeatureFamilyNameSlugEnum._(r'sfr');
  static const tOnlineDe = EmailFeatureFamilyNameSlugEnum._(r't-online-de');
  static const thunderbird = EmailFeatureFamilyNameSlugEnum._(r'thunderbird');
  static const webDe = EmailFeatureFamilyNameSlugEnum._(r'web-de');
  static const yahoo = EmailFeatureFamilyNameSlugEnum._(r'yahoo');

  /// List of all possible values in this [enum][EmailFeatureFamilyNameSlugEnum].
  static const values = <EmailFeatureFamilyNameSlugEnum>[
    aol,
    appleMail,
    fastmail,
    freeFr,
    gmail,
    gmx,
    hey,
    ionos1and1,
    laposte,
    mailRu,
    microsoft,
    orange,
    outlook,
    protonmail,
    rainloop,
    samsungEmail,
    sfr,
    tOnlineDe,
    thunderbird,
    webDe,
    yahoo,
  ];

  static EmailFeatureFamilyNameSlugEnum? fromJson(dynamic value) => EmailFeatureFamilyNameSlugEnumTypeTransformer().decode(value);

  static List<EmailFeatureFamilyNameSlugEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EmailFeatureFamilyNameSlugEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EmailFeatureFamilyNameSlugEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [EmailFeatureFamilyNameSlugEnum] to String,
/// and [decode] dynamic data back to [EmailFeatureFamilyNameSlugEnum].
class EmailFeatureFamilyNameSlugEnumTypeTransformer {
  factory EmailFeatureFamilyNameSlugEnumTypeTransformer() => _instance ??= const EmailFeatureFamilyNameSlugEnumTypeTransformer._();

  const EmailFeatureFamilyNameSlugEnumTypeTransformer._();

  String encode(EmailFeatureFamilyNameSlugEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a EmailFeatureFamilyNameSlugEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  EmailFeatureFamilyNameSlugEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'aol': return EmailFeatureFamilyNameSlugEnum.aol;
        case r'apple-mail': return EmailFeatureFamilyNameSlugEnum.appleMail;
        case r'fastmail': return EmailFeatureFamilyNameSlugEnum.fastmail;
        case r'free-fr': return EmailFeatureFamilyNameSlugEnum.freeFr;
        case r'gmail': return EmailFeatureFamilyNameSlugEnum.gmail;
        case r'gmx': return EmailFeatureFamilyNameSlugEnum.gmx;
        case r'hey': return EmailFeatureFamilyNameSlugEnum.hey;
        case r'ionos-1and1': return EmailFeatureFamilyNameSlugEnum.ionos1and1;
        case r'laposte': return EmailFeatureFamilyNameSlugEnum.laposte;
        case r'mail-ru': return EmailFeatureFamilyNameSlugEnum.mailRu;
        case r'microsoft': return EmailFeatureFamilyNameSlugEnum.microsoft;
        case r'orange': return EmailFeatureFamilyNameSlugEnum.orange;
        case r'outlook': return EmailFeatureFamilyNameSlugEnum.outlook;
        case r'protonmail': return EmailFeatureFamilyNameSlugEnum.protonmail;
        case r'rainloop': return EmailFeatureFamilyNameSlugEnum.rainloop;
        case r'samsung-email': return EmailFeatureFamilyNameSlugEnum.samsungEmail;
        case r'sfr': return EmailFeatureFamilyNameSlugEnum.sfr;
        case r't-online-de': return EmailFeatureFamilyNameSlugEnum.tOnlineDe;
        case r'thunderbird': return EmailFeatureFamilyNameSlugEnum.thunderbird;
        case r'web-de': return EmailFeatureFamilyNameSlugEnum.webDe;
        case r'yahoo': return EmailFeatureFamilyNameSlugEnum.yahoo;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [EmailFeatureFamilyNameSlugEnumTypeTransformer] instance.
  static EmailFeatureFamilyNameSlugEnumTypeTransformer? _instance;
}


