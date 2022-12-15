//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInboxDto {
  /// Returns a new [CreateInboxDto] instance.
  CreateInboxDto({
    this.emailAddress,
    this.name,
    this.description,
    this.useDomainPool,
    this.tags,
    this.expiresAt,
    this.favourite,
    this.expiresIn,
    this.allowTeamAccess,
    this.inboxType,
    this.virtualInbox,
  });

  /// A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Note domain types must match the inbox type - so `SMTP` inboxes will only work with `SMTP` type domains. Avoid `SMTP` inboxes if you need to send emails as they can only receive. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Optional name of the inbox. Displayed in the dashboard for easier search and used as the sender name when sending emails.
  String name;

  /// Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  String description;

  /// Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field. Note this feature is only available for `HTTP` inbox types.
  bool useDomainPool;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  DateTime expiresAt;

  /// Is the inbox a favorite. Marking an inbox as a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// Number of milliseconds that inbox should exist for
  int expiresIn;

  /// DEPRECATED (team access is always true). Grant team access to this inbox and the emails that belong to it for team members of your organization.
  bool allowTeamAccess;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  CreateInboxDtoInboxTypeEnum inboxType;

  /// Virtual inbox prevents any outbound emails from being sent. It creates sent email records but will never send real emails to recipients. Great for testing and faking email sending.
  bool virtualInbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxDto &&
     other.emailAddress == emailAddress &&
     other.name == name &&
     other.description == description &&
     other.useDomainPool == useDomainPool &&
     other.tags == tags &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite &&
     other.expiresIn == expiresIn &&
     other.allowTeamAccess == allowTeamAccess &&
     other.inboxType == inboxType &&
     other.virtualInbox == virtualInbox;

  @override
  int get hashCode =>
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (useDomainPool == null ? 0 : useDomainPool.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (expiresAt == null ? 0 : expiresAt.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (expiresIn == null ? 0 : expiresIn.hashCode) +
    (allowTeamAccess == null ? 0 : allowTeamAccess.hashCode) +
    (inboxType == null ? 0 : inboxType.hashCode) +
    (virtualInbox == null ? 0 : virtualInbox.hashCode);

  @override
  String toString() => 'CreateInboxDto[emailAddress=$emailAddress, name=$name, description=$description, useDomainPool=$useDomainPool, tags=$tags, expiresAt=$expiresAt, favourite=$favourite, expiresIn=$expiresIn, allowTeamAccess=$allowTeamAccess, inboxType=$inboxType, virtualInbox=$virtualInbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (useDomainPool != null) {
      json[r'useDomainPool'] = useDomainPool;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (expiresAt != null) {
      json[r'expiresAt'] = expiresAt.toUtc().toIso8601String();
    }
    if (favourite != null) {
      json[r'favourite'] = favourite;
    }
    if (expiresIn != null) {
      json[r'expiresIn'] = expiresIn;
    }
    if (allowTeamAccess != null) {
      json[r'allowTeamAccess'] = allowTeamAccess;
    }
    if (inboxType != null) {
      json[r'inboxType'] = inboxType;
    }
    if (virtualInbox != null) {
      json[r'virtualInbox'] = virtualInbox;
    }
    return json;
  }

  /// Returns a new [CreateInboxDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInboxDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInboxDto(
        emailAddress: json[r'emailAddress'],
        name: json[r'name'],
        description: json[r'description'],
        useDomainPool: json[r'useDomainPool'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        expiresAt: json[r'expiresAt'] == null
          ? null
          : DateTime.parse(json[r'expiresAt']),
        favourite: json[r'favourite'],
        expiresIn: json[r'expiresIn'],
        allowTeamAccess: json[r'allowTeamAccess'],
        inboxType: CreateInboxDtoInboxTypeEnum.fromJson(json[r'inboxType']),
        virtualInbox: json[r'virtualInbox'],
    );

  static List<CreateInboxDto> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxDto>[]
      : json.map((v) => CreateInboxDto.fromJson(v)).toList(growable: true == growable);

  static Map<String, CreateInboxDto> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CreateInboxDto>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CreateInboxDto.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CreateInboxDto-objects as value to a dart map
  static Map<String, List<CreateInboxDto>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CreateInboxDto>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CreateInboxDto.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class CreateInboxDtoInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const CreateInboxDtoInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = CreateInboxDtoInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = CreateInboxDtoInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][CreateInboxDtoInboxTypeEnum].
  static const values = <CreateInboxDtoInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static CreateInboxDtoInboxTypeEnum fromJson(dynamic value) =>
    CreateInboxDtoInboxTypeEnumTypeTransformer().decode(value);

  static List<CreateInboxDtoInboxTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CreateInboxDtoInboxTypeEnum>[]
      : json
          .map((value) => CreateInboxDtoInboxTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [CreateInboxDtoInboxTypeEnum] to String,
/// and [decode] dynamic data back to [CreateInboxDtoInboxTypeEnum].
class CreateInboxDtoInboxTypeEnumTypeTransformer {
  const CreateInboxDtoInboxTypeEnumTypeTransformer._();

  factory CreateInboxDtoInboxTypeEnumTypeTransformer() => _instance ??= CreateInboxDtoInboxTypeEnumTypeTransformer._();

  String encode(CreateInboxDtoInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a CreateInboxDtoInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateInboxDtoInboxTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return CreateInboxDtoInboxTypeEnum.HTTP_INBOX;
      case r'SMTP_INBOX': return CreateInboxDtoInboxTypeEnum.SMTP_INBOX;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [CreateInboxDtoInboxTypeEnumTypeTransformer] instance.
  static CreateInboxDtoInboxTypeEnumTypeTransformer _instance;
}

