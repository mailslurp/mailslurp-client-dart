part of mailslurp.api;

class WaitForConditions {
  /* Number of results that should match conditions. Either exactly or at least this amount based on the `countType`. If count condition is not met and the timeout has not been reached the `waitFor` method will retry the operation. */
  int count = null;
  /* How should the found count be compared to the expected count. */
  String countType = null;
  //enum countTypeEnum {  EXACTLY,  ATLEAST,  };{
  /* ID of inbox to search within and apply conditions to. Essentially filtering the emails found to give a count. */
  String inboxId = null;
  /* Conditions that should be matched for an email to qualify for results. Each condition will be applied in order to each email within an inbox to filter a result list of matching emails you are waiting for. */
  List<MatchOption> matches = [];
  /* Direction to sort matching emails by created time */
  String sortDirection = null;
  //enum sortDirectionEnum {  ASC,  DESC,  };{
  /* Max time in milliseconds to retry the `waitFor` operation until conditions are met. */
  int timeout = null;
  /* Apply conditions only to **unread** emails. All emails begin with `read=false`. An email is marked `read=true` when an `EmailDto` representation of it has been returned to the user at least once. For example you have called `getEmail` or `waitForLatestEmail` etc., or you have viewed the email in the dashboard.  */
  bool unreadOnly = null;
  WaitForConditions();

  @override
  String toString() {
    return 'WaitForConditions[count=$count, countType=$countType, inboxId=$inboxId, matches=$matches, sortDirection=$sortDirection, timeout=$timeout, unreadOnly=$unreadOnly, ]';
  }

  WaitForConditions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
    countType = json['countType'];
    inboxId = json['inboxId'];
    matches = (json['matches'] == null) ?
      null :
      MatchOption.listFromJson(json['matches']);
    sortDirection = json['sortDirection'];
    timeout = json['timeout'];
    unreadOnly = json['unreadOnly'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (count != null)
      json['count'] = count;
    if (countType != null)
      json['countType'] = countType;
    if (inboxId != null)
      json['inboxId'] = inboxId;
    if (matches != null)
      json['matches'] = matches;
    if (sortDirection != null)
      json['sortDirection'] = sortDirection;
    if (timeout != null)
      json['timeout'] = timeout;
    if (unreadOnly != null)
      json['unreadOnly'] = unreadOnly;
    return json;
  }

  static List<WaitForConditions> listFromJson(List<dynamic> json) {
    return json == null ? List<WaitForConditions>() : json.map((value) => WaitForConditions.fromJson(value)).toList();
  }

  static Map<String, WaitForConditions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WaitForConditions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WaitForConditions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WaitForConditions-objects as value to a dart map
  static Map<String, List<WaitForConditions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WaitForConditions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WaitForConditions.listFromJson(value);
       });
     }
     return map;
  }
}

