part of mailslurp.api;

class AliasVerificationResult {
  
  String aliasId = null;
  
  bool isVerified = null;
  
  String message = null;
  AliasVerificationResult();

  @override
  String toString() {
    return 'AliasVerificationResult[aliasId=$aliasId, isVerified=$isVerified, message=$message, ]';
  }

  AliasVerificationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    aliasId = json['aliasId'];
    isVerified = json['isVerified'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (aliasId != null)
      json['aliasId'] = aliasId;
    if (isVerified != null)
      json['isVerified'] = isVerified;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<AliasVerificationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<AliasVerificationResult>() : json.map((value) => AliasVerificationResult.fromJson(value)).toList();
  }

  static Map<String, AliasVerificationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, AliasVerificationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = AliasVerificationResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of AliasVerificationResult-objects as value to a dart map
  static Map<String, List<AliasVerificationResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<AliasVerificationResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = AliasVerificationResult.listFromJson(value);
       });
     }
     return map;
  }
}

