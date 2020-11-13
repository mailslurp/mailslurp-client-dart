part of mailslurp.api;

class DomainDto {
  
  DateTime createdAt = null;
  
  String domain = null;
  
  String id = null;
  
  bool isVerified = null;
  
  DateTime updatedAt = null;
  
  String userId = null;
  
  String verificationToken = null;
  DomainDto();

  @override
  String toString() {
    return 'DomainDto[createdAt=$createdAt, domain=$domain, id=$id, isVerified=$isVerified, updatedAt=$updatedAt, userId=$userId, verificationToken=$verificationToken, ]';
  }

  DomainDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    domain = json['domain'];
    id = json['id'];
    isVerified = json['isVerified'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    userId = json['userId'];
    verificationToken = json['verificationToken'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (domain != null)
      json['domain'] = domain;
    if (id != null)
      json['id'] = id;
    if (isVerified != null)
      json['isVerified'] = isVerified;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (userId != null)
      json['userId'] = userId;
    if (verificationToken != null)
      json['verificationToken'] = verificationToken;
    return json;
  }

  static List<DomainDto> listFromJson(List<dynamic> json) {
    return json == null ? List<DomainDto>() : json.map((value) => DomainDto.fromJson(value)).toList();
  }

  static Map<String, DomainDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DomainDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DomainDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DomainDto-objects as value to a dart map
  static Map<String, List<DomainDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DomainDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DomainDto.listFromJson(value);
       });
     }
     return map;
  }
}

