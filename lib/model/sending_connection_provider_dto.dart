//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionProviderDto {
  /// Returns a new [SendingConnectionProviderDto] instance.
  SendingConnectionProviderDto({
    required this.providerPreset,
    required this.provider,
    required this.displayName,
    required this.category,
    required this.availability,
    required this.setupType,
    required this.nativeIntegration,
    this.smtpDefaults,
    this.supportedApiRegions = const [],
    required this.requiresSendingDomain,
    this.setupNotes = const [],
    required this.credentialType,
    this.capabilities = const {},
  });

  SendingConnectionProviderDtoProviderPresetEnum providerPreset;

  SendingConnectionProviderDtoProviderEnum provider;

  String displayName;

  SendingConnectionProviderDtoCategoryEnum category;

  SendingConnectionProviderDtoAvailabilityEnum availability;

  SendingConnectionProviderDtoSetupTypeEnum setupType;

  bool nativeIntegration;

  SendingConnectionSmtpDefaults? smtpDefaults;

  List<SendingConnectionProviderDtoSupportedApiRegionsEnum> supportedApiRegions;

  bool requiresSendingDomain;

  List<String> setupNotes;

  String credentialType;

  Set<CapabilitiesEnum> capabilities;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionProviderDto &&
     other.providerPreset == providerPreset &&
     other.provider == provider &&
     other.displayName == displayName &&
     other.category == category &&
     other.availability == availability &&
     other.setupType == setupType &&
     other.nativeIntegration == nativeIntegration &&
     other.smtpDefaults == smtpDefaults &&
     other.supportedApiRegions == supportedApiRegions &&
     other.requiresSendingDomain == requiresSendingDomain &&
     other.setupNotes == setupNotes &&
     other.credentialType == credentialType &&
     other.capabilities == capabilities;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providerPreset.hashCode) +
    (provider.hashCode) +
    (displayName.hashCode) +
    (category.hashCode) +
    (availability.hashCode) +
    (setupType.hashCode) +
    (nativeIntegration.hashCode) +
    (smtpDefaults == null ? 0 : smtpDefaults!.hashCode) +
    (supportedApiRegions.hashCode) +
    (requiresSendingDomain.hashCode) +
    (setupNotes.hashCode) +
    (credentialType.hashCode) +
    (capabilities.hashCode);

  @override
  String toString() => 'SendingConnectionProviderDto[providerPreset=$providerPreset, provider=$provider, displayName=$displayName, category=$category, availability=$availability, setupType=$setupType, nativeIntegration=$nativeIntegration, smtpDefaults=$smtpDefaults, supportedApiRegions=$supportedApiRegions, requiresSendingDomain=$requiresSendingDomain, setupNotes=$setupNotes, credentialType=$credentialType, capabilities=$capabilities]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providerPreset'] = this.providerPreset;
      json[r'provider'] = this.provider;
      json[r'displayName'] = this.displayName;
      json[r'category'] = this.category;
      json[r'availability'] = this.availability;
      json[r'setupType'] = this.setupType;
      json[r'nativeIntegration'] = this.nativeIntegration;
    if (this.smtpDefaults != null) {
      json[r'smtpDefaults'] = this.smtpDefaults;
    } else {
      json[r'smtpDefaults'] = null;
    }
      json[r'supportedApiRegions'] = this.supportedApiRegions;
      json[r'requiresSendingDomain'] = this.requiresSendingDomain;
      json[r'setupNotes'] = this.setupNotes;
      json[r'credentialType'] = this.credentialType;
      json[r'capabilities'] = this.capabilities;
    return json;
  }

  /// Returns a new [SendingConnectionProviderDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionProviderDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionProviderDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionProviderDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionProviderDto(
        providerPreset: SendingConnectionProviderDtoProviderPresetEnum.fromJson(json[r'providerPreset'])!,
        provider: SendingConnectionProviderDtoProviderEnum.fromJson(json[r'provider'])!,
        displayName: mapValueOfType<String>(json, r'displayName')!,
        category: SendingConnectionProviderDtoCategoryEnum.fromJson(json[r'category'])!,
        availability: SendingConnectionProviderDtoAvailabilityEnum.fromJson(json[r'availability'])!,
        setupType: SendingConnectionProviderDtoSetupTypeEnum.fromJson(json[r'setupType'])!,
        nativeIntegration: mapValueOfType<bool>(json, r'nativeIntegration')!,
        smtpDefaults: SendingConnectionSmtpDefaults.fromJson(json[r'smtpDefaults']),
        supportedApiRegions: SendingConnectionProviderDtoSupportedApiRegionsEnum.listFromJson(json[r'supportedApiRegions']),
        requiresSendingDomain: mapValueOfType<bool>(json, r'requiresSendingDomain')!,
        setupNotes: json[r'setupNotes'] is List
            ? (json[r'setupNotes'] as List).cast<String>()
            : const [],
        credentialType: mapValueOfType<String>(json, r'credentialType')!,
        capabilities: SendingConnectionProviderDtoCapabilitiesEnum.listFromJson(json[r'capabilities']).toSet(),
      );
    }
    return null;
  }

  static List<SendingConnectionProviderDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionProviderDto> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionProviderDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionProviderDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionProviderDto-objects as value to a dart map
  static Map<String, List<SendingConnectionProviderDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionProviderDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionProviderDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'providerPreset',
    'provider',
    'displayName',
    'category',
    'availability',
    'setupType',
    'nativeIntegration',
    'supportedApiRegions',
    'requiresSendingDomain',
    'setupNotes',
    'credentialType',
    'capabilities',
  };
}


class SendingConnectionProviderDtoProviderPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoProviderPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENERIC_SMTP = SendingConnectionProviderDtoProviderPresetEnum._(r'GENERIC_SMTP');
  static const GMAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'GMAIL');
  static const GOOGLE_WORKSPACE = SendingConnectionProviderDtoProviderPresetEnum._(r'GOOGLE_WORKSPACE');
  static const mICROSOFT365 = SendingConnectionProviderDtoProviderPresetEnum._(r'MICROSOFT_365');
  static const OUTLOOK_COM = SendingConnectionProviderDtoProviderPresetEnum._(r'OUTLOOK_COM');
  static const YAHOO_MAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'YAHOO_MAIL');
  static const APPLE_ICLOUD = SendingConnectionProviderDtoProviderPresetEnum._(r'APPLE_ICLOUD');
  static const FASTMAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'FASTMAIL');
  static const ZOHO_MAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'ZOHO_MAIL');
  static const AOL_MAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'AOL_MAIL');
  static const GMX_MAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'GMX_MAIL');
  static const MAIL_COM = SendingConnectionProviderDtoProviderPresetEnum._(r'MAIL_COM');
  static const PROTON_MAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'PROTON_MAIL');
  static const AMAZON_SES = SendingConnectionProviderDtoProviderPresetEnum._(r'AMAZON_SES');
  static const SENDGRID = SendingConnectionProviderDtoProviderPresetEnum._(r'SENDGRID');
  static const RESEND = SendingConnectionProviderDtoProviderPresetEnum._(r'RESEND');
  static const MAILGUN = SendingConnectionProviderDtoProviderPresetEnum._(r'MAILGUN');
  static const POSTMARK = SendingConnectionProviderDtoProviderPresetEnum._(r'POSTMARK');
  static const BREVO = SendingConnectionProviderDtoProviderPresetEnum._(r'BREVO');
  static const MAILJET = SendingConnectionProviderDtoProviderPresetEnum._(r'MAILJET');
  static const SPARKPOST = SendingConnectionProviderDtoProviderPresetEnum._(r'SPARKPOST');
  static const sMTP2GO = SendingConnectionProviderDtoProviderPresetEnum._(r'SMTP2GO');
  static const SENDPULSE = SendingConnectionProviderDtoProviderPresetEnum._(r'SENDPULSE');
  static const SOCKETLABS = SendingConnectionProviderDtoProviderPresetEnum._(r'SOCKETLABS');
  static const MAILERSEND = SendingConnectionProviderDtoProviderPresetEnum._(r'MAILERSEND');
  static const MANDRILL = SendingConnectionProviderDtoProviderPresetEnum._(r'MANDRILL');
  static const ELASTIC_EMAIL = SendingConnectionProviderDtoProviderPresetEnum._(r'ELASTIC_EMAIL');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoProviderPresetEnum].
  static const values = <SendingConnectionProviderDtoProviderPresetEnum>[
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

  static SendingConnectionProviderDtoProviderPresetEnum? fromJson(dynamic value) => SendingConnectionProviderDtoProviderPresetEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoProviderPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoProviderPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoProviderPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoProviderPresetEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoProviderPresetEnum].
