part of mailslurp.api;

class ReplyToEmailOptions {
  /* List of uploaded attachments to send with the reply. Optional. */
  List<String> attachments = [];
  /* Body of the reply email you want to send */
  String body = null;
  /* The charset that your message should be sent with. Optional. Default is UTF-8 */
  String charset = null;
  /* The from header that should be used. Optional */
  String from = null;
  /* Is the reply HTML */
  bool isHTML = null;
  /* The replyTo header that should be used. Optional */
  String replyTo = null;
  /* When to send the email. Typically immediately */
  String sendStrategy = null;
  //enum sendStrategyEnum {  SINGLE_MESSAGE,  };{
  /* Template ID to use instead of body. Will use template variable map to fill defined variable slots. */
  String template = null;
  /* Template variables if using a template */
  Object templateVariables = null;
  ReplyToEmailOptions();

  @override
  String toString() {
    return 'ReplyToEmailOptions[attachments=$attachments, body=$body, charset=$charset, from=$from, isHTML=$isHTML, replyTo=$replyTo, sendStrategy=$sendStrategy, template=$template, templateVariables=$templateVariables, ]';
  }

  ReplyToEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    body = json['body'];
    charset = json['charset'];
    from = json['from'];
    isHTML = json['isHTML'];
    replyTo = json['replyTo'];
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
    if (from != null)
      json['from'] = from;
    if (isHTML != null)
      json['isHTML'] = isHTML;
    if (replyTo != null)
      json['replyTo'] = replyTo;
    if (sendStrategy != null)
      json['sendStrategy'] = sendStrategy;
    if (template != null)
      json['template'] = template;
    if (templateVariables != null)
      json['templateVariables'] = templateVariables;
    return json;
  }

  static List<ReplyToEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ReplyToEmailOptions>() : json.map((value) => ReplyToEmailOptions.fromJson(value)).toList();
  }

  static Map<String, ReplyToEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReplyToEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReplyToEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ReplyToEmailOptions-objects as value to a dart map
  static Map<String, List<ReplyToEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ReplyToEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ReplyToEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

