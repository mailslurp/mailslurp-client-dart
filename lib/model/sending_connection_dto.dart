//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SendingConnectionDto {
  /// Returns a new [SendingConnectionDto] instance.
  SendingConnectionDto({
    required this.id,
    required this.name,
    required this.provider,
    required this.providerPreset,
    this.capabilities = const {},
    required this.fromEmail,
    this.smtpHost,
    this.smtpPort,
    this.smtpSecurity,
    this.usernameHint,
    this.apiRegion,
    this.sendingDomain,
    required this.status,
    required this.enabled,
    this.lastVerifiedAt,
    this.lastErrorCode,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  SendingConnectionDtoProviderEnum provider;

  SendingConnectionDtoProviderPresetEnum providerPreset;

  Set<SendingConnectionDtoCapabilitiesEnum> capabilities;

  String fromEmail;

  String? smtpHost;

  int? smtpPort;

  SendingConnectionDtoSmtpSecurityEnum? smtpSecurity;

  String? usernameHint;

  SendingConnectionDtoApiRegionEnum? apiRegion;

  String? sendingDomain;

  SendingConnectionDtoStatusEnum status;

  bool enabled;

  DateTime? lastVerifiedAt;

  String? lastErrorCode;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendingConnectionDto &&
     other.id == id &&
     other.name == name &&
     other.provider == provider &&
     other.providerPreset == providerPreset &&
     other.capabilities == capabilities &&
     other.fromEmail == fromEmail &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpSecurity == smtpSecurity &&
     other.usernameHint == usernameHint &&
     other.apiRegion == apiRegion &&
     other.sendingDomain == sendingDomain &&
     other.status == status &&
     other.enabled == enabled &&
     other.lastVerifiedAt == lastVerifiedAt &&
     other.lastErrorCode == lastErrorCode &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (provider.hashCode) +
    (providerPreset.hashCode) +
    (capabilities.hashCode) +
    (fromEmail.hashCode) +
    (smtpHost == null ? 0 : smtpHost!.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpSecurity == null ? 0 : smtpSecurity!.hashCode) +
    (usernameHint == null ? 0 : usernameHint!.hashCode) +
    (apiRegion == null ? 0 : apiRegion!.hashCode) +
    (sendingDomain == null ? 0 : sendingDomain!.hashCode) +
    (status.hashCode) +
    (enabled.hashCode) +
    (lastVerifiedAt == null ? 0 : lastVerifiedAt!.hashCode) +
    (lastErrorCode == null ? 0 : lastErrorCode!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'SendingConnectionDto[id=$id, name=$name, provider=$provider, providerPreset=$providerPreset, capabilities=$capabilities, fromEmail=$fromEmail, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpSecurity=$smtpSecurity, usernameHint=$usernameHint, apiRegion=$apiRegion, sendingDomain=$sendingDomain, status=$status, enabled=$enabled, lastVerifiedAt=$lastVerifiedAt, lastErrorCode=$lastErrorCode, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'provider'] = this.provider;
      json[r'providerPreset'] = this.providerPreset;
      json[r'capabilities'] = this.capabilities;
      json[r'fromEmail'] = this.fromEmail;
    if (this.smtpHost != null) {
      json[r'smtpHost'] = this.smtpHost;
    } else {
      json[r'smtpHost'] = null;
    }
    if (this.smtpPort != null) {
      json[r'smtpPort'] = this.smtpPort;
    } else {
      json[r'smtpPort'] = null;
    }
    if (this.smtpSecurity != null) {
      json[r'smtpSecurity'] = this.smtpSecurity;
    } else {
      json[r'smtpSecurity'] = null;
    }
    if (this.usernameHint != null) {
      json[r'usernameHint'] = this.usernameHint;
    } else {
      json[r'usernameHint'] = null;
    }
    if (this.apiRegion != null) {
      json[r'apiRegion'] = this.apiRegion;
    } else {
      json[r'apiRegion'] = null;
    }
    if (this.sendingDomain != null) {
      json[r'sendingDomain'] = this.sendingDomain;
    } else {
      json[r'sendingDomain'] = null;
    }
      json[r'status'] = this.status;
      json[r'enabled'] = this.enabled;
    if (this.lastVerifiedAt != null) {
      json[r'lastVerifiedAt'] = this.lastVerifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastVerifiedAt'] = null;
    }
    if (this.lastErrorCode != null) {
      json[r'lastErrorCode'] = this.lastErrorCode;
    } else {
      json[r'lastErrorCode'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SendingConnectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendingConnectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SendingConnectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SendingConnectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SendingConnectionDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        provider: SendingConnectionDtoProviderEnum.fromJson(json[r'provider'])!,
        providerPreset: SendingConnectionDtoProviderPresetEnum.fromJson(json[r'providerPreset'])!,
        capabilities: SendingConnectionProviderDtoCapabilitiesEnum.listFromJson(json[r'capabilities']).toSet(),
        fromEmail: mapValueOfType<String>(json, r'fromEmail')!,
        smtpHost: mapValueOfType<String>(json, r'smtpHost'),
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpSecurity: SendingConnectionDtoSmtpSecurityEnum.fromJson(json[r'smtpSecurity']),
        usernameHint: mapValueOfType<String>(json, r'usernameHint'),
        apiRegion: SendingConnectionDtoApiRegionEnum.fromJson(json[r'apiRegion']),
        sendingDomain: mapValueOfType<String>(json, r'sendingDomain'),
        status: SendingConnectionDtoStatusEnum.fromJson(json[r'status'])!,
        enabled: mapValueOfType<bool>(json, r'enabled')!,
        lastVerifiedAt: mapDateTime(json, r'lastVerifiedAt', ''),
        lastErrorCode: mapValueOfType<String>(json, r'lastErrorCode'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<SendingConnectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendingConnectionDto> mapFromJson(dynamic json) {
    final map = <String, SendingConnectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendingConnectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendingConnectionDto-objects as value to a dart map
  static Map<String, List<SendingConnectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendingConnectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendingConnectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'provider',
    'providerPreset',
    'capabilities',
    'fromEmail',
    'status',
    'enabled',
    'createdAt',
    'updatedAt',
  };
}


class SendingConnectionDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = SendingConnectionDtoProviderEnum._(r'SMTP');
  static const AMAZON_SES = SendingConnectionDtoProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = SendingConnectionDtoProviderEnum._(r'SENDGRID');
  static const RESEND = SendingConnectionDtoProviderEnum._(r'RESEND');
  static const MAILGUN = SendingConnectionDtoProviderEnum._(r'MAILGUN');
  static const POSTMARK = SendingConnectionDtoProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][SendingConnectionDtoProviderEnum].
  static const values = <SendingConnectionDtoProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static SendingConnectionDtoProviderEnum? fromJson(dynamic value) => SendingConnectionDtoProviderEnumTypeTransformer().decode(value);

  static List<SendingConnectionDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDtoProviderEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDtoProviderEnum].
class SendingConnectionDtoProviderEnumTypeTransformer {
  factory SendingConnectionDtoProviderEnumTypeTransformer() => _instance ??= const SendingConnectionDtoProviderEnumTypeTransformer._();

  const SendingConnectionDtoProviderEnumTypeTransformer._();

  String encode(SendingConnectionDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return SendingConnectionDtoProviderEnum.SMTP;
        case r'AMAZON_SES': return SendingConnectionDtoProviderEnum.AMAZON_SES;
        case r'SENDGRID': return SendingConnectionDtoProviderEnum.SENDGRID;
        case r'RESEND': return SendingConnectionDtoProviderEnum.RESEND;
        case r'MAILGUN': return SendingConnectionDtoProviderEnum.MAILGUN;
        case r'POSTMARK': return SendingConnectionDtoProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDtoProviderEnumTypeTransformer] instance.
  static SendingConnectionDtoProviderEnumTypeTransformer? _instance;
}



class SendingConnectionDtoProviderPresetEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDtoProviderPresetEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const GENERIC_SMTP = SendingConnectionDtoProviderPresetEnum._(r'GENERIC_SMTP');
  static const GMAIL = SendingConnectionDtoProviderPresetEnum._(r'GMAIL');
  static const GOOGLE_WORKSPACE = SendingConnectionDtoProviderPresetEnum._(r'GOOGLE_WORKSPACE');
  static const mICROSOFT365 = SendingConnectionDtoProviderPresetEnum._(r'MICROSOFT_365');
  static const OUTLOOK_COM = SendingConnectionDtoProviderPresetEnum._(r'OUTLOOK_COM');
  static const YAHOO_MAIL = SendingConnectionDtoProviderPresetEnum._(r'YAHOO_MAIL');
  static const APPLE_ICLOUD = SendingConnectionDtoProviderPresetEnum._(r'APPLE_ICLOUD');
  static const FASTMAIL = SendingConnectionDtoProviderPresetEnum._(r'FASTMAIL');
  static const ZOHO_MAIL = SendingConnectionDtoProviderPresetEnum._(r'ZOHO_MAIL');
  static const AOL_MAIL = SendingConnectionDtoProviderPresetEnum._(r'AOL_MAIL');
  static const GMX_MAIL = SendingConnectionDtoProviderPresetEnum._(r'GMX_MAIL');
  static const MAIL_COM = SendingConnectionDtoProviderPresetEnum._(r'MAIL_COM');
  static const PROTON_MAIL = SendingConnectionDtoProviderPresetEnum._(r'PROTON_MAIL');
  static const AMAZON_SES = SendingConnectionDtoProviderPresetEnum._(r'AMAZON_SES');
  static const SENDGRID = SendingConnectionDtoProviderPresetEnum._(r'SENDGRID');
  static const RESEND = SendingConnectionDtoProviderPresetEnum._(r'RESEND');
  static const MAILGUN = SendingConnectionDtoProviderPresetEnum._(r'MAILGUN');
  static const POSTMARK = SendingConnectionDtoProviderPresetEnum._(r'POSTMARK');
  static const BREVO = SendingConnectionDtoProviderPresetEnum._(r'BREVO');
  static const MAILJET = SendingConnectionDtoProviderPresetEnum._(r'MAILJET');
  static const SPARKPOST = SendingConnectionDtoProviderPresetEnum._(r'SPARKPOST');
  static const sMTP2GO = SendingConnectionDtoProviderPresetEnum._(r'SMTP2GO');
  static const SENDPULSE = SendingConnectionDtoProviderPresetEnum._(r'SENDPULSE');
  static const SOCKETLABS = SendingConnectionDtoProviderPresetEnum._(r'SOCKETLABS');
  static const MAILERSEND = SendingConnectionDtoProviderPresetEnum._(r'MAILERSEND');
  static const MANDRILL = SendingConnectionDtoProviderPresetEnum._(r'MANDRILL');
  static const ELASTIC_EMAIL = SendingConnectionDtoProviderPresetEnum._(r'ELASTIC_EMAIL');

  /// List of all possible values in this [enum][SendingConnectionDtoProviderPresetEnum].
  static const values = <SendingConnectionDtoProviderPresetEnum>[
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

  static SendingConnectionDtoProviderPresetEnum? fromJson(dynamic value) => SendingConnectionDtoProviderPresetEnumTypeTransformer().decode(value);

  static List<SendingConnectionDtoProviderPresetEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDtoProviderPresetEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDtoProviderPresetEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDtoProviderPresetEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDtoProviderPresetEnum].
class SendingConnectionDtoProviderPresetEnumTypeTransformer {
  factory SendingConnectionDtoProviderPresetEnumTypeTransformer() => _instance ??= const SendingConnectionDtoProviderPresetEnumTypeTransformer._();

  const SendingConnectionDtoProviderPresetEnumTypeTransformer._();

  String encode(SendingConnectionDtoProviderPresetEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDtoProviderPresetEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDtoProviderPresetEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'GENERIC_SMTP': return SendingConnectionDtoProviderPresetEnum.GENERIC_SMTP;
        case r'GMAIL': return SendingConnectionDtoProviderPresetEnum.GMAIL;
        case r'GOOGLE_WORKSPACE': return SendingConnectionDtoProviderPresetEnum.GOOGLE_WORKSPACE;
        case r'MICROSOFT_365': return SendingConnectionDtoProviderPresetEnum.mICROSOFT365;
        case r'OUTLOOK_COM': return SendingConnectionDtoProviderPresetEnum.OUTLOOK_COM;
        case r'YAHOO_MAIL': return SendingConnectionDtoProviderPresetEnum.YAHOO_MAIL;
        case r'APPLE_ICLOUD': return SendingConnectionDtoProviderPresetEnum.APPLE_ICLOUD;
        case r'FASTMAIL': return SendingConnectionDtoProviderPresetEnum.FASTMAIL;
        case r'ZOHO_MAIL': return SendingConnectionDtoProviderPresetEnum.ZOHO_MAIL;
        case r'AOL_MAIL': return SendingConnectionDtoProviderPresetEnum.AOL_MAIL;
        case r'GMX_MAIL': return SendingConnectionDtoProviderPresetEnum.GMX_MAIL;
        case r'MAIL_COM': return SendingConnectionDtoProviderPresetEnum.MAIL_COM;
        case r'PROTON_MAIL': return SendingConnectionDtoProviderPresetEnum.PROTON_MAIL;
        case r'AMAZON_SES': return SendingConnectionDtoProviderPresetEnum.AMAZON_SES;
        case r'SENDGRID': return SendingConnectionDtoProviderPresetEnum.SENDGRID;
        case r'RESEND': return SendingConnectionDtoProviderPresetEnum.RESEND;
        case r'MAILGUN': return SendingConnectionDtoProviderPresetEnum.MAILGUN;
        case r'POSTMARK': return SendingConnectionDtoProviderPresetEnum.POSTMARK;
        case r'BREVO': return SendingConnectionDtoProviderPresetEnum.BREVO;
        case r'MAILJET': return SendingConnectionDtoProviderPresetEnum.MAILJET;
        case r'SPARKPOST': return SendingConnectionDtoProviderPresetEnum.SPARKPOST;
        case r'SMTP2GO': return SendingConnectionDtoProviderPresetEnum.sMTP2GO;
        case r'SENDPULSE': return SendingConnectionDtoProviderPresetEnum.SENDPULSE;
        case r'SOCKETLABS': return SendingConnectionDtoProviderPresetEnum.SOCKETLABS;
        case r'MAILERSEND': return SendingConnectionDtoProviderPresetEnum.MAILERSEND;
        case r'MANDRILL': return SendingConnectionDtoProviderPresetEnum.MANDRILL;
        case r'ELASTIC_EMAIL': return SendingConnectionDtoProviderPresetEnum.ELASTIC_EMAIL;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDtoProviderPresetEnumTypeTransformer] instance.
  static SendingConnectionDtoProviderPresetEnumTypeTransformer? _instance;
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



class SendingConnectionDtoSmtpSecurityEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDtoSmtpSecurityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START_TLS = SendingConnectionDtoSmtpSecurityEnum._(r'START_TLS');
  static const TLS = SendingConnectionDtoSmtpSecurityEnum._(r'TLS');

  /// List of all possible values in this [enum][SendingConnectionDtoSmtpSecurityEnum].
  static const values = <SendingConnectionDtoSmtpSecurityEnum>[
    START_TLS,
    TLS,
  ];

  static SendingConnectionDtoSmtpSecurityEnum? fromJson(dynamic value) => SendingConnectionDtoSmtpSecurityEnumTypeTransformer().decode(value);

  static List<SendingConnectionDtoSmtpSecurityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDtoSmtpSecurityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDtoSmtpSecurityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDtoSmtpSecurityEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDtoSmtpSecurityEnum].
class SendingConnectionDtoSmtpSecurityEnumTypeTransformer {
  factory SendingConnectionDtoSmtpSecurityEnumTypeTransformer() => _instance ??= const SendingConnectionDtoSmtpSecurityEnumTypeTransformer._();

  const SendingConnectionDtoSmtpSecurityEnumTypeTransformer._();

  String encode(SendingConnectionDtoSmtpSecurityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDtoSmtpSecurityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDtoSmtpSecurityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'START_TLS': return SendingConnectionDtoSmtpSecurityEnum.START_TLS;
        case r'TLS': return SendingConnectionDtoSmtpSecurityEnum.TLS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDtoSmtpSecurityEnumTypeTransformer] instance.
  static SendingConnectionDtoSmtpSecurityEnumTypeTransformer? _instance;
}



class SendingConnectionDtoApiRegionEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDtoApiRegionEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const US = SendingConnectionDtoApiRegionEnum._(r'US');
  static const EU = SendingConnectionDtoApiRegionEnum._(r'EU');

  /// List of all possible values in this [enum][SendingConnectionDtoApiRegionEnum].
  static const values = <SendingConnectionDtoApiRegionEnum>[
    US,
    EU,
  ];

  static SendingConnectionDtoApiRegionEnum? fromJson(dynamic value) => SendingConnectionDtoApiRegionEnumTypeTransformer().decode(value);

  static List<SendingConnectionDtoApiRegionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDtoApiRegionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDtoApiRegionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDtoApiRegionEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDtoApiRegionEnum].
class SendingConnectionDtoApiRegionEnumTypeTransformer {
  factory SendingConnectionDtoApiRegionEnumTypeTransformer() => _instance ??= const SendingConnectionDtoApiRegionEnumTypeTransformer._();

  const SendingConnectionDtoApiRegionEnumTypeTransformer._();

  String encode(SendingConnectionDtoApiRegionEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDtoApiRegionEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDtoApiRegionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'US': return SendingConnectionDtoApiRegionEnum.US;
        case r'EU': return SendingConnectionDtoApiRegionEnum.EU;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDtoApiRegionEnumTypeTransformer] instance.
  static SendingConnectionDtoApiRegionEnumTypeTransformer? _instance;
}



class SendingConnectionDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const SendingConnectionDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNVERIFIED = SendingConnectionDtoStatusEnum._(r'UNVERIFIED');
  static const CONNECTED = SendingConnectionDtoStatusEnum._(r'CONNECTED');
  static const ERROR = SendingConnectionDtoStatusEnum._(r'ERROR');
  static const DISCONNECTED = SendingConnectionDtoStatusEnum._(r'DISCONNECTED');

  /// List of all possible values in this [enum][SendingConnectionDtoStatusEnum].
  static const values = <SendingConnectionDtoStatusEnum>[
    UNVERIFIED,
    CONNECTED,
    ERROR,
    DISCONNECTED,
  ];

  static SendingConnectionDtoStatusEnum? fromJson(dynamic value) => SendingConnectionDtoStatusEnumTypeTransformer().decode(value);

  static List<SendingConnectionDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendingConnectionDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendingConnectionDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [SendingConnectionDtoStatusEnum] to String,
/// and [decode] dynamic data back to [SendingConnectionDtoStatusEnum].
class SendingConnectionDtoStatusEnumTypeTransformer {
  factory SendingConnectionDtoStatusEnumTypeTransformer() => _instance ??= const SendingConnectionDtoStatusEnumTypeTransformer._();

  const SendingConnectionDtoStatusEnumTypeTransformer._();

  String encode(SendingConnectionDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a SendingConnectionDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  SendingConnectionDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNVERIFIED': return SendingConnectionDtoStatusEnum.UNVERIFIED;
        case r'CONNECTED': return SendingConnectionDtoStatusEnum.CONNECTED;
        case r'ERROR': return SendingConnectionDtoStatusEnum.ERROR;
        case r'DISCONNECTED': return SendingConnectionDtoStatusEnum.DISCONNECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [SendingConnectionDtoStatusEnumTypeTransformer] instance.
  static SendingConnectionDtoStatusEnumTypeTransformer? _instance;
}


