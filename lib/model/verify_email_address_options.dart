part of mailslurp.api;

class VerifyEmailAddressOptions {
  
  String mailServerDomain = null;
  
  String emailAddress = null;
  
  String senderEmailAddress = null;
  
  int port = null;
  VerifyEmailAddressOptions();

  @override
  String toString() {
    return 'VerifyEmailAddressOptions[mailServerDomain=$mailServerDomain, emailAddress=$emailAddress, senderEmailAddress=$senderEmailAddress, port=$port, ]';
  }

  VerifyEmailAddressOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mailServerDomain = json['mailServerDomain'];
    emailAddress = json['emailAddress'];
    senderEmailAddress = json['senderEmailAddress'];
    port = json['port'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (mailServerDomain != null)
      json['mailServerDomain'] = mailServerDomain;
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (senderEmailAddress != null)
      json['senderEmailAddress'] = senderEmailAddress;
    if (port != null)
      json['port'] = port;
    return json;
  }

  static List<VerifyEmailAddressOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<VerifyEmailAddressOptions>() : json.map((value) => VerifyEmailAddressOptions.fromJson(value)).toList();
  }

  static Map<String, VerifyEmailAddressOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VerifyEmailAddressOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VerifyEmailAddressOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VerifyEmailAddressOptions-objects as value to a dart map
  static Map<String, List<VerifyEmailAddressOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VerifyEmailAddressOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VerifyEmailAddressOptions.listFromJson(value);
       });
     }
     return map;
  }
}

