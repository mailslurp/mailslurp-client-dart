part of mailslurp.api;

class CreateDomainOptions {
  /* Whether to create a catch all inbox for the domain. Any email sent to an address using your domain that cannot be matched to an existing inbox you created with the domain will be routed to the created catch all inbox. You can access emails using the regular methods on this inbox ID. */
  bool createdCatchAllInbox = null;
  /* Optional description of the domain. */
  String description = null;
  /* The top level domain you wish to use with MailSlurp. Do not specify subdomain just the top level. So `test.com` covers all subdomains such as `mail.test.com`. Don't include a protocol such as `http://`. Once added you must complete the verification steps by adding the returned records to your domain. */
  String domain = null;
  CreateDomainOptions();

  @override
  String toString() {
    return 'CreateDomainOptions[createdCatchAllInbox=$createdCatchAllInbox, description=$description, domain=$domain, ]';
  }

  CreateDomainOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdCatchAllInbox = json['createdCatchAllInbox'];
    description = json['description'];
    domain = json['domain'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdCatchAllInbox != null)
      json['createdCatchAllInbox'] = createdCatchAllInbox;
    if (description != null)
      json['description'] = description;
    if (domain != null)
      json['domain'] = domain;
    return json;
  }

  static List<CreateDomainOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateDomainOptions>() : json.map((value) => CreateDomainOptions.fromJson(value)).toList();
  }

  static Map<String, CreateDomainOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateDomainOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateDomainOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateDomainOptions-objects as value to a dart map
  static Map<String, List<CreateDomainOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateDomainOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateDomainOptions.listFromJson(value);
       });
     }
     return map;
  }
}

