part of mailslurp.api;

class Inbox {
  /* When the inbox was created. Time stamps are in ISO DateTime Format `yyyy-MM-dd'T'HH:mm:ss.SSSXXX` e.g. `2000-10-31T01:30:00.000-05:00`. */
  DateTime createdAt = null;
  /* Description of an inbox for labelling and searching purposes */
  String description = null;
  /* The inbox's email address. Send an email to this address and the inbox will receive and store it for you. Note the email address in MailSlurp match characters exactly and are case sensitive so `+123` additions are considered different addresses. To retrieve the email use the Inbox and Email Controller endpoints with the inbox ID. */
  String emailAddress = null;
  /* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. */
  String expiresAt = null;
  /* Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering */
  bool favourite = null;
  /* ID of the inbox. The ID is a UUID-V4 format string. Use the inboxId for calls to Inbox and Email Controller endpoints. See the emailAddress property for the email address or the inbox. To get emails in an inbox use the WaitFor and Inbox Controller methods `waitForLatestEmail` and `getEmails` methods respectively. Inboxes can be used with aliases to forward emails automatically. */
  String id = null;
  /* Name of the inbox. Displayed in the dashboard for easier search */
  String name = null;
  /* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
  List<String> tags = [];
  /* ID of user that inbox belongs to */
  String userId = null;
  Inbox();

  @override
  String toString() {
    return 'Inbox[createdAt=$createdAt, description=$description, emailAddress=$emailAddress, expiresAt=$expiresAt, favourite=$favourite, id=$id, name=$name, tags=$tags, userId=$userId, ]';
  }

  Inbox.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    description = json['description'];
    emailAddress = json['emailAddress'];
    expiresAt = json['expiresAt'];
    favourite = json['favourite'];
    id = json['id'];
    name = json['name'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (description != null)
      json['description'] = description;
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (expiresAt != null)
      json['expiresAt'] = expiresAt;
    if (favourite != null)
      json['favourite'] = favourite;
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (tags != null)
      json['tags'] = tags;
    if (userId != null)
      json['userId'] = userId;
    return json;
  }

  static List<Inbox> listFromJson(List<dynamic> json) {
    return json == null ? List<Inbox>() : json.map((value) => Inbox.fromJson(value)).toList();
  }

  static Map<String, Inbox> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Inbox>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Inbox.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Inbox-objects as value to a dart map
  static Map<String, List<Inbox>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Inbox>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Inbox.listFromJson(value);
       });
     }
     return map;
  }
}

