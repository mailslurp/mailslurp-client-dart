part of mailslurp.api;

class OrganizationInboxProjection {
  /* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. */
  DateTime createdAt = null;
  /* The inbox's email address. Inbox projections and previews may not include the email address. To view the email address fetch the inbox entity directly. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
  String emailAddress = null;
  /* Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering */
  bool favourite = null;
  /* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. */
  String id = null;
  /* Name of the inbox. Displayed in the dashboard for easier search */
  String name = null;
  /* Is the inbox readOnly for the caller. Read only means can not be deleted or modified. */
  bool readOnly = null;
  /* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
  List<String> tags = [];
  /* Does inbox permit team access for organization team members. If so team users can use inbox and emails associated with it. */
  bool teamAccess = null;
  OrganizationInboxProjection();

  @override
  String toString() {
    return 'OrganizationInboxProjection[createdAt=$createdAt, emailAddress=$emailAddress, favourite=$favourite, id=$id, name=$name, readOnly=$readOnly, tags=$tags, teamAccess=$teamAccess, ]';
  }

  OrganizationInboxProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddress = json['emailAddress'];
    favourite = json['favourite'];
    id = json['id'];
    name = json['name'];
    readOnly = json['readOnly'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    teamAccess = json['teamAccess'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (favourite != null)
      json['favourite'] = favourite;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (readOnly != null)
      json['readOnly'] = readOnly;
    if (tags != null)
      json['tags'] = tags;
    if (teamAccess != null)
      json['teamAccess'] = teamAccess;
    return json;
  }

  static List<OrganizationInboxProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<OrganizationInboxProjection>() : json.map((value) => OrganizationInboxProjection.fromJson(value)).toList();
  }

  static Map<String, OrganizationInboxProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, OrganizationInboxProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = OrganizationInboxProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of OrganizationInboxProjection-objects as value to a dart map
  static Map<String, List<OrganizationInboxProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<OrganizationInboxProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = OrganizationInboxProjection.listFromJson(value);
       });
     }
     return map;
  }
}

