//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateSendingConnectionOptions {
  /// Returns a new [CreateSendingConnectionOptions] instance.
  CreateSendingConnectionOptions({
    required this.name,
    required this.providerPreset,
    required this.provider,
    required this.fromEmail,
    this.smtp,
    this.apiKey,
  });

  String name;

  CreateSendingConnectionOptionsProviderPresetEnum providerPreset;

  CreateSendingConnectionOptionsProviderEnum provider;

  String fromEmail;

  SendingConnectionSmtpOptions? smtp;

  SendingConnectionApiKeyOptions? apiKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateSendingConnectionOptions &&
     other.name == name &&
     other.providerPreset == providerPreset &&
     other.provider == provider &&
     other.fromEmail == fromEmail &&
     other.smtp == smtp &&
     other.apiKey == apiKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (providerPreset.hashCode) +
    (provider.hashCode) +
    (fromEmail.hashCode) +
    (smtp == null ? 0 : smtp!.hashCode) +
    (apiKey == null ? 0 : apiKey!.hashCode);

  @override
  String toString() => 'CreateSendingConnectionOptions[name=$name, providerPreset=$providerPreset, provider=$provider, fromEmail=$fromEmail, smtp=$smtp, apiKey=$apiKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'providerPreset'] = this.providerPreset;
      json[r'provider'] = this.provider;
      json[r'fromEmail'] = this.fromEmail;
    if (this.smtp != null) {
      json[r'smtp'] = this.smtp;
    } else {
      json[r'smtp'] = null;
    }
    if (this.apiKey != null) {
      json[r'apiKey'] = this.apiKey;
    } else {
      json[r'apiKey'] = null;
    }
    return json;
  }

  /// Returns a new [CreateSendingConnectionOptions] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateSendingConnectionOptions? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateSendingConnectionOptions[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateSendingConnectionOptions[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateSendingConnectionOptions(
        name: mapValueOfType<String>(json, r'name')!,
        providerPreset: CreateSendingConnectionOptionsProviderPresetEnum.fromJson(json[r'providerPreset'])!,
        provider: CreateSendingConnectionOptionsProviderEnum.fromJson(json[r'provider'])!,
        fromEmail: mapValueOfType<String>(json, r'fromEmail')!,
        smtp: SendingConnectionSmtpOptions.fromJson(json[r'smtp']),
        apiKey: SendingConnectionApiKeyOptions.fromJson(json[r'apiKey']),
      );
    }
    return null;
  }

  static List<CreateSendingConnectionOptions> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSendingConnectionOptions>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSendingConnectionOptions.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateSendingConnectionOptions> mapFromJson(dynamic json) {
    final map = <String, CreateSendingConnectionOptions>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateSendingConnectionOptions.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateSendingConnectionOptions-objects as value to a dart map
  static Map<String, List<CreateSendingConnectionOptions>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateSendingConnectionOptions>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateSendingConnectionOptions.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'providerPreset',
    'provider',
    'fromEmail',
  };
}


class CreateSendingConnectionOptionsProviderPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateSendingConnectionOptionsProviderPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENERIC_SMTP = CreateSendingConnectionOptionsProviderPresetEnum._(r'GENERIC_SMTP');
  static const GMAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'GMAIL');
  static const GOOGLE_WORKSPACE = CreateSendingConnectionOptionsProviderPresetEnum._(r'GOOGLE_WORKSPACE');
  static const mICROSOFT365 = CreateSendingConnectionOptionsProviderPresetEnum._(r'MICROSOFT_365');
  static const OUTLOOK_COM = CreateSendingConnectionOptionsProviderPresetEnum._(r'OUTLOOK_COM');
  static const YAHOO_MAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'YAHOO_MAIL');
  static const APPLE_ICLOUD = CreateSendingConnectionOptionsProviderPresetEnum._(r'APPLE_ICLOUD');
  static const FASTMAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'FASTMAIL');
  static const ZOHO_MAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'ZOHO_MAIL');
  static const AOL_MAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'AOL_MAIL');
  static const GMX_MAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'GMX_MAIL');
  static const MAIL_COM = CreateSendingConnectionOptionsProviderPresetEnum._(r'MAIL_COM');
  static const PROTON_MAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'PROTON_MAIL');
  static const AMAZON_SES = CreateSendingConnectionOptionsProviderPresetEnum._(r'AMAZON_SES');
  static const SENDGRID = CreateSendingConnectionOptionsProviderPresetEnum._(r'SENDGRID');
  static const RESEND = CreateSendingConnectionOptionsProviderPresetEnum._(r'RESEND');
  static const MAILGUN = CreateSendingConnectionOptionsProviderPresetEnum._(r'MAILGUN');
  static const POSTMARK = CreateSendingConnectionOptionsProviderPresetEnum._(r'POSTMARK');
  static const BREVO = CreateSendingConnectionOptionsProviderPresetEnum._(r'BREVO');
  static const MAILJET = CreateSendingConnectionOptionsProviderPresetEnum._(r'MAILJET');
  static const SPARKPOST = CreateSendingConnectionOptionsProviderPresetEnum._(r'SPARKPOST');
  static const sMTP2GO = CreateSendingConnectionOptionsProviderPresetEnum._(r'SMTP2GO');
  static const SENDPULSE = CreateSendingConnectionOptionsProviderPresetEnum._(r'SENDPULSE');
  static const SOCKETLABS = CreateSendingConnectionOptionsProviderPresetEnum._(r'SOCKETLABS');
  static const MAILERSEND = CreateSendingConnectionOptionsProviderPresetEnum._(r'MAILERSEND');
  static const MANDRILL = CreateSendingConnectionOptionsProviderPresetEnum._(r'MANDRILL');
  static const ELASTIC_EMAIL = CreateSendingConnectionOptionsProviderPresetEnum._(r'ELASTIC_EMAIL');

  /// List of all possible values in this [enum][CreateSendingConnectionOptionsProviderPresetEnum].
  static const values = <CreateSendingConnectionOptionsProviderPresetEnum>[
    GENERIC_SMTP,
    GMAIL,
    GOOGLE_WORKSPACE,
    mICROSOFT365,
    OUTLOOK_COM,
    YAHOO_MAIL,
    APPLE_ICLOUD,
    FASTMAIL,
    ZOHO_MAIL,
    AOL_MAIL,
    GMX_MAIL,
    MAIL_COM,
    PROTON_MAIL,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
    BREVO,
    MAILJET,
    SPARKPOST,
    sMTP2GO,
    SENDPULSE,
    SOCKETLABS,
    MAILERSEND,
    MANDRILL,
    ELASTIC_EMAIL,
  ];

  static CreateSendingConnectionOptionsProviderPresetEnum? fromJson(dynamic value) => CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer().decode(value);

  static List<CreateSendingConnectionOptionsProviderPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSendingConnectionOptionsProviderPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSendingConnectionOptionsProviderPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateSendingConnectionOptionsProviderPresetEnum] to String,
/// and [decode] dynamic data back to [CreateSendingConnectionOptionsProviderPresetEnum].
class CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer {
  factory CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer() => _instance ??= const CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer._();

  const CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer._();

