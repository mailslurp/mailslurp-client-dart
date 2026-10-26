//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AutomatedInboxPlacementConnectionDto {
  /// Returns a new [AutomatedInboxPlacementConnectionDto] instance.
  AutomatedInboxPlacementConnectionDto({
    required this.id,
    required this.name,
    required this.provider,
    required this.fromEmail,
    this.smtpHost,
    this.smtpPort,
    this.smtpSecurity,
    this.usernameHint,
    required this.status,
    this.lastVerifiedAt,
    this.lastErrorCode,
    required this.createdAt,
    required this.updatedAt,
  });

  String id;

  String name;

  AutomatedInboxPlacementConnectionDtoProviderEnum provider;

  String fromEmail;

  String? smtpHost;

  int? smtpPort;

  AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum? smtpSecurity;

  String? usernameHint;

  AutomatedInboxPlacementConnectionDtoStatusEnum status;

  DateTime? lastVerifiedAt;

  String? lastErrorCode;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AutomatedInboxPlacementConnectionDto &&
     other.id == id &&
     other.name == name &&
     other.provider == provider &&
     other.fromEmail == fromEmail &&
     other.smtpHost == smtpHost &&
     other.smtpPort == smtpPort &&
     other.smtpSecurity == smtpSecurity &&
     other.usernameHint == usernameHint &&
     other.status == status &&
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
    (fromEmail.hashCode) +
    (smtpHost == null ? 0 : smtpHost!.hashCode) +
    (smtpPort == null ? 0 : smtpPort!.hashCode) +
    (smtpSecurity == null ? 0 : smtpSecurity!.hashCode) +
    (usernameHint == null ? 0 : usernameHint!.hashCode) +
    (status.hashCode) +
    (lastVerifiedAt == null ? 0 : lastVerifiedAt!.hashCode) +
    (lastErrorCode == null ? 0 : lastErrorCode!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode);

  @override
  String toString() => 'AutomatedInboxPlacementConnectionDto[id=$id, name=$name, provider=$provider, fromEmail=$fromEmail, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpSecurity=$smtpSecurity, usernameHint=$usernameHint, status=$status, lastVerifiedAt=$lastVerifiedAt, lastErrorCode=$lastErrorCode, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
      json[r'provider'] = this.provider;
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
      json[r'status'] = this.status;
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

  /// Returns a new [AutomatedInboxPlacementConnectionDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AutomatedInboxPlacementConnectionDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AutomatedInboxPlacementConnectionDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AutomatedInboxPlacementConnectionDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AutomatedInboxPlacementConnectionDto(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        provider: AutomatedInboxPlacementConnectionDtoProviderEnum.fromJson(json[r'provider'])!,
        fromEmail: mapValueOfType<String>(json, r'fromEmail')!,
        smtpHost: mapValueOfType<String>(json, r'smtpHost'),
        smtpPort: mapValueOfType<int>(json, r'smtpPort'),
        smtpSecurity: AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum.fromJson(json[r'smtpSecurity']),
        usernameHint: mapValueOfType<String>(json, r'usernameHint'),
        status: AutomatedInboxPlacementConnectionDtoStatusEnum.fromJson(json[r'status'])!,
        lastVerifiedAt: mapDateTime(json, r'lastVerifiedAt', ''),
        lastErrorCode: mapValueOfType<String>(json, r'lastErrorCode'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
      );
    }
    return null;
  }

  static List<AutomatedInboxPlacementConnectionDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementConnectionDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementConnectionDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AutomatedInboxPlacementConnectionDto> mapFromJson(dynamic json) {
    final map = <String, AutomatedInboxPlacementConnectionDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AutomatedInboxPlacementConnectionDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AutomatedInboxPlacementConnectionDto-objects as value to a dart map
  static Map<String, List<AutomatedInboxPlacementConnectionDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AutomatedInboxPlacementConnectionDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AutomatedInboxPlacementConnectionDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
    'provider',
    'fromEmail',
    'status',
    'createdAt',
    'updatedAt',
  };
}


