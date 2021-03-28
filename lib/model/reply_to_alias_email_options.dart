part of mailslurp.api;

class ReplyToAliasEmailOptions {
  /* List of uploaded attachments to send with the reply. Optional. */
  List<String> attachments = [];
  /* Body of the reply email you want to send */
  String body = null;
  /* The charset that your message should be sent with. Optional. Default is UTF-8 */
  String charset = null;
  /* Is the reply HTML */
  bool isHTML = null;
  /* When to send the email. Typically immediately */
  String sendStrategy = null;
  //enum sendStrategyEnum {  SINGLE_MESSAGE,  };{
  /* Template ID to use instead of body. Will use template variable map to fill defined variable slots. */
  String template = null;
  /* Template variables if using a template */
  Object templateVariables = null;
  ReplyToAliasEmailOptions();

  @override
  String toString() {
    return 'ReplyToAliasEmailOptions[attachments=$attachments, body=$body, charset=$charset, isHTML=$isHTML, sendStrategy=$sendStrategy, template=$template, templateVariables=$templateVariables, ]';
  }

  ReplyToAliasEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    body = json['body'];
    charset = json['charset'];
    isHTML = json['isHTML'];
    sendStrategy = json['sendStrategy'];
    template = json['template'];
    templateVariables = json['templateVariables'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachments != null)
      json['attachments'] = attachments;
    if (body != null)
      json['body'] = body;
    if (charset != null)
      json['charset'] = charset;
    if (isHTML != null)
      json['isHTML'] = isHTML;
    if (sendStrategy != null)
      json['sendStrategy'] = sendStrategy;
    if (template != null)
      json['template'] = template;
    if (templateVariables != null)
      json['templateVariables'] = templateVariables;
    return json;
  }

  static List<ReplyToAliasEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ReplyToAliasEmailOptions>() : json.map((value) => ReplyToAliasEmailOptions.fromJson(value)).toList();
  }

  static Map<String, ReplyToAliasEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReplyToAliasEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReplyToAliasEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplyToAliasEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToAliasEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReplyToAliasEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReplyToAliasEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

