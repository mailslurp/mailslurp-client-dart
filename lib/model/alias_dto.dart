part of mailslurp.api;

class AliasDto {
  
  String id = null;
  
  String inboxId = null;
  
  String name = null;
  
  String pendingEmailAddress = null;
  
  bool useThreads = null;
  
  String userId = null;
  
  String verifiedEmailAddress = null;
  AliasDto();

  @override
  String toString() {
    return 'AliasDto[id=$id, inboxId=$inboxId, name=$name, pendingEmailAddress=$pendingEmailAddress, useThreads=$useThreads, userId=$userId, verifiedEmailAddress=$verifiedEmailAddress, ]';
  }

  AliasDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    inboxId = json['inboxId'];
    name = json['name'];
    pendingEmailAddress = json['pendingEmailAddress'];
    useThreads = json['useThreads'];
    userId = json['userId'];
    verifiedEmailAddress = json['verifiedEmailAddress'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (name != null)
      json['name'] = name;
    if (pendingEmailAddress != null)
      json['pendingEmailAddress'] = pendingEmailAddress;
    if (useThreads != null)
      json['useThreads'] = useThreads;
    if (userId != null)
      json['userId'] = userId;
    if (verifiedEmailAddress != null)
      json['verifiedEmailAddress'] = verifiedEmailAddress;
    return json;
  }

  static List<AliasDto> listFromJson(List<dynamic> json) {
    return json == null ? List<AliasDto>() : json.map((value) => AliasDto.fromJson(value)).toList();
  }

  static Map<String, AliasDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AliasDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AliasDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AliasDto-objects as value to a dart map
  static Map<String, List<AliasDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AliasDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AliasDto.listFromJson(value);
       });
     }
     return map;
  }
}