  String encode(CreateSendingConnectionOptionsProviderPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateSendingConnectionOptionsProviderPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateSendingConnectionOptionsProviderPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENERIC_SMTP': return CreateSendingConnectionOptionsProviderPresetEnum.GENERIC_SMTP;
        case r'GMAIL': return CreateSendingConnectionOptionsProviderPresetEnum.GMAIL;
        case r'GOOGLE_WORKSPACE': return CreateSendingConnectionOptionsProviderPresetEnum.GOOGLE_WORKSPACE;
        case r'MICROSOFT_365': return CreateSendingConnectionOptionsProviderPresetEnum.mICROSOFT365;
        case r'OUTLOOK_COM': return CreateSendingConnectionOptionsProviderPresetEnum.OUTLOOK_COM;
        case r'YAHOO_MAIL': return CreateSendingConnectionOptionsProviderPresetEnum.YAHOO_MAIL;
        case r'APPLE_ICLOUD': return CreateSendingConnectionOptionsProviderPresetEnum.APPLE_ICLOUD;
        case r'FASTMAIL': return CreateSendingConnectionOptionsProviderPresetEnum.FASTMAIL;
        case r'ZOHO_MAIL': return CreateSendingConnectionOptionsProviderPresetEnum.ZOHO_MAIL;
        case r'AOL_MAIL': return CreateSendingConnectionOptionsProviderPresetEnum.AOL_MAIL;
        case r'GMX_MAIL': return CreateSendingConnectionOptionsProviderPresetEnum.GMX_MAIL;
        case r'MAIL_COM': return CreateSendingConnectionOptionsProviderPresetEnum.MAIL_COM;
        case r'PROTON_MAIL': return CreateSendingConnectionOptionsProviderPresetEnum.PROTON_MAIL;
        case r'AMAZON_SES': return CreateSendingConnectionOptionsProviderPresetEnum.AMAZON_SES;
        case r'SENDGRID': return CreateSendingConnectionOptionsProviderPresetEnum.SENDGRID;
        case r'RESEND': return CreateSendingConnectionOptionsProviderPresetEnum.RESEND;
        case r'MAILGUN': return CreateSendingConnectionOptionsProviderPresetEnum.MAILGUN;
        case r'POSTMARK': return CreateSendingConnectionOptionsProviderPresetEnum.POSTMARK;
        case r'BREVO': return CreateSendingConnectionOptionsProviderPresetEnum.BREVO;
        case r'MAILJET': return CreateSendingConnectionOptionsProviderPresetEnum.MAILJET;
        case r'SPARKPOST': return CreateSendingConnectionOptionsProviderPresetEnum.SPARKPOST;
        case r'SMTP2GO': return CreateSendingConnectionOptionsProviderPresetEnum.sMTP2GO;
        case r'SENDPULSE': return CreateSendingConnectionOptionsProviderPresetEnum.SENDPULSE;
        case r'SOCKETLABS': return CreateSendingConnectionOptionsProviderPresetEnum.SOCKETLABS;
        case r'MAILERSEND': return CreateSendingConnectionOptionsProviderPresetEnum.MAILERSEND;
        case r'MANDRILL': return CreateSendingConnectionOptionsProviderPresetEnum.MANDRILL;
        case r'ELASTIC_EMAIL': return CreateSendingConnectionOptionsProviderPresetEnum.ELASTIC_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer] instance.
  static CreateSendingConnectionOptionsProviderPresetEnumTypeTransformer? _instance;
}



class CreateSendingConnectionOptionsProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateSendingConnectionOptionsProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = CreateSendingConnectionOptionsProviderEnum._(r'SMTP');
  static const AMAZON_SES = CreateSendingConnectionOptionsProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = CreateSendingConnectionOptionsProviderEnum._(r'SENDGRID');
  static const RESEND = CreateSendingConnectionOptionsProviderEnum._(r'RESEND');
  static const MAILGUN = CreateSendingConnectionOptionsProviderEnum._(r'MAILGUN');
  static const POSTMARK = CreateSendingConnectionOptionsProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][CreateSendingConnectionOptionsProviderEnum].
  static const values = <CreateSendingConnectionOptionsProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static CreateSendingConnectionOptionsProviderEnum? fromJson(dynamic value) => CreateSendingConnectionOptionsProviderEnumTypeTransformer().decode(value);

  static List<CreateSendingConnectionOptionsProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateSendingConnectionOptionsProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateSendingConnectionOptionsProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateSendingConnectionOptionsProviderEnum] to String,
/// and [decode] dynamic data back to [CreateSendingConnectionOptionsProviderEnum].
class CreateSendingConnectionOptionsProviderEnumTypeTransformer {
  factory CreateSendingConnectionOptionsProviderEnumTypeTransformer() => _instance ??= const CreateSendingConnectionOptionsProviderEnumTypeTransformer._();

  const CreateSendingConnectionOptionsProviderEnumTypeTransformer._();

  String encode(CreateSendingConnectionOptionsProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateSendingConnectionOptionsProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateSendingConnectionOptionsProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return CreateSendingConnectionOptionsProviderEnum.SMTP;
        case r'AMAZON_SES': return CreateSendingConnectionOptionsProviderEnum.AMAZON_SES;
        case r'SENDGRID': return CreateSendingConnectionOptionsProviderEnum.SENDGRID;
        case r'RESEND': return CreateSendingConnectionOptionsProviderEnum.RESEND;
        case r'MAILGUN': return CreateSendingConnectionOptionsProviderEnum.MAILGUN;
        case r'POSTMARK': return CreateSendingConnectionOptionsProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [CreateSendingConnectionOptionsProviderEnumTypeTransformer] instance.
  static CreateSendingConnectionOptionsProviderEnumTypeTransformer? _instance;
}


