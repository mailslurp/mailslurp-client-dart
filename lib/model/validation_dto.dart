part of mailslurp.api;

class ValidationDto {
  /* ID of the email validated */
  String emailId = null;
  
  HTMLValidationResult html = null;
  ValidationDto();

  @override
  String toString() {
    return 'ValidationDto[emailId=$emailId, html=$html, ]';
  }

  ValidationDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    emailId = json['emailId'];
    html = (json['html'] == null) ?
      null :
      HTMLValidationResult.fromJson(json['html']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (emailId != null)
      json['emailId'] = emailId;
    if (html != null)
      json['html'] = html;
    return json;
  }

  static List<ValidationDto> listFromJson(List<dynamic> json) {
    return json == null ? List<ValidationDto>() : json.map((value) => ValidationDto.fromJson(value)).toList();
  }

  static Map<String, ValidationDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ValidationDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ValidationDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ValidationDto-objects as value to a dart map
  static Map<String, List<ValidationDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ValidationDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ValidationDto.listFromJson(value);
       });
     }
     return map;
  }
}

