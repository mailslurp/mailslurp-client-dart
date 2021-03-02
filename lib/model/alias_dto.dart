part of mailslurp.api;

class AliasDto {
  
  DateTime createdAt = null;
  /* The alias's email address for receiving email */
  String emailAddress = null;
  
  String id = null;
  /* Inbox that is associated with the alias */
  String inboxId = null;
  /* Has the alias been verified. You must verify an alias if the masked email address has not yet been verified by your account */
  bool isVerified = null;
  /* The underlying email address that is hidden and will received forwarded email */
  String maskedEmailAddress = null;
  
  String name = null;
  
  DateTime updatedAt = null;
  /* If alias will generate response threads or not when email are received by it */
  bool useThreads = null;
  
  String userId = null;
  AliasDto();

  @override
  String toString() {
    return 'AliasDto[createdAt=$createdAt, emailAddress=$emailAddress, id=$id, inboxId=$inboxId, isVerified=$isVerified, maskedEmailAddress=$maskedEmailAddress, name=$name, updatedAt=$updatedAt, useThreads=$useThreads, userId=$userId, ]';
  }

  AliasDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    emailAddress = json['emailAddress'];
    id = json['id'];
    inboxId = json['inboxId'];
    isVerified = json['isVerified'];
    maskedEmailAddress = json['maskedEmailAddress'];
    name = json['name'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    useThreads = json['useThreads'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (isVerified != null)
      json['isVerified'] = isVerified;
    if (maskedEmailAddress != null)
      json['maskedEmailAddress'] = maskedEmailAddress;
    if (name != null)
      json['name'] = name;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (useThreads != null)
      json['useThreads'] = useThreads;
    if (userId != null)
      json['userId'] = userId;
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

