part of mailslurp.api;

class SetInboxFavouritedOptions {
  /* Should the inbox be favourited? */
  bool state = null;
  SetInboxFavouritedOptions();

  @override
  String toString() {
    return 'SetInboxFavouritedOptions[state=$state, ]';
  }

  SetInboxFavouritedOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (state != null)
      json['state'] = state;
    return json;
  }

  static List<SetInboxFavouritedOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<SetInboxFavouritedOptions>() : json.map((value) => SetInboxFavouritedOptions.fromJson(value)).toList();
  }

  static Map<String, SetInboxFavouritedOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, SetInboxFavouritedOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = SetInboxFavouritedOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of SetInboxFavouritedOptions-objects as value to a dart map
  static Map<String, List<SetInboxFavouritedOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<SetInboxFavouritedOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = SetInboxFavouritedOptions.listFromJson(value);
       });
     }
     return map;
  }
}

