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
    this.catchAllInboxId,
    @required this.createdAt,
    this.dkimTokens = const [],
    this.domain,
    this.domainNameRecords = const [],
    this.domainType,
    @required this.id,
    this.isVerified,
    @required this.updatedAt,
    @required this.userId,
    this.verificationToken,
  });

  /// The optional catch all inbox that will receive emails sent to the domain that cannot be matched.
  String catchAllInboxId;

  DateTime createdAt;

  /// Unique token DKIM tokens
  List<String> dkimTokens;

  /// Custom domain name
  String domain;

  /// List of DNS domain name records (C, MX, TXT) etc that you must add to the DNS server associated with your domain provider.
  List<DomainNameRecord> domainNameRecords;

  /// The type of domain. SMTP or HTTP domains differ in what inboxes can be used with them.
  DomainDtoDomainTypeEnum domainType;

  String id;

  /// Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records.
  bool isVerified;

  DateTime updatedAt;

  String userId;

  /// Verification tokens
  String verificationToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainDto &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.dkimTokens == dkimTokens &&
     other.domain == domain &&
     other.domainNameRecords == domainNameRecords &&
     other.domainType == domainType &&
     other.id == id &&
     other.isVerified == isVerified &&
     other.updatedAt == updatedAt &&
     other.userId == userId &&
     other.verificationToken == verificationToken;

  @override
  int get hashCode =>
    (catchAllInboxId == null ? 0 : catchAllInboxId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (dkimTokens == null ? 0 : dkimTokens.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (domainNameRecords == null ? 0 : domainNameRecords.hashCode) +
    (domainType == null ? 0 : domainType.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (isVerified == null ? 0 : isVerified.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (verificationToken == null ? 0 : verificationToken.hashCode);

  @override
  String toString() => 'DomainDto[catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, dkimTokens=$dkimTokens, domain=$domain, domainNameRecords=$domainNameRecords, domainType=$domainType, id=$id, isVerified=$isVerified, updatedAt=$updatedAt, userId=$userId, verificationToken=$verificationToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (catchAllInboxId != null) {
      json[r'catchAllInboxId'] = catchAllInboxId;
    }
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (dkimTokens != null) {
      json[r'dkimTokens'] = dkimTokens;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    if (domainNameRecords != null) {
      json[r'domainNameRecords'] = domainNameRecords;
    }
    if (domainType != null) {
      json[r'domainType'] = domainType;
    }
      json[r'id'] = id;
    if (isVerified != null) {
      json[r'isVerified'] = isVerified;
    }
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
      json[r'userId'] = userId;
    if (verificationToken != null) {
      json[r'verificationToken'] = verificationToken;
    }
    return json;
  }

  /// Returns a new [DomainDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DomainDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DomainDto(
        catchAllInboxId: json[r'catchAllInboxId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        dkimTokens: json[r'dkimTokens'] == null
          ? null
          : (json[r'dkimTokens'] as List).cast<String>(),
        domain: json[r'domain'],
        domainNameRecords: DomainNameRecord.listFromJson(json[r'domainNameRecords']),
        domainType: DomainDtoDomainTypeEnum.fromJson(json[r'domainType']),
        id: json[r'id'],
        isVerified: json[r'isVerified'],
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        userId: json[r'userId'],
        verificationToken: json[r'verificationToken'],
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

/// The type of domain. SMTP or HTTP domains differ in what inboxes can be used with them.
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