class SendingConnectionProviderDtoProviderPresetEnumTypeTransformer {
  factory SendingConnectionProviderDtoProviderPresetEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoProviderPresetEnumTypeTransformer._();

  const SendingConnectionProviderDtoProviderPresetEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoProviderPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoProviderPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoProviderPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENERIC_SMTP': return SendingConnectionProviderDtoProviderPresetEnum.GENERIC_SMTP;
        case r'GMAIL': return SendingConnectionProviderDtoProviderPresetEnum.GMAIL;
        case r'GOOGLE_WORKSPACE': return SendingConnectionProviderDtoProviderPresetEnum.GOOGLE_WORKSPACE;
        case r'MICROSOFT_365': return SendingConnectionProviderDtoProviderPresetEnum.mICROSOFT365;
        case r'OUTLOOK_COM': return SendingConnectionProviderDtoProviderPresetEnum.OUTLOOK_COM;
        case r'YAHOO_MAIL': return SendingConnectionProviderDtoProviderPresetEnum.YAHOO_MAIL;
        case r'APPLE_ICLOUD': return SendingConnectionProviderDtoProviderPresetEnum.APPLE_ICLOUD;
        case r'FASTMAIL': return SendingConnectionProviderDtoProviderPresetEnum.FASTMAIL;
        case r'ZOHO_MAIL': return SendingConnectionProviderDtoProviderPresetEnum.ZOHO_MAIL;
        case r'AOL_MAIL': return SendingConnectionProviderDtoProviderPresetEnum.AOL_MAIL;
        case r'GMX_MAIL': return SendingConnectionProviderDtoProviderPresetEnum.GMX_MAIL;
        case r'MAIL_COM': return SendingConnectionProviderDtoProviderPresetEnum.MAIL_COM;
        case r'PROTON_MAIL': return SendingConnectionProviderDtoProviderPresetEnum.PROTON_MAIL;
        case r'AMAZON_SES': return SendingConnectionProviderDtoProviderPresetEnum.AMAZON_SES;
        case r'SENDGRID': return SendingConnectionProviderDtoProviderPresetEnum.SENDGRID;
        case r'RESEND': return SendingConnectionProviderDtoProviderPresetEnum.RESEND;
        case r'MAILGUN': return SendingConnectionProviderDtoProviderPresetEnum.MAILGUN;
        case r'POSTMARK': return SendingConnectionProviderDtoProviderPresetEnum.POSTMARK;
        case r'BREVO': return SendingConnectionProviderDtoProviderPresetEnum.BREVO;
        case r'MAILJET': return SendingConnectionProviderDtoProviderPresetEnum.MAILJET;
        case r'SPARKPOST': return SendingConnectionProviderDtoProviderPresetEnum.SPARKPOST;
        case r'SMTP2GO': return SendingConnectionProviderDtoProviderPresetEnum.sMTP2GO;
        case r'SENDPULSE': return SendingConnectionProviderDtoProviderPresetEnum.SENDPULSE;
        case r'SOCKETLABS': return SendingConnectionProviderDtoProviderPresetEnum.SOCKETLABS;
        case r'MAILERSEND': return SendingConnectionProviderDtoProviderPresetEnum.MAILERSEND;
        case r'MANDRILL': return SendingConnectionProviderDtoProviderPresetEnum.MANDRILL;
        case r'ELASTIC_EMAIL': return SendingConnectionProviderDtoProviderPresetEnum.ELASTIC_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoProviderPresetEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoProviderPresetEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = SendingConnectionProviderDtoProviderEnum._(r'SMTP');
  static const AMAZON_SES = SendingConnectionProviderDtoProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = SendingConnectionProviderDtoProviderEnum._(r'SENDGRID');
  static const RESEND = SendingConnectionProviderDtoProviderEnum._(r'RESEND');
  static const MAILGUN = SendingConnectionProviderDtoProviderEnum._(r'MAILGUN');
  static const POSTMARK = SendingConnectionProviderDtoProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoProviderEnum].
  static const values = <SendingConnectionProviderDtoProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static SendingConnectionProviderDtoProviderEnum? fromJson(dynamic value) => SendingConnectionProviderDtoProviderEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoProviderEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoProviderEnum].
