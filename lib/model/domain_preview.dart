//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DomainPreview {
  /// Returns a new [DomainPreview] instance.
  DomainPreview({
    this.id,
    this.domain,
    this.catchAllInboxId,
    this.createdAt,
    this.domainType,
    this.verified,
  });

  String id;

  String domain;

  String catchAllInboxId;

  DateTime createdAt;

  /// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
  DomainPreviewDomainTypeEnum domainType;

  bool verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainPreview &&
     other.id == id &&
     other.domain == domain &&
     other.catchAllInboxId == catchAllInboxId &&
     other.createdAt == createdAt &&
     other.domainType == domainType &&
     other.verified == verified;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (catchAllInboxId == null ? 0 : catchAllInboxId.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (domainType == null ? 0 : domainType.hashCode) +
    (verified == null ? 0 : verified.hashCode);

  @override
  String toString() => 'DomainPreview[id=$id, domain=$domain, catchAllInboxId=$catchAllInboxId, createdAt=$createdAt, domainType=$domainType, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    if (catchAllInboxId != null) {
      json[r'catchAllInboxId'] = catchAllInboxId;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (domainType != null) {
      json[r'domainType'] = domainType;
    }
    if (verified != null) {
      json[r'verified'] = verified;
    }
    return json;
  }

  /// Returns a new [DomainPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static DomainPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : DomainPreview(
        id: json[r'id'],
        domain: json[r'domain'],
        catchAllInboxId: json[r'catchAllInboxId'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        domainType: DomainPreviewDomainTypeEnum.fromJson(json[r'domainType']),
        verified: json[r'verified'],
    );

  static List<DomainPreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainPreview>[]
      : json.map((v) => DomainPreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, DomainPreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, DomainPreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = DomainPreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of DomainPreview-objects as value to a dart map
  static Map<String, List<DomainPreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<DomainPreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = DomainPreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Type of domain. Dictates type of inbox that can be created with domain. HTTP means inboxes are processed using SES while SMTP inboxes use a custom SMTP mail server. SMTP does not support sending so use HTTP for sending emails.
class DomainPreviewDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DomainPreviewDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = DomainPreviewDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = DomainPreviewDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][DomainPreviewDomainTypeEnum].
  static const values = <DomainPreviewDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static DomainPreviewDomainTypeEnum fromJson(dynamic value) =>
    DomainPreviewDomainTypeEnumTypeTransformer().decode(value);

  static List<DomainPreviewDomainTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DomainPreviewDomainTypeEnum>[]
      : json
          .map((value) => DomainPreviewDomainTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DomainPreviewDomainTypeEnum] to String,
/// and [decode] dynamic data back to [DomainPreviewDomainTypeEnum].
class DomainPreviewDomainTypeEnumTypeTransformer {
  const DomainPreviewDomainTypeEnumTypeTransformer._();

  factory DomainPreviewDomainTypeEnumTypeTransformer() => _instance ??= DomainPreviewDomainTypeEnumTypeTransformer._();

  String encode(DomainPreviewDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DomainPreviewDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainPreviewDomainTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return DomainPreviewDomainTypeEnum.HTTP_INBOX;
      case r'SMTP_DOMAIN': return DomainPreviewDomainTypeEnum.SMTP_DOMAIN;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DomainPreviewDomainTypeEnumTypeTransformer] instance.
  static DomainPreviewDomainTypeEnumTypeTransformer _instance;
}

