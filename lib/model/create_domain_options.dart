//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateDomainOptions {
  /// Returns a new [CreateDomainOptions] instance.
  CreateDomainOptions({
    this.createdCatchAllInbox,
    this.description,
    this.domain,
    this.domainType,
  });

  /// Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID.
  bool createdCatchAllInbox;

  /// Optional description of the domain.
  String description;

  /// The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain.
  String domain;

  /// Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record
  CreateDomainOptionsDomainTypeEnum domainType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateDomainOptions &&
     other.createdCatchAllInbox == createdCatchAllInbox &&
     other.description == description &&
     other.domain == domain &&
     other.domainType == domainType;

  @override
  int get hashCode =>
    (createdCatchAllInbox == null ? 0 : createdCatchAllInbox.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (domain == null ? 0 : domain.hashCode) +
    (domainType == null ? 0 : domainType.hashCode);

  @override
  String toString() => 'CreateDomainOptions[createdCatchAllInbox=$createdCatchAllInbox, description=$description, domain=$domain, domainType=$domainType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdCatchAllInbox != null) {
      json[r'createdCatchAllInbox'] = createdCatchAllInbox;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (domain != null) {
      json[r'domain'] = domain;
    }
    if (domainType != null) {
      json[r'domainType'] = domainType;
    }
    return json;
  }

  /// Returns a new [CreateDomainOptions] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateDomainOptions fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateDomainOptions(
        createdCatchAllInbox: json[r'createdCatchAllInbox'],
        description: json[r'description'],
        domain: json[r'domain'],
        domainType: CreateDomainOptionsDomainTypeEnum.fromJson(json[r'domainType']),
    );

  static List<CreateDomainOptions> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateDomainOptions>[]
      : json.map((v) => CreateDomainOptions.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateDomainOptions> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateDomainOptions>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateDomainOptions.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateDomainOptions-objects as value to a dart map
  static Map<String, List<CreateDomainOptions>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateDomainOptions>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateDomainOptions.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Domain type to create. HTTP or SMTP domain. HTTP domain uses MailSlurps SES MX records. SMTP uses a custom SMTP server MX record
class CreateDomainOptionsDomainTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateDomainOptionsDomainTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = CreateDomainOptionsDomainTypeEnum._(r'HTTP_INBOX');
  static const SMTP_DOMAIN = CreateDomainOptionsDomainTypeEnum._(r'SMTP_DOMAIN');

  /// List of all possible values in this [enum][CreateDomainOptionsDomainTypeEnum].
  static const values = <CreateDomainOptionsDomainTypeEnum>[
    HTTP_INBOX,
    SMTP_DOMAIN,
  ];

  static CreateDomainOptionsDomainTypeEnum fromJson(dynamic value) =>
    CreateDomainOptionsDomainTypeEnumTypeTransformer().decode(value);

  static List<CreateDomainOptionsDomainTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateDomainOptionsDomainTypeEnum>[]
      : json
          .map((value) => CreateDomainOptionsDomainTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateDomainOptionsDomainTypeEnum] to String,
/// and [decode] dynamic data back to [CreateDomainOptionsDomainTypeEnum].
class CreateDomainOptionsDomainTypeEnumTypeTransformer {
  const CreateDomainOptionsDomainTypeEnumTypeTransformer._();

  factory CreateDomainOptionsDomainTypeEnumTypeTransformer() => _instance ??= CreateDomainOptionsDomainTypeEnumTypeTransformer._();

  String encode(CreateDomainOptionsDomainTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateDomainOptionsDomainTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateDomainOptionsDomainTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return CreateDomainOptionsDomainTypeEnum.HTTP_INBOX;
      case r'SMTP_DOMAIN': return CreateDomainOptionsDomainTypeEnum.SMTP_DOMAIN;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateDomainOptionsDomainTypeEnumTypeTransformer] instance.
  static CreateDomainOptionsDomainTypeEnumTypeTransformer _instance;
}

