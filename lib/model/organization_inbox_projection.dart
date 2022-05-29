//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrganizationInboxProjection {
  /// Returns a new [OrganizationInboxProjection] instance.
  OrganizationInboxProjection({
    @required this.id,
    @required this.createdAt,
    this.name,
    this.emailAddress,
    @required this.favourite,
    this.tags = const [],
    @required this.teamAccess,
    this.inboxType,
    @required this.readOnly,
    this.virtualInbox,
  });

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// Name of the inbox and used as the sender name when sending emails .Displayed in the dashboard for easier search
  String name;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Is the inbox a favorite inbox. Make an inbox a favorite is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. See the team access guide at https://www.mailslurp.com/guides/team-email-account-sharing/
  bool teamAccess;

  /// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
  OrganizationInboxProjectionInboxTypeEnum inboxType;

  /// Is the inbox readOnly for the caller. Read only means can not be deleted or modified. This flag is present when using team accounts and shared inboxes.
  bool readOnly;

  /// Virtual inbox can receive email but will not send emails to real recipients. Will save sent email record but never send an actual email. Perfect for testing mail server actions.
  bool virtualInbox;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationInboxProjection &&
     other.id == id &&
     other.createdAt == createdAt &&
     other.name == name &&
     other.emailAddress == emailAddress &&
     other.favourite == favourite &&
     other.tags == tags &&
     other.teamAccess == teamAccess &&
     other.inboxType == inboxType &&
     other.readOnly == readOnly &&
     other.virtualInbox == virtualInbox;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode) +
    (inboxType == null ? 0 : inboxType.hashCode) +
    (readOnly == null ? 0 : readOnly.hashCode) +
    (virtualInbox == null ? 0 : virtualInbox.hashCode);

  @override
  String toString() => 'OrganizationInboxProjection[id=$id, createdAt=$createdAt, name=$name, emailAddress=$emailAddress, favourite=$favourite, tags=$tags, teamAccess=$teamAccess, inboxType=$inboxType, readOnly=$readOnly, virtualInbox=$virtualInbox]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    if (name != null) {
      json[r'name'] = name;
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
      json[r'favourite'] = favourite;
    if (tags != null) {
      json[r'tags'] = tags;
    }
      json[r'teamAccess'] = teamAccess;
    if (inboxType != null) {
      json[r'inboxType'] = inboxType;
    }
      json[r'readOnly'] = readOnly;
    if (virtualInbox != null) {
      json[r'virtualInbox'] = virtualInbox;
    }
    return json;
  }

  /// Returns a new [OrganizationInboxProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationInboxProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationInboxProjection(
        id: json[r'id'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        name: json[r'name'],
        emailAddress: json[r'emailAddress'],
        favourite: json[r'favourite'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
        inboxType: OrganizationInboxProjectionInboxTypeEnum.fromJson(json[r'inboxType']),
        readOnly: json[r'readOnly'],
        virtualInbox: json[r'virtualInbox'],
    );

  static List<OrganizationInboxProjection> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationInboxProjection>[]
      : json.map((v) => OrganizationInboxProjection.fromJson(v)).toList(growable: true == growable);

  static Map<String, OrganizationInboxProjection> mapFromJson(Map<String, dynamic> json) {
    final map = <String, OrganizationInboxProjection>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = OrganizationInboxProjection.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of OrganizationInboxProjection-objects as value to a dart map
  static Map<String, List<OrganizationInboxProjection>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<OrganizationInboxProjection>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = OrganizationInboxProjection.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

/// Type of inbox. HTTP inboxes are faster and better for most cases. SMTP inboxes are more suited for public facing inbound messages (but cannot send).
class OrganizationInboxProjectionInboxTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OrganizationInboxProjectionInboxTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const HTTP_INBOX = OrganizationInboxProjectionInboxTypeEnum._(r'HTTP_INBOX');
  static const SMTP_INBOX = OrganizationInboxProjectionInboxTypeEnum._(r'SMTP_INBOX');

  /// List of all possible values in this [enum][OrganizationInboxProjectionInboxTypeEnum].
  static const values = <OrganizationInboxProjectionInboxTypeEnum>[
    HTTP_INBOX,
    SMTP_INBOX,
  ];

  static OrganizationInboxProjectionInboxTypeEnum fromJson(dynamic value) =>
    OrganizationInboxProjectionInboxTypeEnumTypeTransformer().decode(value);

  static List<OrganizationInboxProjectionInboxTypeEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <OrganizationInboxProjectionInboxTypeEnum>[]
      : json
          .map((value) => OrganizationInboxProjectionInboxTypeEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [OrganizationInboxProjectionInboxTypeEnum] to String,
/// and [decode] dynamic data back to [OrganizationInboxProjectionInboxTypeEnum].
class OrganizationInboxProjectionInboxTypeEnumTypeTransformer {
  const OrganizationInboxProjectionInboxTypeEnumTypeTransformer._();

  factory OrganizationInboxProjectionInboxTypeEnumTypeTransformer() => _instance ??= OrganizationInboxProjectionInboxTypeEnumTypeTransformer._();

  String encode(OrganizationInboxProjectionInboxTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OrganizationInboxProjectionInboxTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OrganizationInboxProjectionInboxTypeEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'HTTP_INBOX': return OrganizationInboxProjectionInboxTypeEnum.HTTP_INBOX;
      case r'SMTP_INBOX': return OrganizationInboxProjectionInboxTypeEnum.SMTP_INBOX;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [OrganizationInboxProjectionInboxTypeEnumTypeTransformer] instance.
  static OrganizationInboxProjectionInboxTypeEnumTypeTransformer _instance;
}