class AutomatedInboxPlacementConnectionDtoProviderEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementConnectionDtoProviderEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SMTP = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'SMTP');
  static const AMAZON_SES = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'AMAZON_SES');
  static const SENDGRID = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'SENDGRID');
  static const RESEND = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'RESEND');
  static const MAILGUN = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'MAILGUN');
  static const POSTMARK = AutomatedInboxPlacementConnectionDtoProviderEnum._(r'POSTMARK');

  /// List of all possible values in this [enum][AutomatedInboxPlacementConnectionDtoProviderEnum].
  static const values = <AutomatedInboxPlacementConnectionDtoProviderEnum>[
    SMTP,
    AMAZON_SES,
    SENDGRID,
    RESEND,
    MAILGUN,
    POSTMARK,
  ];

  static AutomatedInboxPlacementConnectionDtoProviderEnum? fromJson(dynamic value) => AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementConnectionDtoProviderEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementConnectionDtoProviderEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementConnectionDtoProviderEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementConnectionDtoProviderEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementConnectionDtoProviderEnum].
class AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer {
  factory AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer._();

  const AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementConnectionDtoProviderEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementConnectionDtoProviderEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementConnectionDtoProviderEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'SMTP': return AutomatedInboxPlacementConnectionDtoProviderEnum.SMTP;
        case r'AMAZON_SES': return AutomatedInboxPlacementConnectionDtoProviderEnum.AMAZON_SES;
        case r'SENDGRID': return AutomatedInboxPlacementConnectionDtoProviderEnum.SENDGRID;
        case r'RESEND': return AutomatedInboxPlacementConnectionDtoProviderEnum.RESEND;
        case r'MAILGUN': return AutomatedInboxPlacementConnectionDtoProviderEnum.MAILGUN;
        case r'POSTMARK': return AutomatedInboxPlacementConnectionDtoProviderEnum.POSTMARK;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer] instance.
  static AutomatedInboxPlacementConnectionDtoProviderEnumTypeTransformer? _instance;
}



class AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const START_TLS = AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum._(r'START_TLS');
  static const TLS = AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum._(r'TLS');

  /// List of all possible values in this [enum][AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum].
  static const values = <AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum>[
    START_TLS,
    TLS,
  ];

  static AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum? fromJson(dynamic value) => AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum].
class AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer {
  factory AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer._();

  const AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'START_TLS': return AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum.START_TLS;
        case r'TLS': return AutomatedInboxPlacementConnectionDtoSmtpSecurityEnum.TLS;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer] instance.
  static AutomatedInboxPlacementConnectionDtoSmtpSecurityEnumTypeTransformer? _instance;
}



class AutomatedInboxPlacementConnectionDtoStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const AutomatedInboxPlacementConnectionDtoStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const UNVERIFIED = AutomatedInboxPlacementConnectionDtoStatusEnum._(r'UNVERIFIED');
  static const CONNECTED = AutomatedInboxPlacementConnectionDtoStatusEnum._(r'CONNECTED');
  static const ERROR = AutomatedInboxPlacementConnectionDtoStatusEnum._(r'ERROR');
  static const DISCONNECTED = AutomatedInboxPlacementConnectionDtoStatusEnum._(r'DISCONNECTED');

  /// List of all possible values in this [enum][AutomatedInboxPlacementConnectionDtoStatusEnum].
  static const values = <AutomatedInboxPlacementConnectionDtoStatusEnum>[
    UNVERIFIED,
    CONNECTED,
    ERROR,
    DISCONNECTED,
  ];

  static AutomatedInboxPlacementConnectionDtoStatusEnum? fromJson(dynamic value) => AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer().decode(value);

  static List<AutomatedInboxPlacementConnectionDtoStatusEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AutomatedInboxPlacementConnectionDtoStatusEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AutomatedInboxPlacementConnectionDtoStatusEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [AutomatedInboxPlacementConnectionDtoStatusEnum] to String,
/// and [decode] dynamic data back to [AutomatedInboxPlacementConnectionDtoStatusEnum].
class AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer {
  factory AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer() => _instance ??= const AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer._();

  const AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer._();

  String encode(AutomatedInboxPlacementConnectionDtoStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a AutomatedInboxPlacementConnectionDtoStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  AutomatedInboxPlacementConnectionDtoStatusEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UNVERIFIED': return AutomatedInboxPlacementConnectionDtoStatusEnum.UNVERIFIED;
        case r'CONNECTED': return AutomatedInboxPlacementConnectionDtoStatusEnum.CONNECTED;
        case r'ERROR': return AutomatedInboxPlacementConnectionDtoStatusEnum.ERROR;
        case r'DISCONNECTED': return AutomatedInboxPlacementConnectionDtoStatusEnum.DISCONNECTED;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer] instance.
  static AutomatedInboxPlacementConnectionDtoStatusEnumTypeTransformer? _instance;
}


