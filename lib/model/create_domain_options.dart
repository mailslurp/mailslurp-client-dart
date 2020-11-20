part of mailslurp.api;

class CreateDomainOptions {
  /* The top level domain you wish to use with MailSlurp */
  String domain = null;
  CreateDomainOptions();

  @override
  String toString() {
    return 'CreateDomainOptions[domain=$domain, ]';
  }

  CreateDomainOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain = json['domain'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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

