part of mailslurp.api;

class WebhookTestResult {
  
  String message = null;
  
  WebhookTestRequest request = null;
  
  WebhookTestResponse response = null;
  WebhookTestResult();

  @override
  String toString() {
    return 'WebhookTestResult[message=$message, request=$request, response=$response, ]';
  }

  WebhookTestResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message = json['message'];
    request = (json['request'] == null) ?
      null :
      WebhookTestRequest.fromJson(json['request']);
    response = (json['response'] == null) ?
      null :
      WebhookTestResponse.fromJson(json['response']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (message != null)
      json['message'] = message;
    if (request != null)
      json['request'] = request;
    if (response != null)
      json['response'] = response;
    return json;
  }

  static List<WebhookTestResult> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookTestResult>() : json.map((value) => WebhookTestResult.fromJson(value)).toList();
  }

  static Map<String, WebhookTestResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookTestResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookTestResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestResult-objects as value to a dart map
  static Map<String, List<WebhookTestResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookTestResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookTestResult.listFromJson(value);
       });
     }
     return map;
  }
}

