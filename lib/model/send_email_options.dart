part of mailslurp.api;

class SendEmailOptions {
  /* Optional list of attachment IDs to send with this email. You must first upload each attachment separately in order to obtain attachment IDs. This way you can reuse attachments with different emails once uploaded. */
  List<String> attachments = [];
  /* Optional list of bcc destination email addresses */
  List<String> bcc = [];
  /* Optional contents of email. If body contains HTML then set `isHTML` to true to ensure that email clients render it correctly. You can use moustache template syntax in the email body in conjunction with `toGroup` contact variables or `templateVariables` data. If you need more templating control consider creating a template and using the `template` property instead of the body. */
  String body = null;
  /* Optional list of cc destination email addresses */
  List<String> cc = [];
  /* Optional charset */
  String charset = null;
  /* Optional from address. If not set the source inbox address will be used for this field. Beware of potential spam penalties when setting this field to an address not used by the inbox. For custom email addresses use a custom domain. */
  String from = null;
  /* Optional HTML flag. If true the `content-type` of the email will be `text/html`. Set to true when sending HTML to ensure proper rending on email clients */
  bool isHTML = null;
  /* Optional replyTo header */
  String replyTo = null;
  /* Optional strategy to use when sending the email */
  String sendStrategy = null;
  //enum sendStrategyEnum {  SINGLE_MESSAGE,  };{
  /* Optional email subject line */
  String subject = null;
  /* Optional template ID to use for body. Will override body if provided. When using a template make sure you pass the corresponding map of `templateVariables`. You can find which variables are needed by fetching the template itself or viewing it in the dashboard. */
  String template = null;
  /* Optional map of template variables. Will replace moustache syntax variables in subject and body or template with the associated values if found. */
  Object templateVariables = null;
  /* List of destination email addresses. Even single recipients must be in array form. Maximum recipients per email depends on your plan. If you need to send many emails try using contacts or contact groups or use a non standard sendStrategy to ensure that spam filters are not triggered (many recipients in one email can affect your spam rating). */
  List<String> to = [];
  /* Optional list of contact IDs to send email to. Manage your contacts via the API or dashboard. When contacts are used the email is sent to each contact separately so they will not see other recipients. */
  List<String> toContacts = [];
  /* Optional contact group ID to send email to. You can create contacts and contact groups in the API or dashboard and use them for email campaigns. When contact groups are used the email is sent to each contact separately so they will not see other recipients */
  String toGroup = null;
  SendEmailOptions();

  @override
  String toString() {
    return 'SendEmailOptions[attachments=$attachments, bcc=$bcc, body=$body, cc=$cc, charset=$charset, from=$from, isHTML=$isHTML, replyTo=$replyTo, sendStrategy=$sendStrategy, subject=$subject, template=$template, templateVariables=$templateVariables, to=$to, toContacts=$toContacts, toGroup=$toGroup, ]';
  }

  SendEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    attachments = (json['attachments'] == null) ?
      null :
      (json['attachments'] as List).cast<String>();
    bcc = (json['bcc'] == null) ?
      null :
      (json['bcc'] as List).cast<String>();
    body = json['body'];
    cc = (json['cc'] == null) ?
      null :
      (json['cc'] as List).cast<String>();
    charset = json['charset'];
    from = json['from'];
    isHTML = json['isHTML'];
    replyTo = json['replyTo'];
    sendStrategy = json['sendStrategy'];
    subject = json['subject'];
    template = json['template'];
    templateVariables = json['templateVariables'];
    to = (json['to'] == null) ?
      null :
      (json['to'] as List).cast<String>();
    toContacts = (json['toContacts'] == null) ?
      null :
      (json['toContacts'] as List).cast<String>();
    toGroup = json['toGroup'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (attachments != null)
      json['attachments'] = attachments;
    if (bcc != null)
      json['bcc'] = bcc;
    if (body != null)
      json['body'] = body;
    if (cc != null)
      json['cc'] = cc;
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
    if (subject != null)
      json['subject'] = subject;
    if (template != null)
      json['template'] = template;
    if (templateVariables != null)
      json['templateVariables'] = templateVariables;
    if (to != null)
      json['to'] = to;
    if (toContacts != null)
      json['toContacts'] = toContacts;
    if (toGroup != null)
      json['toGroup'] = toGroup;
    return json;
  }

  static List<SendEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<SendEmailOptions>() : json.map((value) => SendEmailOptions.fromJson(value)).toList();
  }

  static Map<String, SendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SendEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SendEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SendEmailOptions-objects as value to a dart map
  static Map<String, List<SendEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SendEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SendEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

