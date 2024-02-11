//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainDto {
  /// Returns a new [DomainDto] instance.
  DomainDto({
    required this.id,
    required this.userId,
    required this.domain,
    required this.verificationToken,
    this.dkimTokens = const [],
    this.missingRecordsMessage,
    required this.hasMissingRecords,
    required this.isVerified,
    this.domainNameRecords = const [],
    this.catchAllInboxId,
    required this.createdAt,
    required this.updatedAt,
    required this.domainType,
  });

  String id;

  String userId;

  /// Custom domain name
  String domain;

  /// Verification tokens
  String verificationToken;

  /// Unique token DKIM tokens
  List<String> dkimTokens;

  /// If the domain is missing records then show which pairs are missing.
  String? missingRecordsMessage;

  /// Whether the domain has missing required records. If true then see the domain in the dashboard app.
  bool hasMissingRecords;

  /// Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
  bool isVerified;

  /// List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
  List<DomainNameRecord> domainNameRecords;

  /// The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
  String? catchAllInboxId;

  DateTime createdAt;

  DateTime updatedAt;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainDtoDomainTypeEnum domainType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainDto &&
     other.id == id &&
     other.userId == userId &&
     other.domain == domain &&
     other.verificationToken == verificationToken &&
     other.dkimTokens == dkimTokens &&
     other.missingRecordsMessage == missingRecordsMessage &&
     other.hasMissingRecords == hasMissingRecords &&
     other.isVerified == isVerified &&
     other.domainNameRecords == domainNameRecords &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.domainType == domainType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (userId.hashCode) +
    (domain.hashCode) +
    (verificationToken.hashCode) +
    (dkimTokens.hashCode) +
    (missingRecordsMessage == null ? 0 : missingRecordsMessage!.hashCode) +
    (hasMissingRecords.hashCode) +
    (isVerified.hashCode) +
    (domainNameRecords.hashCode) +
    (catchAllInboxId == null ? 0 : catchAllInboxId!.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (domainType.hashCode);

  @override
  String toString() => 'DomainDto[id=$id, userId=$userId, domain=$domain, verificationToken=$verificationToken, dkimTokens=$dkimTokens, missingRecordsMessage=$missingRecordsMessage, hasMissingRecords=$hasMissingRecords, isVerified=$isVerified, domainNameRecords=$domainNameRecords, catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, updatedAt=$updatedAt, domainType=$domainType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'userId'] = this.userId;
      json[r'domain'] = this.domain;
      json[r'verificationToken'] = this.verificationToken;
      json[r'dkimTokens'] = this.dkimTokens;
    if (this.missingRecordsMessage != null) {
      json[r'missingRecordsMessage'] = this.missingRecordsMessage;
    } else {
      json[r'missingRecordsMessage'] = null;
    }
      json[r'hasMissingRecords'] = this.hasMissingRecords;
      json[r'isVerified'] = this.isVerified;
      json[r'domainNameRecords'] = this.domainNameRecords;
    if (this.catchAllInboxId != null) {
      json[r'catchAllInboxId'] = this.catchAllInboxId;
    } else {
      json[r'catchAllInboxId'] = null;
    }
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
      json[r'domainType'] = this.domainType;
    return json;
  }

  /// Returns a new [DomainDto] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainDto? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DomainDto[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DomainDto[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DomainDto(
        id: mapValueOfType<String>(json, r'id')!,
        userId: mapValueOfType<String>(json, r'userId')!,
        domain: mapValueOfType<String>(json, r'domain')!,
        verificationToken: mapValueOfType<String>(json, r'verificationToken')!,
        dkimTokens: json[r'dkimTokens'] is List
            ? (json[r'dkimTokens'] as List).cast<String>()
            : const [],
        missingRecordsMessage: mapValueOfType<String>(json, r'missingRecordsMessage'),
        hasMissingRecords: mapValueOfType<bool>(json, r'hasMissingRecords')!,
        isVerified: mapValueOfType<bool>(json, r'isVerified')!,
        domainNameRecords: DomainNameRecord.listFromJson(json[r'domainNameRecords']),
        catchAllInboxId: mapValueOfType<String>(json, r'catchAllInboxId'),
        createdAt: mapDateTime(json, r'createdAt', '')!,
        updatedAt: mapDateTime(json, r'updatedAt', '')!,
        domainType: DomainDtoDomainTypeEnum.fromJson(json[r'domainType'])!,
      );
    }
    return null;
  }

  static List<DomainDto> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainDto>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainDto.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainDto> mapFromJson(dynamic json) {
    final map = <String, DomainDto>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainDto.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainDto-objects as value to a dart map
  static Map<String, List<DomainDto>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainDto>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainDto.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'userId',
    'domain',
    'verificationToken',
    'dkimTokens',
    'hasMissingRecords',
    'isVerified',
    'domainNameRecords',
    'createdAt',
    'updatedAt',
    'domainType',
  };
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class DomainDtoDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainDtoDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = DomainDtoDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = DomainDtoDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][DomainDtoDomainTypeEnum].
  static const values = <DomainDtoDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static DomainDtoDomainTypeEnum? fromJson(dynamic value) => DomainDtoDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainDtoDomainTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainDtoDomainTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainDtoDomainTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainDtoDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainDtoDomainTypeEnum].
class DomainDtoDomainTypeEnumTypeTransformer {
  factory DomainDtoDomainTypeEnumTypeTransformer() => _instance ??= const DomainDtoDomainTypeEnumTypeTransformer._();

  const DomainDtoDomainTypeEnumTypeTransformer._();

  String encode(DomainDtoDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainDtoDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainDtoDomainTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'HTTP_INBOX': return DomainDtoDomainTypeEnum.HTTP_INBOX;
        case r'SMTP_DOMAIN': return DomainDtoDomainTypeEnum.SMTP_DOMAIN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DomainDtoDomainTypeEnumTypeTransformer] instance.
  static DomainDtoDomainTypeEnumTypeTransformer? _instance;
}


