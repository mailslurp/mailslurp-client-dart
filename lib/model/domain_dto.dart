part of mailslurp.api;

class DomainDto {
  
  DateTime createdAt = null;
  /* DNS records for DKIM approval */
  List<String> dkimTokens = [];
  /* Custom domain name */
  String domain = null;
  
  String id = null;
  /* Whether domain has been verified or not. If the domain is not verified after 72 hours there is most likely an issue with the domains DNS records. */
  bool isVerified = null;
  
  DateTime updatedAt = null;
  
  String userId = null;
  /* A TXT record that you must place in the DNS settings of the domain to complete domain verification */
  String verificationToken = null;
  DomainDto();

  @override
  String toString() {
    return 'DomainDto[createdAt=$createdAt, dkimTokens=$dkimTokens, domain=$domain, id=$id, isVerified=$isVerified, updatedAt=$updatedAt, userId=$userId, verificationToken=$verificationToken, ]';
  }

  DomainDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    dkimTokens = (json['dkimTokens'] == null) ?
      null :
      (json['dkimTokens'] as List).cast<String>();
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
    if (dkimTokens != null)
      json['dkimTokens'] = dkimTokens;
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

