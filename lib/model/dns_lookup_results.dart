part of mailslurp.api;

class DNSLookupResults {
  
  List<DNSLookupResult> results = [];
  DNSLookupResults();

  @override
  String toString() {
    return 'DNSLookupResults[results=$results, ]';
  }

  DNSLookupResults.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    results = (json['results'] == null) ?
      null :
      DNSLookupResult.listFromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (results != null)
      json['results'] = results;
    return json;
  }

  static List<DNSLookupResults> listFromJson(List<dynamic> json) {
    return json == null ? List<DNSLookupResults>() : json.map((value) => DNSLookupResults.fromJson(value)).toList();
  }

  static Map<String, DNSLookupResults> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DNSLookupResults>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DNSLookupResults.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DNSLookupResults-objects as value to a dart map
  static Map<String, List<DNSLookupResults>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DNSLookupResults>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DNSLookupResults.listFromJson(value);
       });
     }
     return map;
  }
}

