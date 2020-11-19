part of mailslurp.api;

class CreateWebhookOptions {
  
  BasicAuthOptions basicAuth = null;
  /* Optional name for the webhook */
  String name = null;
  /* Public URL on your server that MailSlurp can post WebhookNotification payload to when an email is received. The payload of the submitted JSON is described by https://api.mailslurp.com/schemas/webhook-payload */
  String url = null;
  CreateWebhookOptions();

  @override
  String toString() {
    return 'CreateWebhookOptions[basicAuth=$basicAuth, name=$name, url=$url, ]';
  }

  CreateWebhookOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    basicAuth = (json['basicAuth'] == null) ?
      null :
      BasicAuthOptions.fromJson(json['basicAuth']);
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (basicAuth != null)
      json['basicAuth'] = basicAuth;
    if (name != null)
      json['name'] = name;
    if (url != null)
      json['url'] = url;
    return json;
  }

  static List<CreateWebhookOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<CreateWebhookOptions>() : json.map((value) => CreateWebhookOptions.fromJson(value)).toList();
  }

  static Map<String, CreateWebhookOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CreateWebhookOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CreateWebhookOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CreateWebhookOptions-objects as value to a dart map
  static Map<String, List<CreateWebhookOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CreateWebhookOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CreateWebhookOptions.listFromJson(value);
       });
     }
     return map;
  }
}

