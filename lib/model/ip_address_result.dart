part of mailslurp.api;

class IPAddressResult {
  
  String address = null;
  
  String hostname = null;
  IPAddressResult();

  @override
  String toString() {
    return 'IPAddressResult[address=$address, hostname=$hostname, ]';
  }

  IPAddressResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    address = json['address'];
    hostname = json['hostname'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (address != null)
      json['address'] = address;
    if (hostname != null)
      json['hostname'] = hostname;
    return json;
  }

  static List<IPAddressResult> listFromJson(List<dynamic> json) {
    return json == null ? List<IPAddressResult>() : json.map((value) => IPAddressResult.fromJson(value)).toList();
  }

  static Map<String, IPAddressResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, IPAddressResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = IPAddressResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of IPAddressResult-objects as value to a dart map
  static Map<String, List<IPAddressResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<IPAddressResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = IPAddressResult.listFromJson(value);
       });
     }
     return map;
  }
}

