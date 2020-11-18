part of mailslurp.api;

class CreateOwnedAliasOptions {
  /* Email address to be hidden behind alias */
  String emailAddress = null;
  /* Optional inbox ID to attach to alias. Emails received by this inbox will be forwarded to the alias email address */
  String inboxId = null;
  /* Optional name for alias */
  String name = null;
  /* Optional proxied flag. When proxied is true alias will forward the incoming emails to the aliased email address via a proxy inbox. A new proxy is created for every new email thread. By replying to the proxy you can correspond with using your email alias without revealing your real email address. */
  bool proxied = null;
  CreateOwnedAliasOptions();

  @override
  String toString() {
    return 'CreateOwnedAliasOptions[emailAddress=$emailAddress, inboxId=$inboxId, name=$name, proxied=$proxied, ]';
  }

  CreateOwnedAliasOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
    inboxId = json['inboxId'];
    name = json['name'];
    proxied = json['proxied'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (proxied != null)
      json['proxied'] = proxied;
    return json;
  }

  static List<CreateOwnedAliasOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateOwnedAliasOptions>() : json.map((value) => CreateOwnedAliasOptions.fromJson(value)).toList();
  }

  static Map<String, CreateOwnedAliasOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateOwnedAliasOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateOwnedAliasOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateOwnedAliasOptions-objects as value to a dart map
  static Map<String, List<CreateOwnedAliasOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateOwnedAliasOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateOwnedAliasOptions.listFromJson(value);
       });
     }
     return map;
  }
}

