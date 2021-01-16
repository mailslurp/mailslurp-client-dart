part of mailslurp.api;

class MatchOption {
  /* The email property to match on. One of SUBJECT, TO, BCC, CC or FROM */
  String field = null;
  //enum fieldEnum {  SUBJECT,  TO,  BCC,  CC,  FROM,  };{
  /* What criteria to apply. CONTAIN or EQUAL. Note CONTAIN is recommended due to some SMTP servers adding new lines to fields and body content. */
  String should = null;
  //enum shouldEnum {  CONTAIN,  EQUAL,  };{
  /* The value you wish to compare with the value of the field specified using the `should` value passed. For example `BODY` should `CONTAIN` a value passed. */
  String value = null;
  MatchOption();

  @override
  String toString() {
    return 'MatchOption[field=$field, should=$should, value=$value, ]';
  }

  MatchOption.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    field = json['field'];
    should = json['should'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (field != null)
      json['field'] = field;
    if (should != null)
      json['should'] = should;
    if (value != null)
      json['value'] = value;
    return json;
  }

  static List<MatchOption> listFromJson(List<dynamic> json) {
    return json == null ? List<MatchOption>() : json.map((value) => MatchOption.fromJson(value)).toList();
  }

  static Map<String, MatchOption> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MatchOption>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MatchOption.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of MatchOption-objects as value to a dart map
  static Map<String, List<MatchOption>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<MatchOption>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = MatchOption.listFromJson(value);
       });
     }
     return map;
  }
}

