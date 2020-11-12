part of mailslurp.api;

class ValidationMessage {
  
  int lineNumber = null;
  
  String message = null;
  ValidationMessage();

  @override
  String toString() {
    return 'ValidationMessage[lineNumber=$lineNumber, message=$message, ]';
  }

  ValidationMessage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineNumber = json['lineNumber'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (lineNumber != null)
      json['lineNumber'] = lineNumber;
    if (message != null)
      json['message'] = message;
    return json;
  }

  static List<ValidationMessage> listFromJson(List<dynamic> json) {
    return json == null ? List<ValidationMessage>() : json.map((value) => ValidationMessage.fromJson(value)).toList();
  }

  static Map<String, ValidationMessage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValidationMessage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationMessage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ValidationMessage-objects as value to a dart map
  static Map<String, List<ValidationMessage>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ValidationMessage>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ValidationMessage.listFromJson(value);
       });
     }
     return map;
  }
}

