part of mailslurp.api;

class ContactProjection {
  
  String company = null;
  
  DateTime createdAt = null;
  
  List<String> emailAddresses = [];
  
  String firstName = null;
  
  String groupId = null;
  
  String id = null;
  
  String lastName = null;
  
  bool optOut = null;
  ContactProjection();

  @override
  String toString() {
    return 'ContactProjection[company=$company, createdAt=$createdAt, emailAddresses=$emailAddresses, firstName=$firstName, groupId=$groupId, id=$id, lastName=$lastName, optOut=$optOut, ]';
  }

  ContactProjection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    company = json['company'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddresses = (json['emailAddresses'] == null) ?
      null :
      (json['emailAddresses'] as List).cast<String>();
    firstName = json['firstName'];
    groupId = json['groupId'];
    id = json['id'];
    lastName = json['lastName'];
    optOut = json['optOut'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (company != null)
      json['company'] = company;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emailAddresses != null)
      json['emailAddresses'] = emailAddresses;
    if (firstName != null)
      json['firstName'] = firstName;
    if (groupId != null)
      json['groupId'] = groupId;
    if (id != null)
      json['id'] = id;
    if (lastName != null)
      json['lastName'] = lastName;
    if (optOut != null)
      json['optOut'] = optOut;
    return json;
  }

  static List<ContactProjection> listFromJson(List<dynamic> json) {
    return json == null ? List<ContactProjection>() : json.map((value) => ContactProjection.fromJson(value)).toList();
  }

  static Map<String, ContactProjection> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContactProjection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContactProjection.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContactProjection-objects as value to a dart map
  static Map<String, List<ContactProjection>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContactProjection>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContactProjection.listFromJson(value);
       });
     }
     return map;
  }
}

