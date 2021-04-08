part of mailslurp.api;

class DescribeMailServerDomainResult {
  
  String domain = null;
  
  String message = null;
  
  List<NameServerRecord> mxRecords = [];
  DescribeMailServerDomainResult();

  @override
  String toString() {
    return 'DescribeMailServerDomainResult[domain=$domain, message=$message, mxRecords=$mxRecords, ]';
  }

  DescribeMailServerDomainResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain = json['domain'];
    message = json['message'];
    mxRecords = (json['mxRecords'] == null) ?
      null :
      NameServerRecord.listFromJson(json['mxRecords']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (domain != null)
      json['domain'] = domain;
    if (message != null)
      json['message'] = message;
    if (mxRecords != null)
      json['mxRecords'] = mxRecords;
    return json;
  }

  static List<DescribeMailServerDomainResult> listFromJson(List<dynamic> json) {
    return json == null ? List<DescribeMailServerDomainResult>() : json.map((value) => DescribeMailServerDomainResult.fromJson(value)).toList();
  }

  static Map<String, DescribeMailServerDomainResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DescribeMailServerDomainResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DescribeMailServerDomainResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DescribeMailServerDomainResult-objects as value to a dart map
  static Map<String, List<DescribeMailServerDomainResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DescribeMailServerDomainResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DescribeMailServerDomainResult.listFromJson(value);
       });
     }
     return map;
  }
}