class SendingConnectionProviderDtoProviderEnumTypeTransformer {
  factory SendingConnectionProviderDtoProviderEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoProviderEnumTypeTransformer._();

  const SendingConnectionProviderDtoProviderEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return SendingConnectionProviderDtoProviderEnum.SMTP;
        case r'AMAZON_SES': return SendingConnectionProviderDtoProviderEnum.AMAZON_SES;
        case r'SENDGRID': return SendingConnectionProviderDtoProviderEnum.SENDGRID;
        case r'RESEND': return SendingConnectionProviderDtoProviderEnum.RESEND;
        case r'MAILGUN': return SendingConnectionProviderDtoProviderEnum.MAILGUN;
        case r'POSTMARK': return SendingConnectionProviderDtoProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoProviderEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoProviderEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoCategoryEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoCategoryEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const CUSTOM = SendingConnectionProviderDtoCategoryEnum._(r'CUSTOM');
  static const MAILBOX = SendingConnectionProviderDtoCategoryEnum._(r'MAILBOX');
  static const TRANSACTIONAL = SendingConnectionProviderDtoCategoryEnum._(r'TRANSACTIONAL');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoCategoryEnum].
  static const values = <SendingConnectionProviderDtoCategoryEnum>[
    CUSTOM,
    MAILBOX,
    TRANSACTIONAL,
  ];

  static SendingConnectionProviderDtoCategoryEnum? fromJson(dynamic value) => SendingConnectionProviderDtoCategoryEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoCategoryEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoCategoryEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoCategoryEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoCategoryEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoCategoryEnum].
class SendingConnectionProviderDtoCategoryEnumTypeTransformer {
  factory SendingConnectionProviderDtoCategoryEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoCategoryEnumTypeTransformer._();

  const SendingConnectionProviderDtoCategoryEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoCategoryEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoCategoryEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoCategoryEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'CUSTOM': return SendingConnectionProviderDtoCategoryEnum.CUSTOM;
        case r'MAILBOX': return SendingConnectionProviderDtoCategoryEnum.MAILBOX;
        case r'TRANSACTIONAL': return SendingConnectionProviderDtoCategoryEnum.TRANSACTIONAL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoCategoryEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoCategoryEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoAvailabilityEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoAvailabilityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const AVAILABLE = SendingConnectionProviderDtoAvailabilityEnum._(r'AVAILABLE');
  static const PLANNED = SendingConnectionProviderDtoAvailabilityEnum._(r'PLANNED');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoAvailabilityEnum].
  static const values = <SendingConnectionProviderDtoAvailabilityEnum>[
    AVAILABLE,
    PLANNED,
  ];

  static SendingConnectionProviderDtoAvailabilityEnum? fromJson(dynamic value) => SendingConnectionProviderDtoAvailabilityEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoAvailabilityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoAvailabilityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoAvailabilityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoAvailabilityEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoAvailabilityEnum].
class SendingConnectionProviderDtoAvailabilityEnumTypeTransformer {
  factory SendingConnectionProviderDtoAvailabilityEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoAvailabilityEnumTypeTransformer._();

  const SendingConnectionProviderDtoAvailabilityEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoAvailabilityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoAvailabilityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoAvailabilityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'AVAILABLE': return SendingConnectionProviderDtoAvailabilityEnum.AVAILABLE;
        case r'PLANNED': return SendingConnectionProviderDtoAvailabilityEnum.PLANNED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoAvailabilityEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoAvailabilityEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoSetupTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoSetupTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = SendingConnectionProviderDtoSetupTypeEnum._(r'SMTP');
  static const API_KEY = SendingConnectionProviderDtoSetupTypeEnum._(r'API_KEY');
  static const AWS_CREDENTIALS = SendingConnectionProviderDtoSetupTypeEnum._(r'AWS_CREDENTIALS');
  static const OAUTH = SendingConnectionProviderDtoSetupTypeEnum._(r'OAUTH');
  static const UNAVAILABLE = SendingConnectionProviderDtoSetupTypeEnum._(r'UNAVAILABLE');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoSetupTypeEnum].
  static const values = <SendingConnectionProviderDtoSetupTypeEnum>[
    SMTP,
    API_KEY,
    AWS_CREDENTIALS,
    OAUTH,
    UNAVAILABLE,
  ];

  static SendingConnectionProviderDtoSetupTypeEnum? fromJson(dynamic value) => SendingConnectionProviderDtoSetupTypeEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoSetupTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoSetupTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoSetupTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoSetupTypeEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoSetupTypeEnum].
