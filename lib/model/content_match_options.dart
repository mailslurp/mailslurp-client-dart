part of mailslurp.api;

class ContentMatchOptions {
  /* Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. */
  String pattern = null;
  ContentMatchOptions();

  @override
  String toString() {
    return 'ContentMatchOptions[pattern=$pattern, ]';
  }

  ContentMatchOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pattern = json['pattern'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pattern != null)
      json['pattern'] = pattern;
    return json;
  }

  static List<ContentMatchOptions> listFromJson(List<dynamic> json) {
    return json == null ? List<ContentMatchOptions>() : json.map((value) => ContentMatchOptions.fromJson(value)).toList();
  }

  static Map<String, ContentMatchOptions> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ContentMatchOptions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ContentMatchOptions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ContentMatchOptions-objects as value to a dart map
  static Map<String, List<ContentMatchOptions>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ContentMatchOptions>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ContentMatchOptions.listFromJson(value);
       });
     }
     return map;
  }
}

