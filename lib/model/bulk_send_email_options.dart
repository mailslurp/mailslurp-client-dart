part of mailslurp.api;

class BulkSendEmailOptions {
  /* Inboxes to send the email from */
  List<String> inboxIds = [];
  
  SendEmailOptions sendEmailOptions = null;
  BulkSendEmailOptions();

  @override
  String toString() {
    return 'BulkSendEmailOptions[inboxIds=$inboxIds, sendEmailOptions=$sendEmailOptions, ]';
  }

  BulkSendEmailOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    inboxIds = (json['inboxIds'] == null) ?
      null :
      (json['inboxIds'] as List).cast<String>();
    sendEmailOptions = (json['sendEmailOptions'] == null) ?
      null :
      SendEmailOptions.fromJson(json['sendEmailOptions']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (inboxIds != null)
      json['inboxIds'] = inboxIds;
    if (sendEmailOptions != null)
      json['sendEmailOptions'] = sendEmailOptions;
    return json;
  }

  static List<BulkSendEmailOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<BulkSendEmailOptions>() : json.map((value) => BulkSendEmailOptions.fromJson(value)).toList();
  }

  static Map<String, BulkSendEmailOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BulkSendEmailOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BulkSendEmailOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BulkSendEmailOptions-objects as value to a dart map
  static Map<String, List<BulkSendEmailOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<BulkSendEmailOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = BulkSendEmailOptions.listFromJson(value);
       });
     }
     return map;
  }
}

