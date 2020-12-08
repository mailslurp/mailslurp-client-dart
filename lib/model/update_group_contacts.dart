part of mailslurp.api;

class UpdateGroupContacts {
  
  List<String> contactIds = [];
  UpdateGroupContacts();

  @override
  String toString() {
    return 'UpdateGroupContacts[contactIds=$contactIds, ]';
  }

  UpdateGroupContacts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contactIds = (json['contactIds'] == null) ?
      null :
      (json['contactIds'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (contactIds != null)
      json['contactIds'] = contactIds;
    return json;
  }

  static List<UpdateGroupContacts> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateGroupContacts>() : json.map((value) => UpdateGroupContacts.fromJson(value)).toList();
  }

  static Map<String, UpdateGroupContacts> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateGroupContacts>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateGroupContacts.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateGroupContacts-objects as value to a dart map
  static Map<String, List<UpdateGroupContacts>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdateGroupContacts>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdateGroupContacts.listFromJson(value);
       });
     }
     return map;
  }
}

