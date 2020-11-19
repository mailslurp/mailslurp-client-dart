part of mailslurp.api;

class GroupContactsDto {
  
  List<ContactDto> contacts = [];
  
  GroupDto group = null;
  GroupContactsDto();

  @override
  String toString() {
    return 'GroupContactsDto[contacts=$contacts, group=$group, ]';
  }

  GroupContactsDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contacts = (json['contacts'] == null) ?
      null :
      ContactDto.listFromJson(json['contacts']);
    group = (json['group'] == null) ?
      null :
      GroupDto.fromJson(json['group']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contacts != null)
      json['contacts'] = contacts;
    if (group != null)
      json['group'] = group;
    return json;
  }

  static List<GroupContactsDto> listFromJson(List<dynamic> json) {
    return json == null ? List<GroupContactsDto>() : json.map((value) => GroupContactsDto.fromJson(value)).toList();
  }

  static Map<String, GroupContactsDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GroupContactsDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = GroupContactsDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GroupContactsDto-objects as value to a dart map
  static Map<String, List<GroupContactsDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<GroupContactsDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = GroupContactsDto.listFromJson(value);
       });
     }
     return map;
  }
}

