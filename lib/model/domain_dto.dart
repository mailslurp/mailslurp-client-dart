//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainDto {
  /// Returns a new [DomainDto] instance.
  DomainDto({
    this.id,
    this.userId,
    this.domain,
    this.verificationToken,
    this.dkimTokens = const [],
    this.domainNameRecords = const [],
    this.catchAllInboxId,
    this.createdAt,
    this.updatedAt,
    this.domainType,
    this.verified,
  });

  String id;

  String userId;

  /// Custom domain name
  String domain;

  /// Verification tokens
  String verificationToken;

  /// Unique token DKIM tokens
  List<String> dkimTokens;

  /// List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
  List<DomainNameRecord> domainNameRecords;

  /// The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
  String catchAllInboxId;

  DateTime createdAt;

  DateTime updatedAt;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainDtoDomainTypeEnum domainType;

  bool verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainDto &&
     other.id == id &&
     other.userId == userId &&
     other.domain == domain &&
     other.verificationToken == verificationToken &&
     other.dkimTokens == dkimTokens &&
     other.domainNameRecords == domainNameRecords &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.domainType == domainType &&
     other.verified == verified;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (verificationToken == null ? 0 : verificationToken.hashCode) +
    (dkimTokens == null ? 0 : dkimTokens.hashCode) +
    (domainNameRecords == null ? 0 : domainNameRecords.hashCode) +
    (catchAllInboxId == null ? 0 : catchAllInboxId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (domainType == null ? 0 : domainType.hashCode) +
    (verified == null ? 0 : verified.hashCode);

  @override
  String toString() => 'DomainDto[id=$id, userId=$userId, domain=$domain, verificationToken=$verificationToken, dkimTokens=$dkimTokens, domainNameRecords=$domainNameRecords, catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, updatedAt=$updatedAt, domainType=$domainType, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    if (verificationToken != null) {
      json[r'verificationToken'] = verificationToken;
    }
    if (dkimTokens != null) {
      json[r'dkimTokens'] = dkimTokens;
    }
    if (domainNameRecords != null) {
      json[r'domainNameRecords'] = domainNameRecords;
    }
    if (catchAllInboxId != null) {
      json[r'catchAllInboxId'] = catchAllInboxId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (domainType != null) {
      json[r'domainType'] = domainType;
    }
    if (verified != null) {
      json[r'verified'] = verified;
    }
    return json;
  }

  /// Returns a new [DomainDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DomainDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DomainDto(
        id: json[r'id'],
        userId: json[r'userId'],
        domain: json[r'domain'],
        verificationToken: json[r'verificationToken'],
        dkimTokens: json[r'dkimTokens'] == null
          ? null
          : (json[r'dkimTokens'] as List).cast<String>(),
        domainNameRecords: DomainNameRecord.listFromJson(json[r'domainNameRecords']),
        catchAllInboxId: json[r'catchAllInboxId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        domainType: DomainDtoDomainTypeEnum.fromJson(json[r'domainType']),
        verified: json[r'verified'],
    );

  static List<DomainDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainDto>[]
      : json.map((v) => DomainDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, DomainDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DomainDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DomainDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DomainDto-objects as value to a dart map
  static Map<String, List<DomainDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DomainDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DomainDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
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

  static DomainDtoDomainTypeEnum fromJson(dynamic value) =>
    DomainDtoDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainDtoDomainTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainDtoDomainTypeEnum>[]
      : json
          .map((value) => DomainDtoDomainTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DomainDtoDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainDtoDomainTypeEnum].
class DomainDtoDomainTypeEnumTypeTransformer {
  const DomainDtoDomainTypeEnumTypeTransformer._();

  factory DomainDtoDomainTypeEnumTypeTransformer() => _instance ??= DomainDtoDomainTypeEnumTypeTransformer._();

  String encode(DomainDtoDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainDtoDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainDtoDomainTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return DomainDtoDomainTypeEnum.HTTP_INBOX;
      case r'SMTP_DOMAIN': return DomainDtoDomainTypeEnum.SMTP_DOMAIN;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DomainDtoDomainTypeEnumTypeTransformer] instance.
  static DomainDtoDomainTypeEnumTypeTransformer _instance;
}

