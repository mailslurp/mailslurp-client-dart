part of mailslurp.api;

class CreateAliasOptions {
  /* Email address to be hidden behind alias. Emails sent to the alias email address will be forwarded to this address. If you want to enable replies set useThreads true and the reply-to for the email will allow outbound communication via a thread. */
  String emailAddress = null;
  /* Optional inbox ID to attach to alias. Null by default means an a new inbox will be created for the alias. Use a custom inbox to control what email address the alias uses. To use custom email addresses create a domain and an inbox, the use the inbox ID with this call. Emails received by this inbox will be forwarded to the alias email address */
  String inboxId = null;
  /* Optional name for alias */
  String name = null;
  /* Enable threads options. If true emails will be sent with a unique reply-to thread address. This means you can reply to the forwarded email and it will be sent to the recipients via your alias address. That way a thread conversation is preserved. */
  bool useThreads = null;
  CreateAliasOptions();

  @override
  String toString() {
    return 'CreateAliasOptions[emailAddress=$emailAddress, inboxId=$inboxId, name=$name, useThreads=$useThreads, ]';
  }

  CreateAliasOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
    inboxId = json['inboxId'];
    name = json['name'];
    useThreads = json['useThreads'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (useThreads != null)
      json['useThreads'] = useThreads;
    return json;
  }

  static List<CreateAliasOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateAliasOptions>() : json.map((value) => CreateAliasOptions.fromJson(value)).toList();
  }

  static Map<String, CreateAliasOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateAliasOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateAliasOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateAliasOptions-objects as value to a dart map
  static Map<String, List<CreateAliasOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateAliasOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateAliasOptions.listFromJson(value);
       });
     }
     return map;
  }
}

