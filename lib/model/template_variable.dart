part of mailslurp.api;

class TemplateVariable {
  
  String name = null;
  
  String variableType = null;
  //enum variableTypeEnum {  STRING,  };{
  TemplateVariable();

  @override
  String toString() {
    return 'TemplateVariable[name=$name, variableType=$variableType, ]';
  }

  TemplateVariable.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    variableType = json['variableType'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (variableType != null)
      json['variableType'] = variableType;
    return json;
  }

  static List<TemplateVariable> listFromJson(List<dynamic> json) {
    return json == null ? List<TemplateVariable>() : json.map((value) => TemplateVariable.fromJson(value)).toList();
  }

  static Map<String, TemplateVariable> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TemplateVariable>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TemplateVariable.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TemplateVariable-objects as value to a dart map
  static Map<String, List<TemplateVariable>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TemplateVariable>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TemplateVariable.listFromJson(value);
       });
     }
     return map;
  }
}

