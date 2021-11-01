//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InboxPreview {
  /// Returns a new [InboxPreview] instance.
  InboxPreview({
    this.createdAt,
    this.emailAddress,
    this.expiresAt,
    this.favourite,
    this.id,
    this.inboxType,
    this.name,
    this.tags = const [],
    this.teamAccess,
  });

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email.
  String expiresAt;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great most cases. SMTP inboxes are receive only (cannot send) and are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages.
  InboxPreviewInboxTypeEnum inboxType;

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String name;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxPreview &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.expiresAt == expiresAt &&
     other.favourite == favourite &&
     other.id == id &&
     other.inboxType == inboxType &&
     other.name == name &&
     other.tags == tags &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (expiresAt == null ? 0 : expiresAt.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (inboxType == null ? 0 : inboxType.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode);

  @override
  String toString() => 'InboxPreview[createdAt=$createdAt, emailAddress=$emailAddress, expiresAt=$expiresAt, favourite=$favourite, id=$id, inboxType=$inboxType, name=$name, tags=$tags, teamAccess=$teamAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
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
    if (tags != null) {
      json[r'tags'] = tags;
    }
    if (teamAccess != null) {
      json[r'teamAccess'] = teamAccess;
    }
    return json;
  }

  /// Returns a new [InboxPreview] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InboxPreview fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InboxPreview(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddress: json[r'emailAddress'],
        expiresAt: json[r'expiresAt'],
        favourite: json[r'favourite'],
        id: json[r'id'],
        inboxType: InboxPreviewInboxTypeEnum.fromJson(json[r'inboxType']),
        name: json[r'name'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
    );

  static List<InboxPreview> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxPreview>[]
      : json.map((v) => InboxPreview.fromJson(v)).toList(growable: true == growable);

  static Map<String, InboxPreview> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InboxPreview>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InboxPreview.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InboxPreview-objects as value to a dart map
  static Map<String, List<InboxPreview>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InboxPreview>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InboxPreview.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Type of inbox - either HTTP (default) or SMTP. HTTP inboxes are great most cases. SMTP inboxes are receive only (cannot send) and are processed by a custom SMTP mail server and are better for public facing inboxes that receive emails from Gmail and other large providers. If using a custom domain the domain type must match the inbox type. Use an SMTP domain for SMTP inboxes that includes an MX record pointing to `10 mx.mailslurp.com` for inbound messages.
class InboxPreviewInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const InboxPreviewInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = InboxPreviewInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = InboxPreviewInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][InboxPreviewInboxTypeEnum].
  static const values = <InboxPreviewInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static InboxPreviewInboxTypeEnum fromJson(dynamic value) =>
    InboxPreviewInboxTypeEnumTypeTransformer().decode(value);

  static List<InboxPreviewInboxTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InboxPreviewInboxTypeEnum>[]
      : json
          .map((value) => InboxPreviewInboxTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [InboxPreviewInboxTypeEnum] to String,
/// and [decode] dynamic data back to [InboxPreviewInboxTypeEnum].
class InboxPreviewInboxTypeEnumTypeTransformer {
  const InboxPreviewInboxTypeEnumTypeTransformer._();

  factory InboxPreviewInboxTypeEnumTypeTransformer() => _instance ??= InboxPreviewInboxTypeEnumTypeTransformer._();

  String encode(InboxPreviewInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a InboxPreviewInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  InboxPreviewInboxTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return InboxPreviewInboxTypeEnum.HTTP_INBOX;
      case r'SMTP_INBOX': return InboxPreviewInboxTypeEnum.SMTP_INBOX;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [InboxPreviewInboxTypeEnumTypeTransformer] instance.
  static InboxPreviewInboxTypeEnumTypeTransformer _instance;
}

