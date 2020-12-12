part of mailslurp.api;

class HTMLValidationResult {
  /* Optional errors resulting from HTML validation */
  List<ValidationMessage> errors = [];
  /* Is HTML validation result valid */
  bool isValid = null;
  /* Optional warnings resulting from HTML validation */
  List<ValidationMessage> warnings = [];
  HTMLValidationResult();

  @override
  String toString() {
    return 'HTMLValidationResult[errors=$errors, isValid=$isValid, warnings=$warnings, ]';
  }

  HTMLValidationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors = (json['errors'] == null) ?
      null :
      ValidationMessage.listFromJson(json['errors']);
    isValid = json['isValid'];
    warnings = (json['warnings'] == null) ?
      null :
      ValidationMessage.listFromJson(json['warnings']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (errors != null)
      json['errors'] = errors;
    if (isValid != null)
      json['isValid'] = isValid;
    if (warnings != null)
      json['warnings'] = warnings;
    return json;
  }

  static List<HTMLValidationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<HTMLValidationResult>() : json.map((value) => HTMLValidationResult.fromJson(value)).toList();
  }

  static Map<String, HTMLValidationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, HTMLValidationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = HTMLValidationResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of HTMLValidationResult-objects as value to a dart map
  static Map<String, List<HTMLValidationResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<HTMLValidationResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = HTMLValidationResult.listFromJson(value);
       });
     }
     return map;
  }
}

