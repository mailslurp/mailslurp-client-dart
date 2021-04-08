part of mailslurp.api;

class CreateContactOptions {
  /* Set of email addresses belonging to the contact */
  List<String> emailAddresses = [];
  
  String firstName = null;
  /* Group IDs that contact belongs to */
  String groupId = null;
  
  Object metaData = null;
  /* Has the user explicitly or implicitly opted out of being contacted? If so MailSlurp will ignore them in all actions. */
  bool optOut = null;
  /* Tags that can be used to search and group contacts */
  List<String> tags = [];
  
  String lastName = null;
  
  String company = null;
  CreateContactOptions();

  @override
  String toString() {
    return 'CreateContactOptions[emailAddresses=$emailAddresses, firstName=$firstName, groupId=$groupId, metaData=$metaData, optOut=$optOut, tags=$tags, lastName=$lastName, company=$company, ]';
  }

  CreateContactOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddresses = (json['emailAddresses'] == null) ?
      null :
      (json['emailAddresses'] as List).cast<String>();
    firstName = json['firstName'];
    groupId = json['groupId'];
    metaData = json['metaData'];
    optOut = json['optOut'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
    lastName = json['lastName'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddresses != null)
      json['emailAddresses'] = emailAddresses;
    if (firstName != null)
      json['firstName'] = firstName;
    if (groupId != null)
      json['groupId'] = groupId;
    if (metaData != null)
      json['metaData'] = metaData;
    if (optOut != null)
      json['optOut'] = optOut;
    if (tags != null)
      json['tags'] = tags;
    if (lastName != null)
      json['lastName'] = lastName;
    if (company != null)
      json['company'] = company;
    return json;
  }

  static List<CreateContactOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateContactOptions>() : json.map((value) => CreateContactOptions.fromJson(value)).toList();
  }

  static Map<String, CreateContactOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateContactOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateContactOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateContactOptions-objects as value to a dart map
  static Map<String, List<CreateContactOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateContactOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateContactOptions.listFromJson(value);
       });
     }
     return map;
  }
}

