part of mailslurp.api;

class ExpiredInboxDto {
  
  String emailAddress = null;
  
  String id = null;
  
  String inboxId = null;
  ExpiredInboxDto();

  @override
  String toString() {
    return 'ExpiredInboxDto[emailAddress=$emailAddress, id=$id, inboxId=$inboxId, ]';
  }

  ExpiredInboxDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailAddress = json['emailAddress'];
    id = json['id'];
    inboxId = json['inboxId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    return json;
  }

  static List<ExpiredInboxDto> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpiredInboxDto>() : json.map((value) => ExpiredInboxDto.fromJson(value)).toList();
  }

  static Map<String, ExpiredInboxDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpiredInboxDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpiredInboxDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExpiredInboxDto-objects as value to a dart map
  static Map<String, List<ExpiredInboxDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExpiredInboxDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExpiredInboxDto.listFromJson(value);
       });
     }
     return map;
  }
}

