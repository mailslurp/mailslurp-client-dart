part of mailslurp.api;

class EmailAnalysis {
  /* Verdict of DomainKeys Identified Mail analysis */
  String dkimVerdict = null;
  /* Verdict of Domain-based Message Authentication Reporting and Conformance analysis */
  String dmarcVerdict = null;
  /* Verdict of spam ranking analysis */
  String spamVerdict = null;
  /* Verdict of Send Policy Framework record spoofing analysis */
  String spfVerdict = null;
  /* Verdict of virus scan analysis */
  String virusVerdict = null;
  EmailAnalysis();

  @override
  String toString() {
    return 'EmailAnalysis[dkimVerdict=$dkimVerdict, dmarcVerdict=$dmarcVerdict, spamVerdict=$spamVerdict, spfVerdict=$spfVerdict, virusVerdict=$virusVerdict, ]';
  }

  EmailAnalysis.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dkimVerdict = json['dkimVerdict'];
    dmarcVerdict = json['dmarcVerdict'];
    spamVerdict = json['spamVerdict'];
    spfVerdict = json['spfVerdict'];
    virusVerdict = json['virusVerdict'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (dkimVerdict != null)
      json['dkimVerdict'] = dkimVerdict;
    if (dmarcVerdict != null)
      json['dmarcVerdict'] = dmarcVerdict;
    if (spamVerdict != null)
      json['spamVerdict'] = spamVerdict;
    if (spfVerdict != null)
      json['spfVerdict'] = spfVerdict;
    if (virusVerdict != null)
      json['virusVerdict'] = virusVerdict;
    return json;
  }

  static List<EmailAnalysis> listFromJson(List<dynamic> json) {
    return json == null ? List<EmailAnalysis>() : json.map((value) => EmailAnalysis.fromJson(value)).toList();
  }

  static Map<String, EmailAnalysis> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, EmailAnalysis>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = EmailAnalysis.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of EmailAnalysis-objects as value to a dart map
  static Map<String, List<EmailAnalysis>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<EmailAnalysis>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = EmailAnalysis.listFromJson(value);
       });
     }
     return map;
  }
}

