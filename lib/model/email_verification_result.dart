part of mailslurp.api;

class EmailVerificationResult {
  
  String domainName = null;
  
  String emailAddress = null;
  
  String error = null;
  
  bool isValid = null;
  
  int port = null;
  EmailVerificationResult();

  @override
  String toString() {
    return 'EmailVerificationResult[domainName=$domainName, emailAddress=$emailAddress, error=$error, isValid=$isValid, port=$port, ]';
  }

  EmailVerificationResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domainName = json['domainName'];
    emailAddress = json['emailAddress'];
    error = json['error'];
    isValid = json['isValid'];
    port = json['port'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (domainName != null)
      json['domainName'] = domainName;
    if (emailAddress != null)
      json['emailAddress'] = emailAddress;
    if (error != null)
      json['error'] = error;
    if (isValid != null)
      json['isValid'] = isValid;
    if (port != null)
      json['port'] = port;
    return json;
  }

  static List<EmailVerificationResult> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailVerificationResult>() : json.map((value) => EmailVerificationResult.fromJson(value)).toList();
  }

  static Map<String, EmailVerificationResult> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailVerificationResult>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailVerificationResult.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailVerificationResult-objects as value to a dart map
  static Map<String, List<EmailVerificationResult>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailVerificationResult>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailVerificationResult.listFromJson(value);
       });
     }
     return map;
  }
}

