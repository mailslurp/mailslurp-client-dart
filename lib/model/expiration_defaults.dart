part of mailslurp.api;

class ExpirationDefaults {
  
  bool canPermanentInbox = null;
  
  int defaultExpirationMillis = null;
  
  DateTime defaultExpiresAt = null;
  
  int maxExpirationMillis = null;
  ExpirationDefaults();

  @override
  String toString() {
    return 'ExpirationDefaults[canPermanentInbox=$canPermanentInbox, defaultExpirationMillis=$defaultExpirationMillis, defaultExpiresAt=$defaultExpiresAt, maxExpirationMillis=$maxExpirationMillis, ]';
  }

  ExpirationDefaults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    canPermanentInbox = json['canPermanentInbox'];
    defaultExpirationMillis = json['defaultExpirationMillis'];
    defaultExpiresAt = (json['defaultExpiresAt'] == null) ?
      null :
      DateTime.parse(json['defaultExpiresAt']);
    maxExpirationMillis = json['maxExpirationMillis'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (canPermanentInbox != null)
      json['canPermanentInbox'] = canPermanentInbox;
    if (defaultExpirationMillis != null)
      json['defaultExpirationMillis'] = defaultExpirationMillis;
    if (defaultExpiresAt != null)
      json['defaultExpiresAt'] = defaultExpiresAt == null ? null : defaultExpiresAt.toUtc().toIso8601String();
    if (maxExpirationMillis != null)
      json['maxExpirationMillis'] = maxExpirationMillis;
    return json;
  }

  static List<ExpirationDefaults> listFromJson(List<dynamic> json) {
    return json == null ? List<ExpirationDefaults>() : json.map((value) => ExpirationDefaults.fromJson(value)).toList();
  }

  static Map<String, ExpirationDefaults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExpirationDefaults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExpirationDefaults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExpirationDefaults-objects as value to a dart map
  static Map<String, List<ExpirationDefaults>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExpirationDefaults>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExpirationDefaults.listFromJson(value);
       });
     }
     return map;
  }
}

