part of mailslurp.api;

class NameServerRecord {
  
  String priority = null;
  
  String raw = null;
  
  String recordType = null;
  
  String value = null;
  NameServerRecord();

  @override
  String toString() {
    return 'NameServerRecord[priority=$priority, raw=$raw, recordType=$recordType, value=$value, ]';
  }

  NameServerRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    priority = json['priority'];
    raw = json['raw'];
    recordType = json['recordType'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (priority != null)
      json['priority'] = priority;
    if (raw != null)
      json['raw'] = raw;
    if (recordType != null)
      json['recordType'] = recordType;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<NameServerRecord> listFromJson(List<dynamic> json) {
    return json == null ? List<NameServerRecord>() : json.map((value) => NameServerRecord.fromJson(value)).toList();
  }

  static Map<String, NameServerRecord> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NameServerRecord>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NameServerRecord.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NameServerRecord-objects as value to a dart map
  static Map<String, List<NameServerRecord>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NameServerRecord>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NameServerRecord.listFromJson(value);
       });
     }
     return map;
  }
}

