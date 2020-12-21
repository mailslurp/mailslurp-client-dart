part of mailslurp.api;

class CreateInboxDto {
  /* Optional description of an inbox for labelling purposes */
  String description = null;
  /* Optionally specify an email address you want the inbox to have. When left blank an email address will be randomly assigned to the inbox usually ending in `@mailslurp.com`. Custom email addresses must include your own custom domain that you have configured in MailSlurp. So if your domain is `mysite.com` you can created any email address ending in `@mysite.com`. All email addresses are transformed to lowercase! */
  String emailAddress = null;
  /* When, if ever, will the inbox expire and be deleted. If null then this inbox is permanent and the emails in it won't be deleted. Timestamp passed as string. */
  DateTime expiresAt = null;
  /* Is the inbox favorited. Favouriting inboxes is typically done in the dashboard for quick access */
  bool favourite = null;
  /* Optional name of the inbox. Displayed in the dashboard for easier search */
  String name = null;
  /* Tags that inbox has been tagged with. Tags can be added to inboxes to group different inboxes within an account. You can also search for inboxes by tag in the dashboard UI. */
  List<String> tags = [];
  CreateInboxDto();

  @override
  String toString() {
    return 'CreateInboxDto[description=$description, emailAddress=$emailAddress, expiresAt=$expiresAt, favourite=$favourite, name=$name, tags=$tags, ]';
  }

  CreateInboxDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description = json['description'];
    emailAddress = json['emailAddress'];
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
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
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

  static List<CreateInboxDto> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateInboxDto>() : json.map((value) => CreateInboxDto.fromJson(value)).toList();
  }

  static Map<String, CreateInboxDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateInboxDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateInboxDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateInboxDto-objects as value to a dart map
  static Map<String, List<CreateInboxDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateInboxDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateInboxDto.listFromJson(value);
       });
     }
     return map;
  }
}

