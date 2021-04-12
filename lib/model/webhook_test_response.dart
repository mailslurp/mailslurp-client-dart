part of mailslurp.api;

class WebhookTestResponse {
  
  String message = null;
  
  int statusCode = null;
  WebhookTestResponse();

  @override
  String toString() {
    return 'WebhookTestResponse[message=$message, statusCode=$statusCode, ]';
  }

  WebhookTestResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (statusCode != null)
      json['statusCode'] = statusCode;
    return json;
  }

  static List<WebhookTestResponse> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookTestResponse>() : json.map((value) => WebhookTestResponse.fromJson(value)).toList();
  }

  static Map<String, WebhookTestResponse> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookTestResponse>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookTestResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestResponse-objects as value to a dart map
  static Map<String, List<WebhookTestResponse>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookTestResponse>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookTestResponse.listFromJson(value);
       });
     }
     return map;
  }
}

