part of mailslurp.api;

class UpdateDomainOptions {
  
  String catchAllInboxId = null;
  UpdateDomainOptions();

  @override
  String toString() {
    return 'UpdateDomainOptions[catchAllInboxId=$catchAllInboxId, ]';
  }

  UpdateDomainOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    catchAllInboxId = json['catchAllInboxId'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (catchAllInboxId != null)
      json['catchAllInboxId'] = catchAllInboxId;
    return json;
  }

  static List<UpdateDomainOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<UpdateDomainOptions>() : json.map((value) => UpdateDomainOptions.fromJson(value)).toList();
  }

  static Map<String, UpdateDomainOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UpdateDomainOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UpdateDomainOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UpdateDomainOptions-objects as value to a dart map
  static Map<String, List<UpdateDomainOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UpdateDomainOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UpdateDomainOptions.listFromJson(value);
       });
     }
     return map;
  }
}

