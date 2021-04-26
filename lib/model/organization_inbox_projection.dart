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
    this.createdAt,
    this.emailAddress,
    this.favourite,
    this.id,
    this.name,
    this.readOnly,
    this.tags = const [],
    this.teamAccess,
  });

  /// When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`.
  DateTime createdAt;

  /// The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID.
  String emailAddress;

  /// Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering
  bool favourite;

  /// ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically.
  String id;

  /// Name of the inbox. Displayed in the dashboard for easier search
  String name;

  /// Is the inbox readOnly for the caller. Read only means can not be deleted or modified.
  bool readOnly;

  /// Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI.
  List<String> tags;

  /// Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it.
  bool teamAccess;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrganizationInboxProjection &&
     other.createdAt == createdAt &&
     other.emailAddress == emailAddress &&
     other.favourite == favourite &&
     other.id == id &&
     other.name == name &&
     other.readOnly == readOnly &&
     other.tags == tags &&
     other.teamAccess == teamAccess;

  @override
  int get hashCode =>
    (createdAt == null ? 0 : createdAt.hashCode) +
    (emailAddress == null ? 0 : emailAddress.hashCode) +
    (favourite == null ? 0 : favourite.hashCode) +
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (readOnly == null ? 0 : readOnly.hashCode) +
    (tags == null ? 0 : tags.hashCode) +
    (teamAccess == null ? 0 : teamAccess.hashCode);

  @override
  String toString() => 'OrganizationInboxProjection[createdAt=$createdAt, emailAddress=$emailAddress, favourite=$favourite, id=$id, name=$name, readOnly=$readOnly, tags=$tags, teamAccess=$teamAccess]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (emailAddress != null) {
      json[r'emailAddress'] = emailAddress;
    }
    if (favourite != null) {
      json[r'favourite'] = favourite;
    }
    if (id != null) {
      json[r'id'] = id;
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
    return json;
  }

  /// Returns a new [OrganizationInboxProjection] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationInboxProjection fromJson(Map<String, dynamic> json) => json == null
    ? null
    : OrganizationInboxProjection(
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        emailAddress: json[r'emailAddress'],
        favourite: json[r'favourite'],
        id: json[r'id'],
        name: json[r'name'],
        readOnly: json[r'readOnly'],
        tags: json[r'tags'] == null
          ? null
          : (json[r'tags'] as List).cast<String>(),
        teamAccess: json[r'teamAccess'],
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

