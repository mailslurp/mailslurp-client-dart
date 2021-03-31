part of mailslurp.api;

class WebhookTestRequest {
  
  Map<String, String> headers = {};
  
  String method = null;
  //enum methodEnum {  GET,  HEAD,  POST,  PUT,  PATCH,  DELETE,  OPTIONS,  TRACE,  };{
  
  String payload = null;
  
  String url = null;
  WebhookTestRequest();

  @override
  String toString() {
    return 'WebhookTestRequest[headers=$headers, method=$method, payload=$payload, url=$url, ]';
  }

  WebhookTestRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    headers = (json['headers'] == null) ?
      null :
      (json['headers'] as Map).cast<String, String>();
    method = json['method'];
    payload = json['payload'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (headers != null)
      json['headers'] = headers;
    if (method != null)
      json['method'] = method;
    if (payload != null)
      json['payload'] = payload;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebhookTestRequest> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookTestRequest>() : json.map((value) => WebhookTestRequest.fromJson(value)).toList();
  }

  static Map<String, WebhookTestRequest> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookTestRequest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookTestRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookTestRequest-objects as value to a dart map
  static Map<String, List<WebhookTestRequest>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookTestRequest>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookTestRequest.listFromJson(value);
       });
     }
     return map;
  }
}

