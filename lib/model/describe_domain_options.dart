part of mailslurp.api;

class DescribeDomainOptions {
  
  String domain = null;
  DescribeDomainOptions();

  @override
  String toString() {
    return 'DescribeDomainOptions[domain=$domain, ]';
  }

  DescribeDomainOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domain = json['domain'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (domain != null)
      json['domain'] = domain;
    return json;
  }

  static List<DescribeDomainOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<DescribeDomainOptions>() : json.map((value) => DescribeDomainOptions.fromJson(value)).toList();
  }

  static Map<String, DescribeDomainOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, DescribeDomainOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = DescribeDomainOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of DescribeDomainOptions-objects as value to a dart map
  static Map<String, List<DescribeDomainOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<DescribeDomainOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = DescribeDomainOptions.listFromJson(value);
       });
     }
     return map;
  }
}

