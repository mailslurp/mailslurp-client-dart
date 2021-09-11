//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Inbox {
  /// Returns a new [Inbox] instance.
  Inbox({
    this.createdAt,
    this.description,
    this.emailAddress,
    this.expiresAt,
    this.favourite,
    this.id,
    this.inboxType,
    this.name,
    this.readOnly,
    this.tags = const [],
    this.teamAccess,
    this.userId,
  });

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// Description of an inbox for labelling and searching purposes
  String description;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
  String expiresAt;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great for testing. SMTP inboxes are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages.
  InboxInboxTypeEnum inboxType;

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String name;

  /// Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
  bool readOnly;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
  bool teamAccess;

  /// ID of user that inbox belongs to
  String userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Inbox &&
     other.createdAt == createdAt &&
     other.description == description &&
     other.emailAddress == emailAddress &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite &&
     other.id == id &&
     other.inboxType == inboxType &&
     other.name == name &&
     other.readOnly == readOnly &&
     other.tags == tags &&
     other.teamAccess == teamAccess &&
     other.userId == userId;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (expiresAt == null ? 0 : expiresAt.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxType == null ? 0 : inboxType.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (readOnly == null ? 0 : readOnly.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (userId == null ? 0 : userId.hashCode);

  @override
  String toString() => 'Inbox[createdAt=$createdAt, description=$description, emailAddress=$emailAddress, expiresAt=$expiresAt, favourite=$favourite, id=$id, inboxType=$inboxType, name=$name, readOnly=$readOnly, tags=$tags, teamAccess=$teamAccess, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (expiresAt != null) {
      json[r'expiresAt'] = expiresAt;
    }
    if (favourite != null) {
      json[r'favourite'] = favourite;
    }
    if (id != null) {
      json[r'id'] = id;
    }
    if (inboxType != null) {
      json[r'inboxType'] = inboxType;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (readOnly != null) {
      json[r'readOnly'] = readOnly;
    }
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (teamAccess != null) {
      json[r'teamAccess'] = teamAccess;
    }
    if (userId != null) {
      json[r'userId'] = userId;
    }
    return json;
  }

  /// Returns a new [Inbox] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Inbox fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Inbox(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        description: json[r'description'],
        emailAddress: json[r'emailAddress'],
        expiresAt: json[r'expiresAt'],
        favourite: json[r'favourite'],
        id: json[r'id'],
        inboxType: InboxInboxTypeEnum.fromJson(json[r'inboxType']),
        name: json[r'name'],
        readOnly: json[r'readOnly'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
        userId: json[r'userId'],
    );

  static List<Inbox> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Inbox>[]
      : json.map((v) => Inbox.fromJson(v)).toList(growable: true == growable);

  static Map<String, Inbox> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Inbox>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Inbox.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Inbox-objects as value to a dart map
  static Map<String, List<Inbox>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Inbox>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Inbox.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great for testing. SMTP inboxes are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages.
class InboxInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = InboxInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = InboxInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][InboxInboxTypeEnum].
  static const values = <InboxInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static InboxInboxTypeEnum fromJson(dynamic value) =>
    InboxInboxTypeEnumTypeTransformer().decode(value);

  static List<InboxInboxTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxInboxTypeEnum>[]
      : json
          .map((value) => InboxInboxTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxInboxTypeEnum] to String,
/// and [decode] dynamic data back to [InboxInboxTypeEnum].
class InboxInboxTypeEnumTypeTransformer {
  const InboxInboxTypeEnumTypeTransformer._();

  factory InboxInboxTypeEnumTypeTransformer() => _instance ??= InboxInboxTypeEnumTypeTransformer._();

  String encode(InboxInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxInboxTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return InboxInboxTypeEnum.HTTP_INBOX;
      case r'SMTP_INBOX': return InboxInboxTypeEnum.SMTP_INBOX;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxInboxTypeEnumTypeTransformer] instance.
  static InboxInboxTypeEnumTypeTransformer _instance;
}

