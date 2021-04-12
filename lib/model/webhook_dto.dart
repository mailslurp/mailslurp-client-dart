part of mailslurp.api;

class WebhookDto {
  /* Does webhook expect basic authentication? If true it means you created this webhook with a username and password. MailSlurp will use these in the URL to authenticate itself. */
  bool basicAuth = null;
  /* When the webhook was created */
  DateTime createdAt = null;
  /* ID of the Webhook */
  String id = null;
  /* The inbox that the Webhook will be triggered by */
  String inboxId = null;
  /* HTTP method that your server endpoint must listen for */
  String method = null;
  //enum methodEnum {  GET,  HEAD,  POST,  PUT,  PATCH,  DELETE,  OPTIONS,  TRACE,  };{
  /* Name of the webhook */
  String name = null;
  /* JSON Schema for the payload that will be sent to your URL via the HTTP method described. */
  String payloadJsonSchema = null;
  
  DateTime updatedAt = null;
  /* URL of your server that the webhook will be sent to. The schema of the JSON that is sent is described by the payloadJsonSchema. */
  String url = null;
  WebhookDto();

  @override
  String toString() {
    return 'WebhookDto[basicAuth=$basicAuth, createdAt=$createdAt, id=$id, inboxId=$inboxId, method=$method, name=$name, payloadJsonSchema=$payloadJsonSchema, updatedAt=$updatedAt, url=$url, ]';
  }

  WebhookDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    basicAuth = json['basicAuth'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    id = json['id'];
    inboxId = json['inboxId'];
    method = json['method'];
    name = json['name'];
    payloadJsonSchema = json['payloadJsonSchema'];
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (basicAuth != null)
      json['basicAuth'] = basicAuth;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (id != null)
      json['id'] = id;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (method != null)
      json['method'] = method;
    if (name != null)
      json['name'] = name;
    if (payloadJsonSchema != null)
      json['payloadJsonSchema'] = payloadJsonSchema;
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<WebhookDto> listFromJson(List<dynamic> json) {
    return json == null ? List<WebhookDto>() : json.map((value) => WebhookDto.fromJson(value)).toList();
  }

  static Map<String, WebhookDto> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WebhookDto>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WebhookDto.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WebhookDto-objects as value to a dart map
  static Map<String, List<WebhookDto>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WebhookDto>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WebhookDto.listFromJson(value);
       });
     }
     return map;
  }
}

