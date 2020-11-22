part of mailslurp.api;

class ContactDto {
  
  String company = null;
  
  DateTime createdAt = null;
  
  List<String> emailAddresses = [];
  
  String firstName = null;
  
  String groupId = null;
  
  String id = null;
  
  String lastName = null;
  
  Object metaData = null;
  
  bool optOut = null;
  
  List<String> tags = [];
  ContactDto();

  @override
  String toString() {
    return 'ContactDto[company=$company, createdAt=$createdAt, emailAddresses=$emailAddresses, firstName=$firstName, groupId=$groupId, id=$id, lastName=$lastName, metaData=$metaData, optOut=$optOut, tags=$tags, ]';
  }

  ContactDto.fromJson(Map<String, dynamic> json) {
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
    metaData = json['metaData'];
    optOut = json['optOut'];
    tags = (json['tags'] == null) ?
      null :
      (json['tags'] as List).cast<String>();
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
    if (metaData != null)
      json['metaData'] = metaData;
    if (optOut != null)
      json['optOut'] = optOut;
    if (tags != null)
      json['tags'] = tags;
    return json;
  }

  static List<ContactDto> listFromJson(List<dynamic> json) {
    return json == null ? List<ContactDto>() : json.map((value) => ContactDto.fromJson(value)).toList();
  }

  static Map<String, ContactDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContactDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContactDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContactDto-objects as value to a dart map
  static Map<String, List<ContactDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContactDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContactDto.listFromJson(value);
       });
     }
     return map;
  }
}

