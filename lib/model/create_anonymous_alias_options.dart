part of mailslurp.api;

class CreateAnonymousAliasOptions {
  /* Email address to be hidden behind alias */
  String emailAddress = null;
  CreateAnonymousAliasOptions();

  @override
  String toString() {
    return 'CreateAnonymousAliasOptions[emailAddress=$emailAddress, ]';
  }

  CreateAnonymousAliasOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    return json;
  }

  static List<CreateAnonymousAliasOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateAnonymousAliasOptions>() : json.map((value) => CreateAnonymousAliasOptions.fromJson(value)).toList();
  }

  static Map<String, CreateAnonymousAliasOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateAnonymousAliasOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateAnonymousAliasOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateAnonymousAliasOptions-objects as value to a dart map
  static Map<String, List<CreateAnonymousAliasOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateAnonymousAliasOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateAnonymousAliasOptions.listFromJson(value);
       });
     }
     return map;
  }
}

