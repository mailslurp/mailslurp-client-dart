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
    this.allowTeamAccess,
    this.description,
    this.emailAddress,
    this.expiresAt,
    this.expiresIn,
    this.favourite,
    this.name,
    this.tags = const [],
    this.useDomainPool,
  });

  /// Grant team access to this inbox and the emails that belong to it for team members of your organization.
  bool allowTeamAccess;

  /// Optional description of the inbox for labelling purposes. Is shown in the dashboard and can be used with
  String description;

  /// A custom email address to use with the inbox. Defaults to null. When null MailSlurp will assign a random email address to the inbox such as `123@mailslurp.com`. If you use the `useDomainPool` option when the email address is null it will generate an email address with a more varied domain ending such as `123@mailslurp.info` or `123@mailslurp.biz`. When a custom email address is provided the address is split into a domain and the domain is queried against your user. If you have created the domain in the MailSlurp dashboard and verified it you can use any email address that ends with the domain. Send an email to this address and the inbox will receive and store it for you. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Optional inbox expiration date. If null then this inbox is permanent and the emails in it won't be deleted. If an expiration date is provided or is required by your plan the inbox will be closed when the expiration time is reached. Expired inboxes still contain their emails but can no longer send or receive emails. An ExpiredInboxRecord is created when an inbox and the email address and inbox ID are recorded. The expiresAt property is a timestamp string in ISO DateTime Format yyyy-MM-dd'T'HH:mm:ss.SSSXXX.
  DateTime expiresAt;

  /// Number of milliseconds that inbox should exist for
  int expiresIn;

  /// Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// Optional name of the inbox. Displayed in the dashboard for easier search
  String name;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Use the MailSlurp domain name pool with this inbox when creating the email address. Defaults to null. If enabled the inbox will be an email address with a domain randomly chosen from a list of the MailSlurp domains. This is useful when the default `@mailslurp.com` email addresses used with inboxes are blocked or considered spam by a provider or receiving service. When domain pool is enabled an email address will be generated ending in `@mailslurp.{world,info,xyz,...}` . This means a TLD is randomly selecting from a list of `.biz`, `.info`, `.xyz` etc to add variance to the generated email addresses. When null or false MailSlurp uses the default behavior of `@mailslurp.com` or custom email address provided by the emailAddress field.
  bool useDomainPool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInboxDto &&
     other.allowTeamAccess == allowTeamAccess &&
     other.description == description &&
     other.emailAddress == emailAddress &&
     other.expiresAt == expiresAt &&
     other.expiresIn == expiresIn &&
     other.favourite == favourite &&
     other.name == name &&
     other.tags == tags &&
     other.useDomainPool == useDomainPool;

  @override
  int get hashCode =>
    (allowTeamAccess == null ? 0 : allowTeamAccess.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (expiresAt == null ? 0 : expiresAt.hashCode) +
    (expiresIn == null ? 0 : expiresIn.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (useDomainPool == null ? 0 : useDomainPool.hashCode);

  @override
  String toString() => 'CreateInboxDto[allowTeamAccess=$allowTeamAccess, description=$description, emailAddress=$emailAddress, expiresAt=$expiresAt, expiresIn=$expiresIn, favourite=$favourite, name=$name, tags=$tags, useDomainPool=$useDomainPool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (allowTeamAccess != null) {
      json[r'allowTeamAccess'] = allowTeamAccess;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (expiresAt != null) {
      json[r'expiresAt'] = expiresAt.toUtc().toIso8601String();
    }
    if (expiresIn != null) {
      json[r'expiresIn'] = expiresIn;
    }
    if (favourite != null) {
      json[r'favourite'] = favourite;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (useDomainPool != null) {
      json[r'useDomainPool'] = useDomainPool;
    }
    return json;
  }

  /// Returns a new [CreateInboxDto] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CreateInboxDto fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CreateInboxDto(
        allowTeamAccess: json[r'allowTeamAccess'],
        description: json[r'description'],
        emailAddress: json[r'emailAddress'],
        expiresAt: json[r'expiresAt'] == null
          ? null
          : DateTime.parse(json[r'expiresAt']),
        expiresIn: json[r'expiresIn'],
        favourite: json[r'favourite'],
        name: json[r'name'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        useDomainPool: json[r'useDomainPool'],
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

