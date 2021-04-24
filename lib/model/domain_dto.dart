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
    (id == null ? 0 : id.hashCode) +
    (isVerified == null ? 0 : isVerified.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (verificationToken == null ? 0 : verificationToken.hashCode);

  @override
  String toString() => 'DomainDto[catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, dkimTokens=$dkimTokens, domain=$domain, domainNameRecords=$domainNameRecords, id=$id, isVerified=$isVerified, updatedAt=$updatedAt, userId=$userId, verificationToken=$verificationToken]';

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

