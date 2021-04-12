part of mailslurp.api;

class UpdateInboxOptions {
  /* Description of an inbox for labelling and searching purposes */
  String description = null;
  /* Inbox expiration time. When, if ever, the inbox should expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. This is the default behavior unless expiration date is set. If an expiration date is set and the time is reached MailSlurp will expire the inbox and move it to an expired inbox entity. You can still access the emails belonging to it but it can no longer send or receive email. */
  DateTime expiresAt = null;
  /* Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access or filtering */
  bool favourite = null;
  /* Name of the inbox. Displayed in the dashboard for easier search */
  String name = null;
  /* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
  List<String> tags = [];
  UpdateInboxOptions();

  @override
  String toString() {
    return 'UpdateInboxOptions[description=$description, expiresAt=$expiresAt, favourite=$favourite, name=$name, tags=$tags, ]';
  }

  UpdateInboxOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    expiresAt = (json['expiresAt'] == null) ?
      null :
      DateTime.parse(json['expiresAt']);
    favourite = json['favourite'];
    name = json['name'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (description != null)
      json['description'] = description;
    if (expiresAt != null)
      json['expiresAt'] = expiresAt == null ? null : expiresAt.toUtc().toIso8601String();
    if (favourite != null)
      json['favourite'] = favourite;
    if (name != null)
      json['name'] = name;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<UpdateInboxOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateInboxOptions>() : json.map((value) => UpdateInboxOptions.fromJson(value)).toList();
  }

  static Map<String, UpdateInboxOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateInboxOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateInboxOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateInboxOptions-objects as value to a dart map
  static Map<String, List<UpdateInboxOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdateInboxOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdateInboxOptions.listFromJson(value);
       });
     }
     return map;
  }
}