class SendingConnectionProviderDtoSetupTypeEnumTypeTransformer {
  factory SendingConnectionProviderDtoSetupTypeEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoSetupTypeEnumTypeTransformer._();

  const SendingConnectionProviderDtoSetupTypeEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoSetupTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoSetupTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoSetupTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return SendingConnectionProviderDtoSetupTypeEnum.SMTP;
        case r'API_KEY': return SendingConnectionProviderDtoSetupTypeEnum.API_KEY;
        case r'AWS_CREDENTIALS': return SendingConnectionProviderDtoSetupTypeEnum.AWS_CREDENTIALS;
        case r'OAUTH': return SendingConnectionProviderDtoSetupTypeEnum.OAUTH;
        case r'UNAVAILABLE': return SendingConnectionProviderDtoSetupTypeEnum.UNAVAILABLE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoSetupTypeEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoSetupTypeEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoSupportedApiRegionsEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoSupportedApiRegionsEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = SendingConnectionProviderDtoSupportedApiRegionsEnum._(r'US');
  static const EU = SendingConnectionProviderDtoSupportedApiRegionsEnum._(r'EU');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoSupportedApiRegionsEnum].
  static const values = <SendingConnectionProviderDtoSupportedApiRegionsEnum>[
    US,
    EU,
  ];

  static SendingConnectionProviderDtoSupportedApiRegionsEnum? fromJson(dynamic value) => SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoSupportedApiRegionsEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoSupportedApiRegionsEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoSupportedApiRegionsEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoSupportedApiRegionsEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoSupportedApiRegionsEnum].
class SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer {
  factory SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer._();

  const SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoSupportedApiRegionsEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoSupportedApiRegionsEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoSupportedApiRegionsEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return SendingConnectionProviderDtoSupportedApiRegionsEnum.US;
        case r'EU': return SendingConnectionProviderDtoSupportedApiRegionsEnum.EU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoSupportedApiRegionsEnumTypeTransformer? _instance;
}



class SendingConnectionProviderDtoCapabilitiesEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionProviderDtoCapabilitiesEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SEND_EMAIL = SendingConnectionProviderDtoCapabilitiesEnum._(r'SEND_EMAIL');
  static const VERIFY_CONNECTION = SendingConnectionProviderDtoCapabilitiesEnum._(r'VERIFY_CONNECTION');
  static const ROTATE_CREDENTIALS = SendingConnectionProviderDtoCapabilitiesEnum._(r'ROTATE_CREDENTIALS');
  static const DELIVERY_PROBE = SendingConnectionProviderDtoCapabilitiesEnum._(r'DELIVERY_PROBE');

  /// List of all possible values in this [enum][SendingConnectionProviderDtoCapabilitiesEnum].
  static const values = <SendingConnectionProviderDtoCapabilitiesEnum>[
    SEND_EMAIL,
    VERIFY_CONNECTION,
    ROTATE_CREDENTIALS,
    DELIVERY_PROBE,
  ];

  static SendingConnectionProviderDtoCapabilitiesEnum? fromJson(dynamic value) => SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer().decode(value);

  static List<SendingConnectionProviderDtoCapabilitiesEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionProviderDtoCapabilitiesEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionProviderDtoCapabilitiesEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionProviderDtoCapabilitiesEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionProviderDtoCapabilitiesEnum].
class SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer {
  factory SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer() => _instance ??= const SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer._();

  const SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer._();

  String encode(SendingConnectionProviderDtoCapabilitiesEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionProviderDtoCapabilitiesEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionProviderDtoCapabilitiesEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SEND_EMAIL': return SendingConnectionProviderDtoCapabilitiesEnum.SEND_EMAIL;
        case r'VERIFY_CONNECTION': return SendingConnectionProviderDtoCapabilitiesEnum.VERIFY_CONNECTION;
        case r'ROTATE_CREDENTIALS': return SendingConnectionProviderDtoCapabilitiesEnum.ROTATE_CREDENTIALS;
        case r'DELIVERY_PROBE': return SendingConnectionProviderDtoCapabilitiesEnum.DELIVERY_PROBE;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer] instance.
  static SendingConnectionProviderDtoCapabilitiesEnumTypeTransformer? _instance;
}


